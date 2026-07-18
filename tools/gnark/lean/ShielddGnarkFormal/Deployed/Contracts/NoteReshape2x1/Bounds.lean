import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg2
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg3
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg4
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg18
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg33
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg41
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg10
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg12
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg14
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg21
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg25
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg27
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg29
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg36
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg40
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg44
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg54
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg7
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg16
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg19
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg20
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg31
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg34
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg35
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg42
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg43
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg47
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg53
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.NullifierAdapters
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.NoteCommitmentAdapters
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.CompressAdapters
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.NbAdapterSeg46
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 100000

/-! # `BoundDeployedSound` wrappers for note_reshape2x1 deployed segments

Each `inst{N}_bound` inhabits
`BoundDeployedSound Seg{N}.contract <relSha> <wireSha>`, the typed acceptance
gate. The two `rfl`s discharge the pinned sha equalities (the contract literally
carries the hashes); the third component proves `relation rho → spec rho`. These
are closed terms (no `Fact (Nat.Prime _)` hypothesis) — the row→endpoint proofs
hold in `CommRing (ZMod Order)`, so the gate's bare `#check (inst{N}_bound : …)`
elaborates without instance synthesis. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open Shieldd.GnarkFormal
open Shieldd.GnarkFormal.Deployed.Templates

/-- seg2 `decaf.assert_on_curve`. -/
theorem inst2_bound :
    Deployed.BoundDeployedSound Seg2.contract
      Seg2.contract.relationSha256Hex Seg2.contract.wireRoleSha256Hex :=
by
  apply boundOfSeatedTemplate Simple.onCurveRelation Simple.onCurveSpec
    Simple.onCurveSound Seg2.contract Seg2.wireSeating
  · intro rho
    rfl
  · intro rho
    rfl

/-- seg3 `decaf.assert_on_curve`. -/
theorem inst3_bound :
    Deployed.BoundDeployedSound Seg3.contract
      Seg3.contract.relationSha256Hex Seg3.contract.wireRoleSha256Hex :=
by
  apply boundOfSeatedTemplate Simple.onCurveRelation Simple.onCurveSpec
    Simple.onCurveSound Seg3.contract Seg3.wireSeating
  · intro rho
    rfl
  · intro rho
    rfl

/-- seg4 `decaf.assert_on_curve`. -/
theorem inst4_bound :
    Deployed.BoundDeployedSound Seg4.contract
      Seg4.contract.relationSha256Hex Seg4.contract.wireRoleSha256Hex :=
by
  apply boundOfSeatedTemplate Simple.onCurveRelation Simple.onCurveSpec
    Simple.onCurveSound Seg4.contract Seg4.wireSeating
  · intro rho
    rfl
  · intro rho
    rfl

/-- seg18 `decaf.assert_on_curve`. -/
theorem inst18_bound :
    Deployed.BoundDeployedSound Seg18.contract
      Seg18.contract.relationSha256Hex Seg18.contract.wireRoleSha256Hex :=
by
  apply boundOfSeatedTemplate Simple.onCurveRelation Simple.onCurveSpec
    Simple.onCurveSound Seg18.contract Seg18.wireSeating
  · intro rho
    rfl
  · intro rho
    rfl

/-- seg33 `decaf.assert_on_curve`. -/
theorem inst33_bound :
    Deployed.BoundDeployedSound Seg33.contract
      Seg33.contract.relationSha256Hex Seg33.contract.wireRoleSha256Hex :=
by
  apply boundOfSeatedTemplate Simple.onCurveRelation Simple.onCurveSpec
    Simple.onCurveSound Seg33.contract Seg33.wireSeating
  · intro rho
    rfl
  · intro rho
    rfl

/-- seg41 `decaf.assert_on_curve`. -/
theorem inst41_bound :
    Deployed.BoundDeployedSound Seg41.contract
      Seg41.contract.relationSha256Hex Seg41.contract.wireRoleSha256Hex :=
by
  apply boundOfSeatedTemplate Simple.onCurveRelation Simple.onCurveSpec
    Simple.onCurveSound Seg41.contract Seg41.wireSeating
  · intro rho
    rfl
  · intro rho
    rfl

/-- seg5 `decaf.compress_to_field`. -/
theorem inst5_bound :
    Deployed.BoundDeployedSound Seg5.contract
      Seg5.contract.relationSha256Hex Seg5.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg5_sound⟩

/-- seg6 `decaf.diversified_transmission_key`: the T1-f hoist shares this single DTK producer across all three notes. -/
theorem inst6_bound :
    Deployed.BoundDeployedSound Seg6.contract
      Seg6.contract.relationSha256Hex Seg6.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg6_sound⟩

