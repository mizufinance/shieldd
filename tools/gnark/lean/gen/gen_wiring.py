#!/usr/bin/env python3
"""Emit the consolidate2x1 named-wire layer (Wiring.lean).

Every named wire is *read* from the deployed-slice IR `wire_roles` (never
invented): each entry names a segment index and a role (`output`/`input`),
and the generator pulls the exact global wire ids the IR assigns to that
segment in that role. If the IR shifts so a named entry no longer matches the
expected shape, the generator fails closed with a clear message rather than
emitting a stale index.

GENERATED consumer: `Statement.lean` (hand-authored) phrases the protocol
statement over these names; if a name and the spec's wire disagree, that file
will not type-check.
"""

import argparse
import json
from pathlib import Path

REPO = Path(__file__).resolve().parents[3].parent
IR = (
    REPO
    / "crates/core/component/shielded-pool/formal/consolidate2x1-deployed-slice-ir.json"
)
OUT = (
    Path(__file__).resolve().parents[1]
    / "ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1/Wiring.lean"
)

# Named wires. Each: (lean_name, doc, seg_index, expected_op, role, arity)
#   arity "scalar" -> emit `def : Nat`, assert the role list is exactly [w].
#   arity "group"  -> emit `def : List Nat`, take the role list verbatim.
# `extra_inputs`: (seg_index, wire) membership assertions cross-checking that
# the named wire is consumed where its protocol meaning says it is.
# Wave-2 layout: segment indices below follow the consolidated numbering in
# consolidate2x1-deployed-slice-ir.json (T1-f/T1-h/NB-1; 36,553 rows).
NAMED = [
    ("statementHashPublic", "Public statement-hash wire the verifier reads.",
     54, "assert.eq", "output", "scalar", []),
    ("anchor", "Merkle anchor: common root both spend paths open to.",
     14, "assert.eq", "output", "scalar", []),
    ("spend1NoteCommitmentLeaf",
     "Spend 1 note-commitment leaf opened in the state tree.",
     10, "assert.eq", "output", "scalar", [(13, "state_commitment_path input")]),
    ("spend2NoteCommitmentLeaf",
     "Spend 2 note-commitment leaf opened in the state tree.",
     25, "assert.eq", "output", "scalar", [(28, "state_commitment_path input")]),
    ("spend1NullifierOut", "Spend 1 nullifier gadget output lanes.",
     11, "gadget.nullifier", "output", "group", []),
    ("spend2NullifierOut", "Spend 2 nullifier gadget output lanes.",
     26, "gadget.nullifier", "output", "group", []),
    ("outputNoteCommitmentOut", "Output note-commitment gadget output lanes.",
     39, "gadget.note_commitment", "output", "group", []),
    ("netBalanceCommitmentCompressed",
     "Compressed net-balance commitment lanes fed into the statement hash.",
     48, "decaf.compress_to_field", "output", "group", []),
    ("statementHashOut", "Statement-hash transcript output lanes.",
     53, "statement.hash", "output", "group", []),
]

# Wire 0 is the R1CS constant `one`; it carries no gadget role. Named directly
# and cross-checked below (no segment may claim it as an output).
ONE_WIRE = 0


def seg_by_index(segments):
    by_index = {}
    for seg in segments:
        idx = seg.get("index")
        if idx is not None:
            by_index.setdefault(idx, seg)
    return by_index


def render(ir: dict) -> str:
    assert ir.get("schema") == "shieldd.gnark.deployed_slice_ir.v1", (
        f"unexpected IR schema: {ir.get('schema')!r}"
    )
    assert ir.get("circuit") == "consolidate2x1", (
        f"unexpected IR circuit: {ir.get('circuit')!r}"
    )
    segs = ir["segments"]
    by_index = seg_by_index(segs)

    # `one` sanity: no segment claims wire 0 as an output.
    for seg in segs:
        assert ONE_WIRE not in seg["wire_roles"]["output"], (
            f"wire {ONE_WIRE} (`one`) claimed as output by seg {seg.get('index')}"
        )

    lines = []
    for name, doc, seg_idx, expected_op, role, arity, extras in NAMED:
        seg = by_index.get(seg_idx)
        assert seg is not None, f"{name}: IR has no segment with index {seg_idx}"
        assert seg.get("op") == expected_op, (
            f"{name}: seg {seg_idx} op {seg.get('op')!r} != {expected_op!r}"
        )
        role_list = seg["wire_roles"][role]
        assert role_list, (
            f"{name}: seg {seg_idx} has empty {role} role list "
            f"(IR shifted; expected the named wire(s) here)"
        )
        for ex_idx, ex_desc in extras:
            ex_seg = by_index.get(ex_idx)
            assert ex_seg is not None, f"{name}: no segment index {ex_idx}"
            for w in role_list:
                assert w in ex_seg["wire_roles"]["input"], (
                    f"{name}: wire {w} not an input of seg {ex_idx} ({ex_desc}); "
                    f"IR wiring shifted"
                )
        if arity == "scalar":
            assert len(role_list) == 1, (
                f"{name}: expected a single {role} wire on seg {seg_idx}, "
                f"got {role_list}"
            )
            lines.append(f"/-- {doc} -/\ndef {name} : Nat := {role_list[0]}")
        else:
            body = ", ".join(str(w) for w in role_list)
            lines.append(f"/-- {doc} -/\ndef {name} : List Nat := [{body}]")

    body = "\n\n".join(
        [f"/-- R1CS constant `one` wire. -/\ndef one : Nat := {ONE_WIRE}"] + lines
    )

    return f"""/-! # Named-wire layer for the consolidate2x1 deployed slice

Each name is the exact global wire id the deployed-slice IR assigns to a
segment's `wire_roles`. The generator (`gen/gen_wiring.py`) reads them from the
IR and fails closed if the wiring shifts; nothing here is hand-chosen.
GENERATED by gen/gen_wiring.py — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Wiring

{body}

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1.Wiring
"""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ir", type=Path, default=IR)
    parser.add_argument("--out", type=Path, default=OUT)
    parser.add_argument(
        "--check",
        action="store_true",
        help="fail unless --out byte-matches freshly rendered --ir",
    )
    args = parser.parse_args()
    contents = render(json.loads(args.ir.read_text()))
    if args.check:
        actual = args.out.read_text()
        if actual != contents:
            raise SystemExit(
                f"stale generated wiring: {args.out} does not match {args.ir}"
            )
        print(f"checked {args.out} ({len(NAMED) + 1} named wires)")
        return
    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text(contents)
    print(f"wrote {args.out} ({len(NAMED) + 1} named wires)")


if __name__ == "__main__":
    main()
