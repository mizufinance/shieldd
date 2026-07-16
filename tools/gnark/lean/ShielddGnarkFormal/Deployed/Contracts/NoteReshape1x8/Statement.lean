import ShielddGnarkFormal.Deployed.Contracts.NoteReshape1x8.Capstone

set_option maxRecDepth 1000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8

open Shieldd.GnarkFormal

/-- Exact deployed control obligations. -/
structure ControlSpec (rho : Nat → DeployedF) : Prop where
  AssertBooleanSeg1 : Seg1.contract.spec rho
  AssertBooleanSeg2 : Seg2.contract.spec rho
  AssertBooleanSeg3 : Seg3.contract.spec rho
  AssertBooleanSeg4 : Seg4.contract.spec rho
  AssertBooleanSeg5 : Seg5.contract.spec rho
  AssertBooleanSeg6 : Seg6.contract.spec rho
  AssertBooleanSeg7 : Seg7.contract.spec rho
  AssertBooleanSeg8 : Seg8.contract.spec rho
  AssertBooleanSeg9 : Seg9.contract.spec rho
  AssertDummySuffixSeg10 : Seg10.contract.spec rho
  AssertDummySuffixSeg11 : Seg11.contract.spec rho
  AssertActiveRangeSeg12 : Seg12.contract.spec rho
  AssertActiveRangeSeg13 : Seg13.contract.spec rho
  AssertEqIfSeg23 : Seg23.contract.spec rho
  AssertEqIfSeg26 : Seg26.contract.spec rho
  DummyMuxSeg28 : Seg28.contract.spec rho
  AssertEqIfSeg36 : Seg36.contract.spec rho
  AssertEqIfSeg51 : Seg51.contract.spec rho
  AssertEqIfSeg61 : Seg61.contract.spec rho
  AssertEqIfSeg71 : Seg71.contract.spec rho
  AssertEqIfSeg81 : Seg81.contract.spec rho
  AssertEqIfSeg91 : Seg91.contract.spec rho
  AssertEqIfSeg101 : Seg101.contract.spec rho
  AssertEqIfSeg111 : Seg111.contract.spec rho
  AssertEqIfSeg121 : Seg121.contract.spec rho

/-- Exact deployed shared obligations. -/
structure SharedSpec (rho : Nat → DeployedF) : Prop where
  DecafAssertOnCurveSeg15 : Seg15.contract.spec rho
  DecafAssertOnCurveSeg16 : Seg16.contract.spec rho
  DecafAssertOnCurveSeg17 : Seg17.contract.spec rho
  DecafCompressToFieldSeg18 : Seg18.contract.spec rho
  DecafDiversifiedTransmissionKeySeg19 : Seg19.contract.spec rho
  DecafAssertEquivalentSeg20 : Seg20.contract.spec rho

/-- Exact deployed balance obligations. -/
structure BalanceSpec (rho : Nat → DeployedF) : Prop where
  DecafConservationNetBalanceCommitmentSeg123 : Seg123.contract.spec rho
  DecafAssertEquivalentSeg124 : Seg124.contract.spec rho
  DecafCompressToFieldSeg125 : Seg125.contract.spec rho

/-- Exact deployed transcript obligations. -/
structure TranscriptSpec (rho : Nat → DeployedF) : Prop where
  StatementHashSeg131 : Seg131.contract.spec rho
  AssertEqSeg132 : Seg132.contract.spec rho

