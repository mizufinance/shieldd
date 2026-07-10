import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg2
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg3
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg4
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg18
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg34
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg43
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg10
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg12
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg14
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg21
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg26
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg28
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg30
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg37
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg42
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg46
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg56
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NullifierAdapters
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NoteCommitmentAdapters
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.StatementHashAdapters
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapters
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg15
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.RvkAdapterSeg31
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg6
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg29
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg16
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg19
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg20
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg32
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg36
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg35
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg44
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg45
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg49
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 100000

/-! # `BoundDeployedSound` wrappers for consolidate2x1 deployed segments

Each `inst{N}_bound` inhabits
`BoundDeployedSound Seg{N}.contract <relSha> <wireSha>`, the typed acceptance
gate. The two `rfl`s discharge the pinned sha equalities (the contract literally
carries the hashes); the third component proves `relation rho → spec rho`. These
are closed terms (no `Fact (Nat.Prime _)` hypothesis) — the row→endpoint proofs
hold in `CommRing (ZMod Order)`, so the gate's bare `#check (inst{N}_bound : …)`
elaborates without instance synthesis. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal

/-- The four deployed `decaf.assert_on_curve` rows (square, square, scaled product,
curve sum) pin the boundary inputs `x`, `y` to the curve. Reused across every
seating; the internal wires `v0 v1 v2` are the slice's product/accumulator wires. -/
theorem onCurveAt_of_rows {F : Type} [CommRing F] (x y v0 v1 v2 : F)
    (h0 : (1 : F) * x * ((1 : F) * x) = (1 : F) * v0)
    (h1 : (1 : F) * y * ((1 : F) * y) = (1 : F) * v1)
    (h2 : (3021 : F) * v0 * ((1 : F) * v1) = (1 : F) * v2)
    (h3 : (1 : F) * (-1 * v0 + 1 * v1) = 1 + 1 * v2) :
    Specs.onCurveAt x y := by
  unfold Specs.onCurveAt
  linear_combination h3 - h0 + h1 - h2 - 3021 * v1 * h0 - 3021 * (x * x) * h1

/-- seg2 `decaf.assert_on_curve`. -/
theorem inst2_bound :
    Deployed.BoundDeployedSound Seg2.contract
      "1438d18659fd332be74837d2dceeaab4d5cc2e1c5077adea6aa0dfaeb0338c04"
      "0a599782c5065aaa089305120c495dc2aee6cbc1a38c0f6349fd676b2153da45" :=
  ⟨rfl, rfl, fun _ ⟨h0, h1, h2, h3⟩ => onCurveAt_of_rows _ _ _ _ _ h0 h1 h2 h3⟩

/-- seg3 `decaf.assert_on_curve`. -/
theorem inst3_bound :
    Deployed.BoundDeployedSound Seg3.contract
      Seg3.contract.relationSha256Hex Seg3.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ ⟨h0, h1, h2, h3⟩ => onCurveAt_of_rows _ _ _ _ _ h0 h1 h2 h3⟩

/-- seg4 `decaf.assert_on_curve`. -/
theorem inst4_bound :
    Deployed.BoundDeployedSound Seg4.contract
      Seg4.contract.relationSha256Hex Seg4.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ ⟨h0, h1, h2, h3⟩ => onCurveAt_of_rows _ _ _ _ _ h0 h1 h2 h3⟩

/-- seg18 `decaf.assert_on_curve`. -/
theorem inst18_bound :
    Deployed.BoundDeployedSound Seg18.contract
      Seg18.contract.relationSha256Hex Seg18.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ ⟨h0, h1, h2, h3⟩ => onCurveAt_of_rows _ _ _ _ _ h0 h1 h2 h3⟩

/-- seg34 `decaf.assert_on_curve`. -/
theorem inst34_bound :
    Deployed.BoundDeployedSound Seg34.contract
      Seg34.contract.relationSha256Hex Seg34.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ ⟨h0, h1, h2, h3⟩ => onCurveAt_of_rows _ _ _ _ _ h0 h1 h2 h3⟩

/-- seg43 `decaf.assert_on_curve`. -/
theorem inst43_bound :
    Deployed.BoundDeployedSound Seg43.contract
      Seg43.contract.relationSha256Hex Seg43.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ ⟨h0, h1, h2, h3⟩ => onCurveAt_of_rows _ _ _ _ _ h0 h1 h2 h3⟩

/-- seg9 `gadget.note_commitment`. -/
theorem inst9_bound :
    Deployed.BoundDeployedSound Seg9.contract
      Seg9.contract.relationSha256Hex Seg9.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg9_sound⟩

/-- seg10 `assert.eq`. -/
theorem inst10_bound :
    Deployed.BoundDeployedSound Seg10.contract
      Seg10.contract.relationSha256Hex Seg10.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg10.contract, Seg10.relation, Seg10.spec, Specs.deployedSpec10] at h ⊢
    linear_combination -h⟩

