#!/usr/bin/env python3
"""Semantic anti-pattern linter for generator-emitted Lean circuit proofs.

The gnark→Lean soundness pipeline is bottlenecked by term-size explosion in the
Lean elaborator/kernel, not tactic search. A handful of emission patterns are
known to blow up memory (they OOM-rebooted the build machine twice). Those rules
have lived in prompt context; this linter moves them into CI so a bad generator
change fails fast instead of grinding.

It parses emitted `.lean` into declaration blocks (not line regex) so the checks
can reason about the *enclosing declaration* — which is what separates the safe
form of a pattern from the fatal one.

Rules (hard-fail unless noted):

  R1  fuel-def unroll.  `unfold`/`simp`/`simp only` that names the recursive run
      evaluator `StrideRun.sumAux` (or `evalAux`) forces an O(count) definitional
      unroll at a literal count — the core blowup. The safe forms name only
      `StrideRun.eval` (one step to `coeff * sumAux`, leaving `sumAux` opaque) or
      the symbolic step lemmas `sumAux_succ`/`sumAux_zero`/`sumAux_add`.

  R2  wide destructure carried through a proof.  `rcases`/`obtain` with more than
      --max-destructure components balloons when the destructured context is
      carried through the rest of a proof. The ONE legal place for a wide
      destructure is a projection lemma whose whole job is to expose the rows —
      those are emitted as `…_rows<idx>` and are exempt.

  R4  wide in-proof `match`.  A `match … with` inside a tactic proof with more
      than --max-match-arms arms triggers the case-splitter blowup. Top-level
      `def` state-dispatch tables (data, never simp-unfolded) are not proofs and
      are exempt.

  R6  unbounded heartbeats.  `set_option maxHeartbeats 0` removes the only
      kill switch on elaboration: a bad emission (e.g. stale wire ids feeding
      a mismatch into unification) spins for hours at 100% CPU instead of
      failing in seconds with a named declaration. Emitted modules must keep a
      finite bound.

  R5  module size (WARNING by default).  Theorems-per-module over --max-theorems
      or olean over --max-olean-mb risks the 12GB machine-safety ceiling from
      cumulative environment growth. Promote to hard-fail with --size-hard once
      the generator's chunking keeps every chunk under the ceiling.

Exit status: 2 if any hard violation, 0 otherwise (warnings never fail unless
--size-hard promotes R5). `--format json` emits machine-readable findings.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import sys
from dataclasses import dataclass, field
from pathlib import Path


# Recursive fuel evaluators whose definitional unfold is O(count). The trailing
# word boundary in the regex below excludes the safe step lemmas
# sumAux_succ / sumAux_zero / sumAux_add and the one-step wrapper eval.
FUEL_DEFS = ("sumAux", "evalAux")

# `simp only`, `simp`, `simp_all`, `unfold`, `rw`, `dsimp` — tactics that can
# name a def to expand it.
_EXPAND_TAC = re.compile(r"\b(simp_all|simp|dsimp|unfold|rw)\b")
# A fuel def named as a bare identifier (optionally namespaced), NOT immediately
# followed by `_` (which would make it sumAux_succ / evalAux_… — a step lemma).
_FUEL_REF = re.compile(
    r"\b(?:[A-Za-z_][A-Za-z0-9_.]*\.)?(" + "|".join(FUEL_DEFS) + r")(?![A-Za-z0-9_])"
)

# Declaration openers. `example` has no name.
_DECL = re.compile(r"^(theorem|lemma|def|instance|example)\b[ \t]+([^\s(:{]*)", re.M)

# Projection lemmas exempt from R2: emitted as `…_rows<idx>` by
# dtk_recovery.py::emit_row_projection; their entire body is the wide
# destructure and their type is the bare relationRow conjunction.
_PROJECTION_NAME = re.compile(r"_rows\d+$")


@dataclass
class Finding:
    rule: str
    file: str
    line: int
    decl: str
    message: str
    severity: str = "error"  # "error" | "warning"


@dataclass
class Decl:
    kind: str
    name: str
    start_line: int   # 1-indexed, line of the decl opener
    body_start: int   # char offset in `text` where the body/proof begins
    header: str       # text from opener up to `:=`
    body: str         # text from `:=` to next decl (proof + defn)
    is_proof: bool    # body opens a tactic block (`:= by`)


def strip_comments(text: str) -> str:
    """Blank out `--` line and `/- -/` block comments, preserving every offset and
    newline so line numbers stay exact. Keeps tactic-token scanning off comments."""
    out = list(text)
    i, n = 0, len(text)
    while i < n:
        if text[i] == "-" and i + 1 < n and text[i + 1] == "-":
            j = text.find("\n", i)
            j = n if j == -1 else j
            for k in range(i, j):
                out[k] = " "
            i = j
        elif text[i] == "/" and i + 1 < n and text[i + 1] == "-":
            depth, j = 1, i + 2
            while j < n and depth:
                if text[j] == "/" and j + 1 < n and text[j + 1] == "-":
                    depth += 1; j += 2
                elif text[j] == "-" and j + 1 < n and text[j + 1] == "/":
                    depth -= 1; j += 2
                else:
                    j += 1
            for k in range(i, j):
                if out[k] != "\n":
                    out[k] = " "
            i = j
        else:
            i += 1
    return "".join(out)


def split_decls(text: str) -> list[Decl]:
    """Split a file into top-level declaration blocks."""
    opens = list(_DECL.finditer(text))
    decls: list[Decl] = []
    for i, m in enumerate(opens):
        seg_start = m.start()
        seg_end = opens[i + 1].start() if i + 1 < len(opens) else len(text)
        seg = text[seg_start:seg_end]
        # Split header (signature) from body at the first top-level `:=`.
        assign = _find_assign(seg)
        header = seg[:assign] if assign is not None else seg
        body = seg[assign:] if assign is not None else ""
        is_proof = bool(re.match(r":=\s*by\b", body))
        decls.append(
            Decl(
                kind=m.group(1),
                name=m.group(2) or "«example»",
                start_line=text.count("\n", 0, seg_start) + 1,
                body_start=seg_start + (assign or 0),
                header=header,
                body=body,
                is_proof=is_proof,
            )
        )
    return decls


def _find_assign(seg: str) -> int | None:
    """Offset of the `:=` that separates signature from body, skipping any inside
    brackets (e.g. structure-instance `{ x := 1 }`)."""
    depth = 0
    i = 0
    n = len(seg)
    while i < n - 1:
        c = seg[i]
        if c in "([{⟨":
            depth += 1
        elif c in ")]}⟩":
            depth -= 1
        elif depth == 0 and c == ":" and seg[i + 1] == "=":
            return i
        i += 1
    return None


def _line_of(text: str, offset: int) -> int:
    return text.count("\n", 0, offset) + 1


def _iter_tactic_lines(decl: Decl):
    """Yield (line_offset_in_body, line_text) for each line of a proof body."""
    base = 0
    for line in decl.body.splitlines(keepends=True):
        yield base, line
        base += len(line)


def check_r1_fuel(text: str, path: str, decl: Decl) -> list[Finding]:
    out: list[Finding] = []
    for off, line in _iter_tactic_lines(decl):
        if not _EXPAND_TAC.search(line):
            continue
        m = _FUEL_REF.search(line)
        if m:
            out.append(
                Finding(
                    "R1",
                    path,
                    _line_of(text, decl.body_start + off),
                    decl.name,
                    f"expand tactic names recursive fuel def '{m.group(1)}' "
                    f"(O(count) unroll); use StrideRun.eval / sumAux_succ instead",
                )
            )
    return out


def _count_components(text: str, open_off: int) -> int:
    """Count top-level comma-separated components in a ⟨…⟩ starting at open_off."""
    depth = 0
    i = open_off
    n = len(text)
    comps = 1
    while i < n:
        c = text[i]
        if c in "⟨([{":
            depth += 1
        elif c in "⟩)]}":
            depth -= 1
            if depth == 0:
                return comps
        elif c == "," and depth == 1:
            comps += 1
        i += 1
    return comps


def check_r2_destructure(text: str, path: str, decl: Decl, limit: int) -> list[Finding]:
    if _PROJECTION_NAME.search(decl.name):
        return []  # projection lemma: wide destructure is its whole purpose
    out: list[Finding] = []
    for m in re.finditer(r"\b(rcases|obtain)\b", decl.body):
        anchor = text.find("⟨", decl.body_start + m.start())
        if anchor == -1:
            continue
        comps = _count_components(text, anchor)
        if comps > limit:
            out.append(
                Finding(
                    "R2",
                    path,
                    _line_of(text, decl.body_start + m.start()),
                    decl.name,
                    f"{m.group(1)} destructures {comps} components (> {limit}) "
                    f"carried through a proof; move the wide destructure into a "
                    f"'…_rows<idx>' projection lemma",
                )
            )
    return out


def check_r4_match(text: str, path: str, decl: Decl, limit: int) -> list[Finding]:
    if not decl.is_proof:
        return []  # top-level def dispatch tables are data, not a splitter risk
    out: list[Finding] = []
    for m in re.finditer(r"\bmatch\b.*?\bwith\b", decl.body, re.S):
        # Count arms until the match's indentation block ends heuristically:
        # arms are `|` at line start (after whitespace) following the `with`.
        tail = decl.body[m.end():]
        arms = len(re.findall(r"(?m)^\s*\|", tail.split("\n\n", 1)[0]))
        if arms > limit:
            out.append(
                Finding(
                    "R4",
                    path,
                    _line_of(text, decl.body_start + m.start()),
                    decl.name,
                    f"in-proof match has {arms} arms (> {limit}); use bounded "
                    f"(≤{limit}) chunked dispatch",
                )
            )
    return out


def lint_file(path: Path, args) -> list[Finding]:
    text = strip_comments(path.read_text())
    rel = str(path)
    findings: list[Finding] = []
    decls = split_decls(text)
    for d in decls:
        if d.is_proof:
            findings += check_r1_fuel(text, rel, d)
            findings += check_r2_destructure(text, rel, d, args.max_destructure)
            findings += check_r4_match(text, rel, d, args.max_match_arms)

    # R6 unbounded heartbeats.
    for m in re.finditer(r"(?m)^\s*set_option maxHeartbeats 0\b", text):
        findings.append(
            Finding(
                "R6",
                rel,
                _line_of(text, m.start()),
                "«module»",
                "set_option maxHeartbeats 0 removes the elaboration kill "
                "switch; emitted modules must keep a finite bound",
            )
        )

    # R5 module size (warning unless --size-hard).
    n_thm = sum(1 for d in decls if d.kind in ("theorem", "lemma"))
    sev = "error" if args.size_hard else "warning"
    if n_thm > args.max_theorems:
        findings.append(
            Finding(
                "R5",
                rel,
                1,
                "«module»",
                f"{n_thm} theorems in one module (> {args.max_theorems}); "
                f"cumulative env growth risks the 12GB ceiling — split the chunk",
                sev,
            )
        )
    olean = path.with_suffix(".olean")
    if olean.exists():
        mb = olean.stat().st_size / (1024 * 1024)
        if mb > args.max_olean_mb:
            findings.append(
                Finding(
                    "R5", rel, 1, "«module»",
                    f"olean is {mb:.0f}MB (> {args.max_olean_mb}MB)", sev,
                )
            )
    return findings


def iter_lean_files(paths: list[str]):
    for p in paths:
        pth = Path(p)
        if pth.is_dir():
            yield from sorted(pth.rglob("*.lean"))
        elif pth.suffix == ".lean":
            yield pth


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("paths", nargs="+", help="emitted .lean files or directories")
    ap.add_argument("--max-destructure", type=int, default=16)
    ap.add_argument("--max-match-arms", type=int, default=8)
    ap.add_argument("--max-theorems", type=int, default=24)
    ap.add_argument("--max-olean-mb", type=int, default=200)
    ap.add_argument("--size-hard", action="store_true",
                    help="promote R5 module-size findings from warning to error")
    ap.add_argument("--format", choices=("text", "json"), default="text")
    args = ap.parse_args()

    findings: list[Finding] = []
    n_files = 0
    for f in iter_lean_files(args.paths):
        n_files += 1
        findings += lint_file(f, args)

    errors = [f for f in findings if f.severity == "error"]
    warnings = [f for f in findings if f.severity == "warning"]

    if args.format == "json":
        json.dump([f.__dict__ for f in findings], sys.stdout, indent=2)
        sys.stdout.write("\n")
    else:
        for f in findings:
            tag = "ERROR" if f.severity == "error" else "warn "
            print(f"{tag} [{f.rule}] {f.file}:{f.line} ({f.decl}): {f.message}")
        print(
            f"lint-emitted-lean: {n_files} files, "
            f"{len(errors)} error(s), {len(warnings)} warning(s)",
            file=sys.stderr,
        )
    return 2 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
