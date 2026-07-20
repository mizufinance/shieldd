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
  AssertDummySuffixSeg5 : Seg5.contract.spec rho
  AssertActiveRangeSeg6 : Seg6.contract.spec rho
  AssertEqIfSeg16 : Seg16.contract.spec rho
  AssertEqIfSeg19 : Seg19.contract.spec rho
  DummyMuxSeg21 : Seg21.contract.spec rho
  AssertEqIfSeg29 : Seg29.contract.spec rho
  AssertEqIfSeg38 : Seg38.contract.spec rho
  AssertEqIfSeg41 : Seg41.contract.spec rho
  DummyMuxSeg43 : Seg43.contract.spec rho
  AssertEqIfSeg51 : Seg51.contract.spec rho
  AssertEqIfSeg60 : Seg60.contract.spec rho
  AssertEqIfSeg63 : Seg63.contract.spec rho
  DummyMuxSeg65 : Seg65.contract.spec rho
  AssertEqIfSeg73 : Seg73.contract.spec rho
  AssertEqIfSeg82 : Seg82.contract.spec rho
  AssertEqIfSeg85 : Seg85.contract.spec rho
  DummyMuxSeg87 : Seg87.contract.spec rho
  AssertEqIfSeg95 : Seg95.contract.spec rho

/-- Exact deployed shared obligations. -/
structure SharedSpec (rho : Nat → DeployedF) : Prop where
  DecafAssertOnCurveSeg8 : Seg8.contract.spec rho
  DecafAssertOnCurveSeg9 : Seg9.contract.spec rho
  DecafAssertOnCurveSeg10 : Seg10.contract.spec rho
  DecafCompressToFieldSeg11 : Seg11.contract.spec rho
  DecafDiversifiedTransmissionKeySeg12 : Seg12.contract.spec rho
  DecafAssertEquivalentSeg13 : Seg13.contract.spec rho

/-- Exact deployed balance obligations. -/
structure BalanceSpec (rho : Nat → DeployedF) : Prop where
  DecafConservationNetBalanceCommitmentSeg110 : Seg110.contract.spec rho
  DecafAssertEquivalentSeg111 : Seg111.contract.spec rho
  DecafCompressToFieldSeg112 : Seg112.contract.spec rho

/-- Exact deployed transcript obligations. -/
structure TranscriptSpec (rho : Nat → DeployedF) : Prop where
  StatementHashSeg117 : Seg117.contract.spec rho
  AssertEqSeg118 : Seg118.contract.spec rho

/-- Exact deployed spend0 obligations. -/
structure Spend0Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg15 : Seg15.contract.spec rho
  GadgetNullifierSeg17 : Seg17.contract.spec rho
  GadgetStateCommitmentPathSeg18 : Seg18.contract.spec rho
  GadgetSyntheticDummyNullifierSeg20 : Seg20.contract.spec rho
  AssertEqSeg22 : Seg22.contract.spec rho
  DecafRandomizedVerificationKeySeg23 : Seg23.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg24 : Seg24.contract.spec rho
  DecafAssertEquivalentIfSeg25 : Seg25.contract.spec rho
  DecafAssertEquivalentIfSeg26 : Seg26.contract.spec rho
  DecafDiversifiedTransmissionKeySeg27 : Seg27.contract.spec rho
  DecafAssertEquivalentIfSeg28 : Seg28.contract.spec rho
  DecafAssertOnCurveSeg30 : Seg30.contract.spec rho
  DecafAssertEquivalentSeg31 : Seg31.contract.spec rho
  DecafAssertEquivalentSeg32 : Seg32.contract.spec rho
  AssertEqSeg33 : Seg33.contract.spec rho
  DecafCompressToFieldSeg34 : Seg34.contract.spec rho

/-- Exact deployed spend1 obligations. -/
structure Spend1Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg37 : Seg37.contract.spec rho
  GadgetNullifierSeg39 : Seg39.contract.spec rho
  GadgetStateCommitmentPathSeg40 : Seg40.contract.spec rho
  GadgetSyntheticDummyNullifierSeg42 : Seg42.contract.spec rho
  AssertEqSeg44 : Seg44.contract.spec rho
  DecafRandomizedVerificationKeySeg45 : Seg45.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg46 : Seg46.contract.spec rho
  DecafAssertEquivalentIfSeg47 : Seg47.contract.spec rho
  DecafAssertEquivalentIfSeg48 : Seg48.contract.spec rho
  DecafDiversifiedTransmissionKeySeg49 : Seg49.contract.spec rho
  DecafAssertEquivalentIfSeg50 : Seg50.contract.spec rho
  DecafAssertOnCurveSeg52 : Seg52.contract.spec rho
  DecafAssertEquivalentSeg53 : Seg53.contract.spec rho
  DecafAssertEquivalentSeg54 : Seg54.contract.spec rho
  AssertEqSeg55 : Seg55.contract.spec rho
  DecafCompressToFieldSeg56 : Seg56.contract.spec rho

