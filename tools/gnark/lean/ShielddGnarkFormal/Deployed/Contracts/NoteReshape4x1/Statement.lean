import ShielddGnarkFormal.Deployed.Contracts.NoteReshape4x1.Capstone

set_option maxRecDepth 1000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1

open Shieldd.GnarkFormal

/-- Exact deployed control obligations. -/
structure ControlSpec (rho : Nat → DeployedF) : Prop where
  AssertBooleanSeg1 : Seg1.contract.spec rho
  AssertBooleanSeg2 : Seg2.contract.spec rho
  AssertBooleanSeg3 : Seg3.contract.spec rho
  AssertBooleanSeg4 : Seg4.contract.spec rho
  AssertBooleanSeg5 : Seg5.contract.spec rho
  AssertDummySuffixSeg6 : Seg6.contract.spec rho
  AssertDummySuffixSeg7 : Seg7.contract.spec rho
  AssertActiveRangeSeg8 : Seg8.contract.spec rho
  AssertActiveRangeSeg9 : Seg9.contract.spec rho
  AssertEqIfSeg19 : Seg19.contract.spec rho
  AssertEqIfSeg22 : Seg22.contract.spec rho
  DummyMuxSeg24 : Seg24.contract.spec rho
  AssertEqIfSeg32 : Seg32.contract.spec rho
  AssertEqIfSeg41 : Seg41.contract.spec rho
  AssertEqIfSeg44 : Seg44.contract.spec rho
  DummyMuxSeg46 : Seg46.contract.spec rho
  AssertEqIfSeg54 : Seg54.contract.spec rho
  AssertEqIfSeg63 : Seg63.contract.spec rho
  AssertEqIfSeg66 : Seg66.contract.spec rho
  DummyMuxSeg68 : Seg68.contract.spec rho
  AssertEqIfSeg76 : Seg76.contract.spec rho
  AssertEqIfSeg85 : Seg85.contract.spec rho
  AssertEqIfSeg88 : Seg88.contract.spec rho
  DummyMuxSeg90 : Seg90.contract.spec rho
  AssertEqIfSeg98 : Seg98.contract.spec rho
  AssertEqIfSeg113 : Seg113.contract.spec rho

/-- Exact deployed shared obligations. -/
structure SharedSpec (rho : Nat → DeployedF) : Prop where
  DecafAssertOnCurveSeg11 : Seg11.contract.spec rho
  DecafAssertOnCurveSeg12 : Seg12.contract.spec rho
  DecafAssertOnCurveSeg13 : Seg13.contract.spec rho
  DecafCompressToFieldSeg14 : Seg14.contract.spec rho
  DecafDiversifiedTransmissionKeySeg15 : Seg15.contract.spec rho
  DecafAssertEquivalentSeg16 : Seg16.contract.spec rho

/-- Exact deployed balance obligations. -/
structure BalanceSpec (rho : Nat → DeployedF) : Prop where
  DecafConservationNetBalanceCommitmentSeg115 : Seg115.contract.spec rho
  DecafAssertEquivalentSeg116 : Seg116.contract.spec rho
  DecafCompressToFieldSeg117 : Seg117.contract.spec rho

/-- Exact deployed transcript obligations. -/
structure TranscriptSpec (rho : Nat → DeployedF) : Prop where
  StatementHashSeg123 : Seg123.contract.spec rho
  AssertEqSeg124 : Seg124.contract.spec rho

/-- Exact deployed spend0 obligations. -/
structure Spend0Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg18 : Seg18.contract.spec rho
  GadgetNullifierSeg20 : Seg20.contract.spec rho
  GadgetStateCommitmentPathSeg21 : Seg21.contract.spec rho
  GadgetSyntheticDummyNullifierSeg23 : Seg23.contract.spec rho
  AssertEqSeg25 : Seg25.contract.spec rho
  DecafRandomizedVerificationKeySeg26 : Seg26.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg27 : Seg27.contract.spec rho
  DecafAssertEquivalentIfSeg28 : Seg28.contract.spec rho
  DecafAssertEquivalentIfSeg29 : Seg29.contract.spec rho
  DecafDiversifiedTransmissionKeySeg30 : Seg30.contract.spec rho
  DecafAssertEquivalentIfSeg31 : Seg31.contract.spec rho
  DecafAssertOnCurveSeg33 : Seg33.contract.spec rho
  DecafAssertEquivalentSeg34 : Seg34.contract.spec rho
  DecafAssertEquivalentSeg35 : Seg35.contract.spec rho
  AssertEqSeg36 : Seg36.contract.spec rho
  DecafCompressToFieldSeg37 : Seg37.contract.spec rho

