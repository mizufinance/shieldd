import ShielddGnarkFormal.Deployed.Contracts.NoteReshape8x1.Capstone

set_option maxRecDepth 1000000

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1

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
  AssertEqIfSeg45 : Seg45.contract.spec rho
  AssertEqIfSeg48 : Seg48.contract.spec rho
  DummyMuxSeg50 : Seg50.contract.spec rho
  AssertEqIfSeg58 : Seg58.contract.spec rho
  AssertEqIfSeg67 : Seg67.contract.spec rho
  AssertEqIfSeg70 : Seg70.contract.spec rho
  DummyMuxSeg72 : Seg72.contract.spec rho
  AssertEqIfSeg80 : Seg80.contract.spec rho
  AssertEqIfSeg89 : Seg89.contract.spec rho
  AssertEqIfSeg92 : Seg92.contract.spec rho
  DummyMuxSeg94 : Seg94.contract.spec rho
  AssertEqIfSeg102 : Seg102.contract.spec rho
  AssertEqIfSeg111 : Seg111.contract.spec rho
  AssertEqIfSeg114 : Seg114.contract.spec rho
  DummyMuxSeg116 : Seg116.contract.spec rho
  AssertEqIfSeg124 : Seg124.contract.spec rho
  AssertEqIfSeg133 : Seg133.contract.spec rho
  AssertEqIfSeg136 : Seg136.contract.spec rho
  DummyMuxSeg138 : Seg138.contract.spec rho
  AssertEqIfSeg146 : Seg146.contract.spec rho
  AssertEqIfSeg155 : Seg155.contract.spec rho
  AssertEqIfSeg158 : Seg158.contract.spec rho
  DummyMuxSeg160 : Seg160.contract.spec rho
  AssertEqIfSeg168 : Seg168.contract.spec rho
  AssertEqIfSeg177 : Seg177.contract.spec rho
  AssertEqIfSeg180 : Seg180.contract.spec rho
  DummyMuxSeg182 : Seg182.contract.spec rho
  AssertEqIfSeg190 : Seg190.contract.spec rho
  AssertEqIfSeg205 : Seg205.contract.spec rho

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
  DecafConservationNetBalanceCommitmentSeg207 : Seg207.contract.spec rho
  DecafAssertEquivalentSeg208 : Seg208.contract.spec rho
  DecafCompressToFieldSeg209 : Seg209.contract.spec rho

/-- Exact deployed transcript obligations. -/
structure TranscriptSpec (rho : Nat → DeployedF) : Prop where
  StatementHashSeg215 : Seg215.contract.spec rho
  AssertEqSeg216 : Seg216.contract.spec rho

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

/-- Exact deployed spend1 obligations. -/
structure Spend1Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg44 : Seg44.contract.spec rho
  GadgetNullifierSeg46 : Seg46.contract.spec rho
  GadgetStateCommitmentPathSeg47 : Seg47.contract.spec rho
  GadgetSyntheticDummyNullifierSeg49 : Seg49.contract.spec rho
  AssertEqSeg51 : Seg51.contract.spec rho
  DecafRandomizedVerificationKeySeg52 : Seg52.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg53 : Seg53.contract.spec rho
  DecafAssertEquivalentIfSeg54 : Seg54.contract.spec rho
  DecafAssertEquivalentIfSeg55 : Seg55.contract.spec rho
  DecafDiversifiedTransmissionKeySeg56 : Seg56.contract.spec rho
  DecafAssertEquivalentIfSeg57 : Seg57.contract.spec rho
  DecafAssertOnCurveSeg59 : Seg59.contract.spec rho
  DecafAssertEquivalentSeg60 : Seg60.contract.spec rho
  DecafAssertEquivalentSeg61 : Seg61.contract.spec rho
  AssertEqSeg62 : Seg62.contract.spec rho
  DecafCompressToFieldSeg63 : Seg63.contract.spec rho

