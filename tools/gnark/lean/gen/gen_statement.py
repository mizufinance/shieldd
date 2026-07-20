#!/usr/bin/env python3
"""Emit the protocol-readable note_reshape2x1 statement.

The static role map is the human review boundary. Generation fails unless it
partitions the fresh deployed IR into exactly 43 semantic segments and 11
explicit structural/glue segments, and unless every segment keeps its expected
operation label and proven coverage-manifest binding.
"""

import argparse
import json
from pathlib import Path

from write_if_changed import write_if_changed

REPO = Path(__file__).resolve().parents[3].parent
IR = (
    REPO
    / "crates/core/component/shielded-pool/formal/note_reshape2x1-deployed-slice-ir.json"
)
MANIFEST = (
    REPO
    / "crates/core/component/shielded-pool/formal/note_reshape2x1-coverage-manifest.json"
)
OUT = (
    Path(__file__).resolve().parents[1]
    / "ShielddGnarkFormal/Deployed/Contracts/NoteReshape2x1/Statement.lean"
)

# (Lean structure, documentation, [(field, segment, expected IR/manifest op)])
ROLE_GROUPS = [
    (
        "SharedAuthorizationSpec",
        "Shared authorization material used by both spends.",
        [
            ("balanceCommitmentOnCurve", 2, "decaf.assert_on_curve"),
            ("diversifiedGeneratorOnCurve", 3, "decaf.assert_on_curve"),
            ("transmissionKeyOnCurve", 4, "decaf.assert_on_curve"),
            ("diversifiedGeneratorCompression", 5, "decaf.compress_to_field"),
            ("diversifiedTransmissionKey", 6, "decaf.diversified_transmission_key"),
            ("transmissionKeyBinding", 7, "decaf.assert_equivalent"),
        ],
    ),
    (
        "Spend0Spec",
        "First spend: note, nullifier, membership path, randomized key, and asset.",
        [
            ("noteCommitment", 9, "gadget.note_commitment"),
            ("noteCommitmentLeafBinding", 10, "assert.eq"),
            ("nullifier", 11, "gadget.nullifier"),
            ("nullifierBinding", 12, "assert.eq"),
            ("stateCommitmentPath", 13, "gadget.state_commitment_path"),
            ("anchorBinding", 14, "assert.eq"),
            ("randomizedVerificationKey", 15, "decaf.randomized_verification_key"),
            ("randomizedKeyBinding", 16, "decaf.assert_equivalent"),
            ("randomizedKeyCompression", 17, "decaf.compress_to_field"),
            ("transmissionKeyOnCurve", 18, "decaf.assert_on_curve"),
            ("diversifiedGeneratorBinding", 19, "decaf.assert_equivalent"),
            ("transmissionKeyBinding", 20, "decaf.assert_equivalent"),
            ("assetBinding", 21, "assert.eq"),
        ],
    ),
    (
        "Spend1Spec",
        "Second spend: note, nullifier, membership path, randomized key, and asset.",
        [
            ("noteCommitment", 24, "gadget.note_commitment"),
            ("noteCommitmentLeafBinding", 25, "assert.eq"),
            ("nullifier", 26, "gadget.nullifier"),
            ("nullifierBinding", 27, "assert.eq"),
            ("stateCommitmentPath", 28, "gadget.state_commitment_path"),
            ("anchorBinding", 29, "assert.eq"),
            ("randomizedVerificationKey", 30, "decaf.randomized_verification_key"),
            ("randomizedKeyBinding", 31, "decaf.assert_equivalent"),
            ("randomizedKeyCompression", 32, "decaf.compress_to_field"),
            ("diversifiedGeneratorOnCurve", 33, "decaf.assert_on_curve"),
            ("diversifiedGeneratorBinding", 34, "decaf.assert_equivalent"),
            ("transmissionKeyBinding", 35, "decaf.assert_equivalent"),
            ("assetBinding", 36, "assert.eq"),
        ],
    ),
    (
        "OutputNoteSpec",
        "Output note commitment and its shared-key bindings.",
        [
            ("noteCommitment", 39, "gadget.note_commitment"),
            ("noteCommitmentBinding", 40, "assert.eq"),
            ("diversifiedGeneratorOnCurve", 41, "decaf.assert_on_curve"),
            ("diversifiedGeneratorBinding", 42, "decaf.assert_equivalent"),
            ("transmissionKeyBinding", 43, "decaf.assert_equivalent"),
            ("assetBinding", 44, "assert.eq"),
        ],
    ),
    (
        "BalanceSpec",
        "Value conservation and the net-balance commitment exposed to the transcript.",
        [
            ("conservationAndCommitment", 46, "decaf.conservation_net_balance_commitment"),
            ("balanceCommitmentBinding", 47, "decaf.assert_equivalent"),
            ("balanceCommitmentCompression", 48, "decaf.compress_to_field"),
        ],
    ),
    (
        "TranscriptSpec",
        "Public statement hash and its exact transcript inputs.",
        [
            ("transcriptHash", 53, "statement.hash"),
            ("publicStatementHashBinding", 54, "assert.eq"),
        ],
    ),
]

