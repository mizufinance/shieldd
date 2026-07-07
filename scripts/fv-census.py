#!/usr/bin/env python3
"""Constraint forensics census (playbook F-1): mechanized waste detection.

Reads a .sr1cs export and its segment manifest; reports, per segment:
  (a) exact duplicate rows (identical A,B,C — pure redundancy) and
      recompute signatures (identical A,B with a different output C, or
      identical B,C with different A — CSE misses like duplicated ToBinary),
  (b) write-only wires (appear in exactly one row and are not circuit
      inputs/outputs — dead-output candidates like discarded ladder results),
  (c) rows vs multiplication floor (rows whose A and B are both non-constant;
      linear rows are free in a smarter compiler — the M-1-style table).

Read-only: no gate semantics, no verdicts. Usage:
  fv-census.py <circuit.sr1cs> <circuit-manifest.json> [--min-dups 2]
"""

import json
import re
import sys
from collections import Counter, defaultdict

ROW_RE = re.compile(r"^\(constraint \[(.*?)\] \[(.*?)\] \[(.*?)\]\)$")
TERM_RE = re.compile(r"\((\d+) (\d+)\)")


def parse(path):
    inputs, outputs, rows = set(), set(), []
    for line in open(path):
        line = line.strip()
        if line.startswith("(in "):
            inputs.add(int(line[4:-1]))
        elif line.startswith("(out "):
            outputs.add(int(line[5:-1]))
        elif line.startswith("(constraint "):
            m = ROW_RE.match(line)
            a, b, c = (tuple(TERM_RE.findall(part)) for part in m.groups())
            rows.append((a, b, c))
    return inputs, outputs, rows


def is_linear(part):
    # B (or A) touching only the constant-one wire 0 means no real product.
    return all(w == "0" for _, w in part) or not part


def main():
    sr1cs, manifest_path = sys.argv[1], sys.argv[2]
    inputs, outputs, rows = parse(sr1cs)
    manifest = json.load(open(manifest_path))
    segs = manifest.get("segments", manifest)

    def seg_of(i):
        for s in segs:
            if s["start"] <= i < s["end"]:
                return s
        return None

    def seg_name(s):
        return f"seg{s['index']}:{s.get('gadget_label') or s['op']}" if s else "?"

    # (a) duplicates and recompute signatures
    exact = defaultdict(list)
    recompute_ab = defaultdict(list)  # same A,B different C
    recompute_bc = defaultdict(list)  # same B,C different A
    for i, (a, b, c) in enumerate(rows):
        exact[(a, b, c)].append(i)
        recompute_ab[(a, b)].append(i)
        recompute_bc[(b, c)].append(i)

    print(f"# fv-census — {sr1cs}")
    print(f"rows={len(rows)} inputs={len(inputs)} outputs={len(outputs)}\n")

    print("## (a) exact duplicate rows (pure redundancy)")
    n = 0
    for key, idxs in sorted(exact.items(), key=lambda kv: -len(kv[1])):
        if len(idxs) < 2:
            continue
        # constant-only tautologies (all wires 0) are assert-style, skip
        if all(w == "0" for part in key for _, w in part):
            continue
        n += len(idxs) - 1
        locs = Counter(seg_name(seg_of(i)) for i in idxs)
        print(f"  x{len(idxs)} rows {idxs[:6]}{'…' if len(idxs) > 6 else ''} in {dict(locs)}")
    print(f"  => {n} deletable duplicate rows\n")

    print("## (a') recompute signatures (same A,B → different C wire)")
    n = 0
    for (a, b), idxs in sorted(recompute_ab.items(), key=lambda kv: -len(kv[1])):
        if len(idxs) < 2 or is_linear(b) or is_linear(a):
            continue
        cs = {rows[i][2] for i in idxs}
        if len(cs) < 2:
            continue  # already counted as exact dup
        n += len(idxs) - 1
        locs = Counter(seg_name(seg_of(i)) for i in idxs)
        print(f"  x{len(idxs)} same-product rows {idxs[:6]}{'…' if len(idxs) > 6 else ''} in {dict(locs)}")
    print(f"  => {n} CSE-miss rows (same product recomputed)\n")

    # (b) write-only wires
    use = Counter()
    for a, b, c in rows:
        for part in (a, b, c):
            for _, w in part:
                use[int(w)] += 1
    dead = [w for w, k in use.items() if k == 1 and w not in inputs and w not in outputs and w != 0]
    dead_by_seg = Counter()
    for i, (a, b, c) in enumerate(rows):
        wires = {int(w) for part in (a, b, c) for _, w in part}
        if wires & set(dead):
            dead_by_seg[seg_name(seg_of(i))] += 1
    print(f"## (b) write-only wires (dead-output candidates): {len(dead)}")
    for name, k in dead_by_seg.most_common(15):
        print(f"  {name}: {k} rows touch a write-only wire")
    print()

    print("## (c) rows vs multiplication floor per gadget family")
    fam = defaultdict(lambda: [0, 0])  # label -> [rows, muls]
    for i, (a, b, c) in enumerate(rows):
        s = seg_of(i)
        label = (s.get("gadget_label") or s["op"]) if s else "?"
        fam[label][0] += 1
        if not is_linear(a) and not is_linear(b):
            fam[label][1] += 1
    for label, (r, m) in sorted(fam.items(), key=lambda kv: -kv[1][0]):
        print(f"  {label:45s} rows={r:6d} muls={m:6d} floor-ratio={m / r if r else 0:.2f}")


if __name__ == "__main__":
    main()
