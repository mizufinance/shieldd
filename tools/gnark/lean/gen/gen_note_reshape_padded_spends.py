#!/usr/bin/env python3
"""Generate exact padded-spend refinement leaves for NoteReshape 8x1."""

from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path

import gen_note_reshape_family as family
from note_reshape_adapter_model import Deployment
from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
DEPLOYED = ROOT / "tools/gnark/lean/ShielddGnarkFormal/Deployed"


@dataclass(frozen=True)
class Config:
    circuit: str
    module: str
    slots: int


CONFIGS = (
    Config("note_reshape8x1", "NoteReshape8x1", 8),
)


EXPECTED_TEMPLATES = {
    "gadget.nullifier": (
        "gadget.nullifier@"
        "e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72"
    ),
    "gadget.state_commitment_path": (
        "gadget.state_commitment_path@"
        "f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb"
    ),
    "assert.eq_if.anchor": (
        "assert.eq_if@"
        "36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03"
    ),
    "dummy.mux": (
        "dummy.mux@"
        "6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce"
    ),
    "assert.eq.nullifier": (
        "assert.eq@"
        "460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3"
    ),
    "decaf.randomized_verification_key": (
        "decaf.randomized_verification_key@"
        "1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f"
    ),
    "decaf.assert_equivalent_if": (
        "decaf.assert_equivalent_if@"
        "5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f"
    ),
    "assert.eq_if.amount": (
        "assert.eq_if@"
        "ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d"
    ),
    "decaf.compress_to_field": (
        "decaf.compress_to_field@"
        "231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb"
    ),
}
DUMMY_NULLIFIER_TEMPLATES = {
    "gadget.synthetic_dummy_nullifier@" + digest
    for digest in (
        "5cd0e472453822bbff47f6ae87a0159b05bde5f090330ae8a3cf1c866140651b",
        "3edcab52633f974735eeca941a2949c3c8157898b6f240983c6b42a1c5e59dd6",
        "58423f06a7f0cb831a6dadec90f949fb98ce7e0ce7482eb07d0f43f54791ef32",
        "ac7ad308d1eedcc895ef7cfce1c01cd077579dee1a4f143d5dcb664af3af5907",
        "46634cb71def9ddee7f509167e3e285ee57f9d7b8279ae43d754e872405182a0",
        "100a96548743160160928cfe001821ba838bef079e180fd7d6cf0df70b5b37c8",
        "b279304617fa393c48531d8db69795487f05219663ce38c6233e57eb19d14144",
        "64839ee66e275b88a07503fe67a1844f1fc184ce0fc2a0b6122562914cae6cfa",
    )
}


@dataclass(frozen=True)
class Spend:
    nullifier: dict
    state: dict
    anchor_assert: dict
    dummy: dict
    mux: dict
    nullifier_assert: dict
    rvk: dict
    equivalent: dict
    amount_assert: dict
    compress: dict
    witness: int
    position: int
    randomizer: int
    flag: int
    seed: int


def load(config: Config) -> Deployment:
    return Deployment.load(
        config.circuit,
        config.module,
        (config.slots, 1),
    )


def wire(model: Deployment, segment: dict, local: int) -> int:
    return model.seating(segment)[local]


def template(segment: dict) -> str:
    return family.template_name(segment["proof_template_id"])


def seating(
    model: Deployment,
    segment: dict,
    locals_: list[int],
) -> str:
    index = segment["index"]
    return "\n".join(
        f"  have hw{local} : Seg{index}.wireSeating {local} = "
        f"{wire(model, segment, local)} := by decide +kernel"
        for local in locals_
    )


def _expect_template(
    model: Deployment,
    segment: dict,
    role: str,
) -> None:
    expected = (
        DUMMY_NULLIFIER_TEMPLATES
        if role == "gadget.synthetic_dummy_nullifier"
        else {EXPECTED_TEMPLATES[role]}
    )
    if segment["proof_template_id"] not in expected:
        raise ValueError(
            f"{model.circuit}: {role} template drifted at "
            f"segment {segment['index']}"
        )