/-- seg11 `gadget.nullifier`. -/
theorem inst11_bound :
    Deployed.BoundDeployedSound Seg11.contract
      Seg11.contract.relationSha256Hex Seg11.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg11_sound⟩

/-- seg12 `assert.eq`. -/
theorem inst12_bound :
    Deployed.BoundDeployedSound Seg12.contract
      Seg12.contract.relationSha256Hex Seg12.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg12.contract, Seg12.relation, Seg12.spec, Specs.deployedSpec12] at h ⊢
    linear_combination -h⟩

/-- seg14 `assert.eq`. -/
theorem inst14_bound :
    Deployed.BoundDeployedSound Seg14.contract
      Seg14.contract.relationSha256Hex Seg14.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg14.contract, Seg14.relation, Seg14.spec, Specs.deployedSpec14] at h ⊢
    linear_combination -h⟩

/-- seg15 `decaf.randomized_verification_key`. -/
theorem inst15_bound :
    Deployed.BoundDeployedSound Seg15.contract
      Seg15.contract.relationSha256Hex Seg15.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg15_sound⟩

/-- seg31 `decaf.randomized_verification_key`. -/
theorem inst31_bound :
    Deployed.BoundDeployedSound Seg31.contract
      Seg31.contract.relationSha256Hex Seg31.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg31_sound⟩

/-- seg5 `decaf.diversified_transmission_key`: the hoist collapsed the three
per-note DTK-producer instances (formerly segs 16/34/45) into this single
shared segment. -/
theorem inst5_bound :
    Deployed.BoundDeployedSound Seg5.contract
      Seg5.contract.relationSha256Hex Seg5.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg5_sound⟩

/-- seg48 `decaf.net_balance_commitment`. -/
theorem inst48_bound :
    Deployed.BoundDeployedSound Seg48.contract
      Seg48.contract.relationSha256Hex Seg48.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg48_sound⟩

theorem inst13_bound :
    Deployed.BoundDeployedSound Seg13.contract
      Seg13.contract.relationSha256Hex Seg13.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg13_sound⟩

theorem inst29_bound :
    Deployed.BoundDeployedSound Seg29.contract
      Seg29.contract.relationSha256Hex Seg29.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg29_sound⟩

/-- seg21 `assert.eq`. -/
theorem inst21_bound :
    Deployed.BoundDeployedSound Seg21.contract
      Seg21.contract.relationSha256Hex Seg21.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg21.contract, Seg21.relation, Seg21.spec, Specs.deployedSpec21] at h ⊢
    linear_combination -h⟩

/-- seg25 `gadget.note_commitment`. -/
theorem inst25_bound :
    Deployed.BoundDeployedSound Seg25.contract
      Seg25.contract.relationSha256Hex Seg25.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg25_sound⟩

/-- seg26 `assert.eq`. -/
theorem inst26_bound :
    Deployed.BoundDeployedSound Seg26.contract
      Seg26.contract.relationSha256Hex Seg26.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg26.contract, Seg26.relation, Seg26.spec, Specs.deployedSpec26] at h ⊢
    linear_combination -h⟩

/-- seg27 `gadget.nullifier`. -/
theorem inst27_bound :
    Deployed.BoundDeployedSound Seg27.contract
      Seg27.contract.relationSha256Hex Seg27.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg27_sound⟩

/-- seg28 `assert.eq`. -/
theorem inst28_bound :
    Deployed.BoundDeployedSound Seg28.contract
      Seg28.contract.relationSha256Hex Seg28.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg28.contract, Seg28.relation, Seg28.spec, Specs.deployedSpec28] at h ⊢
    linear_combination -h⟩

/-- seg30 `assert.eq`. -/
theorem inst30_bound :
    Deployed.BoundDeployedSound Seg30.contract
      Seg30.contract.relationSha256Hex Seg30.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg30.contract, Seg30.relation, Seg30.spec, Specs.deployedSpec30] at h ⊢
    linear_combination -h⟩

/-- seg37 `assert.eq`. -/
theorem inst37_bound :
    Deployed.BoundDeployedSound Seg37.contract
      Seg37.contract.relationSha256Hex Seg37.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg37.contract, Seg37.relation, Seg37.spec, Specs.deployedSpec37] at h ⊢
    linear_combination -h⟩

/-- seg41 `gadget.note_commitment`. -/
theorem inst41_bound :
    Deployed.BoundDeployedSound Seg41.contract
      Seg41.contract.relationSha256Hex Seg41.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg41_sound⟩

/-- seg42 `assert.eq`. -/
theorem inst42_bound :
    Deployed.BoundDeployedSound Seg42.contract
      Seg42.contract.relationSha256Hex Seg42.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg42.contract, Seg42.relation, Seg42.spec, Specs.deployedSpec42] at h ⊢
    linear_combination -h⟩

/-- seg46 `assert.eq`. -/
theorem inst46_bound :
    Deployed.BoundDeployedSound Seg46.contract
      Seg46.contract.relationSha256Hex Seg46.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg46.contract, Seg46.relation, Seg46.spec, Specs.deployedSpec46] at h ⊢
    linear_combination -h⟩