# Structural control-flow/transcript assembly segments have no independent
# semantic contract. Their exact presence and labels are still part of the
# reviewed partition, so a new or reclassified segment fails generation.
EXCLUDED = {
    1: "shared.bind",
    8: "spend.begin",
    22: "spend.collect",
    23: "spend.begin",
    37: "spend.collect",
    38: "output.begin",
    45: "output.collect",
    49: "statement.append",
    50: "statement.append_all",
    51: "statement.append",
    52: "statement.append_all",
}

TOP_FIELDS = {
    "SharedAuthorizationSpec": "shared",
    "Spend0Spec": "spend0",
    "Spend1Spec": "spend1",
    "OutputNoteSpec": "output",
    "BalanceSpec": "balance",
    "TranscriptSpec": "transcript",
}


def semantic_roles() -> dict[int, tuple[str, str, str]]:
    roles = {}
    for struct_name, _, fields in ROLE_GROUPS:
        seen_fields = set()
        for field_name, segment, op in fields:
            assert field_name not in seen_fields, (
                f"duplicate field {struct_name}.{field_name}"
            )
            seen_fields.add(field_name)
            assert segment not in roles, f"duplicate semantic segment {segment}"
            roles[segment] = (struct_name, field_name, op)
    assert len(roles) == 43, f"expected 43 semantic segments, got {len(roles)}"
    assert len(EXCLUDED) == 11, f"expected 11 excluded segments, got {len(EXCLUDED)}"
    assert not roles.keys() & EXCLUDED.keys(), "semantic/excluded segment overlap"
    return roles


def manifest_segments(manifest: dict) -> dict[int, str]:
    assert manifest.get("schema") == "shieldd.gnark.deployed_coverage_manifest.v5", (
        f"unexpected coverage-manifest schema: {manifest.get('schema')!r}"
    )
    assert manifest.get("circuit") == "note_reshape2x1", (
        f"unexpected coverage-manifest circuit: {manifest.get('circuit')!r}"
    )
    result = {}
    for cls in manifest["classes"]:
        assert cls["status"] == "proven", f"class not proven: {cls['class_key']}"
        for inst in cls["instances"]:
            segment = inst["segment_index"]
            assert segment not in result, f"duplicate manifest segment {segment}"
            expected_theorem = (
                "Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1."
                f"inst{segment}_bound"
            )
            expected_contract = (
                "Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1."
                f"Seg{segment}"
            )
            assert inst["lean_theorem"] == expected_theorem, (
                f"seg {segment}: lean_theorem {inst['lean_theorem']!r} "
                f"!= {expected_theorem!r}"
            )
            assert inst["lean_contract"] == expected_contract, (
                f"seg {segment}: lean_contract {inst['lean_contract']!r} "
                f"!= {expected_contract!r}"
            )
            result[segment] = cls["op"]
    return result


