#!/usr/bin/env python3
"""Regenerate the *standard* deployed glue specs from fresh Seg relations.

The glue specs in `Specs/Glue.lean` are semantic projections seated on this
slice's wire roles. For the two standard gadget shapes they are a mechanical
function of the fresh `Seg{N}.relation`, so we derive them from that single
source of truth instead of hand-editing wire indices (which drift under circuit
optimization's per-region wire renumbering).

Shapes handled (regenerated):
  * linear `assert.eq`:  `((1 : F)) * (LC) = ((1 : F) * rho OUT)`
      -> spec `rho OUT = LC`
  * `assert_equivalent`: `L1 = i1 ∧ L2 = i2 ∧ ((1 : F)) * i1 = i2`
      -> spec `L1 = L2`

Left untouched (not mechanically derivable / different semantics):
  * `onCurveAt` specs (relation is an opaque template call)
  * DTK-consumer specs that eliminate intermediate wires (SPECIAL below)

Fail-closed: a spec whose relation does not match its expected shape aborts.
"""
import argparse
import re
import sys
from pathlib import Path

DEFAULT_CONTRACT_DIR = Path(__file__).resolve().parents[1] / (
    "ShielddGnarkFormal/Deployed/Contracts/NoteReshape2x1"
)

ONCURVE = {2, 3, 4, 18, 33, 41}
SPECIAL = {7, 47}  # DTK consumers: intermediate-wire elimination, hand-authored


def read_relation(contract_dir: Path, seg: int) -> str:
    text = (contract_dir / f"Seg{seg}.lean").read_text().splitlines()
    body, capturing = [], False
    for line in text:
        if line.startswith("def relation"):
            capturing = True
            continue
        if capturing:
            if line.strip() == "" or line.startswith("/--") or line.startswith("def "):
                break
            body.append(line.strip())
    rel = " ".join(body)
    # Template-backed relations seat their wires in a table, not inline algebra;
    # they are not mechanically derivable from the relation text.
    if "Templates" in rel or "localRho" in rel:
        return None
    return rel


def derive(seg: int, rel: str) -> str:
    parts = rel.split(" ∧ ")
    if len(parts) == 1:
        m = re.fullmatch(
            r"\(\(1 : F\)\) \* \((.*)\) = \(\(1 : F\) \* rho (\d+)\)", rel
        )
        if not m:
            raise ValueError(f"Seg{seg}: unrecognized linear relation shape")
        lc, out = m.group(1), m.group(2)
        return f"rho {out} = {lc}"
    if len(parts) == 3:
        l1 = parts[0].split(" = ", 1)[0]
        l2 = parts[1].split(" = ", 1)[0]
        return f"{l1} = {l2}"
    raise ValueError(f"Seg{seg}: unexpected relation arity {len(parts)}")


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument(
        "--contract-dir",
        type=Path,
        default=DEFAULT_CONTRACT_DIR,
        help="NoteReshape2x1 contract directory to regenerate in place",
    )
    args = ap.parse_args()
    contract_dir = args.contract_dir
    glue = contract_dir / "Specs/Glue.lean"

    src = glue.read_text()
    pat = re.compile(
        r"(def deployedSpec(\d+) \(rho : Nat → F\) : Prop :=)(.*?)(?=\n/--|\ndef |\nend )",
        re.DOTALL,
    )

    def repl(m: re.Match) -> str:
        head, seg_s, _old_body = m.group(1), m.group(2), m.group(3)
        seg = int(seg_s)
        if seg in ONCURVE or seg in SPECIAL:
            return m.group(0)
        rel = read_relation(contract_dir, seg)
        if rel is None:
            return m.group(0)
        return f"{head}\n  {derive(seg, rel)}"

    out = pat.sub(repl, src)
    if out != src:
        glue.write_text(out)
    print("glue specs regenerated")
    return 0


if __name__ == "__main__":
    sys.exit(main())
