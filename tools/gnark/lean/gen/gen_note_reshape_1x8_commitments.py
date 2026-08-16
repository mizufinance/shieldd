#!/usr/bin/env python3
"""Generate exact NoteReshape 1x8 note-commitment refinement leaves."""

from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path

from note_reshape_adapter_model import Deployment
from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
OUTPUT = (
    ROOT
    / "tools/gnark/lean/ShielddGnarkFormal/Deployed"
    / "Generated/NoteReshape1x8Commitments.lean"
)

NOTE_COMMITMENT_TEMPLATE = (
    "gadget.note_commitment@"
    "252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c"
)
ASSERT_EQ_TEMPLATE = (
    "assert.eq@"
    "c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240"
)


@dataclass(frozen=True)
class Note:
    prefix: str
    owner: str
    hash_segment: dict
    assert_segment: dict
    claimed: str


def deployment() -> Deployment:
    return Deployment.load("note_reshape1x8", "NoteReshape1x8", (1, 8))


def note_segments(model: Deployment) -> list[Note]:
    notes = []
    for prefix in ("spend0", *(f"output{slot}" for slot in range(8))):
        computed_role = f"{prefix}.note.commitment.computed"
        hash_segment = model.segment(
            "gadget.note_commitment",
            (
                f"blinding={prefix}.note.blinding",
                f"amount={prefix}.note.amount",
                "asset_id=shared.asset_id",
                "div_gen_fq=shared.div_gen_fq",
                "transmission_key_s=shared.transmission.fq",
                f"out={computed_role}",
            ),
        )
        if hash_segment["proof_template_id"] != NOTE_COMMITMENT_TEMPLATE:
            raise ValueError(
                f"{model.circuit}: {prefix} note-commitment template drifted"
            )
        claimed_role = (
            "spend0.state_proof.commitment"
            if prefix == "spend0"
            else f"{prefix}.note.commitment.claimed"
        )
        trace_claimed = (
            claimed_role
            if prefix == "spend0"
            else f"{prefix}.note_commitment"
        )
        assert_segment = model.segment(
            "assert.eq",
            (f"lhs={computed_role}", f"rhs={trace_claimed}"),
        )
        if assert_segment["proof_template_id"] != ASSERT_EQ_TEMPLATE:
            raise ValueError(
                f"{model.circuit}: {prefix} commitment assertion template drifted"
            )
        model.consecutive((hash_segment, assert_segment))
        model.require_binding_role(
            hash_segment,
            f"{prefix}.note_commitment.inputs",
            "input",
            exact=True,
            arity=5,
        )
        model.require_binding_role(
            hash_segment,
            computed_role,
            "output",
            exact=True,
            arity=1,
        )
        model.require_binding_role(
            assert_segment,
            computed_role,
            "input",
            exact=True,
            arity=1,
        )
        claimed_wire_role = "output" if prefix == "spend0" else "internal"
        model.require_binding_role(
            assert_segment,
            claimed_role,
            claimed_wire_role,
            exact=True,
            arity=1,
        )
        notes.append(
            Note(
                prefix=prefix,
                owner=prefix,
                hash_segment=hash_segment,
                assert_segment=assert_segment,
                claimed=(
                    "spend0StateProofCommitment"
                    if prefix == "spend0"
                    else f"{prefix}NoteCommitmentClaimed"
                ),
            )
        )
    return notes


def fact_owner(prefix: str) -> str:
    return "spend0" if prefix == "spend0" else prefix


def render_hash(model: Deployment, prefix: str, segment_data: dict) -> str:
    owner = fact_owner(prefix)
    segment = segment_data["index"]
    return f"""
theorem {prefix}NoteCommitmentHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    {prefix}NoteCommitmentComputed rho =
      Poseidon5Bridge.permSpec5 NoteReshapeCanonical.noteCommitmentDomain
        ({prefix}NoteCommitmentInputs0 rho)
        ({prefix}NoteCommitmentInputs1 rho)
        ({prefix}NoteCommitmentInputs2 rho)
        ({prefix}NoteCommitmentInputs3 rho)
        ({prefix}NoteCommitmentInputs4 rho) := by
  have h := facts.{owner}.GadgetNoteCommitmentSeg{segment}
  change
    Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.spec
      (Seg{segment}.localRho rho) at h
  have hw1 : Seg{segment}.wireSeating 1 = {wire(model, segment_data, 1)} := by decide +kernel
  have hw7 : Seg{segment}.wireSeating 7 = {wire(model, segment_data, 7)} := by decide +kernel
  have hw13 : Seg{segment}.wireSeating 13 = {wire(model, segment_data, 13)} := by decide +kernel
  have hw19 : Seg{segment}.wireSeating 19 = {wire(model, segment_data, 19)} := by decide +kernel
  have hw20 : Seg{segment}.wireSeating 20 = {wire(model, segment_data, 20)} := by decide +kernel
  have hw26 : Seg{segment}.wireSeating 26 = {wire(model, segment_data, 26)} := by decide +kernel
  have hw27 : Seg{segment}.wireSeating 27 = {wire(model, segment_data, 27)} := by decide +kernel
  have hw372 : Seg{segment}.wireSeating 372 = {wire(model, segment_data, 372)} := by decide +kernel
  have hw377 : Seg{segment}.wireSeating 377 = {wire(model, segment_data, 377)} := by decide +kernel
  have hw382 : Seg{segment}.wireSeating 382 = {wire(model, segment_data, 382)} := by decide +kernel
  have hw387 : Seg{segment}.wireSeating 387 = {wire(model, segment_data, 387)} := by decide +kernel
  have hw392 : Seg{segment}.wireSeating 392 = {wire(model, segment_data, 392)} := by decide +kernel
  have hw397 : Seg{segment}.wireSeating 397 = {wire(model, segment_data, 397)} := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  apply NoteReshapeCommitmentBridge.noteCommitmentHash_of_spec
    (Seg{segment}.localRho rho) h
  · simp only [
      {prefix}NoteCommitmentComputed, {prefix}NoteCommitmentComputedLC,
      Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.output,
      Deployed.CertifiedGadgetNoteCommitment_252c34d237e9Poseidon.s38_1,
      Deployed.Poseidon5Link.row6,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{segment}.localRho, Deployed.Templates.seated,
      hw372, hw377, hw382, hw387, hw392, hw397,
      zero_add, add_zero, one_mul]
    ring
  · simp [{prefix}NoteCommitmentInputs0, {prefix}NoteCommitmentInputs0LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{segment}.localRho, Deployed.Templates.seated, hw1]
  · simp [{prefix}NoteCommitmentInputs1, {prefix}NoteCommitmentInputs1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{segment}.localRho, Deployed.Templates.seated, hw7]
  · simp [{prefix}NoteCommitmentInputs2, {prefix}NoteCommitmentInputs2LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{segment}.localRho, Deployed.Templates.seated, hw13]
  · simp [{prefix}NoteCommitmentInputs3, {prefix}NoteCommitmentInputs3LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{segment}.localRho, Deployed.Templates.seated, hw19, hw20, hneg]
    ring
  · simp [{prefix}NoteCommitmentInputs4, {prefix}NoteCommitmentInputs4LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{segment}.localRho, Deployed.Templates.seated, hw26, hw27, hneg]
    ring
"""


