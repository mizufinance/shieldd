#!/usr/bin/env python3
"""Generate a Picus precondition asserting every Edwards-add denominator nonzero.

Edwards complete-addition emits division witnesses `q = num/den` as an R1CS
constraint `[(1 q)] [(1 0) (s wD)] [num...]` where the B-vector is the
denominator `1 + s*wD` (s = +1 or -1) and wD = d*v0*v1. Picus cannot derive
`den != 0` locally (Edwards completeness is a global curve theorem), so each
such denominator becomes a documented assumption:

    1 + wD != 0   <=>   wD != p-1     (s = +1)
    1 - wD != 0   <=>   wD !=  1      (s = -1)

We emit exactly the bound that appears (never both), so the assumption stays
sound: we only assume what completeness actually guarantees for the denominator
that is used. Booleanity constraints `[(1 w)] [(1 0)(-1 w)] [(0 0)]` are skipped
(zero numerator).

Usage: gen-edwards-precondition.py <gadget.sr1cs>   (prints JSON to stdout)
"""
import re
import sys
import json

P = 8444461749428370424248824938781546531375899335154063827935233455917409239041

line_re = re.compile(
    r'^\(constraint \[\(1 \d+\) \] \[\(1 0\) \((1|-1) (\d+)\) \] \[(.*)\]\)\s*$'
)

def main(path):
    entries = []
    seen = set()  # (wD, side) -> dedupe identical asserts
    with open(path) as f:
        for ln in f:
            m = line_re.match(ln.strip())
            if not m:
                continue
            sign, wd, cvec = m.group(1), int(m.group(2)), m.group(3)
            # skip booleanity: zero numerator C = [(0 0) ]
            if cvec.strip() == '(0 0)':
                continue
            if sign == '1':
                bound, side = P - 1, '1plus'   # 1+wD != 0  <=>  wD != p-1
            else:
                bound, side = 1, '1minus'      # 1-wD != 0  <=>  wD != 1
            key = (wd, side)
            if key in seen:
                continue
            seen.add(key)
            entries.append([
                f"edwards-denominator-{side}-w{wd}-nonzero",
                ["rassert", ["rneq", ["rvar", wd], ["rint", bound]]],
            ])
    json.dump(entries, sys.stdout, indent=1)
    print()

if __name__ == '__main__':
    main(sys.argv[1])