/-- Exact deployed spend0 obligations. -/
structure Spend0Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg22 : Seg22.contract.spec rho
  GadgetNullifierSeg24 : Seg24.contract.spec rho
  GadgetStateCommitmentPathSeg25 : Seg25.contract.spec rho
  GadgetSyntheticDummyNullifierSeg27 : Seg27.contract.spec rho
  AssertEqSeg29 : Seg29.contract.spec rho
  DecafRandomizedVerificationKeySeg30 : Seg30.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg31 : Seg31.contract.spec rho
  DecafAssertEquivalentIfSeg32 : Seg32.contract.spec rho
  DecafAssertEquivalentIfSeg33 : Seg33.contract.spec rho
  DecafDiversifiedTransmissionKeySeg34 : Seg34.contract.spec rho
  DecafAssertEquivalentIfSeg35 : Seg35.contract.spec rho
  DecafAssertOnCurveSeg37 : Seg37.contract.spec rho
  DecafAssertEquivalentSeg38 : Seg38.contract.spec rho
  DecafAssertEquivalentSeg39 : Seg39.contract.spec rho
  AssertEqSeg40 : Seg40.contract.spec rho
  DecafCompressToFieldSeg41 : Seg41.contract.spec rho

/-- Exact deployed output0 obligations. -/
structure Output0Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg44 : Seg44.contract.spec rho
  AssertEqSeg45 : Seg45.contract.spec rho
  DecafAssertOnCurveSeg46 : Seg46.contract.spec rho
  DecafAssertEquivalentSeg47 : Seg47.contract.spec rho
  DecafAssertEquivalentSeg48 : Seg48.contract.spec rho
  AssertEqSeg49 : Seg49.contract.spec rho

/-- Exact deployed output1 obligations. -/
structure Output1Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg54 : Seg54.contract.spec rho
  AssertEqSeg55 : Seg55.contract.spec rho
  DecafAssertOnCurveSeg56 : Seg56.contract.spec rho
  DecafAssertEquivalentSeg57 : Seg57.contract.spec rho
  DecafAssertEquivalentSeg58 : Seg58.contract.spec rho
  AssertEqSeg59 : Seg59.contract.spec rho

/-- Exact deployed output2 obligations. -/
structure Output2Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg64 : Seg64.contract.spec rho
  AssertEqSeg65 : Seg65.contract.spec rho
  DecafAssertOnCurveSeg66 : Seg66.contract.spec rho
  DecafAssertEquivalentSeg67 : Seg67.contract.spec rho
  DecafAssertEquivalentSeg68 : Seg68.contract.spec rho
  AssertEqSeg69 : Seg69.contract.spec rho

/-- Exact deployed output3 obligations. -/
structure Output3Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg74 : Seg74.contract.spec rho
  AssertEqSeg75 : Seg75.contract.spec rho
  DecafAssertOnCurveSeg76 : Seg76.contract.spec rho
  DecafAssertEquivalentSeg77 : Seg77.contract.spec rho
  DecafAssertEquivalentSeg78 : Seg78.contract.spec rho
  AssertEqSeg79 : Seg79.contract.spec rho

/-- Exact deployed output4 obligations. -/
structure Output4Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg84 : Seg84.contract.spec rho
  AssertEqSeg85 : Seg85.contract.spec rho
  DecafAssertOnCurveSeg86 : Seg86.contract.spec rho
  DecafAssertEquivalentSeg87 : Seg87.contract.spec rho
  DecafAssertEquivalentSeg88 : Seg88.contract.spec rho
  AssertEqSeg89 : Seg89.contract.spec rho

/-- Exact deployed output5 obligations. -/
structure Output5Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg94 : Seg94.contract.spec rho
  AssertEqSeg95 : Seg95.contract.spec rho
  DecafAssertOnCurveSeg96 : Seg96.contract.spec rho
  DecafAssertEquivalentSeg97 : Seg97.contract.spec rho
  DecafAssertEquivalentSeg98 : Seg98.contract.spec rho
  AssertEqSeg99 : Seg99.contract.spec rho

/-- Exact deployed output6 obligations. -/
structure Output6Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg104 : Seg104.contract.spec rho
  AssertEqSeg105 : Seg105.contract.spec rho
  DecafAssertOnCurveSeg106 : Seg106.contract.spec rho
  DecafAssertEquivalentSeg107 : Seg107.contract.spec rho
  DecafAssertEquivalentSeg108 : Seg108.contract.spec rho
  AssertEqSeg109 : Seg109.contract.spec rho