/-- seg55 `statement.hash`. -/
theorem inst55_bound :
    Deployed.BoundDeployedSound Seg55.contract
      Seg55.contract.relationSha256Hex Seg55.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg55_sound⟩

/-- seg56 `assert.eq`. -/
theorem inst56_bound :
    Deployed.BoundDeployedSound Seg56.contract
      Seg56.contract.relationSha256Hex Seg56.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg56.contract, Seg56.relation, Seg56.spec, Specs.deployedSpec56] at h ⊢
    linear_combination -h⟩

/-- seg16 `decaf.assert_equivalent`. -/
theorem inst16_bound :
    Deployed.BoundDeployedSound Seg16.contract
      Seg16.contract.relationSha256Hex Seg16.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg16.contract, Seg16.relation, Seg16.spec, Specs.deployedSpec16] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg6 `decaf.assert_equivalent`: the hoist collapsed the three per-note
DTK-consumer instances (formerly segs 18/36/47) into this single shared
segment; its relation has the same 3-row shape as the generic
`assert_equivalent` family, so the generic tactic applies verbatim. -/
theorem inst6_bound :
    Deployed.BoundDeployedSound Seg6.contract
      Seg6.contract.relationSha256Hex Seg6.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg6.contract, Seg6.relation, Seg6.spec, Specs.deployedSpec6] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg19 `decaf.assert_equivalent`. -/
theorem inst19_bound :
    Deployed.BoundDeployedSound Seg19.contract
      Seg19.contract.relationSha256Hex Seg19.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg19.contract, Seg19.relation, Seg19.spec, Specs.deployedSpec19] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg20 `decaf.assert_equivalent`. -/
theorem inst20_bound :
    Deployed.BoundDeployedSound Seg20.contract
      Seg20.contract.relationSha256Hex Seg20.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg20.contract, Seg20.relation, Seg20.spec, Specs.deployedSpec20] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg32 `decaf.assert_equivalent`. -/
theorem inst32_bound :
    Deployed.BoundDeployedSound Seg32.contract
      Seg32.contract.relationSha256Hex Seg32.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg32.contract, Seg32.relation, Seg32.spec, Specs.deployedSpec32] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg36 `decaf.assert_equivalent`. -/
theorem inst36_bound :
    Deployed.BoundDeployedSound Seg36.contract
      Seg36.contract.relationSha256Hex Seg36.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg36.contract, Seg36.relation, Seg36.spec, Specs.deployedSpec36] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg35 `decaf.assert_equivalent`. -/
theorem inst35_bound :
    Deployed.BoundDeployedSound Seg35.contract
      Seg35.contract.relationSha256Hex Seg35.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg35.contract, Seg35.relation, Seg35.spec, Specs.deployedSpec35] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg44 `decaf.assert_equivalent`. -/
theorem inst44_bound :
    Deployed.BoundDeployedSound Seg44.contract
      Seg44.contract.relationSha256Hex Seg44.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg44.contract, Seg44.relation, Seg44.spec, Specs.deployedSpec44] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg45 `decaf.assert_equivalent`. -/
theorem inst45_bound :
    Deployed.BoundDeployedSound Seg45.contract
      Seg45.contract.relationSha256Hex Seg45.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg45.contract, Seg45.relation, Seg45.spec, Specs.deployedSpec45] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg49 `decaf.assert_equivalent`. -/
theorem inst49_bound :
    Deployed.BoundDeployedSound Seg49.contract
      Seg49.contract.relationSha256Hex Seg49.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg49.contract, Seg49.relation, Seg49.spec, Specs.deployedSpec49] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg8 `decaf.compress_to_field`. -/
theorem inst8_bound :
    Deployed.BoundDeployedSound Seg8.contract
      Seg8.contract.relationSha256Hex Seg8.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg8_sound⟩

/-- seg17 `decaf.compress_to_field`. -/
theorem inst17_bound :
    Deployed.BoundDeployedSound Seg17.contract
      Seg17.contract.relationSha256Hex Seg17.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg17_sound⟩

/-- seg24 `decaf.compress_to_field`. -/
theorem inst24_bound :
    Deployed.BoundDeployedSound Seg24.contract
      Seg24.contract.relationSha256Hex Seg24.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg24_sound⟩

/-- seg33 `decaf.compress_to_field`. -/
theorem inst33_bound :
    Deployed.BoundDeployedSound Seg33.contract
      Seg33.contract.relationSha256Hex Seg33.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg33_sound⟩

/-- seg40 `decaf.compress_to_field`. -/
theorem inst40_bound :
    Deployed.BoundDeployedSound Seg40.contract
      Seg40.contract.relationSha256Hex Seg40.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg40_sound⟩

/-- seg50 `decaf.compress_to_field`. -/
theorem inst50_bound :
    Deployed.BoundDeployedSound Seg50.contract
      Seg50.contract.relationSha256Hex Seg50.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg50_sound⟩

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