/-- Exact deployed spend2 obligations. -/
structure Spend2Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg66 : Seg66.contract.spec rho
  GadgetNullifierSeg68 : Seg68.contract.spec rho
  GadgetStateCommitmentPathSeg69 : Seg69.contract.spec rho
  GadgetSyntheticDummyNullifierSeg71 : Seg71.contract.spec rho
  AssertEqSeg73 : Seg73.contract.spec rho
  DecafRandomizedVerificationKeySeg74 : Seg74.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg75 : Seg75.contract.spec rho
  DecafAssertEquivalentIfSeg76 : Seg76.contract.spec rho
  DecafAssertEquivalentIfSeg77 : Seg77.contract.spec rho
  DecafDiversifiedTransmissionKeySeg78 : Seg78.contract.spec rho
  DecafAssertEquivalentIfSeg79 : Seg79.contract.spec rho
  DecafAssertOnCurveSeg81 : Seg81.contract.spec rho
  DecafAssertEquivalentSeg82 : Seg82.contract.spec rho
  DecafAssertEquivalentSeg83 : Seg83.contract.spec rho
  AssertEqSeg84 : Seg84.contract.spec rho
  DecafCompressToFieldSeg85 : Seg85.contract.spec rho

/-- Exact deployed spend3 obligations. -/
structure Spend3Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg88 : Seg88.contract.spec rho
  GadgetNullifierSeg90 : Seg90.contract.spec rho
  GadgetStateCommitmentPathSeg91 : Seg91.contract.spec rho
  GadgetSyntheticDummyNullifierSeg93 : Seg93.contract.spec rho
  AssertEqSeg95 : Seg95.contract.spec rho
  DecafRandomizedVerificationKeySeg96 : Seg96.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg97 : Seg97.contract.spec rho
  DecafAssertEquivalentIfSeg98 : Seg98.contract.spec rho
  DecafAssertEquivalentIfSeg99 : Seg99.contract.spec rho
  DecafDiversifiedTransmissionKeySeg100 : Seg100.contract.spec rho
  DecafAssertEquivalentIfSeg101 : Seg101.contract.spec rho
  DecafAssertOnCurveSeg103 : Seg103.contract.spec rho
  DecafAssertEquivalentSeg104 : Seg104.contract.spec rho
  DecafAssertEquivalentSeg105 : Seg105.contract.spec rho
  AssertEqSeg106 : Seg106.contract.spec rho
  DecafCompressToFieldSeg107 : Seg107.contract.spec rho

/-- Exact deployed spend4 obligations. -/
structure Spend4Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg110 : Seg110.contract.spec rho
  GadgetNullifierSeg112 : Seg112.contract.spec rho
  GadgetStateCommitmentPathSeg113 : Seg113.contract.spec rho
  GadgetSyntheticDummyNullifierSeg115 : Seg115.contract.spec rho
  AssertEqSeg117 : Seg117.contract.spec rho
  DecafRandomizedVerificationKeySeg118 : Seg118.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg119 : Seg119.contract.spec rho
  DecafAssertEquivalentIfSeg120 : Seg120.contract.spec rho
  DecafAssertEquivalentIfSeg121 : Seg121.contract.spec rho
  DecafDiversifiedTransmissionKeySeg122 : Seg122.contract.spec rho
  DecafAssertEquivalentIfSeg123 : Seg123.contract.spec rho
  DecafAssertOnCurveSeg125 : Seg125.contract.spec rho
  DecafAssertEquivalentSeg126 : Seg126.contract.spec rho
  DecafAssertEquivalentSeg127 : Seg127.contract.spec rho
  AssertEqSeg128 : Seg128.contract.spec rho
  DecafCompressToFieldSeg129 : Seg129.contract.spec rho

/-- Exact deployed spend5 obligations. -/
structure Spend5Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg132 : Seg132.contract.spec rho
  GadgetNullifierSeg134 : Seg134.contract.spec rho
  GadgetStateCommitmentPathSeg135 : Seg135.contract.spec rho
  GadgetSyntheticDummyNullifierSeg137 : Seg137.contract.spec rho
  AssertEqSeg139 : Seg139.contract.spec rho
  DecafRandomizedVerificationKeySeg140 : Seg140.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg141 : Seg141.contract.spec rho
  DecafAssertEquivalentIfSeg142 : Seg142.contract.spec rho
  DecafAssertEquivalentIfSeg143 : Seg143.contract.spec rho
  DecafDiversifiedTransmissionKeySeg144 : Seg144.contract.spec rho
  DecafAssertEquivalentIfSeg145 : Seg145.contract.spec rho
  DecafAssertOnCurveSeg147 : Seg147.contract.spec rho
  DecafAssertEquivalentSeg148 : Seg148.contract.spec rho
  DecafAssertEquivalentSeg149 : Seg149.contract.spec rho
  AssertEqSeg150 : Seg150.contract.spec rho
  DecafCompressToFieldSeg151 : Seg151.contract.spec rho