/-- Exact deployed spend2 obligations. -/
structure Spend2Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg59 : Seg59.contract.spec rho
  GadgetNullifierSeg61 : Seg61.contract.spec rho
  GadgetStateCommitmentPathSeg62 : Seg62.contract.spec rho
  GadgetSyntheticDummyNullifierSeg64 : Seg64.contract.spec rho
  AssertEqSeg66 : Seg66.contract.spec rho
  DecafRandomizedVerificationKeySeg67 : Seg67.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg68 : Seg68.contract.spec rho
  DecafAssertEquivalentIfSeg69 : Seg69.contract.spec rho
  DecafAssertEquivalentIfSeg70 : Seg70.contract.spec rho
  DecafDiversifiedTransmissionKeySeg71 : Seg71.contract.spec rho
  DecafAssertEquivalentIfSeg72 : Seg72.contract.spec rho
  DecafAssertOnCurveSeg74 : Seg74.contract.spec rho
  DecafAssertEquivalentSeg75 : Seg75.contract.spec rho
  DecafAssertEquivalentSeg76 : Seg76.contract.spec rho
  AssertEqSeg77 : Seg77.contract.spec rho
  DecafCompressToFieldSeg78 : Seg78.contract.spec rho

/-- Exact deployed spend3 obligations. -/
structure Spend3Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg81 : Seg81.contract.spec rho
  GadgetNullifierSeg83 : Seg83.contract.spec rho
  GadgetStateCommitmentPathSeg84 : Seg84.contract.spec rho
  GadgetSyntheticDummyNullifierSeg86 : Seg86.contract.spec rho
  AssertEqSeg88 : Seg88.contract.spec rho
  DecafRandomizedVerificationKeySeg89 : Seg89.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg90 : Seg90.contract.spec rho
  DecafAssertEquivalentIfSeg91 : Seg91.contract.spec rho
  DecafAssertEquivalentIfSeg92 : Seg92.contract.spec rho
  DecafDiversifiedTransmissionKeySeg93 : Seg93.contract.spec rho
  DecafAssertEquivalentIfSeg94 : Seg94.contract.spec rho
  DecafAssertOnCurveSeg96 : Seg96.contract.spec rho
  DecafAssertEquivalentSeg97 : Seg97.contract.spec rho
  DecafAssertEquivalentSeg98 : Seg98.contract.spec rho
  AssertEqSeg99 : Seg99.contract.spec rho
  DecafCompressToFieldSeg100 : Seg100.contract.spec rho

/-- Exact deployed output0 obligations. -/
structure Output0Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg103 : Seg103.contract.spec rho
  AssertEqSeg104 : Seg104.contract.spec rho
  DecafAssertOnCurveSeg105 : Seg105.contract.spec rho
  DecafAssertEquivalentSeg106 : Seg106.contract.spec rho
  DecafAssertEquivalentSeg107 : Seg107.contract.spec rho
  AssertEqSeg108 : Seg108.contract.spec rho

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
    control := ⟨specOf1 rho h, specOf2 rho h, specOf3 rho h, specOf4 rho h, specOf5 rho h, specOf6 rho h, specOf16 rho h, specOf19 rho h, specOf21 rho h, specOf29 rho h, specOf38 rho h, specOf41 rho h, specOf43 rho h, specOf51 rho h, specOf60 rho h, specOf63 rho h, specOf65 rho h, specOf73 rho h, specOf82 rho h, specOf85 rho h, specOf87 rho h, specOf95 rho h⟩
    shared := ⟨specOf8 rho h, specOf9 rho h, specOf10 rho h, specOf11 rho h, specOf12 rho h, specOf13 rho h⟩
    balance := ⟨specOf110 rho h, specOf111 rho h, specOf112 rho h⟩
    transcript := ⟨specOf117 rho h, specOf118 rho h⟩
    spend0 := ⟨specOf15 rho h, specOf17 rho h, specOf18 rho h, specOf20 rho h, specOf22 rho h, specOf23 rho h, specOf24 rho h, specOf25 rho h, specOf26 rho h, specOf27 rho h, specOf28 rho h, specOf30 rho h, specOf31 rho h, specOf32 rho h, specOf33 rho h, specOf34 rho h⟩
    spend1 := ⟨specOf37 rho h, specOf39 rho h, specOf40 rho h, specOf42 rho h, specOf44 rho h, specOf45 rho h, specOf46 rho h, specOf47 rho h, specOf48 rho h, specOf49 rho h, specOf50 rho h, specOf52 rho h, specOf53 rho h, specOf54 rho h, specOf55 rho h, specOf56 rho h⟩
    spend2 := ⟨specOf59 rho h, specOf61 rho h, specOf62 rho h, specOf64 rho h, specOf66 rho h, specOf67 rho h, specOf68 rho h, specOf69 rho h, specOf70 rho h, specOf71 rho h, specOf72 rho h, specOf74 rho h, specOf75 rho h, specOf76 rho h, specOf77 rho h, specOf78 rho h⟩
    spend3 := ⟨specOf81 rho h, specOf83 rho h, specOf84 rho h, specOf86 rho h, specOf88 rho h, specOf89 rho h, specOf90 rho h, specOf91 rho h, specOf92 rho h, specOf93 rho h, specOf94 rho h, specOf96 rho h, specOf97 rho h, specOf98 rho h, specOf99 rho h, specOf100 rho h⟩
    output0 := ⟨specOf103 rho h, specOf104 rho h, specOf105 rho h, specOf106 rho h, specOf107 rho h, specOf108 rho h⟩
  }

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape4x1