def validate(ir: dict, manifest: dict) -> None:
    roles = semantic_roles()
    assert ir.get("schema") == "shieldd.gnark.deployed_slice_ir.v2", (
        f"unexpected IR schema: {ir.get('schema')!r}"
    )
    assert ir.get("circuit") == "note_reshape2x1", (
        f"unexpected IR circuit: {ir.get('circuit')!r}"
    )
    ir_segments = {}
    for segment in ir["segments"]:
        index = segment["index"]
        assert index not in ir_segments, f"duplicate IR segment {index}"
        ir_segments[index] = segment["op"]

    expected_all = set(roles) | set(EXCLUDED)
    assert set(ir_segments) == expected_all, (
        f"IR segment partition mismatch: missing={sorted(expected_all - set(ir_segments))}, "
        f"extra={sorted(set(ir_segments) - expected_all)}"
    )
    covered = manifest_segments(manifest)
    assert set(covered) == set(roles), (
        f"semantic manifest set mismatch: missing={sorted(set(roles) - set(covered))}, "
        f"extra={sorted(set(covered) - set(roles))}"
    )
    for segment, (_, _, expected_op) in roles.items():
        assert ir_segments[segment] == expected_op, (
            f"semantic seg {segment}: IR op {ir_segments[segment]!r} != {expected_op!r}"
        )
        assert covered[segment] == expected_op, (
            f"semantic seg {segment}: manifest op {covered[segment]!r} != {expected_op!r}"
        )
    for segment, expected_op in EXCLUDED.items():
        assert ir_segments[segment] == expected_op, (
            f"excluded seg {segment}: IR op {ir_segments[segment]!r} != {expected_op!r}"
        )


def render(ir: dict, manifest: dict) -> str:
    validate(ir, manifest)
    structures = []
    proof_groups = []
    top_fields = []
    projection_index = {
        segment: index for index, segment in enumerate(semantic_roles())
    }
    for struct_name, doc, fields in ROLE_GROUPS:
        field_lines = "\n".join(
            f"  {field_name} : Seg{segment}.contract.spec rho"
            for field_name, segment, _ in fields
        )
        structures.append(
            f"/-- {doc} -/\n"
            f"structure {struct_name} (rho : Nat → DeployedF) : Prop where\n"
            f"{field_lines}"
        )
        top_name = TOP_FIELDS[struct_name]
        top_fields.append(f"  {top_name} : {struct_name} rho")
        projections = []
        for _, segment, _ in fields:
            index = projection_index[segment]
            projections.append(
                "hs"
                + "".join(".2" for _ in range(index))
                + ("" if index == 42 else ".1")
            )
        projection_lines = [
            ", ".join(projections[index : index + 4])
            for index in range(0, len(projections), 4)
        ]
        proof_groups.append(
            f"    {top_name} := ⟨{projection_lines[0]}"
            + "".join(f",\n      {line}" for line in projection_lines[1:])
            + "⟩"
        )

    return f"""import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Capstone

set_option maxRecDepth 100000

/-! # Protocol statement for the deployed note_reshape2x1 circuit

The structures below name every deployed segment spec by protocol role. They do
not restate circuit algebra: each field is the exact contract projection proved
by `Capstone`. This keeps the readable statement and deployed relation on one
generated proof path, including seated template wrappers.
GENERATED by gen/gen_statement.py — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Specs (DeployedF)

{"\n\n".join(structures)}

/-- Complete protocol-readable consequence of the exact deployed SR1CS relation. -/
structure NoteReshape2x1Statement (rho : Nat → DeployedF) : Prop where
{"\n".join(top_fields)}

/-- The exact deployed relation implies every named protocol obligation. -/
theorem note_reshape2x1_statement (rho : Nat → DeployedF) (h : relationAll rho) :
    NoteReshape2x1Statement rho := by
  have hs := note_reshape2x1_deployed_sound rho h
  exact {{
{"\n".join(proof_groups)}
  }}

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
"""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ir", type=Path, default=IR)
    parser.add_argument("--manifest", type=Path, default=MANIFEST)
    parser.add_argument("--out", type=Path, default=OUT)
    parser.add_argument(
        "--check",
        action="store_true",
        help="fail unless --out byte-matches the fresh IR/manifest rendering",
    )
    args = parser.parse_args()
    contents = render(
        json.loads(args.ir.read_text()), json.loads(args.manifest.read_text())
    )
    if args.check:
        if not args.out.exists() or args.out.read_text() != contents:
            raise SystemExit(
                f"stale generated statement: {args.out} does not match "
                f"{args.ir} and {args.manifest}"
            )
        print(f"checked {args.out} (43 semantic, 11 excluded segments)")
        return
    args.out.parent.mkdir(parents=True, exist_ok=True)
    if write_if_changed(args.out, contents):
        print(f"wrote {args.out} (43 semantic, 11 excluded segments)")


if __name__ == "__main__":
    main()