/-- Exact deployed spend6 obligations. -/
structure Spend6Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg154 : Seg154.contract.spec rho
  GadgetNullifierSeg156 : Seg156.contract.spec rho
  GadgetStateCommitmentPathSeg157 : Seg157.contract.spec rho
  GadgetSyntheticDummyNullifierSeg159 : Seg159.contract.spec rho
  AssertEqSeg161 : Seg161.contract.spec rho
  DecafRandomizedVerificationKeySeg162 : Seg162.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg163 : Seg163.contract.spec rho
  DecafAssertEquivalentIfSeg164 : Seg164.contract.spec rho
  DecafAssertEquivalentIfSeg165 : Seg165.contract.spec rho
  DecafDiversifiedTransmissionKeySeg166 : Seg166.contract.spec rho
  DecafAssertEquivalentIfSeg167 : Seg167.contract.spec rho
  DecafAssertOnCurveSeg169 : Seg169.contract.spec rho
  DecafAssertEquivalentSeg170 : Seg170.contract.spec rho
  DecafAssertEquivalentSeg171 : Seg171.contract.spec rho
  AssertEqSeg172 : Seg172.contract.spec rho
  DecafCompressToFieldSeg173 : Seg173.contract.spec rho

/-- Exact deployed spend7 obligations. -/
structure Spend7Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg176 : Seg176.contract.spec rho
  GadgetNullifierSeg178 : Seg178.contract.spec rho
  GadgetStateCommitmentPathSeg179 : Seg179.contract.spec rho
  GadgetSyntheticDummyNullifierSeg181 : Seg181.contract.spec rho
  AssertEqSeg183 : Seg183.contract.spec rho
  DecafRandomizedVerificationKeySeg184 : Seg184.contract.spec rho
  DecafRandomizedVerificationKeyDummySeg185 : Seg185.contract.spec rho
  DecafAssertEquivalentIfSeg186 : Seg186.contract.spec rho
  DecafAssertEquivalentIfSeg187 : Seg187.contract.spec rho
  DecafDiversifiedTransmissionKeySeg188 : Seg188.contract.spec rho
  DecafAssertEquivalentIfSeg189 : Seg189.contract.spec rho
  DecafAssertOnCurveSeg191 : Seg191.contract.spec rho
  DecafAssertEquivalentSeg192 : Seg192.contract.spec rho
  DecafAssertEquivalentSeg193 : Seg193.contract.spec rho
  AssertEqSeg194 : Seg194.contract.spec rho
  DecafCompressToFieldSeg195 : Seg195.contract.spec rho

/-- Exact deployed output0 obligations. -/
structure Output0Spec (rho : Nat → DeployedF) : Prop where
  GadgetNoteCommitmentSeg198 : Seg198.contract.spec rho
  AssertEqSeg199 : Seg199.contract.spec rho
  DecafAssertOnCurveSeg200 : Seg200.contract.spec rho
  DecafAssertEquivalentSeg201 : Seg201.contract.spec rho
  DecafAssertEquivalentSeg202 : Seg202.contract.spec rho
  AssertEqSeg203 : Seg203.contract.spec rho

structure NoteReshape8x1Statement (rho : Nat → DeployedF) : Prop where
  control : ControlSpec rho
  shared : SharedSpec rho
  balance : BalanceSpec rho
  transcript : TranscriptSpec rho
  spend0 : Spend0Spec rho
  spend1 : Spend1Spec rho
  spend2 : Spend2Spec rho
  spend3 : Spend3Spec rho
  spend4 : Spend4Spec rho
  spend5 : Spend5Spec rho
  spend6 : Spend6Spec rho
  spend7 : Spend7Spec rho
  output0 : Output0Spec rho