/-- seg9 `gadget.note_commitment`. -/
theorem inst9_bound :
    Deployed.BoundDeployedSound Seg9.contract
      Seg9.contract.relationSha256Hex Seg9.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg9_sound⟩

/-- seg11 `gadget.nullifier`. -/
theorem inst11_bound :
    Deployed.BoundDeployedSound Seg11.contract
      Seg11.contract.relationSha256Hex Seg11.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg11_sound⟩

/-- seg13 `gadget.state_commitment_path`. -/
theorem inst13_bound :
    Deployed.BoundDeployedSound Seg13.contract
      Seg13.contract.relationSha256Hex Seg13.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg13_sound⟩

/-- seg15 `decaf.randomized_verification_key`. -/
theorem inst15_bound :
    Deployed.BoundDeployedSound Seg15.contract
      Seg15.contract.relationSha256Hex Seg15.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg15_sound⟩

/-- seg17 `decaf.compress_to_field`. -/
theorem inst17_bound :
    Deployed.BoundDeployedSound Seg17.contract
      Seg17.contract.relationSha256Hex Seg17.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg17_sound⟩

/-- seg24 `gadget.note_commitment`. -/
theorem inst24_bound :
    Deployed.BoundDeployedSound Seg24.contract
      Seg24.contract.relationSha256Hex Seg24.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg24_sound⟩

/-- seg26 `gadget.nullifier`. -/
theorem inst26_bound :
    Deployed.BoundDeployedSound Seg26.contract
      Seg26.contract.relationSha256Hex Seg26.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg26_sound⟩

/-- seg28 `gadget.state_commitment_path`. -/
theorem inst28_bound :
    Deployed.BoundDeployedSound Seg28.contract
      Seg28.contract.relationSha256Hex Seg28.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg28_sound⟩

/-- seg30 `decaf.randomized_verification_key`. -/
theorem inst30_bound :
    Deployed.BoundDeployedSound Seg30.contract
      Seg30.contract.relationSha256Hex Seg30.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg30_sound⟩

/-- seg32 `decaf.compress_to_field`. -/
theorem inst32_bound :
    Deployed.BoundDeployedSound Seg32.contract
      Seg32.contract.relationSha256Hex Seg32.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg32_sound⟩

/-- seg39 `gadget.note_commitment`. -/
theorem inst39_bound :
    Deployed.BoundDeployedSound Seg39.contract
      Seg39.contract.relationSha256Hex Seg39.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg39_sound⟩

/-- seg46 `gadget.conservation_net_balance_commitment` (NB-1 fixed-generator slice). -/
theorem inst46_bound :
    Deployed.BoundDeployedSound Seg46.contract
      Seg46.contract.relationSha256Hex Seg46.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg46_sound⟩

/-- seg48 `decaf.compress_to_field`. -/
theorem inst48_bound :
    Deployed.BoundDeployedSound Seg48.contract
      Seg48.contract.relationSha256Hex Seg48.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, seg48_sound⟩

/-- seg53 `statement.hash`. -/
theorem inst53_bound :
    Deployed.BoundDeployedSound Seg53.contract
      Seg53.contract.relationSha256Hex Seg53.contract.wireRoleSha256Hex :=
by
  apply boundOfSeatedTemplate
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.relation
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.spec
    Shieldd.GnarkFormal.Deployed.Templates.Generated.TStatementHash_fa0805975a685378ee126cbc35cc459afdc517f39a649a4b6c399ecb314e4ba4.sound
    Seg53.contract Seg53.wireSeating
  · intro rho
    rfl
  · intro rho
    rfl

/-- seg10 `assert.eq`. -/
theorem inst10_bound :
    Deployed.BoundDeployedSound Seg10.contract
      Seg10.contract.relationSha256Hex Seg10.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg10.contract, Seg10.relation, Seg10.spec, Specs.deployedSpec10] at h ⊢
    linear_combination -h⟩

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

/-- seg21 `assert.eq`. -/
theorem inst21_bound :
    Deployed.BoundDeployedSound Seg21.contract
      Seg21.contract.relationSha256Hex Seg21.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg21.contract, Seg21.relation, Seg21.spec, Specs.deployedSpec21] at h ⊢
    linear_combination -h⟩

/-- seg25 `assert.eq`. -/
theorem inst25_bound :
    Deployed.BoundDeployedSound Seg25.contract
      Seg25.contract.relationSha256Hex Seg25.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg25.contract, Seg25.relation, Seg25.spec, Specs.deployedSpec25] at h ⊢
    linear_combination -h⟩

/-- seg27 `assert.eq`. -/
theorem inst27_bound :
    Deployed.BoundDeployedSound Seg27.contract
      Seg27.contract.relationSha256Hex Seg27.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg27.contract, Seg27.relation, Seg27.spec, Specs.deployedSpec27] at h ⊢
    linear_combination -h⟩