/-- Exact deployed output7 obligations. -/
structure Output7Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg114 : Seg114.contract.spec rho
  AssertEqSeg115 : Seg115.contract.spec rho
  DecafAssertOnCurveSeg116 : Seg116.contract.spec rho
  DecafAssertEquivalentSeg117 : Seg117.contract.spec rho
  DecafAssertEquivalentSeg118 : Seg118.contract.spec rho
  AssertEqSeg119 : Seg119.contract.spec rho

structure NoteReshape1x8Statement (rho : Nat → DeployedF) : Prop where
  control : ControlSpec rho
  shared : SharedSpec rho
  balance : BalanceSpec rho
  transcript : TranscriptSpec rho
  spend0 : Spend0Spec rho
  output0 : Output0Spec rho
  output1 : Output1Spec rho
  output2 : Output2Spec rho
  output3 : Output3Spec rho
  output4 : Output4Spec rho
  output5 : Output5Spec rho
  output6 : Output6Spec rho
  output7 : Output7Spec rho

theorem note_reshape1x8_statement (rho : Nat → DeployedF) (h : relationAll rho) :
    NoteReshape1x8Statement rho := by
  exact {
    control := ⟨specOf1 rho h, specOf2 rho h, specOf3 rho h, specOf4 rho h, specOf5 rho h, specOf6 rho h, specOf7 rho h, specOf8 rho h, specOf9 rho h, specOf10 rho h, specOf11 rho h, specOf12 rho h, specOf13 rho h, specOf23 rho h, specOf26 rho h, specOf28 rho h, specOf36 rho h, specOf51 rho h, specOf61 rho h, specOf71 rho h, specOf81 rho h, specOf91 rho h, specOf101 rho h, specOf111 rho h, specOf121 rho h⟩
    shared := ⟨specOf15 rho h, specOf16 rho h, specOf17 rho h, specOf18 rho h, specOf19 rho h, specOf20 rho h⟩
    balance := ⟨specOf123 rho h, specOf124 rho h, specOf125 rho h⟩
    transcript := ⟨specOf131 rho h, specOf132 rho h⟩
    spend0 := ⟨specOf22 rho h, specOf24 rho h, specOf25 rho h, specOf27 rho h, specOf29 rho h, specOf30 rho h, specOf31 rho h, specOf32 rho h, specOf33 rho h, specOf34 rho h, specOf35 rho h, specOf37 rho h, specOf38 rho h, specOf39 rho h, specOf40 rho h, specOf41 rho h⟩
    output0 := ⟨specOf44 rho h, specOf45 rho h, specOf46 rho h, specOf47 rho h, specOf48 rho h, specOf49 rho h⟩
    output1 := ⟨specOf54 rho h, specOf55 rho h, specOf56 rho h, specOf57 rho h, specOf58 rho h, specOf59 rho h⟩
    output2 := ⟨specOf64 rho h, specOf65 rho h, specOf66 rho h, specOf67 rho h, specOf68 rho h, specOf69 rho h⟩
    output3 := ⟨specOf74 rho h, specOf75 rho h, specOf76 rho h, specOf77 rho h, specOf78 rho h, specOf79 rho h⟩
    output4 := ⟨specOf84 rho h, specOf85 rho h, specOf86 rho h, specOf87 rho h, specOf88 rho h, specOf89 rho h⟩
    output5 := ⟨specOf94 rho h, specOf95 rho h, specOf96 rho h, specOf97 rho h, specOf98 rho h, specOf99 rho h⟩
    output6 := ⟨specOf104 rho h, specOf105 rho h, specOf106 rho h, specOf107 rho h, specOf108 rho h, specOf109 rho h⟩
    output7 := ⟨specOf114 rho h, specOf115 rho h, specOf116 rho h, specOf117 rho h, specOf118 rho h, specOf119 rho h⟩
  }

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape1x8
