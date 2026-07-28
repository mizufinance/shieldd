#!/usr/bin/env python3
"""Generate exact 4x1/8x1 note-commitment refinement leaves."""

from __future__ import annotations

import argparse
import re
from dataclasses import dataclass
from pathlib import Path

from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
DEPLOYED = ROOT / "tools/gnark/lean/ShielddGnarkFormal/Deployed"


@dataclass(frozen=True)
class Config:
    circuit: str
    module: str
    slots: int
    first_note_segment: int
    output_note_segment: int
    output_assert_segment: int


CONFIGS = (
    Config("note_reshape4x1", "NoteReshape4x1", 4, 14, 70, 71),
    Config("note_reshape8x1", "NoteReshape8x1", 8, 18, 130, 131),
)


def segment_source(config: Config, segment: int) -> Path:
    return (
        DEPLOYED
        / "Contracts"
        / config.module
        / f"Seg{segment}.lean"
    )


def wire(config: Config, segment: int, index: int) -> int:
    source = segment_source(config, segment).read_text()
    marker = "def wireSeatingTable : List Nat := ["
    body = source.split(marker, 1)[1].split("]", 1)[0]
    values = [int(value) for value in body.split(", ")]
    return values[index]


def semantic_template(config: Config, segment: int) -> str:
    source = segment_source(config, segment).read_text()
    match = re.search(
        r"Templates\.Generated\.(T[A-Za-z0-9]+_[0-9a-f]+)",
        source,
    )
    if match is None:
        raise ValueError(f"missing template import in {segment_source(config, segment)}")
    return match.group(1)


def spend_note_segment(config: Config, slot: int) -> int:
    return config.first_note_segment + 14 * slot


def render_hash(
    config: Config, prefix: str, owner: str, segment: int
) -> str:
    return f"""
theorem {prefix}NoteCommitmentHash
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho) :
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
  have hw1 : Seg{segment}.wireSeating 1 = {wire(config, segment, 1)} := by decide +kernel
  have hw7 : Seg{segment}.wireSeating 7 = {wire(config, segment, 7)} := by decide +kernel
  have hw13 : Seg{segment}.wireSeating 13 = {wire(config, segment, 13)} := by decide +kernel
  have hw19 : Seg{segment}.wireSeating 19 = {wire(config, segment, 19)} := by decide +kernel
  have hw20 : Seg{segment}.wireSeating 20 = {wire(config, segment, 20)} := by decide +kernel
  have hw26 : Seg{segment}.wireSeating 26 = {wire(config, segment, 26)} := by decide +kernel
  have hw27 : Seg{segment}.wireSeating 27 = {wire(config, segment, 27)} := by decide +kernel
  have hw33 : Seg{segment}.wireSeating 33 = {wire(config, segment, 33)} := by decide +kernel
  have hw408 : Seg{segment}.wireSeating 408 = {wire(config, segment, 408)} := by decide +kernel
  have hw413 : Seg{segment}.wireSeating 413 = {wire(config, segment, 413)} := by decide +kernel
  have hw418 : Seg{segment}.wireSeating 418 = {wire(config, segment, 418)} := by decide +kernel
  have hw423 : Seg{segment}.wireSeating 423 = {wire(config, segment, 423)} := by decide +kernel
  have hw428 : Seg{segment}.wireSeating 428 = {wire(config, segment, 428)} := by decide +kernel
  have hw433 : Seg{segment}.wireSeating 433 = {wire(config, segment, 433)} := by decide +kernel
  have hw438 : Seg{segment}.wireSeating 438 = {wire(config, segment, 438)} := by decide +kernel
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
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


def render_spend_asserted(
    config: Config,
    prefix: str,
    owner: str,
    segment: int,
    flag_wire: int,
    flag_role: str,
) -> str:
    template = semantic_template(config, segment)
    seating = "\n".join(
        f"  have hw{index} : Seg{segment}.wireSeating {index} = "
        f"{wire(config, segment, index)} := by decide +kernel"
        for index in range(1, 11)
    )
    return f"""
theorem {prefix}NoteCommitmentAsserted
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho)
    (real : {flag_role} rho = 0) :
    {prefix}StateProofCommitment rho =
      {prefix}NoteCommitmentComputed rho := by
  have realWire : rho {flag_wire} = 0 := by
    simpa [{flag_role}] using real
  have h := facts.control.AssertEqIfSeg{segment}
  change Deployed.Templates.Semantics.{template}.spec
    (Seg{segment}.localRho rho) at h
{seating}
  simp only [
    Deployed.Templates.Semantics.{template}.spec,
    Deployed.Templates.Semantics.{template}.residual,
    Seg{segment}.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8, hw9, hw10
  ] at h
  rcases h with disabled | equal
  · rw [realWire] at disabled
    have hzeroOne : (0 : DeployedF) ≠ 1 := by decide +kernel
    exact (hzeroOne disabled).elim
  · simp only [
      {prefix}StateProofCommitment, {prefix}StateProofCommitmentLC,
      {prefix}NoteCommitmentComputed, {prefix}NoteCommitmentComputedLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      zero_add, one_mul, add_zero
    ]
    linear_combination -equal
"""


def render_output_asserted(config: Config) -> str:
    segment = config.output_assert_segment
    template = semantic_template(config, segment)
    seating = "\n".join(
        f"  have hw{index} : Seg{segment}.wireSeating {index} = "
        f"{wire(config, segment, index)} := by decide +kernel"
        for index in range(1, len(
            segment_source(config, segment)
            .read_text()
            .split("def wireSeatingTable : List Nat := [", 1)[1]
            .split("]", 1)[0]
            .split(", ")
        ))
    )
    indices = ", ".join(
        f"hw{index}"
        for index in range(1, len(
            segment_source(config, segment)
            .read_text()
            .split("def wireSeatingTable : List Nat := [", 1)[1]
            .split("]", 1)[0]
            .split(", ")
        ))
    )
    return f"""