theorem note_reshape8x1_statement (rho : Nat → DeployedF) (h : relationAll rho) :
    NoteReshape8x1Statement rho := by
  exact {
    control := ⟨specOf1 rho h, specOf2 rho h, specOf3 rho h, specOf4 rho h, specOf5 rho h, specOf6 rho h, specOf7 rho h, specOf8 rho h, specOf9 rho h, specOf10 rho h, specOf11 rho h, specOf12 rho h, specOf13 rho h, specOf23 rho h, specOf26 rho h, specOf28 rho h, specOf36 rho h, specOf45 rho h, specOf48 rho h, specOf50 rho h, specOf58 rho h, specOf67 rho h, specOf70 rho h, specOf72 rho h, specOf80 rho h, specOf89 rho h, specOf92 rho h, specOf94 rho h, specOf102 rho h, specOf111 rho h, specOf114 rho h, specOf116 rho h, specOf124 rho h, specOf133 rho h, specOf136 rho h, specOf138 rho h, specOf146 rho h, specOf155 rho h, specOf158 rho h, specOf160 rho h, specOf168 rho h, specOf177 rho h, specOf180 rho h, specOf182 rho h, specOf190 rho h, specOf205 rho h⟩
    shared := ⟨specOf15 rho h, specOf16 rho h, specOf17 rho h, specOf18 rho h, specOf19 rho h, specOf20 rho h⟩
    balance := ⟨specOf207 rho h, specOf208 rho h, specOf209 rho h⟩
    transcript := ⟨specOf215 rho h, specOf216 rho h⟩
    spend0 := ⟨specOf22 rho h, specOf24 rho h, specOf25 rho h, specOf27 rho h, specOf29 rho h, specOf30 rho h, specOf31 rho h, specOf32 rho h, specOf33 rho h, specOf34 rho h, specOf35 rho h, specOf37 rho h, specOf38 rho h, specOf39 rho h, specOf40 rho h, specOf41 rho h⟩
    spend1 := ⟨specOf44 rho h, specOf46 rho h, specOf47 rho h, specOf49 rho h, specOf51 rho h, specOf52 rho h, specOf53 rho h, specOf54 rho h, specOf55 rho h, specOf56 rho h, specOf57 rho h, specOf59 rho h, specOf60 rho h, specOf61 rho h, specOf62 rho h, specOf63 rho h⟩
    spend2 := ⟨specOf66 rho h, specOf68 rho h, specOf69 rho h, specOf71 rho h, specOf73 rho h, specOf74 rho h, specOf75 rho h, specOf76 rho h, specOf77 rho h, specOf78 rho h, specOf79 rho h, specOf81 rho h, specOf82 rho h, specOf83 rho h, specOf84 rho h, specOf85 rho h⟩
    spend3 := ⟨specOf88 rho h, specOf90 rho h, specOf91 rho h, specOf93 rho h, specOf95 rho h, specOf96 rho h, specOf97 rho h, specOf98 rho h, specOf99 rho h, specOf100 rho h, specOf101 rho h, specOf103 rho h, specOf104 rho h, specOf105 rho h, specOf106 rho h, specOf107 rho h⟩
    spend4 := ⟨specOf110 rho h, specOf112 rho h, specOf113 rho h, specOf115 rho h, specOf117 rho h, specOf118 rho h, specOf119 rho h, specOf120 rho h, specOf121 rho h, specOf122 rho h, specOf123 rho h, specOf125 rho h, specOf126 rho h, specOf127 rho h, specOf128 rho h, specOf129 rho h⟩
    spend5 := ⟨specOf132 rho h, specOf134 rho h, specOf135 rho h, specOf137 rho h, specOf139 rho h, specOf140 rho h, specOf141 rho h, specOf142 rho h, specOf143 rho h, specOf144 rho h, specOf145 rho h, specOf147 rho h, specOf148 rho h, specOf149 rho h, specOf150 rho h, specOf151 rho h⟩
    spend6 := ⟨specOf154 rho h, specOf156 rho h, specOf157 rho h, specOf159 rho h, specOf161 rho h, specOf162 rho h, specOf163 rho h, specOf164 rho h, specOf165 rho h, specOf166 rho h, specOf167 rho h, specOf169 rho h, specOf170 rho h, specOf171 rho h, specOf172 rho h, specOf173 rho h⟩
    spend7 := ⟨specOf176 rho h, specOf178 rho h, specOf179 rho h, specOf181 rho h, specOf183 rho h, specOf184 rho h, specOf185 rho h, specOf186 rho h, specOf187 rho h, specOf188 rho h, specOf189 rho h, specOf191 rho h, specOf192 rho h, specOf193 rho h, specOf194 rho h, specOf195 rho h⟩
    output0 := ⟨specOf198 rho h, specOf199 rho h, specOf200 rho h, specOf201 rho h, specOf202 rho h, specOf203 rho h⟩
  }

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape8x1
