#!/usr/bin/env python3
"""Generate exact NoteReshape 1x8 note-commitment refinement leaves."""

from __future__ import annotations

import argparse
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
OUTPUT = (
    ROOT
    / "tools/gnark/lean/ShielddGnarkFormal/Deployed"
    / "Generated/NoteReshape1x8Commitments.lean"
)

NOTES = [
    ("spend0", 8, "spend0", 9, "spend0StateProofCommitment"),
    ("output0", 19, "output0", 20, "output0NoteCommitmentClaimed"),
    ("output1", 23, "output1", 24, "output1NoteCommitmentClaimed"),
    ("output2", 27, "output2", 28, "output2NoteCommitmentClaimed"),
    ("output3", 31, "output3", 32, "output3NoteCommitmentClaimed"),
    ("output4", 35, "output4", 36, "output4NoteCommitmentClaimed"),
    ("output5", 39, "output5", 40, "output5NoteCommitmentClaimed"),
    ("output6", 43, "output6", 44, "output6NoteCommitmentClaimed"),
    ("output7", 47, "output7", 48, "output7NoteCommitmentClaimed"),
]


def fact_owner(prefix: str) -> str:
    return "spend0" if prefix == "spend0" else prefix


def render_hash(prefix: str, segment: int) -> str:
    owner = fact_owner(prefix)
    return f"""
theorem {prefix}NoteCommitmentHash
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    {prefix}NoteCommitmentComputed rho =
      Poseidon6Bridge.permSpec6 NoteReshapeCanonical.noteCommitmentDomain
        ({prefix}NoteCommitmentInputs0 rho)
        ({prefix}NoteCommitmentInputs1 rho)
        ({prefix}NoteCommitmentInputs2 rho)
        ({prefix}NoteCommitmentInputs3 rho)
        ({prefix}NoteCommitmentInputs4 rho)
        ({prefix}NoteCommitmentInputs5 rho) := by
  have h := facts.{owner}.GadgetNoteCommitmentSeg{segment}
  change
    Deployed.Templates.Semantics.TGadgetNoteCommitment_9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5.spec
      (Seg{segment}.localRho rho) at h
  have hw1 : Seg{segment}.wireSeating 1 = {wire(segment, 1)} := by decide
  have hw7 : Seg{segment}.wireSeating 7 = {wire(segment, 7)} := by decide
  have hw13 : Seg{segment}.wireSeating 13 = {wire(segment, 13)} := by decide
  have hw19 : Seg{segment}.wireSeating 19 = {wire(segment, 19)} := by decide
  have hw20 : Seg{segment}.wireSeating 20 = {wire(segment, 20)} := by decide
  have hw26 : Seg{segment}.wireSeating 26 = {wire(segment, 26)} := by decide
  have hw27 : Seg{segment}.wireSeating 27 = {wire(segment, 27)} := by decide
  have hw33 : Seg{segment}.wireSeating 33 = {wire(segment, 33)} := by decide
  have hw408 : Seg{segment}.wireSeating 408 = {wire(segment, 408)} := by decide
  have hw413 : Seg{segment}.wireSeating 413 = {wire(segment, 413)} := by decide
  have hw418 : Seg{segment}.wireSeating 418 = {wire(segment, 418)} := by decide
  have hw423 : Seg{segment}.wireSeating 423 = {wire(segment, 423)} := by decide
  have hw428 : Seg{segment}.wireSeating 428 = {wire(segment, 428)} := by decide
  have hw433 : Seg{segment}.wireSeating 433 = {wire(segment, 433)} := by decide
  have hw438 : Seg{segment}.wireSeating 438 = {wire(segment, 438)} := by decide
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide
  apply NoteReshapeCommitmentBridge.noteCommitmentHash_of_spec
    (Seg{segment}.localRho rho) h
  · simp only [
      {prefix}NoteCommitmentComputed, {prefix}NoteCommitmentComputedLC,
      Deployed.NoteCommitment.s38_1, Poseidon6Bridge.row7,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{segment}.localRho, Deployed.Templates.seated,
      hw408, hw413, hw418, hw423, hw428, hw433, hw438,
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
  · simp [{prefix}NoteCommitmentInputs5, {prefix}NoteCommitmentInputs5LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{segment}.localRho, Deployed.Templates.seated, hw33]
"""


def render_asserted(
    prefix: str, owner: str, segment: int, claimed: str
) -> str:
    seating_facts = "\n".join(
        f"  have hw{index} : Seg{segment}.wireSeating {index} = "
        f"{wire(segment, index)} := by decide"
        for index in range(1, 9)
    )
    return f"""
theorem {prefix}NoteCommitmentAsserted
    (rho : Nat → DeployedF)
    (facts : NoteReshape1x8CircuitFacts rho) :
    {claimed} rho = {prefix}NoteCommitmentComputed rho := by
  have h := facts.{owner}.AssertEqSeg{segment}
  change
    Deployed.Templates.Semantics.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55.spec
      (Seg{segment}.localRho rho) at h
{seating_facts}
  simp only [
    Deployed.Templates.Semantics.TAssertEq_2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55.spec,
    one_mul, Seg{segment}.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8
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
    NoteReshapeCanonical.noteCommitment
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
  have hclue :
      {prefix}NoteCommitmentInputs5 rho =
        (NoteReshapeCanonicalAddress1x8.shared rho).clueKey := by
    rfl
  refine NoteReshapeCanonical.noteCommitment_of_hash
    (NoteReshapeCanonicalAddress1x8.shared rho)
    ({prefix}NoteCommitmentInputs0 rho)
    ({prefix}NoteCommitmentInputs1 rho)
    ({claimed} rho) ?_
  rw [
    {prefix}NoteCommitmentAsserted rho facts,
    {prefix}NoteCommitmentHash rho facts,
    hasset, hdivFq, htransmissionFq, hclue
  ]
  rfl
"""


def wire(segment: int, index: int) -> int:
    source = (
        ROOT
        / "tools/gnark/lean/ShielddGnarkFormal/Deployed/Contracts"
        / f"NoteReshape1x8/Seg{segment}.lean"
    ).read_text()
    marker = "def wireSeatingTable : List Nat := ["
    body = source.split(marker, 1)[1].split("]", 1)[0]
    values = [int(value) for value in body.split(", ")]
    return values[index]


def render() -> str:
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
    for prefix, hash_segment, owner, assert_segment, claimed in NOTES:
        parts.append(render_hash(prefix, hash_segment))
        parts.append(render_asserted(prefix, owner, assert_segment, claimed))
        parts.append(render_bound(prefix, claimed))
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
        if not OUTPUT.is_file() or OUTPUT.read_text() != expected:
            raise SystemExit(f"generated file is stale: {OUTPUT}")
        return 0
    OUTPUT.parent.mkdir(parents=True, exist_ok=True)
    OUTPUT.write_text(expected)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