def render_asserted(
    model: Deployment,
    prefix: str,
    owner: str,
    segment_data: dict,
    claimed: str,
) -> str:
    segment = segment_data["index"]
    seating_facts = "\n".join(
        f"  have hw{index} : Seg{segment}.wireSeating {index} = "
        f"{wire(model, segment_data, index)} := by decide +kernel"
        for index in range(1, 8)
    )
    return f"""
theorem {prefix}NoteCommitmentAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    {claimed} rho = {prefix}NoteCommitmentComputed rho := by
  have h := facts.{owner}.AssertEqSeg{segment}
  change
    Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.spec
      (Seg{segment}.localRho rho) at h
{seating_facts}
  simp only [
    Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.spec,
    one_mul, Seg{segment}.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7
  ] at h
  simp only [
    {claimed}, {claimed}LC,
    {prefix}NoteCommitmentComputed, {prefix}NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h
"""


def render_bound(prefix: str, claimed: str) -> str:
    return f"""
theorem {prefix}Commitment
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    Protocol.NoteReshape.Concrete.noteCommitment
      (NoteReshapeCanonicalAddress1x8.shared rho)
      ({prefix}NoteCommitmentInputs0 rho)
      ({prefix}NoteCommitmentInputs1 rho)
      ({claimed} rho) := by
  have hasset :
      {prefix}NoteCommitmentInputs2 rho =
        (NoteReshapeCanonicalAddress1x8.shared rho).assetId := by
    rfl
  have hdivFq :
      {prefix}NoteCommitmentInputs3 rho =
        NoteReshapeCanonicalAddress1x8.divGenFq rho := by
    rw [← NoteReshapeCanonicalAddress1x8.sharedDivGenFq_eq_divGenFq rho]
    rfl
  have htransmissionFq :
      {prefix}NoteCommitmentInputs4 rho =
        NoteReshapeCanonicalAddress1x8.transmissionFq rho := by
    rw [
      ← NoteReshapeCanonicalAddress1x8.sharedTransmissionFq_eq_transmissionFq
        rho
    ]
    rfl
  refine NoteReshapeCanonical.noteCommitment_of_hash
    (NoteReshapeCanonicalAddress1x8.shared rho)
    ({prefix}NoteCommitmentInputs0 rho)
    ({prefix}NoteCommitmentInputs1 rho)
    ({claimed} rho) ?_
  rw [
    {prefix}NoteCommitmentAsserted rho facts,
    {prefix}NoteCommitmentHash rho facts,
    hasset, hdivFq, htransmissionFq
  ]
  rfl
"""


def wire(model: Deployment, segment: dict, index: int) -> int:
    return model.seating(segment)[index]


def render() -> str:
    model = deployment()
    parts = [
        """/-
GENERATED by gen/gen_note_reshape_1x8_commitments.py — do not edit by hand.
-/
import ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress1x8
import ShielddGnarkFormal.NoteReshapeCommitmentBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Generated.NoteReshape1x8Commitments

open Shieldd.GnarkFormal
open Contracts.NoteReshape1x8
"""
    ]
    for note in note_segments(model):
        parts.append(render_hash(model, note.prefix, note.hash_segment))
        parts.append(
            render_asserted(
                model,
                note.prefix,
                note.owner,
                note.assert_segment,
                note.claimed,
            )
        )
        parts.append(render_bound(note.prefix, note.claimed))
    parts.append(
        "\nend Shieldd.GnarkFormal.Deployed.Generated.NoteReshape1x8Commitments\n"
    )
    return "".join(parts)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    expected = render()
    if args.check:
        if not OUTPUT.is_file() or OUTPUT.read_text(encoding="utf-8") != expected:
            raise SystemExit(f"generated file is stale: {OUTPUT}")
        return 0
    OUTPUT.parent.mkdir(parents=True, exist_ok=True)
    write_if_changed(OUTPUT, expected)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