theorem output0NoteCommitmentAsserted
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho) :
    output0NoteCommitmentClaimed rho =
      output0NoteCommitmentComputed rho := by
  have h := facts.output0.AssertEqSeg{segment}
  change Deployed.Templates.Semantics.{template}.spec
    (Seg{segment}.localRho rho) at h
{seating}
  simp only [
    Deployed.Templates.Semantics.{template}.spec,
    Seg{segment}.localRho, Deployed.Templates.seated, {indices}, one_mul
  ] at h
  simp only [
    output0NoteCommitmentClaimed, output0NoteCommitmentClaimedLC,
    output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h
"""


def render_bound(
    config: Config,
    prefix: str,
    claimed: str,
    real_flag_role: str | None,
) -> str:
    real_parameter = (
        f"\n    (real : {real_flag_role} rho = 0)"
        if real_flag_role is not None
        else ""
    )
    real_argument = " real" if real_flag_role is not None else ""
    asserted = f"{prefix}NoteCommitmentAsserted rho facts{real_argument}"
    return f"""
theorem {prefix}Commitment
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho){real_parameter} :
    NoteReshapeCanonical.noteCommitment
      (NoteReshapeCanonicalAddress{config.module.removeprefix('NoteReshape')}.shared rho)
      ({prefix}NoteCommitmentInputs0 rho)
      ({prefix}NoteCommitmentInputs1 rho)
      ({claimed} rho) := by
  have hasset :
      {prefix}NoteCommitmentInputs2 rho =
        (NoteReshapeCanonicalAddress{config.module.removeprefix('NoteReshape')}.shared rho).assetId := by
    rfl
  have hdivFq :
      {prefix}NoteCommitmentInputs3 rho =
        NoteReshapeCanonicalAddress{config.module.removeprefix('NoteReshape')}.divGenFq rho := by
    rw [
      ← NoteReshapeCanonicalAddress{config.module.removeprefix('NoteReshape')}.sharedDivGenFq_eq_divGenFq
        rho
    ]
    rfl
  have htransmissionFq :
      {prefix}NoteCommitmentInputs4 rho =
        NoteReshapeCanonicalAddress{config.module.removeprefix('NoteReshape')}.transmissionFq rho := by
    rw [
      ← NoteReshapeCanonicalAddress{config.module.removeprefix('NoteReshape')}.sharedTransmissionFq_eq_transmissionFq
        rho
    ]
    rfl
  have hclue :
      {prefix}NoteCommitmentInputs5 rho =
        (NoteReshapeCanonicalAddress{config.module.removeprefix('NoteReshape')}.shared rho).clueKey := by
    rfl
  refine NoteReshapeCanonical.noteCommitment_of_hash
    (NoteReshapeCanonicalAddress{config.module.removeprefix('NoteReshape')}.shared rho)
    ({prefix}NoteCommitmentInputs0 rho)
    ({prefix}NoteCommitmentInputs1 rho)
    ({claimed} rho) ?_
  rw [
    {asserted},
    {prefix}NoteCommitmentHash rho facts,
    hasset, hdivFq, htransmissionFq, hclue
  ]
  rfl
"""


def render(config: Config) -> str:
    shape = config.module.removeprefix("NoteReshape")
    parts = [
        f"""/- GENERATED by gen_note_reshape_padded_commitments.py — do not edit. -/
import ShielddGnarkFormal.Deployed.NoteReshapeCanonicalAddress{shape}
import ShielddGnarkFormal.Deployed.Contracts.{config.module}.RoleBindings
import ShielddGnarkFormal.NoteReshapeCommitmentBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Generated.{config.module}Commitments

open Shieldd.GnarkFormal
open Contracts.{config.module}
open Contracts.{config.module}.Witness (
  {" ".join(f"syntheticSpends{slot}IsDummy" for slot in range(config.slots))}
)
"""
    ]
    for slot in range(config.slots):
        prefix = f"spend{slot}"
        owner = prefix
        note_segment = spend_note_segment(config, slot)
        assert_segment = note_segment + 1
        flag_wire = 95 + 82 * slot
        flag_role = f"syntheticSpends{slot}IsDummy"
        parts.append(render_hash(config, prefix, owner, note_segment))
        parts.append(
            render_spend_asserted(
                config, prefix, owner, assert_segment, flag_wire, flag_role
            )
        )
        parts.append(
            render_bound(
                config,
                prefix,
                f"{prefix}StateProofCommitment",
                flag_role,
            )
        )
    parts.append(
        render_hash(
            config,
            "output0",
            "output0",
            config.output_note_segment,
        )
    )
    parts.append(render_output_asserted(config))
    parts.append(
        render_bound(
            config,
            "output0",
            "output0NoteCommitmentClaimed",
            None,
        )
    )
    parts.append(
        f"\nend Shieldd.GnarkFormal.Deployed.Generated.{config.module}Commitments\n"
    )
    return "".join(parts)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    for config in CONFIGS:
        output = DEPLOYED / "Generated" / f"{config.module}Commitments.lean"
        expected = render(config)
        if args.check:
            if not output.is_file() or output.read_text() != expected:
                raise SystemExit(f"generated file is stale: {output}")
        else:
            write_if_changed(output, expected)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