def spend(model: Deployment, slot: int) -> Spend:
    prefix = f"spend{slot}"
    nullifier = model.segment(
        "gadget.nullifier",
        (
            "nk=auth.nk",
            f"commitment={prefix}.state_proof.commitment",
            f"position={prefix}.state_proof.position",
            f"out={prefix}.nullifier.real",
        ),
    )
    state = model.segment(
        "gadget.state_commitment_path",
        (
            f"commitment={prefix}.state_proof.commitment",
            f"position={prefix}.state_proof.position",
            f"path={prefix}.state_proof.path",
            f"out={prefix}.anchor.computed",
        ),
    )
    anchor_assert = model.segment(
        "assert.eq_if",
        (
            f"lhs={prefix}.anchor.computed",
            "rhs=anchor",
            f"enabled={prefix}.is_real",
        ),
    )
    dummy = model.segment(
        "gadget.synthetic_dummy_nullifier",
        (
            f"seed={prefix}.dummy_nullifier_seed",
            f"randomizer={prefix}.auth_randomizer",
            f"slot={slot}",
            f"out={prefix}.nullifier.dummy",
        ),
    )
    mux = model.segment(
        "dummy.mux",
        (
            f"flag={prefix}.is_dummy",
            f"real={prefix}.nullifier.real",
            f"dummy={prefix}.nullifier.dummy",
            f"out={prefix}.nullifier.selected",
        ),
    )
    nullifier_assert = model.segment(
        "assert.eq",
        (
            f"lhs={prefix}.nullifier",
            f"rhs={prefix}.nullifier.selected",
        ),
    )
    rvk = model.segment(
        "decaf.randomized_verification_key",
        (
            "ak=shared.ak",
            f"randomizer={prefix}.auth_randomizer",
            f"out={prefix}.rk.real",
        ),
    )
    equivalent = model.segment(
        "decaf.assert_equivalent_if",
        (
            f"lhs={prefix}.rk.real",
            f"rhs={prefix}.rk.claimed",
            f"enabled={prefix}.is_real",
        ),
    )
    amount_assert = model.segment(
        "assert.eq_if",
        (
            f"lhs={prefix}.note.amount",
            "rhs=0",
            f"enabled={prefix}.is_dummy",
        ),
    )
    compress = model.segment(
        "decaf.compress_to_field",
        (
            f"in={prefix}.rk.claimed",
            f"out={prefix}.rk.compressed",
        ),
    )
    segments = (
        nullifier,
        state,
        anchor_assert,
        dummy,
        mux,
        nullifier_assert,
        rvk,
        equivalent,
        amount_assert,
        compress,
    )
    model.consecutive(segments)
    for segment, role in zip(
        segments,
        (
            "gadget.nullifier",
            "gadget.state_commitment_path",
            "assert.eq_if.anchor",
            "gadget.synthetic_dummy_nullifier",
            "dummy.mux",
            "assert.eq.nullifier",
            "decaf.randomized_verification_key",
            "decaf.assert_equivalent_if",
            "assert.eq_if.amount",
            "decaf.compress_to_field",
        ),
        strict=True,
    ):
        _expect_template(model, segment, role)

    witness = model.witness_wire(f"SyntheticSpends_{slot}_Nullifier")
    position = model.witness_wire(
        f"SyntheticSpends_{slot}_StateProof_Position"
    )
    randomizer = model.witness_wire(
        f"SyntheticSpends_{slot}_AuthRandomizer"
    )
    flag = model.witness_wire(f"SyntheticSpends_{slot}_IsDummy")
    seed = model.witness_wire(
        f"SyntheticSpends_{slot}_DummyNullifierSeed"
    )
    amount = model.witness_wire(f"SyntheticSpends_{slot}_Note_Amount")
    commitment = model.witness_wire(
        f"SyntheticSpends_{slot}_StateProof_Commitment"
    )
    rk_x = model.witness_wire(f"SyntheticSpends_{slot}_RK_X")
    rk_y = model.witness_wire(f"SyntheticSpends_{slot}_RK_Y")

    for segment, wire_id in (
        (nullifier, position),
        (anchor_assert, flag),
        (dummy, seed),
        (dummy, randomizer),
        (mux, flag),
        (equivalent, flag),
        (amount_assert, amount),
        (amount_assert, flag),
        (compress, rk_x),
        (compress, rk_y),
    ):
        model.require_wire_role(segment, wire_id, "input")
    model.require_wire_role(state, position, "internal")
    model.require_wire_role(rvk, randomizer, "internal")
    for segment, name, role, exact, arity in (
        (nullifier, f"{prefix}.nullifier.real", "output", True, 1),
        (state, f"{prefix}.anchor.computed", "output", True, 1),
        (anchor_assert, f"{prefix}.anchor.computed", "input", False, 1),
        (dummy, f"{prefix}.nullifier.dummy", "output", True, 1),
        (mux, f"{prefix}.nullifier.real", "input", False, 1),
        (mux, f"{prefix}.nullifier.dummy", "input", False, 1),
        (mux, f"{prefix}.nullifier.selected", "output", True, 1),
        (nullifier_assert, f"{prefix}.nullifier.claimed", "input", False, 1),
        (nullifier_assert, f"{prefix}.nullifier.selected", "input", False, 1),
        (rvk, f"{prefix}.rk.real", "input", False, 2),
        (equivalent, f"{prefix}.rk.real", "input", False, 2),
        (equivalent, f"{prefix}.rk.claimed", "input", False, 2),
        (compress, f"{prefix}.rk.claimed", "input", False, 2),
        (compress, f"{prefix}.rk.compressed", "output", True, 1),
    ):
        model.require_binding_role(
            segment, name, role, exact=exact, arity=arity
        )
    model.require_wire_role(nullifier_assert, witness, "input")
    model.require_wire_role(state, commitment, "input")
    return Spend(
        nullifier=nullifier,
        state=state,
        anchor_assert=anchor_assert,
        dummy=dummy,
        mux=mux,
        nullifier_assert=nullifier_assert,
        rvk=rvk,
        equivalent=equivalent,
        amount_assert=amount_assert,
        compress=compress,
        witness=witness,
        position=position,
        randomizer=randomizer,
        flag=flag,
        seed=seed,
    )


