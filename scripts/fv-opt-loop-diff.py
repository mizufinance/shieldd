#!/usr/bin/env python3
"""Alignment-aware obligation diff for fv-opt-loop.sh.

Compares committed vs fresh coverage reports by obligation *identity*
(op + relation/constant/wire-role hashes, which are segment-normalized —
see the T1-a record: a 640-row deletion left downstream hashes stable),
not by segment_index. Segment deletions/insertions renumber every later
obligation; index-keyed diffs would report those as spurious flips.

Output: TSV lines "kind<TAB>old_index<TAB>new_index<TAB>op" where kind is
FLIPPED, REMOVED, or ADDED and absent indices are "-".
"""

import difflib
import sys
from pathlib import Path

try:
    from .fv_strict_json import load as load_strict_json
except ImportError:
    from fv_strict_json import load as load_strict_json


def identity(ob):
    return (
        ob["op"],
        ob["relation_sha256_hex"],
        ob["constant_vector_sha256_hex"],
        ob["wire_role_sha256_hex"],
    )


def diff(old, new):
    """Yield (kind, old_idx, new_idx, op) for non-identical aligned pairs."""
    a = [identity(x) for x in old]
    b = [identity(x) for x in new]
    sm = difflib.SequenceMatcher(a=a, b=b, autojunk=False)
    for tag, i1, i2, j1, j2 in sm.get_opcodes():
        if tag == "equal":
            continue
        olds = old[i1:i2]
        news = new[j1:j2]
        # Pair up the overlap as flips; the tail is pure removal/addition.
        k = min(len(olds), len(news))
        for x, y in zip(olds[:k], news[:k]):
            yield ("FLIPPED", x["segment_index"], y["segment_index"], y["op"])
        for x in olds[k:]:
            yield ("REMOVED", x["segment_index"], "-", x["op"])
        for y in news[k:]:
            yield ("ADDED", "-", y["segment_index"], y["op"])


def main():
    committed, fresh = sys.argv[1], sys.argv[2]
    old = load_strict_json(
        Path(committed), "committed FV obligation report"
    )["deployed_obligations"]["obligations"]
    new = load_strict_json(
        Path(fresh), "fresh FV obligation report"
    )["deployed_obligations"]["obligations"]
    old.sort(key=lambda x: x["segment_index"])
    new.sort(key=lambda x: x["segment_index"])
    for kind, oi, ni, op in diff(old, new):
        print(f"{kind}\t{oi}\t{ni}\t{op}")


if __name__ == "__main__":
    main()