/-- Exact deployed spend1 obligations. -/
structure Spend1Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg40 : Seg40.contract.spec rho
  GadgetNullifierSeg42 : Seg42.contract.spec rho
  GadgetStateCommitmentPathSeg43 : Seg43.contract.spec rho
  GadgetSyntheticDummyNullifierSeg45 : Seg45.contract.spec rho
  AssertEqSeg47 : Seg47.contract.spec rho
  DecafRandomizedVerificationKeySeg48 : Seg48.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg49 : Seg49.contract.spec rho
  DecafAssertEquivalentIfSeg50 : Seg50.contract.spec rho
  DecafAssertEquivalentIfSeg51 : Seg51.contract.spec rho
  DecafDiversifiedTransmissionKeySeg52 : Seg52.contract.spec rho
  DecafAssertEquivalentIfSeg53 : Seg53.contract.spec rho
  DecafAssertOnCurveSeg55 : Seg55.contract.spec rho
  DecafAssertEquivalentSeg56 : Seg56.contract.spec rho
  DecafAssertEquivalentSeg57 : Seg57.contract.spec rho
  AssertEqSeg58 : Seg58.contract.spec rho
  DecafCompressToFieldSeg59 : Seg59.contract.spec rho

/-- Exact deployed spend2 obligations. -/
structure Spend2Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg62 : Seg62.contract.spec rho
  GadgetNullifierSeg64 : Seg64.contract.spec rho
  GadgetStateCommitmentPathSeg65 : Seg65.contract.spec rho
  GadgetSyntheticDummyNullifierSeg67 : Seg67.contract.spec rho
  AssertEqSeg69 : Seg69.contract.spec rho
  DecafRandomizedVerificationKeySeg70 : Seg70.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg71 : Seg71.contract.spec rho
  DecafAssertEquivalentIfSeg72 : Seg72.contract.spec rho
  DecafAssertEquivalentIfSeg73 : Seg73.contract.spec rho
  DecafDiversifiedTransmissionKeySeg74 : Seg74.contract.spec rho
  DecafAssertEquivalentIfSeg75 : Seg75.contract.spec rho
  DecafAssertOnCurveSeg77 : Seg77.contract.spec rho
  DecafAssertEquivalentSeg78 : Seg78.contract.spec rho
  DecafAssertEquivalentSeg79 : Seg79.contract.spec rho
  AssertEqSeg80 : Seg80.contract.spec rho
  DecafCompressToFieldSeg81 : Seg81.contract.spec rho

/-- Exact deployed spend3 obligations. -/
structure Spend3Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg84 : Seg84.contract.spec rho
  GadgetNullifierSeg86 : Seg86.contract.spec rho
  GadgetStateCommitmentPathSeg87 : Seg87.contract.spec rho
  GadgetSyntheticDummyNullifierSeg89 : Seg89.contract.spec rho
  AssertEqSeg91 : Seg91.contract.spec rho
  DecafRandomizedVerificationKeySeg92 : Seg92.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg93 : Seg93.contract.spec rho
  DecafAssertEquivalentIfSeg94 : Seg94.contract.spec rho
  DecafAssertEquivalentIfSeg95 : Seg95.contract.spec rho
  DecafDiversifiedTransmissionKeySeg96 : Seg96.contract.spec rho
  DecafAssertEquivalentIfSeg97 : Seg97.contract.spec rho
  DecafAssertOnCurveSeg99 : Seg99.contract.spec rho
  DecafAssertEquivalentSeg100 : Seg100.contract.spec rho
  DecafAssertEquivalentSeg101 : Seg101.contract.spec rho
  AssertEqSeg102 : Seg102.contract.spec rho
  DecafCompressToFieldSeg103 : Seg103.contract.spec rho