def render_slot(config: Config, slot: int) -> str:
    model = load(config)
    discovered = spend(model, slot)
    prefix = f"spend{slot}"
    owner = prefix
    nullifier = discovered.nullifier["index"]
    state = discovered.state["index"]
    anchor_assert = discovered.anchor_assert["index"]
    dummy = discovered.dummy["index"]
    mux = discovered.mux["index"]
    nullifier_assert = discovered.nullifier_assert["index"]
    rvk = discovered.rvk["index"]
    equivalent = discovered.equivalent["index"]
    amount_assert = discovered.amount_assert["index"]
    compress = discovered.compress["index"]
    witness = discovered.witness
    position = discovered.position
    randomizer = discovered.randomizer
    flag = discovered.flag
    seed = discovered.seed
    dummy_template = template(discovered.dummy)
    anchor_template = template(discovered.anchor_assert)
    mux_template = template(discovered.mux)
    assert_template = template(discovered.nullifier_assert)
    equivalent_template = template(discovered.equivalent)
    amount_template = template(discovered.amount_assert)
    compress_template = template(discovered.compress)
    family = config.module.removeprefix("NoteReshape")
    position_role = f"syntheticSpends{slot}StateProofPosition"
    randomizer_role = f"syntheticSpends{slot}AuthRandomizer"
    seed_role = f"syntheticSpends{slot}DummyNullifierSeed"

    return f"""\
/- GENERATED by gen_note_reshape_padded_spends.py — do not edit. -/
import ShielddGnarkFormal.Deployed.{config.module}Refinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Generated.{config.module}Spend{slot}

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal
open Protocol.NoteReshape
open NoteReshapeCanonical
open Contracts.{config.module}
open Contracts.{config.module}.Witness (
  {position_role} {randomizer_role} {seed_role}
)
open {config.module}Refinement.C

theorem realNullifierHash
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho) :
    {prefix}NullifierReal rho =
      Poseidon3Bridge.permSpec3 Poseidon3Bridge.nullifierDomainLit
        (authNk rho) ({prefix}StateProofCommitment rho)
          ({position_role} rho) := by
  have h := facts.{owner}.GadgetNullifierSeg{nullifier}
  change
    Deployed.Templates.Semantics.TGadgetNullifier_e058e302574710457998f9c85ec82e29fc7fa0a720bf8e89d316559ea7e0da72.spec
      (Seg{nullifier}.localRho rho) at h
{seating(model, discovered.nullifier, [1, 7, 13, 298, 303, 308, 313])}
  apply NoteReshapeMembershipBridge.nullifierHash_of_spec
    (Seg{nullifier}.localRho rho) h
  · simp [
      {prefix}NullifierReal, {prefix}NullifierRealLC,
      Deployed.Nullifier.s38_1, Deployed.Poseidon3Link.row4,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{nullifier}.localRho, Deployed.Templates.seated,
      hw298, hw303, hw308, hw313
    ]
    ring
  · simp [authNk, authNkLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{nullifier}.localRho, Deployed.Templates.seated, hw1]
  · simp [{prefix}StateProofCommitment, {prefix}StateProofCommitmentLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{nullifier}.localRho, Deployed.Templates.seated, hw7]
  · simp [{position_role},
      Seg{nullifier}.localRho, Deployed.Templates.seated, hw13]

theorem anchorAsserted
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho)
    (real : rho {flag} = 0) :
    anchor rho = {prefix}AnchorComputed rho := by
  have h := facts.control.AssertEqIfSeg{anchor_assert}
  change Deployed.Templates.Semantics.{anchor_template}.spec
    (Seg{anchor_assert}.localRho rho) at h
{seating(model, discovered.anchor_assert, list(range(1, 9)))}
  simp only [
    Deployed.Templates.Semantics.{anchor_template}.spec,
    Deployed.Templates.Semantics.{anchor_template}.guard,
    Deployed.Templates.Semantics.{anchor_template}.residual,
    Seg{anchor_assert}.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8
  ] at h
  rcases h with disabled | equal
  · rw [real] at disabled
    have hOneZero : (1 : DeployedF) = 0 := by
      simpa using disabled
    have hzeroOne : (0 : DeployedF) ≠ 1 := by decide +kernel
    exact (hzeroOne hOneZero.symm).elim
  · simp only [
      anchor, anchorLC, {prefix}AnchorComputed, {prefix}AnchorComputedLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      zero_add, one_mul, add_zero
    ]
    linear_combination -equal

theorem member
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho)
    (real : rho {flag} = 0) :
    NoteReshapeCanonical.member (anchor rho) (realInput{slot} rho) := by
  have h := facts.{owner}.GadgetStateCommitmentPathSeg{state}
  change
    Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.spec
      (Seg{state}.localRho rho) at h
{seating(model, discovered.state, [1, 280, 8972, 8977, 8982, 8987, 8992])}
  apply NoteReshapeMembershipBridge.member_of_state_spec
    (Seg{state}.localRho rho) (realInput{slot} rho) (anchor rho) h
  · simp [realInput{slot}, {prefix}StateProofCommitment,
      {prefix}StateProofCommitmentLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{state}.localRho, Deployed.Templates.seated, hw1]
  · simp [realInput{slot}, {position_role}, Seg{state}.localRho,
      Deployed.Templates.seated, hw280]
  · rfl
  · rw [anchorAsserted rho facts real]
    simp [
      {prefix}AnchorComputed, {prefix}AnchorComputedLC,
      NoteReshapeMembershipBridge.stateRootOutput,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{state}.localRho, Deployed.Templates.seated,
      hw8972, hw8977, hw8982, hw8987, hw8992
    ]
    ring

theorem dummyNullifierHash
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho) :
    {prefix}NullifierDummy rho =
      Poseidon3Bridge.permSpec3
        NoteReshapeCanonical.syntheticDummyNullifierDomain
        ({seed_role} rho) ({randomizer_role} rho)
          ({slot} : DeployedF) := by
  have h := facts.{owner}.GadgetSyntheticDummyNullifierSeg{dummy}
  change Deployed.Templates.Semantics.{dummy_template}.spec
    (Seg{dummy}.localRho rho) at h
{seating(model, discovered.dummy, [1, 7, 292, 297, 302, 307])}
  calc
    {prefix}NullifierDummy rho =
        Deployed.Nullifier.s38_1
          (Seg{dummy}.localRho rho 292) (Seg{dummy}.localRho rho 297)
          (Seg{dummy}.localRho rho 302) (Seg{dummy}.localRho rho 307) := by
      simp [
        {prefix}NullifierDummy, {prefix}NullifierDummyLC,
        Deployed.Nullifier.s38_1, Deployed.Poseidon3Link.row4,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg{dummy}.localRho, Deployed.Templates.seated,
        hw292, hw297, hw302, hw307
      ]
      ring
    _ = Poseidon3Bridge.permSpec3
          NoteReshapeCanonical.syntheticDummyNullifierDomain
          ({seed_role} rho) ({randomizer_role} rho)
            ({slot} : DeployedF) := by
      simpa [
        Deployed.Templates.Semantics.{dummy_template}.spec,
        NoteReshapeCanonical.syntheticDummyNullifierDomain,
        {seed_role}, {randomizer_role},
        Seg{dummy}.localRho, Deployed.Templates.seated, hw1, hw7
      ] using h

theorem claimedNullifierReal
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho)
    (real : rho {flag} = 0) :
    {prefix}NullifierClaimed rho = {prefix}NullifierReal rho := by
  have hm := facts.control.DummyMuxSeg{mux}
  change Deployed.Templates.Semantics.{mux_template}.spec
    (Seg{mux}.localRho rho) at hm
{seating(model, discovered.mux, list(range(1, 12)))}
  simp only [
    Deployed.Templates.Semantics.{mux_template}.spec,
    Seg{mux}.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8, hw9, hw10, hw11
  ] at hm
  have he := facts.{owner}.AssertEqSeg{nullifier_assert}
  change Deployed.Templates.Semantics.{assert_template}.spec
    (Seg{nullifier_assert}.localRho rho) at he
{seating(model, discovered.nullifier_assert, [1, 2, 3])}
  simp only [
    Deployed.Templates.Semantics.{assert_template}.spec,
    Seg{nullifier_assert}.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3
  ] at he
  simp [real] at hm
  simp only [
    {prefix}NullifierClaimed, {prefix}NullifierClaimedLC,
    {prefix}NullifierReal, {prefix}NullifierRealLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  linear_combination -he + hm.1 + hm.2

theorem claimedNullifierSelected
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho) :
    {prefix}NullifierClaimed rho = {prefix}NullifierSelected rho := by
  have h := facts.{owner}.AssertEqSeg{nullifier_assert}
  change Deployed.Templates.Semantics.{assert_template}.spec
    (Seg{nullifier_assert}.localRho rho) at h
{seating(model, discovered.nullifier_assert, [1, 2, 3])}
  simp only [
    Deployed.Templates.Semantics.{assert_template}.spec,
    Seg{nullifier_assert}.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3
  ] at h
  simpa [
    {prefix}NullifierClaimed, {prefix}NullifierClaimedLC,
    {prefix}NullifierSelected, {prefix}NullifierSelectedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual
  ] using h.symm

theorem claimedNullifierDummy
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho)
    (dummyFlag : rho {flag} = 1) :
    {prefix}NullifierClaimed rho = {prefix}NullifierDummy rho := by
  have hm := facts.control.DummyMuxSeg{mux}
  change Deployed.Templates.Semantics.{mux_template}.spec
    (Seg{mux}.localRho rho) at hm
{seating(model, discovered.mux, list(range(1, 12)))}
  simp only [
    Deployed.Templates.Semantics.{mux_template}.spec,
    Seg{mux}.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7, hw8, hw9, hw10, hw11
  ] at hm
  have he := facts.{owner}.AssertEqSeg{nullifier_assert}
  change Deployed.Templates.Semantics.{assert_template}.spec
    (Seg{nullifier_assert}.localRho rho) at he
{seating(model, discovered.nullifier_assert, [1, 2, 3])}
  simp only [
    Deployed.Templates.Semantics.{assert_template}.spec,
    Seg{nullifier_assert}.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3
  ] at he
  simp [dummyFlag] at hm
  simp only [
    {prefix}NullifierClaimed, {prefix}NullifierClaimedLC,
    {prefix}NullifierDummy, {prefix}NullifierDummyLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  linear_combination -he + hm.1 + hm.2

theorem realNullifier
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho)
    (real : rho {flag} = 0) :
    NoteReshapeCanonical.realNullifier
      (NoteReshapeCanonicalAddress{family}.authorization rho)
      (realInput{slot} rho) := by
  unfold NoteReshapeCanonical.realNullifier
  unfold Protocol.NoteReshape.Concrete.realNullifier
  simp only [realInput{slot}, NoteReshapeCanonicalAddress{family}.authorization]
  rw [claimedNullifierReal rho facts real, realNullifierHash rho facts]
  rfl

theorem dummyAmountZero
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho)
    (dummyFlag : rho {flag} = 1) :
    (dummyInput{slot} rho).amount = 0 := by
  have h := facts.control.AssertEqIfSeg{amount_assert}
  change Deployed.Templates.Semantics.{amount_template}.spec
    (Seg{amount_assert}.localRho rho) at h
{seating(model, discovered.amount_assert, [1, 2])}
  simp only [
    Deployed.Templates.Semantics.{amount_template}.spec,
    Deployed.Templates.Semantics.{amount_template}.guard,
    Deployed.Templates.Semantics.{amount_template}.residual,
    Seg{amount_assert}.localRho, Deployed.Templates.seated, hw1, hw2
  ] at h
  rcases h with amountZero | flagZero
  · simpa [
      dummyInput{slot}, {prefix}NoteCommitmentInputs1,
      {prefix}NoteCommitmentInputs1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual
    ] using amountZero
  · rw [dummyFlag] at flagZero
    have h10 : (1 : DeployedF) ≠ 0 := by decide +kernel
    exact (h10 flagZero).elim

theorem dummyNullifier
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho)
    (dummyFlag : rho {flag} = 1) :
    NoteReshapeCanonical.dummyNullifier (dummyInput{slot} rho) := by
  unfold NoteReshapeCanonical.dummyNullifier
  unfold Protocol.NoteReshape.Concrete.dummyNullifier
  simp only [dummyInput{slot}]
  rw [claimedNullifierDummy rho facts dummyFlag, dummyNullifierHash rho facts]
  rfl

def computedRk (rho : Nat → DeployedF) : Decaf377Assumptions.Point :=
  ⟨{prefix}RkReal0 rho, {prefix}RkReal1 rho⟩

theorem randomizerCanonical
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho) :
    ({randomizer_role} rho).val < 2 ^ 251 := by
  have h := facts.{owner}.DecafRandomizedVerificationKeySeg{rvk}
  change
    Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.spec
      (Seg{rvk}.localRho rho) at h
{seating(model, discovered.rvk, [252])}
  simpa [
    {randomizer_role},
    Seg{rvk}.localRho, Deployed.Templates.seated, hw252
  ] using h.1

theorem rvk
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho) :
    Decaf377Assumptions.RandomizedVerificationKeySpec
      ⟨authAk0 rho, authAk1 rho⟩ ({randomizer_role} rho)
        (computedRk rho) ∧
    EdwardsBridge.onCurve ⟨(computedRk rho).x, (computedRk rho).y⟩ := by
  have h := facts.{owner}.DecafRandomizedVerificationKeySeg{rvk}
  change
    Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.spec
      (Seg{rvk}.localRho rho) at h
{seating(model, discovered.rvk, [252, 1807, 1808, 1813, 1814])}
  have hr := h.2 (by
    simpa [
      authAk0, authAk0LC, authAk1, authAk1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{rvk}.localRho, Deployed.Templates.seated, hw1807, hw1808
    ] using {config.module}Refinement.C.sharedAuthorizationKeyOnCurve rho facts)
  simpa [
    computedRk,
    {randomizer_role},
    authAk0, authAk0LC, authAk1, authAk1LC,
    {prefix}RkReal0, {prefix}RkReal0LC,
    {prefix}RkReal1, {prefix}RkReal1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg{rvk}.localRho, Deployed.Templates.seated,
    hw252, hw1807, hw1808, hw1813, hw1814
  ] using hr

theorem claimedRkCompressed
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨{prefix}RkClaimed0 rho, {prefix}RkClaimed1 rho⟩
      ({prefix}RkCompressed rho) := by
  have h := facts.{owner}.DecafCompressToFieldSeg{compress}
  change Deployed.Templates.Semantics.{compress_template}.spec
    (Seg{compress}.localRho rho) at h
{seating(model, discovered.compress, [1, 3, 365, 705])}
  have hneg :
      (8444461749428370424248824938781546531375899335154063827935233455917409239040 :
        DeployedF) = -1 := by decide +kernel
  simpa [
    Decaf377Assumptions.CompressToFieldSpec,
    Deployed.Templates.Semantics.{compress_template}.spec,
    Deployed.Templates.Semantics.{compress_template}.inputX,
    Deployed.Templates.Semantics.{compress_template}.inputY,
    Deployed.Templates.Semantics.{compress_template}.templateRho,
    {prefix}RkClaimed0, {prefix}RkClaimed0LC,
    {prefix}RkClaimed1, {prefix}RkClaimed1LC,
    {prefix}RkCompressed, {prefix}RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg{compress}.localRho, Deployed.Templates.seated,
    hw1, hw3, hw365, hw705, hneg, sub_eq_add_neg, add_comm
  ] using h

theorem crossRatio
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho)
    (real : rho {flag} = 0) :
    Decaf377Assumptions.AssertEquivalentSpec
      (computedRk rho)
      ⟨{prefix}RkClaimed0 rho, {prefix}RkClaimed1 rho⟩ := by
  have h := facts.{owner}.DecafAssertEquivalentIfSeg{equivalent}
  change Deployed.Templates.Semantics.{equivalent_template}.spec
    (Seg{equivalent}.localRho rho) at h
{seating(model, discovered.equivalent, [1, 2, 3, 5, 6])}
  simp only [
    Deployed.Templates.Semantics.{equivalent_template}.spec,
    Deployed.Templates.Semantics.{equivalent_template}.guard,
    Deployed.Templates.Semantics.{equivalent_template}.leftCrossProduct,
    Deployed.Templates.Semantics.{equivalent_template}.rightCrossProduct,
    Seg{equivalent}.localRho, Deployed.Templates.seated,
    hw1, hw2, hw3, hw5, hw6
  ] at h
  rcases h.2 with disabled | equal
  · rw [real] at disabled
    have h10 : (1 : DeployedF) ≠ 0 := by decide +kernel
    exact (h10 (by linear_combination disabled)).elim
  · simpa [
      Decaf377Assumptions.AssertEquivalentSpec, computedRk,
      {prefix}RkReal0, {prefix}RkReal0LC,
      {prefix}RkReal1, {prefix}RkReal1LC,
      {prefix}RkClaimed0, {prefix}RkClaimed0LC,
      {prefix}RkClaimed1, {prefix}RkClaimed1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual
    ] using equal

theorem randomizedKey
    (rho : Nat → DeployedF)
    (facts : {config.module}CircuitFacts rho)
    (real : rho {flag} = 0) :
    NoteReshapeCanonical.randomizedKeyReal
      (NoteReshapeCanonicalAddress{family}.authorization rho)
      (realInput{slot} rho) := by
  refine ⟨computedRk rho, ?_, ?_⟩
  · simpa [
      NoteReshapeCanonicalAddress{family}.authorization,
      NoteReshapeCanonical.toDecafPoint, realInput{slot}
    ] using (rvk rho facts).1
  · exact ⟨
      (rvk rho facts).2,
      Decaf377Assumptions.onCurve_of_compress
        ⟨{prefix}RkClaimed0 rho, {prefix}RkClaimed1 rho⟩
        ({prefix}RkCompressed rho) (claimedRkCompressed rho facts),
      crossRatio rho facts real
    ⟩

end Shieldd.GnarkFormal.Deployed.Generated.{config.module}Spend{slot}
"""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "circuits",
        nargs="*",
        choices=[config.circuit for config in CONFIGS],
    )
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    selected = set(args.circuits) if args.circuits else {
        config.circuit for config in CONFIGS
    }
    for config in CONFIGS:
        if config.circuit not in selected:
            continue
        for slot in range(config.slots):
            target = DEPLOYED / "Generated" / f"{config.module}Spend{slot}.lean"
            expected = render_slot(config, slot)
            if args.check:
                if not target.is_file() or target.read_text() != expected:
                    raise SystemExit(f"generated file is stale: {target}")
            elif write_if_changed(target, expected):
                print(target)


if __name__ == "__main__":
    main()