/-- seg29 `assert.eq`. -/
theorem inst29_bound :
    Deployed.BoundDeployedSound Seg29.contract
      Seg29.contract.relationSha256Hex Seg29.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg29.contract, Seg29.relation, Seg29.spec, Specs.deployedSpec29] at h ⊢
    linear_combination -h⟩

/-- seg36 `assert.eq`. -/
theorem inst36_bound :
    Deployed.BoundDeployedSound Seg36.contract
      Seg36.contract.relationSha256Hex Seg36.contract.wireRoleSha256Hex :=
by
  apply boundOfSeatedTemplate Simple.assertEqRelation Simple.assertEqSpec
    Simple.assertEqSound Seg36.contract Seg36.wireSeating
  · intro rho
    rfl
  · intro rho
    rfl

/-- seg40 `assert.eq`. -/
theorem inst40_bound :
    Deployed.BoundDeployedSound Seg40.contract
      Seg40.contract.relationSha256Hex Seg40.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg40.contract, Seg40.relation, Seg40.spec, Specs.deployedSpec40] at h ⊢
    linear_combination -h⟩

/-- seg44 `assert.eq`. -/
theorem inst44_bound :
    Deployed.BoundDeployedSound Seg44.contract
      Seg44.contract.relationSha256Hex Seg44.contract.wireRoleSha256Hex :=
by
  apply boundOfSeatedTemplate Simple.assertEqRelation Simple.assertEqSpec
    Simple.assertEqSound Seg44.contract Seg44.wireSeating
  · intro rho
    rfl
  · intro rho
    rfl

/-- seg54 `assert.eq`. -/
theorem inst54_bound :
    Deployed.BoundDeployedSound Seg54.contract
      Seg54.contract.relationSha256Hex Seg54.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg54.contract, Seg54.relation, Seg54.spec, Specs.deployedSpec54] at h ⊢
    linear_combination -h⟩

/-- seg7 `decaf.assert_equivalent`: shared DTK-consumer glue for the hoisted seg6 producer; same 3-row shape as the generic family. -/
theorem inst7_bound :
    Deployed.BoundDeployedSound Seg7.contract
      Seg7.contract.relationSha256Hex Seg7.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg7.contract, Seg7.relation, Seg7.spec, Specs.deployedSpec7] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg16 `decaf.assert_equivalent`. -/
theorem inst16_bound :
    Deployed.BoundDeployedSound Seg16.contract
      Seg16.contract.relationSha256Hex Seg16.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg16.contract, Seg16.relation, Seg16.spec, Specs.deployedSpec16] at h ⊢ <;>
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

/-- seg31 `decaf.assert_equivalent`. -/
theorem inst31_bound :
    Deployed.BoundDeployedSound Seg31.contract
      Seg31.contract.relationSha256Hex Seg31.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg31.contract, Seg31.relation, Seg31.spec, Specs.deployedSpec31] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg34 `decaf.assert_equivalent`. -/
theorem inst34_bound :
    Deployed.BoundDeployedSound Seg34.contract
      Seg34.contract.relationSha256Hex Seg34.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg34.contract, Seg34.relation, Seg34.spec, Specs.deployedSpec34] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg35 `decaf.assert_equivalent`. -/
theorem inst35_bound :
    Deployed.BoundDeployedSound Seg35.contract
      Seg35.contract.relationSha256Hex Seg35.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg35.contract, Seg35.relation, Seg35.spec, Specs.deployedSpec35] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg42 `decaf.assert_equivalent`. -/
theorem inst42_bound :
    Deployed.BoundDeployedSound Seg42.contract
      Seg42.contract.relationSha256Hex Seg42.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg42.contract, Seg42.relation, Seg42.spec, Specs.deployedSpec42] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg43 `decaf.assert_equivalent`. -/
theorem inst43_bound :
    Deployed.BoundDeployedSound Seg43.contract
      Seg43.contract.relationSha256Hex Seg43.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg43.contract, Seg43.relation, Seg43.spec, Specs.deployedSpec43] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

/-- seg47 `decaf.assert_equivalent`: NB-compress consumer; Wave-2 layout gives it the 3-row `33ce4e` shape, same generic tactic. -/
theorem inst47_bound :
    Deployed.BoundDeployedSound Seg47.contract
      Seg47.contract.relationSha256Hex Seg47.contract.wireRoleSha256Hex :=
  ⟨rfl, rfl, fun _ h => by
    simp only [Seg47.contract, Seg47.relation, Seg47.spec, Specs.deployedSpec47] at h ⊢ <;>
      · obtain ⟨h0, h1, h2⟩ := h; linear_combination h0 - h1 + h2⟩

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