/-- Exact deployed output0 obligations. -/
structure Output0Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg106 : Seg106.contract.spec rho
  AssertEqSeg107 : Seg107.contract.spec rho
  DecafAssertOnCurveSeg108 : Seg108.contract.spec rho
  DecafAssertEquivalentSeg109 : Seg109.contract.spec rho
  DecafAssertEquivalentSeg110 : Seg110.contract.spec rho
  AssertEqSeg111 : Seg111.contract.spec rho

structure NoteReshape4x1Statement (rho : Nat → DeployedF) : Prop where
  control : ControlSpec rho
  shared : SharedSpec rho
  balance : BalanceSpec rho
  transcript : TranscriptSpec rho
  spend0 : Spend0Spec rho
  spend1 : Spend1Spec rho
  spend2 : Spend2Spec rho
  spend3 : Spend3Spec rho
  output0 : Output0Spec rho

theorem note_reshape4x1_statement (rho : Nat → DeployedF) (h : relationAll rho) :
    NoteReshape4x1Statement rho := by
  exact {
    control := ⟨specOf1 rho h, specOf2 rho h, specOf3 rho h, specOf4 rho h, specOf5 rho h, specOf6 rho h, specOf7 rho h, specOf8 rho h, specOf9 rho h, specOf19 rho h, specOf22 rho h, specOf24 rho h, specOf32 rho h, specOf41 rho h, specOf44 rho h, specOf46 rho h, specOf54 rho h, specOf63 rho h, specOf66 rho h, specOf68 rho h, specOf76 rho h, specOf85 rho h, specOf88 rho h, specOf90 rho h, specOf98 rho h, specOf113 rho h⟩
    shared := ⟨specOf11 rho h, specOf12 rho h, specOf13 rho h, specOf14 rho h, specOf15 rho h, specOf16 rho h⟩
    balance := ⟨specOf115 rho h, specOf116 rho h, specOf117 rho h⟩
    transcript := ⟨specOf123 rho h, specOf124 rho h⟩
    spend0 := ⟨specOf18 rho h, specOf20 rho h, specOf21 rho h, specOf23 rho h, specOf25 rho h, specOf26 rho h, specOf27 rho h, specOf28 rho h, specOf29 rho h, specOf30 rho h, specOf31 rho h, specOf33 rho h, specOf34 rho h, specOf35 rho h, specOf36 rho h, specOf37 rho h⟩
    spend1 := ⟨specOf40 rho h, specOf42 rho h, specOf43 rho h, specOf45 rho h, specOf47 rho h, specOf48 rho h, specOf49 rho h, specOf50 rho h, specOf51 rho h, specOf52 rho h, specOf53 rho h, specOf55 rho h, specOf56 rho h, specOf57 rho h, specOf58 rho h, specOf59 rho h⟩
    spend2 := ⟨specOf62 rho h, specOf64 rho h, specOf65 rho h, specOf67 rho h, specOf69 rho h, specOf70 rho h, specOf71 rho h, specOf72 rho h, specOf73 rho h, specOf74 rho h, specOf75 rho h, specOf77 rho h, specOf78 rho h, specOf79 rho h, specOf80 rho h, specOf81 rho h⟩
    spend3 := ⟨specOf84 rho h, specOf86 rho h, specOf87 rho h, specOf89 rho h, specOf91 rho h, specOf92 rho h, specOf93 rho h, specOf94 rho h, specOf95 rho h, specOf96 rho h, specOf97 rho h, specOf99 rho h, specOf100 rho h, specOf101 rho h, specOf102 rho h, specOf103 rho h⟩
    output0 := ⟨specOf106 rho h, specOf107 rho h, specOf108 rho h, specOf109 rho h, specOf110 rho h, specOf111 rho h⟩
  }

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1
