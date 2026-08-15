import Lean.Elab.Tactic.Omega
import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Contracts.Transfer.RefinementSeams
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring
import ShielddGnarkFormal.Deployed.Contracts.Transfer.RefinementAction
import ShielddGnarkFormal.Deployed.NoteReshapeRefinement
import ShielddGnarkFormal.Poseidon3Spec
import ShielddGnarkFormal.StateMembership925Bridge
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd
import ShielddGnarkFormal.Deployed.Templates.Semantics.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799
import ShielddGnarkFormal.Deployed.Templates.Semantics.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975
import ShielddGnarkFormal.Deployed.Templates.Semantics.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalent_337547ecab9ed69ef703225ce3fb67ba58652a95490dc7e75be736b205e39646
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e
import ShielddGnarkFormal.Deployed.Templates.Semantics.THistoryClassify_24943fd2154aa0ac8bbf9adce870214e50badfb7c18cba54c33b68fcd9222905
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d
import ShielddGnarkFormal.Deployed.Templates.Semantics.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingPrecisionSelect_125b62f4637be641a0e83ca5b67e6b0fde3dc4a203b53954c10e341830651161
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingParametersHash_4ac07381879f7b48f8431947af1db1328923b54907622f47df5426e5ea9b6653
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingPermutationHash_e192a8182110fdbc13b07c4a18e32a203dbb18e8203962744b80b191a845a030
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingPermutationCompose_38126e47de90298f59bd17b5452e92d8d2b20161cbaf377aef252b7e1fe3c573
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagRandomWord_4480567d0ad9109ab45843d493f32a0ed4ed6acebd0be5471905902706d09764
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_96b7bad6a126477ad863859abf885df171ba39077e195c445287f1fe7feb8aed
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagRandomWord_214c257798ce9ea73b964e6f1d8353234a318db1530ede36af2658731198a3fd
import ShielddGnarkFormal.Deployed.Templates.Semantics.TRoutingTagCompose_693a5e7e265dd4badbbd5ea9a64eb22c4ba3b423d34f08e4ae1f94375a8d3fbb
import ShielddGnarkFormal.Deployed.Templates.Semantics.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_f771a421e77b34e798b9a3684411305ddf046c31c0dcdd45f55a3341904f59c7
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_6102356f10803bf3a14c647c07a6804c8be9ed25097c1247a5f07e703b892326
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_7ca1f127ae2aba8ae3ff0daa0762a2981d18913d868dc2742d5a74f22684c557
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_afc1dab7ce4cb1d665f58c0e62c3211c7152d792a45bd80acbbe3444a7be5d4e
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetTransferSalt_c897628fb413fa804e577bd04151d6ba3b460e6052b87493c17e1529720c3945
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionDetection_63775682d65609fcb7205087c01734b96d2d3337f3d614c8ffd568df5c38c49c
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
import ShielddGnarkFormal.Deployed.Templates.Semantics.TStatementHash_0e54d8ea5fc5d0d95e113695b4b0340e4b6bab4d5abb13df4d51436c93755a86
import ShielddGnarkFormal.Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-!
Exact-to-semantic normalization for every source-authenticated Transfer
provider.  This is the only refinement layer allowed to mention deployed
segment indices, provider namespaces, or local valuations.
GENERATED by gen_deployed_family.py — do not edit by hand.
-/

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal

attribute [-instance] ZMod.instField
private local instance choiceFreeTransferRefinementAdaptersCommRing :
    CommRing DeployedF :=
  ZMod.commRing _

private theorem transferNegOne :
    (8444461749428370424248824938781546531375899335154063827935233455917409239040 : DeployedF) = -1 := by
  decide +kernel

private theorem transferNegOneLc (x y : DeployedF) :
    y + (8444461749428370424248824938781546531375899335154063827935233455917409239040 : DeployedF) * x = -x + y := by
  rw [transferNegOne]
  ring_nf

/-- Deployed seating for the `is_regulated_boolean` certified local semantics. -/
def IsRegulatedBooleanValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg1.localRho rho

/-- Certified local semantics for the `is_regulated_boolean` source operation. -/
def IsRegulatedBooleanSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec (IsRegulatedBooleanValuation rho)

/-- Deployed seating for the `auth_ak_non_identity` certified local semantics. -/
def AuthAkNonIdentityValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg3.localRho rho

/-- Certified local semantics for the `auth_ak_non_identity` source operation. -/
def AuthAkNonIdentitySemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (AuthAkNonIdentityValuation rho)

/-- Deployed seating for the `sender_div_gen_non_identity` certified local semantics. -/
def SenderDivGenNonIdentityValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg4.localRho rho

/-- Certified local semantics for the `sender_div_gen_non_identity` source operation. -/
def SenderDivGenNonIdentitySemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (SenderDivGenNonIdentityValuation rho)

/-- Deployed seating for the `asset_id_nonzero` certified local semantics. -/
def AssetIdNonzeroValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg5.localRho rho

/-- Certified local semantics for the `asset_id_nonzero` source operation. -/
def AssetIdNonzeroSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (AssetIdNonzeroValuation rho)

/-- Deployed seating for the `effective_ring_pk` certified local semantics. -/
def EffectiveRingPkValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg6.localRho rho

/-- Certified local semantics for the `effective_ring_pk` source operation. -/
def EffectiveRingPkSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799.spec (EffectiveRingPkValuation rho)

/-- Audited action-facing seat for `effective_ring_pk` local 1. -/
@[simp] theorem effectiveRingPkAt1
    (rho : Nat → DeployedF) :
    EffectiveRingPkValuation rho 1 = rho 11 := by
  simp only [
    EffectiveRingPkValuation, Seg6.localRho,
    Deployed.Templates.seated]
  rw [show Seg6.wireSeating 1 = 11 by
    decide +kernel]

/-- Audited action-facing seat for `effective_ring_pk` local 2. -/
@[simp] theorem effectiveRingPkAt2
    (rho : Nat → DeployedF) :
    EffectiveRingPkValuation rho 2 = rho 28 := by
  simp only [
    EffectiveRingPkValuation, Seg6.localRho,
    Deployed.Templates.seated]
  rw [show Seg6.wireSeating 2 = 28 by
    decide +kernel]

/-- Audited action-facing seat for `effective_ring_pk` local 3. -/
@[simp] theorem effectiveRingPkAt3
    (rho : Nat → DeployedF) :
    EffectiveRingPkValuation rho 3 = rho 407 := by
  simp only [
    EffectiveRingPkValuation, Seg6.localRho,
    Deployed.Templates.seated]
  rw [show Seg6.wireSeating 3 = 407 by
    decide +kernel]

/-- Audited action-facing seat for `effective_ring_pk` local 4. -/
@[simp] theorem effectiveRingPkAt4
    (rho : Nat → DeployedF) :
    EffectiveRingPkValuation rho 4 = rho 29 := by
  simp only [
    EffectiveRingPkValuation, Seg6.localRho,
    Deployed.Templates.seated]
  rw [show Seg6.wireSeating 4 = 29 by
    decide +kernel]

/-- Audited action-facing seat for `effective_ring_pk` local 5. -/
@[simp] theorem effectiveRingPkAt5
    (rho : Nat → DeployedF) :
    EffectiveRingPkValuation rho 5 = rho 408 := by
  simp only [
    EffectiveRingPkValuation, Seg6.localRho,
    Deployed.Templates.seated]
  rw [show Seg6.wireSeating 5 = 408 by
    decide +kernel]

/-- Deployed seating for the `effective_dk_pub` certified local semantics. -/
def EffectiveDkPubValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg7.localRho rho

/-- Certified local semantics for the `effective_dk_pub` source operation. -/
def EffectiveDkPubSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975.spec (EffectiveDkPubValuation rho)

/-- Audited action-facing seat for `effective_dk_pub` local 1. -/
@[simp] theorem effectiveDkPubAt1
    (rho : Nat → DeployedF) :
    EffectiveDkPubValuation rho 1 = rho 11 := by
  simp only [
    EffectiveDkPubValuation, Seg7.localRho,
    Deployed.Templates.seated]
  rw [show Seg7.wireSeating 1 = 11 by
    decide +kernel]

/-- Audited action-facing seat for `effective_dk_pub` local 2. -/
@[simp] theorem effectiveDkPubAt2
    (rho : Nat → DeployedF) :
    EffectiveDkPubValuation rho 2 = rho 23 := by
  simp only [
    EffectiveDkPubValuation, Seg7.localRho,
    Deployed.Templates.seated]
  rw [show Seg7.wireSeating 2 = 23 by
    decide +kernel]

/-- Audited action-facing seat for `effective_dk_pub` local 3. -/
@[simp] theorem effectiveDkPubAt3
    (rho : Nat → DeployedF) :
    EffectiveDkPubValuation rho 3 = rho 409 := by
  simp only [
    EffectiveDkPubValuation, Seg7.localRho,
    Deployed.Templates.seated]
  rw [show Seg7.wireSeating 3 = 409 by
    decide +kernel]

/-- Audited action-facing seat for `effective_dk_pub` local 4. -/
@[simp] theorem effectiveDkPubAt4
    (rho : Nat → DeployedF) :
    EffectiveDkPubValuation rho 4 = rho 24 := by
  simp only [
    EffectiveDkPubValuation, Seg7.localRho,
    Deployed.Templates.seated]
  rw [show Seg7.wireSeating 4 = 24 by
    decide +kernel]

/-- Audited action-facing seat for `effective_dk_pub` local 5. -/
@[simp] theorem effectiveDkPubAt5
    (rho : Nat → DeployedF) :
    EffectiveDkPubValuation rho 5 = rho 410 := by
  simp only [
    EffectiveDkPubValuation, Seg7.localRho,
    Deployed.Templates.seated]
  rw [show Seg7.wireSeating 5 = 410 by
    decide +kernel]

/-- Deployed seating for the `effective_ring_id_hash` certified local semantics. -/
def EffectiveRingIdHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg8.localRho rho

/-- Certified local semantics for the `effective_ring_id_hash` source operation. -/
def EffectiveRingIdHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.spec (EffectiveRingIdHashValuation rho)

/-- Audited action-facing seat for `effective_ring_id_hash` local 1. -/
@[simp] theorem effectiveRingIdHashAt1
    (rho : Nat → DeployedF) :
    EffectiveRingIdHashValuation rho 1 = rho 11 := by
  simp only [
    EffectiveRingIdHashValuation, Seg8.localRho,
    Deployed.Templates.seated]
  rw [show Seg8.wireSeating 1 = 11 by
    decide +kernel]

/-- Audited action-facing seat for `effective_ring_id_hash` local 2. -/
@[simp] theorem effectiveRingIdHashAt2
    (rho : Nat → DeployedF) :
    EffectiveRingIdHashValuation rho 2 = rho 30 := by
  simp only [
    EffectiveRingIdHashValuation, Seg8.localRho,
    Deployed.Templates.seated]
  rw [show Seg8.wireSeating 2 = 30 by
    decide +kernel]

/-- Audited action-facing seat for `effective_ring_id_hash` local 3. -/
@[simp] theorem effectiveRingIdHashAt3
    (rho : Nat → DeployedF) :
    EffectiveRingIdHashValuation rho 3 = rho 411 := by
  simp only [
    EffectiveRingIdHashValuation, Seg8.localRho,
    Deployed.Templates.seated]
  rw [show Seg8.wireSeating 3 = 411 by
    decide +kernel]

/-- Deployed seating for the `effective_policy_id_hash` certified local semantics. -/
def EffectivePolicyIdHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg9.localRho rho

/-- Certified local semantics for the `effective_policy_id_hash` source operation. -/
def EffectivePolicyIdHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.spec (EffectivePolicyIdHashValuation rho)

/-- Audited action-facing seat for `effective_policy_id_hash` local 1. -/
@[simp] theorem effectivePolicyIdHashAt1
    (rho : Nat → DeployedF) :
    EffectivePolicyIdHashValuation rho 1 = rho 11 := by
  simp only [
    EffectivePolicyIdHashValuation, Seg9.localRho,
    Deployed.Templates.seated]
  rw [show Seg9.wireSeating 1 = 11 by
    decide +kernel]

/-- Audited action-facing seat for `effective_policy_id_hash` local 2. -/
@[simp] theorem effectivePolicyIdHashAt2
    (rho : Nat → DeployedF) :
    EffectivePolicyIdHashValuation rho 2 = rho 31 := by
  simp only [
    EffectivePolicyIdHashValuation, Seg9.localRho,
    Deployed.Templates.seated]
  rw [show Seg9.wireSeating 2 = 31 by
    decide +kernel]

/-- Audited action-facing seat for `effective_policy_id_hash` local 3. -/
@[simp] theorem effectivePolicyIdHashAt3
    (rho : Nat → DeployedF) :
    EffectivePolicyIdHashValuation rho 3 = rho 412 := by
  simp only [
    EffectivePolicyIdHashValuation, Seg9.localRho,
    Deployed.Templates.seated]
  rw [show Seg9.wireSeating 3 = 412 by
    decide +kernel]

/-- Deployed seating for the `effective_resource_hash` certified local semantics. -/
def EffectiveResourceHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg10.localRho rho

/-- Certified local semantics for the `effective_resource_hash` source operation. -/
def EffectiveResourceHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.spec (EffectiveResourceHashValuation rho)

/-- Audited action-facing seat for `effective_resource_hash` local 1. -/
@[simp] theorem effectiveResourceHashAt1
    (rho : Nat → DeployedF) :
    EffectiveResourceHashValuation rho 1 = rho 11 := by
  simp only [
    EffectiveResourceHashValuation, Seg10.localRho,
    Deployed.Templates.seated]
  rw [show Seg10.wireSeating 1 = 11 by
    decide +kernel]

/-- Audited action-facing seat for `effective_resource_hash` local 2. -/
@[simp] theorem effectiveResourceHashAt2
    (rho : Nat → DeployedF) :
    EffectiveResourceHashValuation rho 2 = rho 33 := by
  simp only [
    EffectiveResourceHashValuation, Seg10.localRho,
    Deployed.Templates.seated]
  rw [show Seg10.wireSeating 2 = 33 by
    decide +kernel]

/-- Audited action-facing seat for `effective_resource_hash` local 3. -/
@[simp] theorem effectiveResourceHashAt3
    (rho : Nat → DeployedF) :
    EffectiveResourceHashValuation rho 3 = rho 413 := by
  simp only [
    EffectiveResourceHashValuation, Seg10.localRho,
    Deployed.Templates.seated]
  rw [show Seg10.wireSeating 3 = 413 by
    decide +kernel]

/-- Deployed seating for the `effective_permission_hash` certified local semantics. -/
def EffectivePermissionHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg11.localRho rho

/-- Certified local semantics for the `effective_permission_hash` source operation. -/
def EffectivePermissionHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.spec (EffectivePermissionHashValuation rho)

/-- Audited action-facing seat for `effective_permission_hash` local 1. -/
@[simp] theorem effectivePermissionHashAt1
    (rho : Nat → DeployedF) :
    EffectivePermissionHashValuation rho 1 = rho 11 := by
  simp only [
    EffectivePermissionHashValuation, Seg11.localRho,
    Deployed.Templates.seated]
  rw [show Seg11.wireSeating 1 = 11 by
    decide +kernel]

/-- Audited action-facing seat for `effective_permission_hash` local 2. -/
@[simp] theorem effectivePermissionHashAt2
    (rho : Nat → DeployedF) :
    EffectivePermissionHashValuation rho 2 = rho 32 := by
  simp only [
    EffectivePermissionHashValuation, Seg11.localRho,
    Deployed.Templates.seated]
  rw [show Seg11.wireSeating 2 = 32 by
    decide +kernel]

/-- Audited action-facing seat for `effective_permission_hash` local 3. -/
@[simp] theorem effectivePermissionHashAt3
    (rho : Nat → DeployedF) :
    EffectivePermissionHashValuation rho 3 = rho 414 := by
  simp only [
    EffectivePermissionHashValuation, Seg11.localRho,
    Deployed.Templates.seated]
  rw [show Seg11.wireSeating 3 = 414 by
    decide +kernel]

/-- Deployed seating for the `sender_div_gen_compress` certified local semantics. -/
def SenderDivGenCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg12.localRho rho

/-- Certified local semantics for the `sender_div_gen_compress` source operation. -/
def SenderDivGenCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (SenderDivGenCompressValuation rho)

/-- Audited action-facing seat for `sender_div_gen_compress` local 1. -/
@[simp] theorem senderDivGenCompressAt1
    (rho : Nat → DeployedF) :
    SenderDivGenCompressValuation rho 1 = rho 83 := by
  simp only [
    SenderDivGenCompressValuation, Seg12.localRho,
    Deployed.Templates.seated]
  rw [show Seg12.wireSeating 1 = 83 by
    decide +kernel]

/-- Audited action-facing seat for `sender_div_gen_compress` local 3. -/
@[simp] theorem senderDivGenCompressAt3
    (rho : Nat → DeployedF) :
    SenderDivGenCompressValuation rho 3 = rho 84 := by
  simp only [
    SenderDivGenCompressValuation, Seg12.localRho,
    Deployed.Templates.seated]
  rw [show Seg12.wireSeating 3 = 84 by
    decide +kernel]

/-- Audited action-facing seat for `sender_div_gen_compress` local 365. -/
@[simp] theorem senderDivGenCompressAt365
    (rho : Nat → DeployedF) :
    SenderDivGenCompressValuation rho 365 = rho 777 := by
  simp only [
    SenderDivGenCompressValuation, Seg12.localRho,
    Deployed.Templates.seated]
  rw [show Seg12.wireSeating 365 = 777 by
    decide +kernel]

/-- Audited action-facing seat for `sender_div_gen_compress` local 705. -/
@[simp] theorem senderDivGenCompressAt705
    (rho : Nat → DeployedF) :
    SenderDivGenCompressValuation rho 705 = rho 1117 := by
  simp only [
    SenderDivGenCompressValuation, Seg12.localRho,
    Deployed.Templates.seated]
  rw [show Seg12.wireSeating 705 = 1117 by
    decide +kernel]

/-- Deployed seating for the `sender_transmission_compress` certified local semantics. -/
def SenderTransmissionCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg13.localRho rho

/-- Certified local semantics for the `sender_transmission_compress` source operation. -/
def SenderTransmissionCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (SenderTransmissionCompressValuation rho)

/-- Audited action-facing seat for `sender_transmission_compress` local 1. -/
@[simp] theorem senderTransmissionCompressAt1
    (rho : Nat → DeployedF) :
    SenderTransmissionCompressValuation rho 1 = rho 85 := by
  simp only [
    SenderTransmissionCompressValuation, Seg13.localRho,
    Deployed.Templates.seated]
  rw [show Seg13.wireSeating 1 = 85 by
    decide +kernel]

/-- Audited action-facing seat for `sender_transmission_compress` local 3. -/
@[simp] theorem senderTransmissionCompressAt3
    (rho : Nat → DeployedF) :
    SenderTransmissionCompressValuation rho 3 = rho 86 := by
  simp only [
    SenderTransmissionCompressValuation, Seg13.localRho,
    Deployed.Templates.seated]
  rw [show Seg13.wireSeating 3 = 86 by
    decide +kernel]

/-- Audited action-facing seat for `sender_transmission_compress` local 365. -/
@[simp] theorem senderTransmissionCompressAt365
    (rho : Nat → DeployedF) :
    SenderTransmissionCompressValuation rho 365 = rho 1480 := by
  simp only [
    SenderTransmissionCompressValuation, Seg13.localRho,
    Deployed.Templates.seated]
  rw [show Seg13.wireSeating 365 = 1480 by
    decide +kernel]

/-- Audited action-facing seat for `sender_transmission_compress` local 705. -/
@[simp] theorem senderTransmissionCompressAt705
    (rho : Nat → DeployedF) :
    SenderTransmissionCompressValuation rho 705 = rho 1820 := by
  simp only [
    SenderTransmissionCompressValuation, Seg13.localRho,
    Deployed.Templates.seated]
  rw [show Seg13.wireSeating 705 = 1820 by
    decide +kernel]

/-- Deployed seating for the `incoming_viewing_key_nonzero` certified local semantics. -/
def IncomingViewingKeyNonzeroValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg14.localRho rho

/-- Certified local semantics for the `incoming_viewing_key_nonzero` source operation. -/
def IncomingViewingKeyNonzeroSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (IncomingViewingKeyNonzeroValuation rho)

/-- Deployed seating for the `sender_dtk` certified local semantics. -/
def SenderDtkValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg15.localRho rho

/-- Certified local semantics for the `sender_dtk` source operation. -/
def SenderDtkSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.spec (SenderDtkValuation rho)

/-- Audited action-facing seat for `sender_dtk` local 1. -/
@[simp] theorem senderDtkAt1
    (rho : Nat → DeployedF) :
    SenderDtkValuation rho 1 = rho 15 := by
  simp only [
    SenderDtkValuation, Seg15.localRho,
    Deployed.Templates.seated]
  rw [show Seg15.wireSeating 1 = 15 by
    decide +kernel]

/-- Audited action-facing seat for `sender_dtk` local 3. -/
@[simp] theorem senderDtkAt3
    (rho : Nat → DeployedF) :
    SenderDtkValuation rho 3 = rho 16 := by
  simp only [
    SenderDtkValuation, Seg15.localRho,
    Deployed.Templates.seated]
  rw [show Seg15.wireSeating 3 = 16 by
    decide +kernel]

/-- Audited action-facing seat for `sender_dtk` local 706. -/
@[simp] theorem senderDtkAt706
    (rho : Nat → DeployedF) :
    SenderDtkValuation rho 706 = rho 17 := by
  simp only [
    SenderDtkValuation, Seg15.localRho,
    Deployed.Templates.seated]
  rw [show Seg15.wireSeating 706 = 17 by
    decide +kernel]

/-- Audited action-facing seat for `sender_dtk` local 977. -/
@[simp] theorem senderDtkAt977
    (rho : Nat → DeployedF) :
    SenderDtkValuation rho 977 = rho 18 := by
  simp only [
    SenderDtkValuation, Seg15.localRho,
    Deployed.Templates.seated]
  rw [show Seg15.wireSeating 977 = 18 by
    decide +kernel]

/-- Audited action-facing seat for `sender_dtk` local 978. -/
@[simp] theorem senderDtkAt978
    (rho : Nat → DeployedF) :
    SenderDtkValuation rho 978 = rho 19 := by
  simp only [
    SenderDtkValuation, Seg15.localRho,
    Deployed.Templates.seated]
  rw [show Seg15.wireSeating 978 = 19 by
    decide +kernel]

/-- Audited action-facing seat for `sender_dtk` local 2211. -/
@[simp] theorem senderDtkAt2211
    (rho : Nat → DeployedF) :
    SenderDtkValuation rho 2211 = rho 83 := by
  simp only [
    SenderDtkValuation, Seg15.localRho,
    Deployed.Templates.seated]
  rw [show Seg15.wireSeating 2211 = 83 by
    decide +kernel]

/-- Audited action-facing seat for `sender_dtk` local 2212. -/
@[simp] theorem senderDtkAt2212
    (rho : Nat → DeployedF) :
    SenderDtkValuation rho 2212 = rho 84 := by
  simp only [
    SenderDtkValuation, Seg15.localRho,
    Deployed.Templates.seated]
  rw [show Seg15.wireSeating 2212 = 84 by
    decide +kernel]

/-- Deployed seating for the `sender_transmission_equivalent` certified local semantics. -/
def SenderTransmissionEquivalentValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg16.localRho rho

/-- Certified local semantics for the `sender_transmission_equivalent` source operation. -/
def SenderTransmissionEquivalentSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafAssertEquivalent_337547ecab9ed69ef703225ce3fb67ba58652a95490dc7e75be736b205e39646.spec (SenderTransmissionEquivalentValuation rho)

/-- Deployed seating for the `sender_transmission_non_identity` certified local semantics. -/
def SenderTransmissionNonIdentityValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg17.localRho rho

/-- Certified local semantics for the `sender_transmission_non_identity` source operation. -/
def SenderTransmissionNonIdentitySemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (SenderTransmissionNonIdentityValuation rho)

/-- Deployed seating for the `asset_dk_compress` certified local semantics. -/
def AssetDkCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg18.localRho rho

/-- Certified local semantics for the `asset_dk_compress` source operation. -/
def AssetDkCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (AssetDkCompressValuation rho)

/-- Audited action-facing seat for `asset_dk_compress` local 1. -/
@[simp] theorem assetDkCompressAt1
    (rho : Nat → DeployedF) :
    AssetDkCompressValuation rho 1 = rho 23 := by
  simp only [
    AssetDkCompressValuation, Seg18.localRho,
    Deployed.Templates.seated]
  rw [show Seg18.wireSeating 1 = 23 by
    decide +kernel]

/-- Audited action-facing seat for `asset_dk_compress` local 3. -/
@[simp] theorem assetDkCompressAt3
    (rho : Nat → DeployedF) :
    AssetDkCompressValuation rho 3 = rho 24 := by
  simp only [
    AssetDkCompressValuation, Seg18.localRho,
    Deployed.Templates.seated]
  rw [show Seg18.wireSeating 3 = 24 by
    decide +kernel]

/-- Audited action-facing seat for `asset_dk_compress` local 365. -/
@[simp] theorem assetDkCompressAt365
    (rho : Nat → DeployedF) :
    AssetDkCompressValuation rho 365 = rho 7150 := by
  simp only [
    AssetDkCompressValuation, Seg18.localRho,
    Deployed.Templates.seated]
  rw [show Seg18.wireSeating 365 = 7150 by
    decide +kernel]

/-- Audited action-facing seat for `asset_dk_compress` local 705. -/
@[simp] theorem assetDkCompressAt705
    (rho : Nat → DeployedF) :
    AssetDkCompressValuation rho 705 = rho 7490 := by
  simp only [
    AssetDkCompressValuation, Seg18.localRho,
    Deployed.Templates.seated]
  rw [show Seg18.wireSeating 705 = 7490 by
    decide +kernel]

/-- Deployed seating for the `asset_params_hash` certified local semantics. -/
def AssetParamsHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg19.localRho rho

/-- Certified local semantics for the `asset_params_hash` source operation. -/
def AssetParamsHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.spec (AssetParamsHashValuation rho)

/-- Audited action-facing seat for `asset_params_hash` local 1. -/
@[simp] theorem assetParamsHashAt1
    (rho : Nat → DeployedF) :
    AssetParamsHashValuation rho 1 = rho 7150 := by
  simp only [
    AssetParamsHashValuation, Seg19.localRho,
    Deployed.Templates.seated]
  rw [show Seg19.wireSeating 1 = 7150 by
    decide +kernel]

/-- Audited action-facing seat for `asset_params_hash` local 2. -/
@[simp] theorem assetParamsHashAt2
    (rho : Nat → DeployedF) :
    AssetParamsHashValuation rho 2 = rho 7490 := by
  simp only [
    AssetParamsHashValuation, Seg19.localRho,
    Deployed.Templates.seated]
  rw [show Seg19.wireSeating 2 = 7490 by
    decide +kernel]

/-- Audited action-facing seat for `asset_params_hash` local 8. -/
@[simp] theorem assetParamsHashAt8
    (rho : Nat → DeployedF) :
    AssetParamsHashValuation rho 8 = rho 25 := by
  simp only [
    AssetParamsHashValuation, Seg19.localRho,
    Deployed.Templates.seated]
  rw [show Seg19.wireSeating 8 = 25 by
    decide +kernel]

/-- Audited action-facing seat for `asset_params_hash` local 14. -/
@[simp] theorem assetParamsHashAt14
    (rho : Nat → DeployedF) :
    AssetParamsHashValuation rho 14 = rho 26 := by
  simp only [
    AssetParamsHashValuation, Seg19.localRho,
    Deployed.Templates.seated]
  rw [show Seg19.wireSeating 14 = 26 by
    decide +kernel]

/-- Audited action-facing seat for `asset_params_hash` local 20. -/
@[simp] theorem assetParamsHashAt20
    (rho : Nat → DeployedF) :
    AssetParamsHashValuation rho 20 = rho 27 := by
  simp only [
    AssetParamsHashValuation, Seg19.localRho,
    Deployed.Templates.seated]
  rw [show Seg19.wireSeating 20 = 27 by
    decide +kernel]

/-- Audited action-facing seat for `asset_params_hash` local 335. -/
@[simp] theorem assetParamsHashAt335
    (rho : Nat → DeployedF) :
    AssetParamsHashValuation rho 335 = rho 7820 := by
  simp only [
    AssetParamsHashValuation, Seg19.localRho,
    Deployed.Templates.seated]
  rw [show Seg19.wireSeating 335 = 7820 by
    decide +kernel]

/-- Audited action-facing seat for `asset_params_hash` local 340. -/
@[simp] theorem assetParamsHashAt340
    (rho : Nat → DeployedF) :
    AssetParamsHashValuation rho 340 = rho 7825 := by
  simp only [
    AssetParamsHashValuation, Seg19.localRho,
    Deployed.Templates.seated]
  rw [show Seg19.wireSeating 340 = 7825 by
    decide +kernel]

/-- Audited action-facing seat for `asset_params_hash` local 345. -/
@[simp] theorem assetParamsHashAt345
    (rho : Nat → DeployedF) :
    AssetParamsHashValuation rho 345 = rho 7830 := by
  simp only [
    AssetParamsHashValuation, Seg19.localRho,
    Deployed.Templates.seated]
  rw [show Seg19.wireSeating 345 = 7830 by
    decide +kernel]

/-- Audited action-facing seat for `asset_params_hash` local 350. -/
@[simp] theorem assetParamsHashAt350
    (rho : Nat → DeployedF) :
    AssetParamsHashValuation rho 350 = rho 7835 := by
  simp only [
    AssetParamsHashValuation, Seg19.localRho,
    Deployed.Templates.seated]
  rw [show Seg19.wireSeating 350 = 7835 by
    decide +kernel]

/-- Audited action-facing seat for `asset_params_hash` local 355. -/
@[simp] theorem assetParamsHashAt355
    (rho : Nat → DeployedF) :
    AssetParamsHashValuation rho 355 = rho 7840 := by
  simp only [
    AssetParamsHashValuation, Seg19.localRho,
    Deployed.Templates.seated]
  rw [show Seg19.wireSeating 355 = 7840 by
    decide +kernel]

/-- Deployed seating for the `asset_ring_pk_compress` certified local semantics. -/
def AssetRingPkCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg20.localRho rho

/-- Certified local semantics for the `asset_ring_pk_compress` source operation. -/
def AssetRingPkCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (AssetRingPkCompressValuation rho)

/-- Audited action-facing seat for `asset_ring_pk_compress` local 1. -/
@[simp] theorem assetRingPkCompressAt1
    (rho : Nat → DeployedF) :
    AssetRingPkCompressValuation rho 1 = rho 28 := by
  simp only [
    AssetRingPkCompressValuation, Seg20.localRho,
    Deployed.Templates.seated]
  rw [show Seg20.wireSeating 1 = 28 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_pk_compress` local 3. -/
@[simp] theorem assetRingPkCompressAt3
    (rho : Nat → DeployedF) :
    AssetRingPkCompressValuation rho 3 = rho 29 := by
  simp only [
    AssetRingPkCompressValuation, Seg20.localRho,
    Deployed.Templates.seated]
  rw [show Seg20.wireSeating 3 = 29 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_pk_compress` local 365. -/
@[simp] theorem assetRingPkCompressAt365
    (rho : Nat → DeployedF) :
    AssetRingPkCompressValuation rho 365 = rho 8203 := by
  simp only [
    AssetRingPkCompressValuation, Seg20.localRho,
    Deployed.Templates.seated]
  rw [show Seg20.wireSeating 365 = 8203 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_pk_compress` local 705. -/
@[simp] theorem assetRingPkCompressAt705
    (rho : Nat → DeployedF) :
    AssetRingPkCompressValuation rho 705 = rho 8543 := by
  simp only [
    AssetRingPkCompressValuation, Seg20.localRho,
    Deployed.Templates.seated]
  rw [show Seg20.wireSeating 705 = 8543 by
    decide +kernel]

/-- Deployed seating for the `asset_ring_hash` certified local semantics. -/
def AssetRingHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg21.localRho rho

/-- Certified local semantics for the `asset_ring_hash` source operation. -/
def AssetRingHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.spec (AssetRingHashValuation rho)

/-- Audited action-facing seat for `asset_ring_hash` local 1. -/
@[simp] theorem assetRingHashAt1
    (rho : Nat → DeployedF) :
    AssetRingHashValuation rho 1 = rho 8203 := by
  simp only [
    AssetRingHashValuation, Seg21.localRho,
    Deployed.Templates.seated]
  rw [show Seg21.wireSeating 1 = 8203 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_hash` local 2. -/
@[simp] theorem assetRingHashAt2
    (rho : Nat → DeployedF) :
    AssetRingHashValuation rho 2 = rho 8543 := by
  simp only [
    AssetRingHashValuation, Seg21.localRho,
    Deployed.Templates.seated]
  rw [show Seg21.wireSeating 2 = 8543 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_hash` local 8. -/
@[simp] theorem assetRingHashAt8
    (rho : Nat → DeployedF) :
    AssetRingHashValuation rho 8 = rho 30 := by
  simp only [
    AssetRingHashValuation, Seg21.localRho,
    Deployed.Templates.seated]
  rw [show Seg21.wireSeating 8 = 30 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_hash` local 14. -/
@[simp] theorem assetRingHashAt14
    (rho : Nat → DeployedF) :
    AssetRingHashValuation rho 14 = rho 31 := by
  simp only [
    AssetRingHashValuation, Seg21.localRho,
    Deployed.Templates.seated]
  rw [show Seg21.wireSeating 14 = 31 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_hash` local 20. -/
@[simp] theorem assetRingHashAt20
    (rho : Nat → DeployedF) :
    AssetRingHashValuation rho 20 = rho 32 := by
  simp only [
    AssetRingHashValuation, Seg21.localRho,
    Deployed.Templates.seated]
  rw [show Seg21.wireSeating 20 = 32 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_hash` local 26. -/
@[simp] theorem assetRingHashAt26
    (rho : Nat → DeployedF) :
    AssetRingHashValuation rho 26 = rho 33 := by
  simp only [
    AssetRingHashValuation, Seg21.localRho,
    Deployed.Templates.seated]
  rw [show Seg21.wireSeating 26 = 33 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_hash` local 371. -/
@[simp] theorem assetRingHashAt371
    (rho : Nat → DeployedF) :
    AssetRingHashValuation rho 371 = rho 8908 := by
  simp only [
    AssetRingHashValuation, Seg21.localRho,
    Deployed.Templates.seated]
  rw [show Seg21.wireSeating 371 = 8908 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_hash` local 376. -/
@[simp] theorem assetRingHashAt376
    (rho : Nat → DeployedF) :
    AssetRingHashValuation rho 376 = rho 8913 := by
  simp only [
    AssetRingHashValuation, Seg21.localRho,
    Deployed.Templates.seated]
  rw [show Seg21.wireSeating 376 = 8913 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_hash` local 381. -/
@[simp] theorem assetRingHashAt381
    (rho : Nat → DeployedF) :
    AssetRingHashValuation rho 381 = rho 8918 := by
  simp only [
    AssetRingHashValuation, Seg21.localRho,
    Deployed.Templates.seated]
  rw [show Seg21.wireSeating 381 = 8918 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_hash` local 386. -/
@[simp] theorem assetRingHashAt386
    (rho : Nat → DeployedF) :
    AssetRingHashValuation rho 386 = rho 8923 := by
  simp only [
    AssetRingHashValuation, Seg21.localRho,
    Deployed.Templates.seated]
  rw [show Seg21.wireSeating 386 = 8923 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_hash` local 391. -/
@[simp] theorem assetRingHashAt391
    (rho : Nat → DeployedF) :
    AssetRingHashValuation rho 391 = rho 8928 := by
  simp only [
    AssetRingHashValuation, Seg21.localRho,
    Deployed.Templates.seated]
  rw [show Seg21.wireSeating 391 = 8928 by
    decide +kernel]

/-- Audited action-facing seat for `asset_ring_hash` local 396. -/
@[simp] theorem assetRingHashAt396
    (rho : Nat → DeployedF) :
    AssetRingHashValuation rho 396 = rho 8933 := by
  simp only [
    AssetRingHashValuation, Seg21.localRho,
    Deployed.Templates.seated]
  rw [show Seg21.wireSeating 396 = 8933 by
    decide +kernel]

/-- Deployed seating for the `asset_leaf_hash` certified local semantics. -/
def AssetLeafHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg22.localRho rho

/-- Certified local semantics for the `asset_leaf_hash` source operation. -/
def AssetLeafHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.spec (AssetLeafHashValuation rho)

/-- Audited action-facing seat for `asset_leaf_hash` local 1. -/
@[simp] theorem assetLeafHashAt1
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 1 = rho 20 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 1 = 20 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 7. -/
@[simp] theorem assetLeafHashAt7
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 7 = rho 21 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 7 = 21 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 13. -/
@[simp] theorem assetLeafHashAt13
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 13 = rho 22 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 13 = 22 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 19. -/
@[simp] theorem assetLeafHashAt19
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 19 = rho 7820 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 19 = 7820 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 20. -/
@[simp] theorem assetLeafHashAt20
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 20 = rho 7825 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 20 = 7825 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 21. -/
@[simp] theorem assetLeafHashAt21
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 21 = rho 7830 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 21 = 7830 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 22. -/
@[simp] theorem assetLeafHashAt22
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 22 = rho 7835 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 22 = 7835 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 23. -/
@[simp] theorem assetLeafHashAt23
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 23 = rho 7840 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 23 = 7840 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 29. -/
@[simp] theorem assetLeafHashAt29
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 29 = rho 8908 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 29 = 8908 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 30. -/
@[simp] theorem assetLeafHashAt30
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 30 = rho 8913 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 30 = 8913 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 31. -/
@[simp] theorem assetLeafHashAt31
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 31 = rho 8918 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 31 = 8918 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 32. -/
@[simp] theorem assetLeafHashAt32
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 32 = rho 8923 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 32 = 8923 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 33. -/
@[simp] theorem assetLeafHashAt33
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 33 = rho 8928 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 33 = 8928 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 34. -/
@[simp] theorem assetLeafHashAt34
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 34 = rho 8933 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 34 = 8933 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 379. -/
@[simp] theorem assetLeafHashAt379
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 379 = rho 9298 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 379 = 9298 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 384. -/
@[simp] theorem assetLeafHashAt384
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 384 = rho 9303 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 384 = 9303 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 389. -/
@[simp] theorem assetLeafHashAt389
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 389 = rho 9308 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 389 = 9308 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 394. -/
@[simp] theorem assetLeafHashAt394
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 394 = rho 9313 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 394 = 9313 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 399. -/
@[simp] theorem assetLeafHashAt399
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 399 = rho 9318 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 399 = 9318 by
    decide +kernel]

/-- Audited action-facing seat for `asset_leaf_hash` local 404. -/
@[simp] theorem assetLeafHashAt404
    (rho : Nat → DeployedF) :
    AssetLeafHashValuation rho 404 = rho 9323 := by
  simp only [
    AssetLeafHashValuation, Seg22.localRho,
    Deployed.Templates.seated]
  rw [show Seg22.wireSeating 404 = 9323 by
    decide +kernel]

/-- Deployed seating for the `asset_path` certified local semantics. -/
def AssetPathValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg23.localRho rho

/-- Certified local semantics for the `asset_path` source operation. -/
def AssetPathSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.spec (AssetPathValuation rho)

/-- Audited action-facing seat for `asset_path` local 33. -/
@[simp] theorem assetPathAt33
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 33 = rho 82 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 33 = 82 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 38. -/
@[simp] theorem assetPathAt38
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 38 = rho 34 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 38 = 34 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 39. -/
@[simp] theorem assetPathAt39
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 39 = rho 9298 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 39 = 9298 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 40. -/
@[simp] theorem assetPathAt40
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 40 = rho 9303 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 40 = 9303 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 41. -/
@[simp] theorem assetPathAt41
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 41 = rho 9308 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 41 = 9308 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 42. -/
@[simp] theorem assetPathAt42
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 42 = rho 9313 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 42 = 9313 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 43. -/
@[simp] theorem assetPathAt43
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 43 = rho 9318 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 43 = 9318 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 44. -/
@[simp] theorem assetPathAt44
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 44 = rho 9323 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 44 = 9323 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 46. -/
@[simp] theorem assetPathAt46
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 46 = rho 35 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 46 = 35 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 49. -/
@[simp] theorem assetPathAt49
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 49 = rho 36 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 49 = 36 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 407. -/
@[simp] theorem assetPathAt407
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 407 = rho 37 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 407 = 37 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 409. -/
@[simp] theorem assetPathAt409
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 409 = rho 38 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 409 = 38 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 412. -/
@[simp] theorem assetPathAt412
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 412 = rho 39 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 412 = 39 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 770. -/
@[simp] theorem assetPathAt770
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 770 = rho 40 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 770 = 40 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 772. -/
@[simp] theorem assetPathAt772
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 772 = rho 41 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 772 = 41 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 775. -/
@[simp] theorem assetPathAt775
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 775 = rho 42 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 775 = 42 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 1133. -/
@[simp] theorem assetPathAt1133
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 1133 = rho 43 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 1133 = 43 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 1135. -/
@[simp] theorem assetPathAt1135
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 1135 = rho 44 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 1135 = 44 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 1138. -/
@[simp] theorem assetPathAt1138
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 1138 = rho 45 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 1138 = 45 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 1496. -/
@[simp] theorem assetPathAt1496
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 1496 = rho 46 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 1496 = 46 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 1498. -/
@[simp] theorem assetPathAt1498
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 1498 = rho 47 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 1498 = 47 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 1501. -/
@[simp] theorem assetPathAt1501
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 1501 = rho 48 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 1501 = 48 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 1859. -/
@[simp] theorem assetPathAt1859
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 1859 = rho 49 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 1859 = 49 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 1861. -/
@[simp] theorem assetPathAt1861
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 1861 = rho 50 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 1861 = 50 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 1864. -/
@[simp] theorem assetPathAt1864
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 1864 = rho 51 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 1864 = 51 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 2222. -/
@[simp] theorem assetPathAt2222
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 2222 = rho 52 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 2222 = 52 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 2224. -/
@[simp] theorem assetPathAt2224
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 2224 = rho 53 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 2224 = 53 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 2227. -/
@[simp] theorem assetPathAt2227
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 2227 = rho 54 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 2227 = 54 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 2585. -/
@[simp] theorem assetPathAt2585
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 2585 = rho 55 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 2585 = 55 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 2587. -/
@[simp] theorem assetPathAt2587
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 2587 = rho 56 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 2587 = 56 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 2590. -/
@[simp] theorem assetPathAt2590
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 2590 = rho 57 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 2590 = 57 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 2948. -/
@[simp] theorem assetPathAt2948
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 2948 = rho 58 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 2948 = 58 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 2950. -/
@[simp] theorem assetPathAt2950
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 2950 = rho 59 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 2950 = 59 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 2953. -/
@[simp] theorem assetPathAt2953
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 2953 = rho 60 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 2953 = 60 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 3311. -/
@[simp] theorem assetPathAt3311
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 3311 = rho 61 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 3311 = 61 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 3313. -/
@[simp] theorem assetPathAt3313
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 3313 = rho 62 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 3313 = 62 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 3316. -/
@[simp] theorem assetPathAt3316
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 3316 = rho 63 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 3316 = 63 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 3674. -/
@[simp] theorem assetPathAt3674
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 3674 = rho 64 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 3674 = 64 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 3676. -/
@[simp] theorem assetPathAt3676
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 3676 = rho 65 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 3676 = 65 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 3679. -/
@[simp] theorem assetPathAt3679
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 3679 = rho 66 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 3679 = 66 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 4037. -/
@[simp] theorem assetPathAt4037
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 4037 = rho 67 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 4037 = 67 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 4039. -/
@[simp] theorem assetPathAt4039
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 4039 = rho 68 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 4039 = 68 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 4042. -/
@[simp] theorem assetPathAt4042
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 4042 = rho 69 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 4042 = 69 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 4400. -/
@[simp] theorem assetPathAt4400
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 4400 = rho 70 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 4400 = 70 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 4402. -/
@[simp] theorem assetPathAt4402
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 4402 = rho 71 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 4402 = 71 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 4405. -/
@[simp] theorem assetPathAt4405
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 4405 = rho 72 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 4405 = 72 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 4763. -/
@[simp] theorem assetPathAt4763
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 4763 = rho 73 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 4763 = 73 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 4765. -/
@[simp] theorem assetPathAt4765
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 4765 = rho 74 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 4765 = 74 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 4768. -/
@[simp] theorem assetPathAt4768
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 4768 = rho 75 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 4768 = 75 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 5126. -/
@[simp] theorem assetPathAt5126
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 5126 = rho 76 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 5126 = 76 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 5128. -/
@[simp] theorem assetPathAt5128
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 5128 = rho 77 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 5128 = 77 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 5131. -/
@[simp] theorem assetPathAt5131
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 5131 = rho 78 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 5131 = 78 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 5489. -/
@[simp] theorem assetPathAt5489
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 5489 = rho 79 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 5489 = 79 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 5491. -/
@[simp] theorem assetPathAt5491
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 5491 = rho 80 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 5491 = 80 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 5494. -/
@[simp] theorem assetPathAt5494
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 5494 = rho 81 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 5494 = 81 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 5827. -/
@[simp] theorem assetPathAt5827
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 5827 = rho 15095 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 5827 = 15095 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 5832. -/
@[simp] theorem assetPathAt5832
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 5832 = rho 15100 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 5832 = 15100 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 5837. -/
@[simp] theorem assetPathAt5837
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 5837 = rho 15105 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 5837 = 15105 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 5842. -/
@[simp] theorem assetPathAt5842
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 5842 = rho 15110 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 5842 = 15110 by
    decide +kernel]

/-- Audited action-facing seat for `asset_path` local 5847. -/
@[simp] theorem assetPathAt5847
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 5847 = rho 15115 := by
  simp only [
    AssetPathValuation, Seg23.localRho,
    Deployed.Templates.seated]
  rw [show Seg23.wireSeating 5847 = 15115 by
    decide +kernel]

/-- Deployed seating for the `asset_root_assert` certified local semantics. -/
def AssetRootAssertValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg24.localRho rho

/-- Certified local semantics for the `asset_root_assert` source operation. -/
def AssetRootAssertSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec (AssetRootAssertValuation rho)

/-- Audited action-facing seat for `asset_root_assert` local 1. -/
@[simp] theorem assetRootAssertAt1
    (rho : Nat → DeployedF) :
    AssetRootAssertValuation rho 1 = rho 15095 := by
  simp only [
    AssetRootAssertValuation, Seg24.localRho,
    Deployed.Templates.seated]
  rw [show Seg24.wireSeating 1 = 15095 by
    decide +kernel]

/-- Audited action-facing seat for `asset_root_assert` local 2. -/
@[simp] theorem assetRootAssertAt2
    (rho : Nat → DeployedF) :
    AssetRootAssertValuation rho 2 = rho 15100 := by
  simp only [
    AssetRootAssertValuation, Seg24.localRho,
    Deployed.Templates.seated]
  rw [show Seg24.wireSeating 2 = 15100 by
    decide +kernel]

/-- Audited action-facing seat for `asset_root_assert` local 3. -/
@[simp] theorem assetRootAssertAt3
    (rho : Nat → DeployedF) :
    AssetRootAssertValuation rho 3 = rho 15105 := by
  simp only [
    AssetRootAssertValuation, Seg24.localRho,
    Deployed.Templates.seated]
  rw [show Seg24.wireSeating 3 = 15105 by
    decide +kernel]

/-- Audited action-facing seat for `asset_root_assert` local 4. -/
@[simp] theorem assetRootAssertAt4
    (rho : Nat → DeployedF) :
    AssetRootAssertValuation rho 4 = rho 15110 := by
  simp only [
    AssetRootAssertValuation, Seg24.localRho,
    Deployed.Templates.seated]
  rw [show Seg24.wireSeating 4 = 15110 by
    decide +kernel]

/-- Audited action-facing seat for `asset_root_assert` local 5. -/
@[simp] theorem assetRootAssertAt5
    (rho : Nat → DeployedF) :
    AssetRootAssertValuation rho 5 = rho 15115 := by
  simp only [
    AssetRootAssertValuation, Seg24.localRho,
    Deployed.Templates.seated]
  rw [show Seg24.wireSeating 5 = 15115 by
    decide +kernel]

/-- Audited action-facing seat for `asset_root_assert` local 6. -/
@[simp] theorem assetRootAssertAt6
    (rho : Nat → DeployedF) :
    AssetRootAssertValuation rho 6 = rho 7 := by
  simp only [
    AssetRootAssertValuation, Seg24.localRho,
    Deployed.Templates.seated]
  rw [show Seg24.wireSeating 6 = 7 by
    decide +kernel]

/-- Deployed seating for the `asset_gap` certified local semantics. -/
def AssetGapValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg25.localRho rho

/-- Certified local semantics for the `asset_gap` source operation. -/
def AssetGapSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.spec (AssetGapValuation rho)

/-- Audited action-facing seat for `asset_gap` local 254. -/
@[simp] theorem assetGapAt254
    (rho : Nat → DeployedF) :
    AssetGapValuation rho 254 = rho 20 := by
  simp only [
    AssetGapValuation, Seg25.localRho,
    Deployed.Templates.seated]
  rw [show Seg25.wireSeating 254 = 20 by
    decide +kernel]

/-- Audited action-facing seat for `asset_gap` local 594. -/
@[simp] theorem assetGapAt594
    (rho : Nat → DeployedF) :
    AssetGapValuation rho 594 = rho 184 := by
  simp only [
    AssetGapValuation, Seg25.localRho,
    Deployed.Templates.seated]
  rw [show Seg25.wireSeating 594 = 184 by
    decide +kernel]

/-- Audited action-facing seat for `asset_gap` local 934. -/
@[simp] theorem assetGapAt934
    (rho : Nat → DeployedF) :
    AssetGapValuation rho 934 = rho 22 := by
  simp only [
    AssetGapValuation, Seg25.localRho,
    Deployed.Templates.seated]
  rw [show Seg25.wireSeating 934 = 22 by
    decide +kernel]

/-- Audited action-facing seat for `asset_gap` local 3043. -/
@[simp] theorem assetGapAt3043
    (rho : Nat → DeployedF) :
    AssetGapValuation rho 3043 = rho 18155 := by
  simp only [
    AssetGapValuation, Seg25.localRho,
    Deployed.Templates.seated]
  rw [show Seg25.wireSeating 3043 = 18155 by
    decide +kernel]

/-- Audited action-facing seat for `asset_gap` local 3044. -/
@[simp] theorem assetGapAt3044
    (rho : Nat → DeployedF) :
    AssetGapValuation rho 3044 = rho 11 := by
  simp only [
    AssetGapValuation, Seg25.localRho,
    Deployed.Templates.seated]
  rw [show Seg25.wireSeating 3044 = 11 by
    decide +kernel]

/-- Audited action-facing seat for `asset_gap` local 3045. -/
@[simp] theorem assetGapAt3045
    (rho : Nat → DeployedF) :
    AssetGapValuation rho 3045 = rho 18156 := by
  simp only [
    AssetGapValuation, Seg25.localRho,
    Deployed.Templates.seated]
  rw [show Seg25.wireSeating 3045 = 18156 by
    decide +kernel]

/-- Deployed seating for the `asset_gap_accept` certified local semantics. -/
def AssetGapAcceptValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg26.localRho rho

/-- Certified local semantics for the `asset_gap_accept` source operation. -/
def AssetGapAcceptSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c.spec (AssetGapAcceptValuation rho)

/-- Audited action-facing seat for `asset_gap_accept` local 1. -/
@[simp] theorem assetGapAcceptAt1
    (rho : Nat → DeployedF) :
    AssetGapAcceptValuation rho 1 = rho 18155 := by
  simp only [
    AssetGapAcceptValuation, Seg26.localRho,
    Deployed.Templates.seated]
  rw [show Seg26.wireSeating 1 = 18155 by
    decide +kernel]

/-- Audited action-facing seat for `asset_gap_accept` local 2. -/
@[simp] theorem assetGapAcceptAt2
    (rho : Nat → DeployedF) :
    AssetGapAcceptValuation rho 2 = rho 18156 := by
  simp only [
    AssetGapAcceptValuation, Seg26.localRho,
    Deployed.Templates.seated]
  rw [show Seg26.wireSeating 2 = 18156 by
    decide +kernel]

/-- Deployed seating for the `sender_compliance_leaf` certified local semantics. -/
def SenderComplianceLeafValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg27.localRho rho

/-- Certified local semantics for the `sender_compliance_leaf` source operation. -/
def SenderComplianceLeafSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.spec (SenderComplianceLeafValuation rho)

/-- Audited action-facing seat for `sender_compliance_leaf` local 1. -/
@[simp] theorem senderComplianceLeafAt1
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 1 = rho 777 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 1 = 777 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 2. -/
@[simp] theorem senderComplianceLeafAt2
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 2 = rho 1117 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 2 = 1117 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 8. -/
@[simp] theorem senderComplianceLeafAt8
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 8 = rho 1480 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 8 = 1480 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 9. -/
@[simp] theorem senderComplianceLeafAt9
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 9 = rho 1820 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 9 = 1820 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 15. -/
@[simp] theorem senderComplianceLeafAt15
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 15 = rho 184 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 15 = 184 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 21. -/
@[simp] theorem senderComplianceLeafAt21
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 21 = rho 87 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 21 = 87 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 27. -/
@[simp] theorem senderComplianceLeafAt27
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 27 = rho 88 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 27 = 88 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 33. -/
@[simp] theorem senderComplianceLeafAt33
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 33 = rho 89 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 33 = 89 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 408. -/
@[simp] theorem senderComplianceLeafAt408
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 408 = rho 18556 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 408 = 18556 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 413. -/
@[simp] theorem senderComplianceLeafAt413
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 413 = rho 18561 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 413 = 18561 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 418. -/
@[simp] theorem senderComplianceLeafAt418
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 418 = rho 18566 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 418 = 18566 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 423. -/
@[simp] theorem senderComplianceLeafAt423
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 423 = rho 18571 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 423 = 18571 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 428. -/
@[simp] theorem senderComplianceLeafAt428
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 428 = rho 18576 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 428 = 18576 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 433. -/
@[simp] theorem senderComplianceLeafAt433
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 433 = rho 18581 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 433 = 18581 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_leaf` local 438. -/
@[simp] theorem senderComplianceLeafAt438
    (rho : Nat → DeployedF) :
    SenderComplianceLeafValuation rho 438 = rho 18586 := by
  simp only [
    SenderComplianceLeafValuation, Seg27.localRho,
    Deployed.Templates.seated]
  rw [show Seg27.wireSeating 438 = 18586 by
    decide +kernel]

/-- Deployed seating for the `sender_compliance_path` certified local semantics. -/
def SenderCompliancePathValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg28.localRho rho

/-- Certified local semantics for the `sender_compliance_path` source operation. -/
def SenderCompliancePathSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.spec (SenderCompliancePathValuation rho)

/-- Audited action-facing seat for `sender_compliance_path` local 33. -/
@[simp] theorem senderCompliancePathAt33
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 33 = rho 138 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 33 = 138 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 38. -/
@[simp] theorem senderCompliancePathAt38
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 38 = rho 90 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 38 = 90 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 39. -/
@[simp] theorem senderCompliancePathAt39
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 39 = rho 18556 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 39 = 18556 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 40. -/
@[simp] theorem senderCompliancePathAt40
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 40 = rho 18561 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 40 = 18561 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 41. -/
@[simp] theorem senderCompliancePathAt41
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 41 = rho 18566 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 41 = 18566 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 42. -/
@[simp] theorem senderCompliancePathAt42
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 42 = rho 18571 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 42 = 18571 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 43. -/
@[simp] theorem senderCompliancePathAt43
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 43 = rho 18576 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 43 = 18576 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 44. -/
@[simp] theorem senderCompliancePathAt44
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 44 = rho 18581 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 44 = 18581 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 45. -/
@[simp] theorem senderCompliancePathAt45
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 45 = rho 18586 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 45 = 18586 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 47. -/
@[simp] theorem senderCompliancePathAt47
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 47 = rho 91 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 47 = 91 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 50. -/
@[simp] theorem senderCompliancePathAt50
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 50 = rho 92 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 50 = 92 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 408. -/
@[simp] theorem senderCompliancePathAt408
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 408 = rho 93 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 408 = 93 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 410. -/
@[simp] theorem senderCompliancePathAt410
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 410 = rho 94 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 410 = 94 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 413. -/
@[simp] theorem senderCompliancePathAt413
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 413 = rho 95 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 413 = 95 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 771. -/
@[simp] theorem senderCompliancePathAt771
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 771 = rho 96 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 771 = 96 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 773. -/
@[simp] theorem senderCompliancePathAt773
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 773 = rho 97 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 773 = 97 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 776. -/
@[simp] theorem senderCompliancePathAt776
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 776 = rho 98 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 776 = 98 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 1134. -/
@[simp] theorem senderCompliancePathAt1134
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 1134 = rho 99 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 1134 = 99 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 1136. -/
@[simp] theorem senderCompliancePathAt1136
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 1136 = rho 100 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 1136 = 100 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 1139. -/
@[simp] theorem senderCompliancePathAt1139
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 1139 = rho 101 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 1139 = 101 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 1497. -/
@[simp] theorem senderCompliancePathAt1497
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 1497 = rho 102 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 1497 = 102 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 1499. -/
@[simp] theorem senderCompliancePathAt1499
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 1499 = rho 103 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 1499 = 103 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 1502. -/
@[simp] theorem senderCompliancePathAt1502
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 1502 = rho 104 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 1502 = 104 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 1860. -/
@[simp] theorem senderCompliancePathAt1860
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 1860 = rho 105 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 1860 = 105 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 1862. -/
@[simp] theorem senderCompliancePathAt1862
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 1862 = rho 106 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 1862 = 106 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 1865. -/
@[simp] theorem senderCompliancePathAt1865
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 1865 = rho 107 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 1865 = 107 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 2223. -/
@[simp] theorem senderCompliancePathAt2223
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 2223 = rho 108 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 2223 = 108 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 2225. -/
@[simp] theorem senderCompliancePathAt2225
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 2225 = rho 109 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 2225 = 109 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 2228. -/
@[simp] theorem senderCompliancePathAt2228
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 2228 = rho 110 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 2228 = 110 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 2586. -/
@[simp] theorem senderCompliancePathAt2586
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 2586 = rho 111 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 2586 = 111 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 2588. -/
@[simp] theorem senderCompliancePathAt2588
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 2588 = rho 112 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 2588 = 112 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 2591. -/
@[simp] theorem senderCompliancePathAt2591
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 2591 = rho 113 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 2591 = 113 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 2949. -/
@[simp] theorem senderCompliancePathAt2949
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 2949 = rho 114 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 2949 = 114 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 2951. -/
@[simp] theorem senderCompliancePathAt2951
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 2951 = rho 115 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 2951 = 115 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 2954. -/
@[simp] theorem senderCompliancePathAt2954
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 2954 = rho 116 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 2954 = 116 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 3312. -/
@[simp] theorem senderCompliancePathAt3312
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 3312 = rho 117 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 3312 = 117 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 3314. -/
@[simp] theorem senderCompliancePathAt3314
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 3314 = rho 118 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 3314 = 118 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 3317. -/
@[simp] theorem senderCompliancePathAt3317
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 3317 = rho 119 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 3317 = 119 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 3675. -/
@[simp] theorem senderCompliancePathAt3675
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 3675 = rho 120 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 3675 = 120 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 3677. -/
@[simp] theorem senderCompliancePathAt3677
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 3677 = rho 121 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 3677 = 121 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 3680. -/
@[simp] theorem senderCompliancePathAt3680
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 3680 = rho 122 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 3680 = 122 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 4038. -/
@[simp] theorem senderCompliancePathAt4038
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 4038 = rho 123 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 4038 = 123 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 4040. -/
@[simp] theorem senderCompliancePathAt4040
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 4040 = rho 124 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 4040 = 124 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 4043. -/
@[simp] theorem senderCompliancePathAt4043
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 4043 = rho 125 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 4043 = 125 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 4401. -/
@[simp] theorem senderCompliancePathAt4401
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 4401 = rho 126 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 4401 = 126 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 4403. -/
@[simp] theorem senderCompliancePathAt4403
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 4403 = rho 127 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 4403 = 127 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 4406. -/
@[simp] theorem senderCompliancePathAt4406
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 4406 = rho 128 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 4406 = 128 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 4764. -/
@[simp] theorem senderCompliancePathAt4764
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 4764 = rho 129 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 4764 = 129 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 4766. -/
@[simp] theorem senderCompliancePathAt4766
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 4766 = rho 130 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 4766 = 130 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 4769. -/
@[simp] theorem senderCompliancePathAt4769
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 4769 = rho 131 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 4769 = 131 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 5127. -/
@[simp] theorem senderCompliancePathAt5127
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 5127 = rho 132 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 5127 = 132 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 5129. -/
@[simp] theorem senderCompliancePathAt5129
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 5129 = rho 133 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 5129 = 133 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 5132. -/
@[simp] theorem senderCompliancePathAt5132
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 5132 = rho 134 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 5132 = 134 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 5490. -/
@[simp] theorem senderCompliancePathAt5490
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 5490 = rho 135 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 5490 = 135 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 5492. -/
@[simp] theorem senderCompliancePathAt5492
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 5492 = rho 136 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 5492 = 136 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 5495. -/
@[simp] theorem senderCompliancePathAt5495
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 5495 = rho 137 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 5495 = 137 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 5828. -/
@[simp] theorem senderCompliancePathAt5828
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 5828 = rho 24358 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 5828 = 24358 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 5833. -/
@[simp] theorem senderCompliancePathAt5833
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 5833 = rho 24363 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 5833 = 24363 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 5838. -/
@[simp] theorem senderCompliancePathAt5838
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 5838 = rho 24368 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 5838 = 24368 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 5843. -/
@[simp] theorem senderCompliancePathAt5843
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 5843 = rho 24373 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 5843 = 24373 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_path` local 5848. -/
@[simp] theorem senderCompliancePathAt5848
    (rho : Nat → DeployedF) :
    SenderCompliancePathValuation rho 5848 = rho 24378 := by
  simp only [
    SenderCompliancePathValuation, Seg28.localRho,
    Deployed.Templates.seated]
  rw [show Seg28.wireSeating 5848 = 24378 by
    decide +kernel]

/-- Deployed seating for the `sender_compliance_assert` certified local semantics. -/
def SenderComplianceAssertValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg29.localRho rho

/-- Certified local semantics for the `sender_compliance_assert` source operation. -/
def SenderComplianceAssertSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d.spec (SenderComplianceAssertValuation rho)

/-- Audited action-facing seat for `sender_compliance_assert` local 1. -/
@[simp] theorem senderComplianceAssertAt1
    (rho : Nat → DeployedF) :
    SenderComplianceAssertValuation rho 1 = rho 11 := by
  simp only [
    SenderComplianceAssertValuation, Seg29.localRho,
    Deployed.Templates.seated]
  rw [show Seg29.wireSeating 1 = 11 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_assert` local 2. -/
@[simp] theorem senderComplianceAssertAt2
    (rho : Nat → DeployedF) :
    SenderComplianceAssertValuation rho 2 = rho 8 := by
  simp only [
    SenderComplianceAssertValuation, Seg29.localRho,
    Deployed.Templates.seated]
  rw [show Seg29.wireSeating 2 = 8 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_assert` local 3. -/
@[simp] theorem senderComplianceAssertAt3
    (rho : Nat → DeployedF) :
    SenderComplianceAssertValuation rho 3 = rho 24358 := by
  simp only [
    SenderComplianceAssertValuation, Seg29.localRho,
    Deployed.Templates.seated]
  rw [show Seg29.wireSeating 3 = 24358 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_assert` local 4. -/
@[simp] theorem senderComplianceAssertAt4
    (rho : Nat → DeployedF) :
    SenderComplianceAssertValuation rho 4 = rho 24363 := by
  simp only [
    SenderComplianceAssertValuation, Seg29.localRho,
    Deployed.Templates.seated]
  rw [show Seg29.wireSeating 4 = 24363 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_assert` local 5. -/
@[simp] theorem senderComplianceAssertAt5
    (rho : Nat → DeployedF) :
    SenderComplianceAssertValuation rho 5 = rho 24368 := by
  simp only [
    SenderComplianceAssertValuation, Seg29.localRho,
    Deployed.Templates.seated]
  rw [show Seg29.wireSeating 5 = 24368 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_assert` local 6. -/
@[simp] theorem senderComplianceAssertAt6
    (rho : Nat → DeployedF) :
    SenderComplianceAssertValuation rho 6 = rho 24373 := by
  simp only [
    SenderComplianceAssertValuation, Seg29.localRho,
    Deployed.Templates.seated]
  rw [show Seg29.wireSeating 6 = 24373 by
    decide +kernel]

/-- Audited action-facing seat for `sender_compliance_assert` local 7. -/
@[simp] theorem senderComplianceAssertAt7
    (rho : Nat → DeployedF) :
    SenderComplianceAssertValuation rho 7 = rho 24378 := by
  simp only [
    SenderComplianceAssertValuation, Seg29.localRho,
    Deployed.Templates.seated]
  rw [show Seg29.wireSeating 7 = 24378 by
    decide +kernel]

/-- Deployed seating for the `sender_ack` certified local semantics. -/
def SenderAckValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg30.localRho rho

/-- Certified local semantics for the `sender_ack` source operation. -/
def SenderAckSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.spec (SenderAckValuation rho)

/-- Audited action-facing seat for `sender_ack` local 252. -/
@[simp] theorem senderAckAt252
    (rho : Nat → DeployedF) :
    SenderAckValuation rho 252 = rho 89 := by
  simp only [
    SenderAckValuation, Seg30.localRho,
    Deployed.Templates.seated]
  rw [show Seg30.wireSeating 252 = 89 by
    decide +kernel]

/-- Audited action-facing seat for `sender_ack` local 253. -/
@[simp] theorem senderAckAt253
    (rho : Nat → DeployedF) :
    SenderAckValuation rho 253 = rho 407 := by
  simp only [
    SenderAckValuation, Seg30.localRho,
    Deployed.Templates.seated]
  rw [show Seg30.wireSeating 253 = 407 by
    decide +kernel]

/-- Audited action-facing seat for `sender_ack` local 254. -/
@[simp] theorem senderAckAt254
    (rho : Nat → DeployedF) :
    SenderAckValuation rho 254 = rho 408 := by
  simp only [
    SenderAckValuation, Seg30.localRho,
    Deployed.Templates.seated]
  rw [show Seg30.wireSeating 254 = 408 by
    decide +kernel]

/-- Deployed seating for the `required_note_commitment` certified local semantics. -/
def RequiredNoteCommitmentValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg32.localRho rho

/-- Certified local semantics for the `required_note_commitment` source operation. -/
def RequiredNoteCommitmentSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.spec (RequiredNoteCommitmentValuation rho)

/-- Audited action-facing seat for `required_note_commitment` local 1. -/
@[simp] theorem requiredNoteCommitmentAt1
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 1 = rho 182 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 1 = 182 by
    decide +kernel]

/-- Audited action-facing seat for `required_note_commitment` local 7. -/
@[simp] theorem requiredNoteCommitmentAt7
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 7 = rho 183 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 7 = 183 by
    decide +kernel]

/-- Audited action-facing seat for `required_note_commitment` local 13. -/
@[simp] theorem requiredNoteCommitmentAt13
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 13 = rho 184 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 13 = 184 by
    decide +kernel]

/-- Audited action-facing seat for `required_note_commitment` local 19. -/
@[simp] theorem requiredNoteCommitmentAt19
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 19 = rho 777 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 19 = 777 by
    decide +kernel]

/-- Audited action-facing seat for `required_note_commitment` local 20. -/
@[simp] theorem requiredNoteCommitmentAt20
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 20 = rho 1117 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 20 = 1117 by
    decide +kernel]

/-- Audited action-facing seat for `required_note_commitment` local 26. -/
@[simp] theorem requiredNoteCommitmentAt26
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 26 = rho 1480 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 26 = 1480 by
    decide +kernel]

/-- Audited action-facing seat for `required_note_commitment` local 27. -/
@[simp] theorem requiredNoteCommitmentAt27
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 27 = rho 1820 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 27 = 1820 by
    decide +kernel]

/-- Audited action-facing seat for `required_note_commitment` local 372. -/
@[simp] theorem requiredNoteCommitmentAt372
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 372 = rho 27753 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 372 = 27753 by
    decide +kernel]

/-- Audited action-facing seat for `required_note_commitment` local 377. -/
@[simp] theorem requiredNoteCommitmentAt377
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 377 = rho 27758 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 377 = 27758 by
    decide +kernel]

/-- Audited action-facing seat for `required_note_commitment` local 382. -/
@[simp] theorem requiredNoteCommitmentAt382
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 382 = rho 27763 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 382 = 27763 by
    decide +kernel]

/-- Audited action-facing seat for `required_note_commitment` local 387. -/
@[simp] theorem requiredNoteCommitmentAt387
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 387 = rho 27768 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 387 = 27768 by
    decide +kernel]

/-- Audited action-facing seat for `required_note_commitment` local 392. -/
@[simp] theorem requiredNoteCommitmentAt392
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 392 = rho 27773 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 392 = 27773 by
    decide +kernel]

/-- Audited action-facing seat for `required_note_commitment` local 397. -/
@[simp] theorem requiredNoteCommitmentAt397
    (rho : Nat → DeployedF) :
    RequiredNoteCommitmentValuation rho 397 = rho 27778 := by
  simp only [
    RequiredNoteCommitmentValuation, Seg32.localRho,
    Deployed.Templates.seated]
  rw [show Seg32.wireSeating 397 = 27778 by
    decide +kernel]

/-- Deployed seating for the `required_nullifier` certified local semantics. -/
def RequiredNullifierValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg33.localRho rho

/-- Certified local semantics for the `required_nullifier` source operation. -/
def RequiredNullifierSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4.spec (RequiredNullifierValuation rho)

/-- Audited action-facing seat for `required_nullifier` local 1. -/
@[simp] theorem requiredNullifierAt1
    (rho : Nat → DeployedF) :
    RequiredNullifierValuation rho 1 = rho 17 := by
  simp only [
    RequiredNullifierValuation, Seg33.localRho,
    Deployed.Templates.seated]
  rw [show Seg33.wireSeating 1 = 17 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier` local 7. -/
@[simp] theorem requiredNullifierAt7
    (rho : Nat → DeployedF) :
    RequiredNullifierValuation rho 7 = rho 27753 := by
  simp only [
    RequiredNullifierValuation, Seg33.localRho,
    Deployed.Templates.seated]
  rw [show Seg33.wireSeating 7 = 27753 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier` local 8. -/
@[simp] theorem requiredNullifierAt8
    (rho : Nat → DeployedF) :
    RequiredNullifierValuation rho 8 = rho 27758 := by
  simp only [
    RequiredNullifierValuation, Seg33.localRho,
    Deployed.Templates.seated]
  rw [show Seg33.wireSeating 8 = 27758 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier` local 9. -/
@[simp] theorem requiredNullifierAt9
    (rho : Nat → DeployedF) :
    RequiredNullifierValuation rho 9 = rho 27763 := by
  simp only [
    RequiredNullifierValuation, Seg33.localRho,
    Deployed.Templates.seated]
  rw [show Seg33.wireSeating 9 = 27763 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier` local 10. -/
@[simp] theorem requiredNullifierAt10
    (rho : Nat → DeployedF) :
    RequiredNullifierValuation rho 10 = rho 27768 := by
  simp only [
    RequiredNullifierValuation, Seg33.localRho,
    Deployed.Templates.seated]
  rw [show Seg33.wireSeating 10 = 27768 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier` local 11. -/
@[simp] theorem requiredNullifierAt11
    (rho : Nat → DeployedF) :
    RequiredNullifierValuation rho 11 = rho 27773 := by
  simp only [
    RequiredNullifierValuation, Seg33.localRho,
    Deployed.Templates.seated]
  rw [show Seg33.wireSeating 11 = 27773 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier` local 12. -/
@[simp] theorem requiredNullifierAt12
    (rho : Nat → DeployedF) :
    RequiredNullifierValuation rho 12 = rho 27778 := by
  simp only [
    RequiredNullifierValuation, Seg33.localRho,
    Deployed.Templates.seated]
  rw [show Seg33.wireSeating 12 = 27778 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier` local 18. -/
@[simp] theorem requiredNullifierAt18
    (rho : Nat → DeployedF) :
    RequiredNullifierValuation rho 18 = rho 185 := by
  simp only [
    RequiredNullifierValuation, Seg33.localRho,
    Deployed.Templates.seated]
  rw [show Seg33.wireSeating 18 = 185 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier` local 303. -/
@[simp] theorem requiredNullifierAt303
    (rho : Nat → DeployedF) :
    RequiredNullifierValuation rho 303 = rho 28073 := by
  simp only [
    RequiredNullifierValuation, Seg33.localRho,
    Deployed.Templates.seated]
  rw [show Seg33.wireSeating 303 = 28073 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier` local 308. -/
@[simp] theorem requiredNullifierAt308
    (rho : Nat → DeployedF) :
    RequiredNullifierValuation rho 308 = rho 28078 := by
  simp only [
    RequiredNullifierValuation, Seg33.localRho,
    Deployed.Templates.seated]
  rw [show Seg33.wireSeating 308 = 28078 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier` local 313. -/
@[simp] theorem requiredNullifierAt313
    (rho : Nat → DeployedF) :
    RequiredNullifierValuation rho 313 = rho 28083 := by
  simp only [
    RequiredNullifierValuation, Seg33.localRho,
    Deployed.Templates.seated]
  rw [show Seg33.wireSeating 313 = 28083 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier` local 318. -/
@[simp] theorem requiredNullifierAt318
    (rho : Nat → DeployedF) :
    RequiredNullifierValuation rho 318 = rho 28088 := by
  simp only [
    RequiredNullifierValuation, Seg33.localRho,
    Deployed.Templates.seated]
  rw [show Seg33.wireSeating 318 = 28088 by
    decide +kernel]

/-- Deployed seating for the `required_state_path` certified local semantics. -/
def RequiredStatePathValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg34.localRho rho

/-- Certified local semantics for the `required_state_path` source operation. -/
def RequiredStatePathSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.spec (RequiredStatePathValuation rho)

/-- Audited action-facing seat for `required_state_path` local 1. -/
@[simp] theorem requiredStatePathAt1
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 1 = rho 27753 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 1 = 27753 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 2. -/
@[simp] theorem requiredStatePathAt2
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 2 = rho 27758 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 2 = 27758 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 3. -/
@[simp] theorem requiredStatePathAt3
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 3 = rho 27763 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 3 = 27763 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 4. -/
@[simp] theorem requiredStatePathAt4
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 4 = rho 27768 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 4 = 27768 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 5. -/
@[simp] theorem requiredStatePathAt5
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 5 = rho 27773 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 5 = 27773 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 6. -/
@[simp] theorem requiredStatePathAt6
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 6 = rho 27778 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 6 = 27778 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 285. -/
@[simp] theorem requiredStatePathAt285
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 285 = rho 185 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 285 = 185 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 290. -/
@[simp] theorem requiredStatePathAt290
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 290 = rho 255 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 290 = 255 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 292. -/
@[simp] theorem requiredStatePathAt292
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 292 = rho 256 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 292 = 256 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 295. -/
@[simp] theorem requiredStatePathAt295
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 295 = rho 257 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 295 = 257 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 653. -/
@[simp] theorem requiredStatePathAt653
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 653 = rho 252 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 653 = 252 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 655. -/
@[simp] theorem requiredStatePathAt655
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 655 = rho 253 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 655 = 253 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 658. -/
@[simp] theorem requiredStatePathAt658
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 658 = rho 254 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 658 = 254 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 1016. -/
@[simp] theorem requiredStatePathAt1016
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 1016 = rho 249 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 1016 = 249 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 1018. -/
@[simp] theorem requiredStatePathAt1018
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 1018 = rho 250 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 1018 = 250 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 1021. -/
@[simp] theorem requiredStatePathAt1021
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 1021 = rho 251 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 1021 = 251 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 1379. -/
@[simp] theorem requiredStatePathAt1379
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 1379 = rho 246 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 1379 = 246 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 1381. -/
@[simp] theorem requiredStatePathAt1381
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 1381 = rho 247 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 1381 = 247 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 1384. -/
@[simp] theorem requiredStatePathAt1384
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 1384 = rho 248 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 1384 = 248 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 1742. -/
@[simp] theorem requiredStatePathAt1742
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 1742 = rho 243 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 1742 = 243 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 1744. -/
@[simp] theorem requiredStatePathAt1744
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 1744 = rho 244 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 1744 = 244 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 1747. -/
@[simp] theorem requiredStatePathAt1747
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 1747 = rho 245 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 1747 = 245 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 2105. -/
@[simp] theorem requiredStatePathAt2105
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 2105 = rho 240 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 2105 = 240 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 2107. -/
@[simp] theorem requiredStatePathAt2107
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 2107 = rho 241 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 2107 = 241 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 2110. -/
@[simp] theorem requiredStatePathAt2110
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 2110 = rho 242 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 2110 = 242 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 2468. -/
@[simp] theorem requiredStatePathAt2468
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 2468 = rho 237 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 2468 = 237 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 2470. -/
@[simp] theorem requiredStatePathAt2470
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 2470 = rho 238 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 2470 = 238 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 2473. -/
@[simp] theorem requiredStatePathAt2473
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 2473 = rho 239 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 2473 = 239 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 2831. -/
@[simp] theorem requiredStatePathAt2831
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 2831 = rho 234 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 2831 = 234 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 2833. -/
@[simp] theorem requiredStatePathAt2833
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 2833 = rho 235 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 2833 = 235 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 2836. -/
@[simp] theorem requiredStatePathAt2836
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 2836 = rho 236 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 2836 = 236 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 3194. -/
@[simp] theorem requiredStatePathAt3194
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 3194 = rho 231 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 3194 = 231 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 3196. -/
@[simp] theorem requiredStatePathAt3196
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 3196 = rho 232 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 3196 = 232 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 3199. -/
@[simp] theorem requiredStatePathAt3199
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 3199 = rho 233 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 3199 = 233 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 3557. -/
@[simp] theorem requiredStatePathAt3557
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 3557 = rho 228 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 3557 = 228 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 3559. -/
@[simp] theorem requiredStatePathAt3559
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 3559 = rho 229 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 3559 = 229 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 3562. -/
@[simp] theorem requiredStatePathAt3562
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 3562 = rho 230 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 3562 = 230 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 3920. -/
@[simp] theorem requiredStatePathAt3920
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 3920 = rho 225 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 3920 = 225 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 3922. -/
@[simp] theorem requiredStatePathAt3922
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 3922 = rho 226 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 3922 = 226 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 3925. -/
@[simp] theorem requiredStatePathAt3925
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 3925 = rho 227 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 3925 = 227 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 4283. -/
@[simp] theorem requiredStatePathAt4283
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 4283 = rho 222 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 4283 = 222 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 4285. -/
@[simp] theorem requiredStatePathAt4285
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 4285 = rho 223 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 4285 = 223 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 4288. -/
@[simp] theorem requiredStatePathAt4288
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 4288 = rho 224 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 4288 = 224 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 4646. -/
@[simp] theorem requiredStatePathAt4646
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 4646 = rho 219 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 4646 = 219 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 4648. -/
@[simp] theorem requiredStatePathAt4648
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 4648 = rho 220 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 4648 = 220 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 4651. -/
@[simp] theorem requiredStatePathAt4651
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 4651 = rho 221 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 4651 = 221 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 5009. -/
@[simp] theorem requiredStatePathAt5009
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 5009 = rho 216 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 5009 = 216 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 5011. -/
@[simp] theorem requiredStatePathAt5011
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 5011 = rho 217 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 5011 = 217 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 5014. -/
@[simp] theorem requiredStatePathAt5014
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 5014 = rho 218 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 5014 = 218 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 5372. -/
@[simp] theorem requiredStatePathAt5372
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 5372 = rho 213 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 5372 = 213 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 5374. -/
@[simp] theorem requiredStatePathAt5374
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 5374 = rho 214 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 5374 = 214 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 5377. -/
@[simp] theorem requiredStatePathAt5377
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 5377 = rho 215 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 5377 = 215 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 5735. -/
@[simp] theorem requiredStatePathAt5735
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 5735 = rho 210 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 5735 = 210 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 5737. -/
@[simp] theorem requiredStatePathAt5737
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 5737 = rho 211 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 5737 = 211 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 5740. -/
@[simp] theorem requiredStatePathAt5740
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 5740 = rho 212 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 5740 = 212 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 6098. -/
@[simp] theorem requiredStatePathAt6098
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 6098 = rho 207 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 6098 = 207 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 6100. -/
@[simp] theorem requiredStatePathAt6100
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 6100 = rho 208 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 6100 = 208 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 6103. -/
@[simp] theorem requiredStatePathAt6103
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 6103 = rho 209 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 6103 = 209 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 6461. -/
@[simp] theorem requiredStatePathAt6461
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 6461 = rho 204 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 6461 = 204 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 6463. -/
@[simp] theorem requiredStatePathAt6463
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 6463 = rho 205 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 6463 = 205 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 6466. -/
@[simp] theorem requiredStatePathAt6466
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 6466 = rho 206 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 6466 = 206 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 6824. -/
@[simp] theorem requiredStatePathAt6824
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 6824 = rho 201 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 6824 = 201 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 6826. -/
@[simp] theorem requiredStatePathAt6826
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 6826 = rho 202 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 6826 = 202 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 6829. -/
@[simp] theorem requiredStatePathAt6829
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 6829 = rho 203 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 6829 = 203 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 7187. -/
@[simp] theorem requiredStatePathAt7187
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 7187 = rho 198 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 7187 = 198 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 7189. -/
@[simp] theorem requiredStatePathAt7189
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 7189 = rho 199 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 7189 = 199 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 7192. -/
@[simp] theorem requiredStatePathAt7192
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 7192 = rho 200 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 7192 = 200 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 7550. -/
@[simp] theorem requiredStatePathAt7550
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 7550 = rho 195 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 7550 = 195 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 7552. -/
@[simp] theorem requiredStatePathAt7552
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 7552 = rho 196 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 7552 = 196 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 7555. -/
@[simp] theorem requiredStatePathAt7555
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 7555 = rho 197 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 7555 = 197 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 7913. -/
@[simp] theorem requiredStatePathAt7913
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 7913 = rho 192 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 7913 = 192 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 7915. -/
@[simp] theorem requiredStatePathAt7915
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 7915 = rho 193 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 7915 = 193 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 7918. -/
@[simp] theorem requiredStatePathAt7918
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 7918 = rho 194 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 7918 = 194 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 8276. -/
@[simp] theorem requiredStatePathAt8276
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 8276 = rho 189 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 8276 = 189 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 8278. -/
@[simp] theorem requiredStatePathAt8278
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 8278 = rho 190 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 8278 = 190 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 8281. -/
@[simp] theorem requiredStatePathAt8281
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 8281 = rho 191 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 8281 = 191 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 8639. -/
@[simp] theorem requiredStatePathAt8639
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 8639 = rho 186 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 8639 = 186 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 8641. -/
@[simp] theorem requiredStatePathAt8641
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 8641 = rho 187 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 8641 = 187 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 8644. -/
@[simp] theorem requiredStatePathAt8644
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 8644 = rho 188 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 8644 = 188 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 8977. -/
@[simp] theorem requiredStatePathAt8977
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 8977 = rho 36986 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 8977 = 36986 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 8982. -/
@[simp] theorem requiredStatePathAt8982
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 8982 = rho 36991 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 8982 = 36991 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 8987. -/
@[simp] theorem requiredStatePathAt8987
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 8987 = rho 36996 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 8987 = 36996 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 8992. -/
@[simp] theorem requiredStatePathAt8992
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 8992 = rho 37001 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 8992 = 37001 by
    decide +kernel]

/-- Audited action-facing seat for `required_state_path` local 8997. -/
@[simp] theorem requiredStatePathAt8997
    (rho : Nat → DeployedF) :
    RequiredStatePathValuation rho 8997 = rho 37006 := by
  simp only [
    RequiredStatePathValuation, Seg34.localRho,
    Deployed.Templates.seated]
  rw [show Seg34.wireSeating 8997 = 37006 by
    decide +kernel]

/-- Deployed seating for the `required_nullifier_assert` certified local semantics. -/
def RequiredNullifierAssertValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg35.localRho rho

/-- Certified local semantics for the `required_nullifier_assert` source operation. -/
def RequiredNullifierAssertSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b.spec (RequiredNullifierAssertValuation rho)

/-- Audited action-facing seat for `required_nullifier_assert` local 1. -/
@[simp] theorem requiredNullifierAssertAt1
    (rho : Nat → DeployedF) :
    RequiredNullifierAssertValuation rho 1 = rho 179 := by
  simp only [
    RequiredNullifierAssertValuation, Seg35.localRho,
    Deployed.Templates.seated]
  rw [show Seg35.wireSeating 1 = 179 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier_assert` local 2. -/
@[simp] theorem requiredNullifierAssertAt2
    (rho : Nat → DeployedF) :
    RequiredNullifierAssertValuation rho 2 = rho 28073 := by
  simp only [
    RequiredNullifierAssertValuation, Seg35.localRho,
    Deployed.Templates.seated]
  rw [show Seg35.wireSeating 2 = 28073 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier_assert` local 3. -/
@[simp] theorem requiredNullifierAssertAt3
    (rho : Nat → DeployedF) :
    RequiredNullifierAssertValuation rho 3 = rho 28078 := by
  simp only [
    RequiredNullifierAssertValuation, Seg35.localRho,
    Deployed.Templates.seated]
  rw [show Seg35.wireSeating 3 = 28078 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier_assert` local 4. -/
@[simp] theorem requiredNullifierAssertAt4
    (rho : Nat → DeployedF) :
    RequiredNullifierAssertValuation rho 4 = rho 28083 := by
  simp only [
    RequiredNullifierAssertValuation, Seg35.localRho,
    Deployed.Templates.seated]
  rw [show Seg35.wireSeating 4 = 28083 by
    decide +kernel]

/-- Audited action-facing seat for `required_nullifier_assert` local 5. -/
@[simp] theorem requiredNullifierAssertAt5
    (rho : Nat → DeployedF) :
    RequiredNullifierAssertValuation rho 5 = rho 28088 := by
  simp only [
    RequiredNullifierAssertValuation, Seg35.localRho,
    Deployed.Templates.seated]
  rw [show Seg35.wireSeating 5 = 28088 by
    decide +kernel]

/-- Deployed seating for the `required_anchor_assert` certified local semantics. -/
def RequiredAnchorAssertValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg36.localRho rho

/-- Certified local semantics for the `required_anchor_assert` source operation. -/
def RequiredAnchorAssertSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec (RequiredAnchorAssertValuation rho)

/-- Audited action-facing seat for `required_anchor_assert` local 1. -/
@[simp] theorem requiredAnchorAssertAt1
    (rho : Nat → DeployedF) :
    RequiredAnchorAssertValuation rho 1 = rho 36986 := by
  simp only [
    RequiredAnchorAssertValuation, Seg36.localRho,
    Deployed.Templates.seated]
  rw [show Seg36.wireSeating 1 = 36986 by
    decide +kernel]

/-- Audited action-facing seat for `required_anchor_assert` local 2. -/
@[simp] theorem requiredAnchorAssertAt2
    (rho : Nat → DeployedF) :
    RequiredAnchorAssertValuation rho 2 = rho 36991 := by
  simp only [
    RequiredAnchorAssertValuation, Seg36.localRho,
    Deployed.Templates.seated]
  rw [show Seg36.wireSeating 2 = 36991 by
    decide +kernel]

/-- Audited action-facing seat for `required_anchor_assert` local 3. -/
@[simp] theorem requiredAnchorAssertAt3
    (rho : Nat → DeployedF) :
    RequiredAnchorAssertValuation rho 3 = rho 36996 := by
  simp only [
    RequiredAnchorAssertValuation, Seg36.localRho,
    Deployed.Templates.seated]
  rw [show Seg36.wireSeating 3 = 36996 by
    decide +kernel]

/-- Audited action-facing seat for `required_anchor_assert` local 4. -/
@[simp] theorem requiredAnchorAssertAt4
    (rho : Nat → DeployedF) :
    RequiredAnchorAssertValuation rho 4 = rho 37001 := by
  simp only [
    RequiredAnchorAssertValuation, Seg36.localRho,
    Deployed.Templates.seated]
  rw [show Seg36.wireSeating 4 = 37001 by
    decide +kernel]

/-- Audited action-facing seat for `required_anchor_assert` local 5. -/
@[simp] theorem requiredAnchorAssertAt5
    (rho : Nat → DeployedF) :
    RequiredAnchorAssertValuation rho 5 = rho 37006 := by
  simp only [
    RequiredAnchorAssertValuation, Seg36.localRho,
    Deployed.Templates.seated]
  rw [show Seg36.wireSeating 5 = 37006 by
    decide +kernel]

/-- Audited action-facing seat for `required_anchor_assert` local 6. -/
@[simp] theorem requiredAnchorAssertAt6
    (rho : Nat → DeployedF) :
    RequiredAnchorAssertValuation rho 6 = rho 6 := by
  simp only [
    RequiredAnchorAssertValuation, Seg36.localRho,
    Deployed.Templates.seated]
  rw [show Seg36.wireSeating 6 = 6 by
    decide +kernel]

/-- Deployed seating for the `required_rvk` certified local semantics. -/
def RequiredRvkValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg37.localRho rho

/-- Certified local semantics for the `required_rvk` source operation. -/
def RequiredRvkSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.spec (RequiredRvkValuation rho)

/-- Audited action-facing seat for `required_rvk` local 252. -/
@[simp] theorem requiredRvkAt252
    (rho : Nat → DeployedF) :
    RequiredRvkValuation rho 252 = rho 258 := by
  simp only [
    RequiredRvkValuation, Seg37.localRho,
    Deployed.Templates.seated]
  rw [show Seg37.wireSeating 252 = 258 by
    decide +kernel]

/-- Audited action-facing seat for `required_rvk` local 1807. -/
@[simp] theorem requiredRvkAt1807
    (rho : Nat → DeployedF) :
    RequiredRvkValuation rho 1807 = rho 15 := by
  simp only [
    RequiredRvkValuation, Seg37.localRho,
    Deployed.Templates.seated]
  rw [show Seg37.wireSeating 1807 = 15 by
    decide +kernel]

/-- Audited action-facing seat for `required_rvk` local 1808. -/
@[simp] theorem requiredRvkAt1808
    (rho : Nat → DeployedF) :
    RequiredRvkValuation rho 1808 = rho 16 := by
  simp only [
    RequiredRvkValuation, Seg37.localRho,
    Deployed.Templates.seated]
  rw [show Seg37.wireSeating 1808 = 16 by
    decide +kernel]

/-- Audited action-facing seat for `required_rvk` local 1813. -/
@[simp] theorem requiredRvkAt1813
    (rho : Nat → DeployedF) :
    RequiredRvkValuation rho 1813 = rho 38816 := by
  simp only [
    RequiredRvkValuation, Seg37.localRho,
    Deployed.Templates.seated]
  rw [show Seg37.wireSeating 1813 = 38816 by
    decide +kernel]

/-- Audited action-facing seat for `required_rvk` local 1814. -/
@[simp] theorem requiredRvkAt1814
    (rho : Nat → DeployedF) :
    RequiredRvkValuation rho 1814 = rho 38817 := by
  simp only [
    RequiredRvkValuation, Seg37.localRho,
    Deployed.Templates.seated]
  rw [show Seg37.wireSeating 1814 = 38817 by
    decide +kernel]

/-- Deployed seating for the `required_rk_equivalent` certified local semantics. -/
def RequiredRkEquivalentValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg38.localRho rho

/-- Certified local semantics for the `required_rk_equivalent` source operation. -/
def RequiredRkEquivalentSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec (RequiredRkEquivalentValuation rho)

/-- Audited action-facing seat for `required_rk_equivalent` local 1. -/
@[simp] theorem requiredRkEquivalentAt1
    (rho : Nat → DeployedF) :
    RequiredRkEquivalentValuation rho 1 = rho 38816 := by
  simp only [
    RequiredRkEquivalentValuation, Seg38.localRho,
    Deployed.Templates.seated]
  rw [show Seg38.wireSeating 1 = 38816 by
    decide +kernel]

/-- Audited action-facing seat for `required_rk_equivalent` local 2. -/
@[simp] theorem requiredRkEquivalentAt2
    (rho : Nat → DeployedF) :
    RequiredRkEquivalentValuation rho 2 = rho 181 := by
  simp only [
    RequiredRkEquivalentValuation, Seg38.localRho,
    Deployed.Templates.seated]
  rw [show Seg38.wireSeating 2 = 181 by
    decide +kernel]

/-- Audited action-facing seat for `required_rk_equivalent` local 4. -/
@[simp] theorem requiredRkEquivalentAt4
    (rho : Nat → DeployedF) :
    RequiredRkEquivalentValuation rho 4 = rho 180 := by
  simp only [
    RequiredRkEquivalentValuation, Seg38.localRho,
    Deployed.Templates.seated]
  rw [show Seg38.wireSeating 4 = 180 by
    decide +kernel]

/-- Audited action-facing seat for `required_rk_equivalent` local 5. -/
@[simp] theorem requiredRkEquivalentAt5
    (rho : Nat → DeployedF) :
    RequiredRkEquivalentValuation rho 5 = rho 38817 := by
  simp only [
    RequiredRkEquivalentValuation, Seg38.localRho,
    Deployed.Templates.seated]
  rw [show Seg38.wireSeating 5 = 38817 by
    decide +kernel]

/-- Deployed seating for the `required_history_classify` certified local semantics. -/
def RequiredHistoryClassifyValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg39.localRho rho

/-- Certified local semantics for the `required_history_classify` source operation. -/
def RequiredHistoryClassifySemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.THistoryClassify_24943fd2154aa0ac8bbf9adce870214e50badfb7c18cba54c33b68fcd9222905.spec (RequiredHistoryClassifyValuation rho)

/-- Audited action-facing seat for `required_history_classify` local 49. -/
@[simp] theorem requiredHistoryClassifyAt49
    (rho : Nat → DeployedF) :
    RequiredHistoryClassifyValuation rho 49 = rho 185 := by
  simp only [
    RequiredHistoryClassifyValuation, Seg39.localRho,
    Deployed.Templates.seated]
  rw [show Seg39.wireSeating 49 = 185 by
    decide +kernel]

/-- Audited action-facing seat for `required_history_classify` local 98. -/
@[simp] theorem requiredHistoryClassifyAt98
    (rho : Nat → DeployedF) :
    RequiredHistoryClassifyValuation rho 98 = rho 5 := by
  simp only [
    RequiredHistoryClassifyValuation, Seg39.localRho,
    Deployed.Templates.seated]
  rw [show Seg39.wireSeating 98 = 5 by
    decide +kernel]

/-- Audited action-facing seat for `required_history_classify` local 149. -/
@[simp] theorem requiredHistoryClassifyAt149
    (rho : Nat → DeployedF) :
    RequiredHistoryClassifyValuation rho 149 = rho 259 := by
  simp only [
    RequiredHistoryClassifyValuation, Seg39.localRho,
    Deployed.Templates.seated]
  rw [show Seg39.wireSeating 149 = 259 by
    decide +kernel]

/-- Deployed seating for the `required_rk_compress` certified local semantics. -/
def RequiredRkCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg40.localRho rho

/-- Certified local semantics for the `required_rk_compress` source operation. -/
def RequiredRkCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (RequiredRkCompressValuation rho)

/-- Audited action-facing seat for `required_rk_compress` local 1. -/
@[simp] theorem requiredRkCompressAt1
    (rho : Nat → DeployedF) :
    RequiredRkCompressValuation rho 1 = rho 180 := by
  simp only [
    RequiredRkCompressValuation, Seg40.localRho,
    Deployed.Templates.seated]
  rw [show Seg40.wireSeating 1 = 180 by
    decide +kernel]

/-- Audited action-facing seat for `required_rk_compress` local 3. -/
@[simp] theorem requiredRkCompressAt3
    (rho : Nat → DeployedF) :
    RequiredRkCompressValuation rho 3 = rho 181 := by
  simp only [
    RequiredRkCompressValuation, Seg40.localRho,
    Deployed.Templates.seated]
  rw [show Seg40.wireSeating 3 = 181 by
    decide +kernel]

/-- Audited action-facing seat for `required_rk_compress` local 365. -/
@[simp] theorem requiredRkCompressAt365
    (rho : Nat → DeployedF) :
    RequiredRkCompressValuation rho 365 = rho 39328 := by
  simp only [
    RequiredRkCompressValuation, Seg40.localRho,
    Deployed.Templates.seated]
  rw [show Seg40.wireSeating 365 = 39328 by
    decide +kernel]

/-- Audited action-facing seat for `required_rk_compress` local 705. -/
@[simp] theorem requiredRkCompressAt705
    (rho : Nat → DeployedF) :
    RequiredRkCompressValuation rho 705 = rho 39668 := by
  simp only [
    RequiredRkCompressValuation, Seg40.localRho,
    Deployed.Templates.seated]
  rw [show Seg40.wireSeating 705 = 39668 by
    decide +kernel]

/-- Deployed seating for the `optional_is_dummy_boolean` certified local semantics. -/
def OptionalIsDummyBooleanValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg43.localRho rho

/-- Certified local semantics for the `optional_is_dummy_boolean` source operation. -/
def OptionalIsDummyBooleanSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec (OptionalIsDummyBooleanValuation rho)

/-- Audited action-facing seat for `optional_is_dummy_boolean` local 1. -/
@[simp] theorem optionalIsDummyBooleanAt1
    (rho : Nat → DeployedF) :
    OptionalIsDummyBooleanValuation rho 1 = rho 339 := by
  simp only [
    OptionalIsDummyBooleanValuation, Seg43.localRho,
    Deployed.Templates.seated]
  rw [show Seg43.wireSeating 1 = 339 by
    decide +kernel]

/-- Deployed seating for the `optional_note_commitment` certified local semantics. -/
def OptionalNoteCommitmentValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg44.localRho rho

/-- Certified local semantics for the `optional_note_commitment` source operation. -/
def OptionalNoteCommitmentSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.spec (OptionalNoteCommitmentValuation rho)

/-- Audited action-facing seat for `optional_note_commitment` local 1. -/
@[simp] theorem optionalNoteCommitmentAt1
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 1 = rho 263 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 1 = 263 by
    decide +kernel]

/-- Audited action-facing seat for `optional_note_commitment` local 7. -/
@[simp] theorem optionalNoteCommitmentAt7
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 7 = rho 264 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 7 = 264 by
    decide +kernel]

/-- Audited action-facing seat for `optional_note_commitment` local 13. -/
@[simp] theorem optionalNoteCommitmentAt13
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 13 = rho 184 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 13 = 184 by
    decide +kernel]

/-- Audited action-facing seat for `optional_note_commitment` local 19. -/
@[simp] theorem optionalNoteCommitmentAt19
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 19 = rho 777 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 19 = 777 by
    decide +kernel]

/-- Audited action-facing seat for `optional_note_commitment` local 20. -/
@[simp] theorem optionalNoteCommitmentAt20
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 20 = rho 1117 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 20 = 1117 by
    decide +kernel]

/-- Audited action-facing seat for `optional_note_commitment` local 26. -/
@[simp] theorem optionalNoteCommitmentAt26
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 26 = rho 1480 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 26 = 1480 by
    decide +kernel]

/-- Audited action-facing seat for `optional_note_commitment` local 27. -/
@[simp] theorem optionalNoteCommitmentAt27
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 27 = rho 1820 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 27 = 1820 by
    decide +kernel]

/-- Audited action-facing seat for `optional_note_commitment` local 372. -/
@[simp] theorem optionalNoteCommitmentAt372
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 372 = rho 40033 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 372 = 40033 by
    decide +kernel]

/-- Audited action-facing seat for `optional_note_commitment` local 377. -/
@[simp] theorem optionalNoteCommitmentAt377
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 377 = rho 40038 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 377 = 40038 by
    decide +kernel]

/-- Audited action-facing seat for `optional_note_commitment` local 382. -/
@[simp] theorem optionalNoteCommitmentAt382
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 382 = rho 40043 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 382 = 40043 by
    decide +kernel]

/-- Audited action-facing seat for `optional_note_commitment` local 387. -/
@[simp] theorem optionalNoteCommitmentAt387
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 387 = rho 40048 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 387 = 40048 by
    decide +kernel]

/-- Audited action-facing seat for `optional_note_commitment` local 392. -/
@[simp] theorem optionalNoteCommitmentAt392
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 392 = rho 40053 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 392 = 40053 by
    decide +kernel]

/-- Audited action-facing seat for `optional_note_commitment` local 397. -/
@[simp] theorem optionalNoteCommitmentAt397
    (rho : Nat → DeployedF) :
    OptionalNoteCommitmentValuation rho 397 = rho 40058 := by
  simp only [
    OptionalNoteCommitmentValuation, Seg44.localRho,
    Deployed.Templates.seated]
  rw [show Seg44.wireSeating 397 = 40058 by
    decide +kernel]

/-- Deployed seating for the `optional_nullifier` certified local semantics. -/
def OptionalNullifierValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg45.localRho rho

/-- Certified local semantics for the `optional_nullifier` source operation. -/
def OptionalNullifierSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4.spec (OptionalNullifierValuation rho)

/-- Audited action-facing seat for `optional_nullifier` local 1. -/
@[simp] theorem optionalNullifierAt1
    (rho : Nat → DeployedF) :
    OptionalNullifierValuation rho 1 = rho 17 := by
  simp only [
    OptionalNullifierValuation, Seg45.localRho,
    Deployed.Templates.seated]
  rw [show Seg45.wireSeating 1 = 17 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier` local 7. -/
@[simp] theorem optionalNullifierAt7
    (rho : Nat → DeployedF) :
    OptionalNullifierValuation rho 7 = rho 40033 := by
  simp only [
    OptionalNullifierValuation, Seg45.localRho,
    Deployed.Templates.seated]
  rw [show Seg45.wireSeating 7 = 40033 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier` local 8. -/
@[simp] theorem optionalNullifierAt8
    (rho : Nat → DeployedF) :
    OptionalNullifierValuation rho 8 = rho 40038 := by
  simp only [
    OptionalNullifierValuation, Seg45.localRho,
    Deployed.Templates.seated]
  rw [show Seg45.wireSeating 8 = 40038 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier` local 9. -/
@[simp] theorem optionalNullifierAt9
    (rho : Nat → DeployedF) :
    OptionalNullifierValuation rho 9 = rho 40043 := by
  simp only [
    OptionalNullifierValuation, Seg45.localRho,
    Deployed.Templates.seated]
  rw [show Seg45.wireSeating 9 = 40043 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier` local 10. -/
@[simp] theorem optionalNullifierAt10
    (rho : Nat → DeployedF) :
    OptionalNullifierValuation rho 10 = rho 40048 := by
  simp only [
    OptionalNullifierValuation, Seg45.localRho,
    Deployed.Templates.seated]
  rw [show Seg45.wireSeating 10 = 40048 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier` local 11. -/
@[simp] theorem optionalNullifierAt11
    (rho : Nat → DeployedF) :
    OptionalNullifierValuation rho 11 = rho 40053 := by
  simp only [
    OptionalNullifierValuation, Seg45.localRho,
    Deployed.Templates.seated]
  rw [show Seg45.wireSeating 11 = 40053 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier` local 12. -/
@[simp] theorem optionalNullifierAt12
    (rho : Nat → DeployedF) :
    OptionalNullifierValuation rho 12 = rho 40058 := by
  simp only [
    OptionalNullifierValuation, Seg45.localRho,
    Deployed.Templates.seated]
  rw [show Seg45.wireSeating 12 = 40058 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier` local 18. -/
@[simp] theorem optionalNullifierAt18
    (rho : Nat → DeployedF) :
    OptionalNullifierValuation rho 18 = rho 265 := by
  simp only [
    OptionalNullifierValuation, Seg45.localRho,
    Deployed.Templates.seated]
  rw [show Seg45.wireSeating 18 = 265 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier` local 303. -/
@[simp] theorem optionalNullifierAt303
    (rho : Nat → DeployedF) :
    OptionalNullifierValuation rho 303 = rho 40353 := by
  simp only [
    OptionalNullifierValuation, Seg45.localRho,
    Deployed.Templates.seated]
  rw [show Seg45.wireSeating 303 = 40353 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier` local 308. -/
@[simp] theorem optionalNullifierAt308
    (rho : Nat → DeployedF) :
    OptionalNullifierValuation rho 308 = rho 40358 := by
  simp only [
    OptionalNullifierValuation, Seg45.localRho,
    Deployed.Templates.seated]
  rw [show Seg45.wireSeating 308 = 40358 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier` local 313. -/
@[simp] theorem optionalNullifierAt313
    (rho : Nat → DeployedF) :
    OptionalNullifierValuation rho 313 = rho 40363 := by
  simp only [
    OptionalNullifierValuation, Seg45.localRho,
    Deployed.Templates.seated]
  rw [show Seg45.wireSeating 313 = 40363 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier` local 318. -/
@[simp] theorem optionalNullifierAt318
    (rho : Nat → DeployedF) :
    OptionalNullifierValuation rho 318 = rho 40368 := by
  simp only [
    OptionalNullifierValuation, Seg45.localRho,
    Deployed.Templates.seated]
  rw [show Seg45.wireSeating 318 = 40368 by
    decide +kernel]

/-- Deployed seating for the `optional_state_path` certified local semantics. -/
def OptionalStatePathValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg46.localRho rho

/-- Certified local semantics for the `optional_state_path` source operation. -/
def OptionalStatePathSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.spec (OptionalStatePathValuation rho)

/-- Audited action-facing seat for `optional_state_path` local 1. -/
@[simp] theorem optionalStatePathAt1
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 1 = rho 40033 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 1 = 40033 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 2. -/
@[simp] theorem optionalStatePathAt2
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 2 = rho 40038 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 2 = 40038 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 3. -/
@[simp] theorem optionalStatePathAt3
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 3 = rho 40043 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 3 = 40043 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 4. -/
@[simp] theorem optionalStatePathAt4
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 4 = rho 40048 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 4 = 40048 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 5. -/
@[simp] theorem optionalStatePathAt5
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 5 = rho 40053 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 5 = 40053 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 6. -/
@[simp] theorem optionalStatePathAt6
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 6 = rho 40058 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 6 = 40058 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 285. -/
@[simp] theorem optionalStatePathAt285
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 285 = rho 265 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 285 = 265 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 290. -/
@[simp] theorem optionalStatePathAt290
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 290 = rho 335 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 290 = 335 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 292. -/
@[simp] theorem optionalStatePathAt292
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 292 = rho 336 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 292 = 336 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 295. -/
@[simp] theorem optionalStatePathAt295
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 295 = rho 337 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 295 = 337 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 653. -/
@[simp] theorem optionalStatePathAt653
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 653 = rho 332 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 653 = 332 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 655. -/
@[simp] theorem optionalStatePathAt655
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 655 = rho 333 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 655 = 333 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 658. -/
@[simp] theorem optionalStatePathAt658
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 658 = rho 334 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 658 = 334 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 1016. -/
@[simp] theorem optionalStatePathAt1016
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 1016 = rho 329 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 1016 = 329 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 1018. -/
@[simp] theorem optionalStatePathAt1018
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 1018 = rho 330 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 1018 = 330 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 1021. -/
@[simp] theorem optionalStatePathAt1021
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 1021 = rho 331 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 1021 = 331 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 1379. -/
@[simp] theorem optionalStatePathAt1379
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 1379 = rho 326 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 1379 = 326 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 1381. -/
@[simp] theorem optionalStatePathAt1381
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 1381 = rho 327 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 1381 = 327 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 1384. -/
@[simp] theorem optionalStatePathAt1384
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 1384 = rho 328 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 1384 = 328 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 1742. -/
@[simp] theorem optionalStatePathAt1742
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 1742 = rho 323 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 1742 = 323 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 1744. -/
@[simp] theorem optionalStatePathAt1744
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 1744 = rho 324 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 1744 = 324 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 1747. -/
@[simp] theorem optionalStatePathAt1747
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 1747 = rho 325 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 1747 = 325 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 2105. -/
@[simp] theorem optionalStatePathAt2105
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 2105 = rho 320 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 2105 = 320 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 2107. -/
@[simp] theorem optionalStatePathAt2107
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 2107 = rho 321 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 2107 = 321 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 2110. -/
@[simp] theorem optionalStatePathAt2110
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 2110 = rho 322 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 2110 = 322 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 2468. -/
@[simp] theorem optionalStatePathAt2468
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 2468 = rho 317 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 2468 = 317 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 2470. -/
@[simp] theorem optionalStatePathAt2470
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 2470 = rho 318 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 2470 = 318 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 2473. -/
@[simp] theorem optionalStatePathAt2473
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 2473 = rho 319 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 2473 = 319 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 2831. -/
@[simp] theorem optionalStatePathAt2831
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 2831 = rho 314 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 2831 = 314 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 2833. -/
@[simp] theorem optionalStatePathAt2833
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 2833 = rho 315 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 2833 = 315 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 2836. -/
@[simp] theorem optionalStatePathAt2836
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 2836 = rho 316 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 2836 = 316 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 3194. -/
@[simp] theorem optionalStatePathAt3194
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 3194 = rho 311 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 3194 = 311 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 3196. -/
@[simp] theorem optionalStatePathAt3196
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 3196 = rho 312 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 3196 = 312 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 3199. -/
@[simp] theorem optionalStatePathAt3199
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 3199 = rho 313 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 3199 = 313 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 3557. -/
@[simp] theorem optionalStatePathAt3557
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 3557 = rho 308 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 3557 = 308 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 3559. -/
@[simp] theorem optionalStatePathAt3559
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 3559 = rho 309 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 3559 = 309 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 3562. -/
@[simp] theorem optionalStatePathAt3562
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 3562 = rho 310 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 3562 = 310 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 3920. -/
@[simp] theorem optionalStatePathAt3920
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 3920 = rho 305 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 3920 = 305 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 3922. -/
@[simp] theorem optionalStatePathAt3922
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 3922 = rho 306 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 3922 = 306 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 3925. -/
@[simp] theorem optionalStatePathAt3925
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 3925 = rho 307 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 3925 = 307 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 4283. -/
@[simp] theorem optionalStatePathAt4283
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 4283 = rho 302 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 4283 = 302 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 4285. -/
@[simp] theorem optionalStatePathAt4285
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 4285 = rho 303 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 4285 = 303 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 4288. -/
@[simp] theorem optionalStatePathAt4288
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 4288 = rho 304 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 4288 = 304 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 4646. -/
@[simp] theorem optionalStatePathAt4646
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 4646 = rho 299 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 4646 = 299 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 4648. -/
@[simp] theorem optionalStatePathAt4648
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 4648 = rho 300 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 4648 = 300 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 4651. -/
@[simp] theorem optionalStatePathAt4651
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 4651 = rho 301 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 4651 = 301 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 5009. -/
@[simp] theorem optionalStatePathAt5009
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 5009 = rho 296 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 5009 = 296 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 5011. -/
@[simp] theorem optionalStatePathAt5011
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 5011 = rho 297 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 5011 = 297 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 5014. -/
@[simp] theorem optionalStatePathAt5014
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 5014 = rho 298 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 5014 = 298 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 5372. -/
@[simp] theorem optionalStatePathAt5372
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 5372 = rho 293 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 5372 = 293 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 5374. -/
@[simp] theorem optionalStatePathAt5374
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 5374 = rho 294 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 5374 = 294 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 5377. -/
@[simp] theorem optionalStatePathAt5377
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 5377 = rho 295 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 5377 = 295 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 5735. -/
@[simp] theorem optionalStatePathAt5735
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 5735 = rho 290 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 5735 = 290 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 5737. -/
@[simp] theorem optionalStatePathAt5737
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 5737 = rho 291 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 5737 = 291 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 5740. -/
@[simp] theorem optionalStatePathAt5740
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 5740 = rho 292 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 5740 = 292 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 6098. -/
@[simp] theorem optionalStatePathAt6098
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 6098 = rho 287 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 6098 = 287 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 6100. -/
@[simp] theorem optionalStatePathAt6100
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 6100 = rho 288 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 6100 = 288 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 6103. -/
@[simp] theorem optionalStatePathAt6103
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 6103 = rho 289 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 6103 = 289 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 6461. -/
@[simp] theorem optionalStatePathAt6461
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 6461 = rho 284 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 6461 = 284 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 6463. -/
@[simp] theorem optionalStatePathAt6463
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 6463 = rho 285 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 6463 = 285 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 6466. -/
@[simp] theorem optionalStatePathAt6466
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 6466 = rho 286 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 6466 = 286 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 6824. -/
@[simp] theorem optionalStatePathAt6824
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 6824 = rho 281 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 6824 = 281 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 6826. -/
@[simp] theorem optionalStatePathAt6826
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 6826 = rho 282 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 6826 = 282 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 6829. -/
@[simp] theorem optionalStatePathAt6829
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 6829 = rho 283 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 6829 = 283 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 7187. -/
@[simp] theorem optionalStatePathAt7187
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 7187 = rho 278 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 7187 = 278 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 7189. -/
@[simp] theorem optionalStatePathAt7189
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 7189 = rho 279 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 7189 = 279 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 7192. -/
@[simp] theorem optionalStatePathAt7192
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 7192 = rho 280 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 7192 = 280 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 7550. -/
@[simp] theorem optionalStatePathAt7550
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 7550 = rho 275 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 7550 = 275 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 7552. -/
@[simp] theorem optionalStatePathAt7552
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 7552 = rho 276 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 7552 = 276 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 7555. -/
@[simp] theorem optionalStatePathAt7555
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 7555 = rho 277 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 7555 = 277 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 7913. -/
@[simp] theorem optionalStatePathAt7913
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 7913 = rho 272 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 7913 = 272 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 7915. -/
@[simp] theorem optionalStatePathAt7915
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 7915 = rho 273 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 7915 = 273 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 7918. -/
@[simp] theorem optionalStatePathAt7918
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 7918 = rho 274 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 7918 = 274 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 8276. -/
@[simp] theorem optionalStatePathAt8276
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 8276 = rho 269 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 8276 = 269 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 8278. -/
@[simp] theorem optionalStatePathAt8278
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 8278 = rho 270 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 8278 = 270 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 8281. -/
@[simp] theorem optionalStatePathAt8281
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 8281 = rho 271 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 8281 = 271 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 8639. -/
@[simp] theorem optionalStatePathAt8639
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 8639 = rho 266 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 8639 = 266 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 8641. -/
@[simp] theorem optionalStatePathAt8641
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 8641 = rho 267 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 8641 = 267 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 8644. -/
@[simp] theorem optionalStatePathAt8644
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 8644 = rho 268 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 8644 = 268 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 8977. -/
@[simp] theorem optionalStatePathAt8977
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 8977 = rho 49266 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 8977 = 49266 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 8982. -/
@[simp] theorem optionalStatePathAt8982
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 8982 = rho 49271 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 8982 = 49271 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 8987. -/
@[simp] theorem optionalStatePathAt8987
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 8987 = rho 49276 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 8987 = 49276 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 8992. -/
@[simp] theorem optionalStatePathAt8992
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 8992 = rho 49281 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 8992 = 49281 by
    decide +kernel]

/-- Audited action-facing seat for `optional_state_path` local 8997. -/
@[simp] theorem optionalStatePathAt8997
    (rho : Nat → DeployedF) :
    OptionalStatePathValuation rho 8997 = rho 49286 := by
  simp only [
    OptionalStatePathValuation, Seg46.localRho,
    Deployed.Templates.seated]
  rw [show Seg46.wireSeating 8997 = 49286 by
    decide +kernel]

/-- Deployed seating for the `optional_synthetic_nullifier` certified local semantics. -/
def OptionalSyntheticNullifierValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg47.localRho rho

/-- Certified local semantics for the `optional_synthetic_nullifier` source operation. -/
def OptionalSyntheticNullifierSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.spec (OptionalSyntheticNullifierValuation rho)

/-- Audited action-facing seat for `optional_synthetic_nullifier` local 1. -/
@[simp] theorem optionalSyntheticNullifierAt1
    (rho : Nat → DeployedF) :
    OptionalSyntheticNullifierValuation rho 1 = rho 340 := by
  simp only [
    OptionalSyntheticNullifierValuation, Seg47.localRho,
    Deployed.Templates.seated]
  rw [show Seg47.wireSeating 1 = 340 by
    decide +kernel]

/-- Audited action-facing seat for `optional_synthetic_nullifier` local 7. -/
@[simp] theorem optionalSyntheticNullifierAt7
    (rho : Nat → DeployedF) :
    OptionalSyntheticNullifierValuation rho 7 = rho 338 := by
  simp only [
    OptionalSyntheticNullifierValuation, Seg47.localRho,
    Deployed.Templates.seated]
  rw [show Seg47.wireSeating 7 = 338 by
    decide +kernel]

/-- Audited action-facing seat for `optional_synthetic_nullifier` local 292. -/
@[simp] theorem optionalSyntheticNullifierAt292
    (rho : Nat → DeployedF) :
    OptionalSyntheticNullifierValuation rho 292 = rho 49576 := by
  simp only [
    OptionalSyntheticNullifierValuation, Seg47.localRho,
    Deployed.Templates.seated]
  rw [show Seg47.wireSeating 292 = 49576 by
    decide +kernel]

/-- Audited action-facing seat for `optional_synthetic_nullifier` local 297. -/
@[simp] theorem optionalSyntheticNullifierAt297
    (rho : Nat → DeployedF) :
    OptionalSyntheticNullifierValuation rho 297 = rho 49581 := by
  simp only [
    OptionalSyntheticNullifierValuation, Seg47.localRho,
    Deployed.Templates.seated]
  rw [show Seg47.wireSeating 297 = 49581 by
    decide +kernel]

/-- Audited action-facing seat for `optional_synthetic_nullifier` local 302. -/
@[simp] theorem optionalSyntheticNullifierAt302
    (rho : Nat → DeployedF) :
    OptionalSyntheticNullifierValuation rho 302 = rho 49586 := by
  simp only [
    OptionalSyntheticNullifierValuation, Seg47.localRho,
    Deployed.Templates.seated]
  rw [show Seg47.wireSeating 302 = 49586 by
    decide +kernel]

/-- Audited action-facing seat for `optional_synthetic_nullifier` local 307. -/
@[simp] theorem optionalSyntheticNullifierAt307
    (rho : Nat → DeployedF) :
    OptionalSyntheticNullifierValuation rho 307 = rho 49591 := by
  simp only [
    OptionalSyntheticNullifierValuation, Seg47.localRho,
    Deployed.Templates.seated]
  rw [show Seg47.wireSeating 307 = 49591 by
    decide +kernel]

/-- Deployed seating for the `optional_nullifier_mux` certified local semantics. -/
def OptionalNullifierMuxValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg48.localRho rho

/-- Certified local semantics for the `optional_nullifier_mux` source operation. -/
def OptionalNullifierMuxSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.spec (OptionalNullifierMuxValuation rho)

/-- Audited action-facing seat for `optional_nullifier_mux` local 1. -/
@[simp] theorem optionalNullifierMuxAt1
    (rho : Nat → DeployedF) :
    OptionalNullifierMuxValuation rho 1 = rho 339 := by
  simp only [
    OptionalNullifierMuxValuation, Seg48.localRho,
    Deployed.Templates.seated]
  rw [show Seg48.wireSeating 1 = 339 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier_mux` local 2. -/
@[simp] theorem optionalNullifierMuxAt2
    (rho : Nat → DeployedF) :
    OptionalNullifierMuxValuation rho 2 = rho 40353 := by
  simp only [
    OptionalNullifierMuxValuation, Seg48.localRho,
    Deployed.Templates.seated]
  rw [show Seg48.wireSeating 2 = 40353 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier_mux` local 3. -/
@[simp] theorem optionalNullifierMuxAt3
    (rho : Nat → DeployedF) :
    OptionalNullifierMuxValuation rho 3 = rho 40358 := by
  simp only [
    OptionalNullifierMuxValuation, Seg48.localRho,
    Deployed.Templates.seated]
  rw [show Seg48.wireSeating 3 = 40358 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier_mux` local 4. -/
@[simp] theorem optionalNullifierMuxAt4
    (rho : Nat → DeployedF) :
    OptionalNullifierMuxValuation rho 4 = rho 40363 := by
  simp only [
    OptionalNullifierMuxValuation, Seg48.localRho,
    Deployed.Templates.seated]
  rw [show Seg48.wireSeating 4 = 40363 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier_mux` local 5. -/
@[simp] theorem optionalNullifierMuxAt5
    (rho : Nat → DeployedF) :
    OptionalNullifierMuxValuation rho 5 = rho 40368 := by
  simp only [
    OptionalNullifierMuxValuation, Seg48.localRho,
    Deployed.Templates.seated]
  rw [show Seg48.wireSeating 5 = 40368 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier_mux` local 6. -/
@[simp] theorem optionalNullifierMuxAt6
    (rho : Nat → DeployedF) :
    OptionalNullifierMuxValuation rho 6 = rho 49592 := by
  simp only [
    OptionalNullifierMuxValuation, Seg48.localRho,
    Deployed.Templates.seated]
  rw [show Seg48.wireSeating 6 = 49592 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier_mux` local 7. -/
@[simp] theorem optionalNullifierMuxAt7
    (rho : Nat → DeployedF) :
    OptionalNullifierMuxValuation rho 7 = rho 49576 := by
  simp only [
    OptionalNullifierMuxValuation, Seg48.localRho,
    Deployed.Templates.seated]
  rw [show Seg48.wireSeating 7 = 49576 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier_mux` local 8. -/
@[simp] theorem optionalNullifierMuxAt8
    (rho : Nat → DeployedF) :
    OptionalNullifierMuxValuation rho 8 = rho 49581 := by
  simp only [
    OptionalNullifierMuxValuation, Seg48.localRho,
    Deployed.Templates.seated]
  rw [show Seg48.wireSeating 8 = 49581 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier_mux` local 9. -/
@[simp] theorem optionalNullifierMuxAt9
    (rho : Nat → DeployedF) :
    OptionalNullifierMuxValuation rho 9 = rho 49586 := by
  simp only [
    OptionalNullifierMuxValuation, Seg48.localRho,
    Deployed.Templates.seated]
  rw [show Seg48.wireSeating 9 = 49586 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier_mux` local 10. -/
@[simp] theorem optionalNullifierMuxAt10
    (rho : Nat → DeployedF) :
    OptionalNullifierMuxValuation rho 10 = rho 49591 := by
  simp only [
    OptionalNullifierMuxValuation, Seg48.localRho,
    Deployed.Templates.seated]
  rw [show Seg48.wireSeating 10 = 49591 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier_mux` local 11. -/
@[simp] theorem optionalNullifierMuxAt11
    (rho : Nat → DeployedF) :
    OptionalNullifierMuxValuation rho 11 = rho 49593 := by
  simp only [
    OptionalNullifierMuxValuation, Seg48.localRho,
    Deployed.Templates.seated]
  rw [show Seg48.wireSeating 11 = 49593 by
    decide +kernel]

/-- Deployed seating for the `optional_nullifier_assert` certified local semantics. -/
def OptionalNullifierAssertValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg49.localRho rho

/-- Certified local semantics for the `optional_nullifier_assert` source operation. -/
def OptionalNullifierAssertSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3.spec (OptionalNullifierAssertValuation rho)

/-- Audited action-facing seat for `optional_nullifier_assert` local 1. -/
@[simp] theorem optionalNullifierAssertAt1
    (rho : Nat → DeployedF) :
    OptionalNullifierAssertValuation rho 1 = rho 260 := by
  simp only [
    OptionalNullifierAssertValuation, Seg49.localRho,
    Deployed.Templates.seated]
  rw [show Seg49.wireSeating 1 = 260 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier_assert` local 2. -/
@[simp] theorem optionalNullifierAssertAt2
    (rho : Nat → DeployedF) :
    OptionalNullifierAssertValuation rho 2 = rho 49592 := by
  simp only [
    OptionalNullifierAssertValuation, Seg49.localRho,
    Deployed.Templates.seated]
  rw [show Seg49.wireSeating 2 = 49592 by
    decide +kernel]

/-- Audited action-facing seat for `optional_nullifier_assert` local 3. -/
@[simp] theorem optionalNullifierAssertAt3
    (rho : Nat → DeployedF) :
    OptionalNullifierAssertValuation rho 3 = rho 49593 := by
  simp only [
    OptionalNullifierAssertValuation, Seg49.localRho,
    Deployed.Templates.seated]
  rw [show Seg49.wireSeating 3 = 49593 by
    decide +kernel]

/-- Deployed seating for the `optional_anchor_assert` certified local semantics. -/
def OptionalAnchorAssertValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg50.localRho rho

/-- Certified local semantics for the `optional_anchor_assert` source operation. -/
def OptionalAnchorAssertSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03.spec (OptionalAnchorAssertValuation rho)

/-- Audited action-facing seat for `optional_anchor_assert` local 1. -/
@[simp] theorem optionalAnchorAssertAt1
    (rho : Nat → DeployedF) :
    OptionalAnchorAssertValuation rho 1 = rho 339 := by
  simp only [
    OptionalAnchorAssertValuation, Seg50.localRho,
    Deployed.Templates.seated]
  rw [show Seg50.wireSeating 1 = 339 by
    decide +kernel]

/-- Audited action-facing seat for `optional_anchor_assert` local 2. -/
@[simp] theorem optionalAnchorAssertAt2
    (rho : Nat → DeployedF) :
    OptionalAnchorAssertValuation rho 2 = rho 6 := by
  simp only [
    OptionalAnchorAssertValuation, Seg50.localRho,
    Deployed.Templates.seated]
  rw [show Seg50.wireSeating 2 = 6 by
    decide +kernel]

/-- Audited action-facing seat for `optional_anchor_assert` local 3. -/
@[simp] theorem optionalAnchorAssertAt3
    (rho : Nat → DeployedF) :
    OptionalAnchorAssertValuation rho 3 = rho 49266 := by
  simp only [
    OptionalAnchorAssertValuation, Seg50.localRho,
    Deployed.Templates.seated]
  rw [show Seg50.wireSeating 3 = 49266 by
    decide +kernel]

/-- Audited action-facing seat for `optional_anchor_assert` local 4. -/
@[simp] theorem optionalAnchorAssertAt4
    (rho : Nat → DeployedF) :
    OptionalAnchorAssertValuation rho 4 = rho 49271 := by
  simp only [
    OptionalAnchorAssertValuation, Seg50.localRho,
    Deployed.Templates.seated]
  rw [show Seg50.wireSeating 4 = 49271 by
    decide +kernel]

/-- Audited action-facing seat for `optional_anchor_assert` local 5. -/
@[simp] theorem optionalAnchorAssertAt5
    (rho : Nat → DeployedF) :
    OptionalAnchorAssertValuation rho 5 = rho 49276 := by
  simp only [
    OptionalAnchorAssertValuation, Seg50.localRho,
    Deployed.Templates.seated]
  rw [show Seg50.wireSeating 5 = 49276 by
    decide +kernel]

/-- Audited action-facing seat for `optional_anchor_assert` local 6. -/
@[simp] theorem optionalAnchorAssertAt6
    (rho : Nat → DeployedF) :
    OptionalAnchorAssertValuation rho 6 = rho 49281 := by
  simp only [
    OptionalAnchorAssertValuation, Seg50.localRho,
    Deployed.Templates.seated]
  rw [show Seg50.wireSeating 6 = 49281 by
    decide +kernel]

/-- Audited action-facing seat for `optional_anchor_assert` local 7. -/
@[simp] theorem optionalAnchorAssertAt7
    (rho : Nat → DeployedF) :
    OptionalAnchorAssertValuation rho 7 = rho 49286 := by
  simp only [
    OptionalAnchorAssertValuation, Seg50.localRho,
    Deployed.Templates.seated]
  rw [show Seg50.wireSeating 7 = 49286 by
    decide +kernel]

/-- Deployed seating for the `optional_rvk` certified local semantics. -/
def OptionalRvkValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg51.localRho rho

/-- Certified local semantics for the `optional_rvk` source operation. -/
def OptionalRvkSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.spec (OptionalRvkValuation rho)

/-- Audited action-facing seat for `optional_rvk` local 252. -/
@[simp] theorem optionalRvkAt252
    (rho : Nat → DeployedF) :
    OptionalRvkValuation rho 252 = rho 338 := by
  simp only [
    OptionalRvkValuation, Seg51.localRho,
    Deployed.Templates.seated]
  rw [show Seg51.wireSeating 252 = 338 by
    decide +kernel]

/-- Audited action-facing seat for `optional_rvk` local 1807. -/
@[simp] theorem optionalRvkAt1807
    (rho : Nat → DeployedF) :
    OptionalRvkValuation rho 1807 = rho 15 := by
  simp only [
    OptionalRvkValuation, Seg51.localRho,
    Deployed.Templates.seated]
  rw [show Seg51.wireSeating 1807 = 15 by
    decide +kernel]

/-- Audited action-facing seat for `optional_rvk` local 1808. -/
@[simp] theorem optionalRvkAt1808
    (rho : Nat → DeployedF) :
    OptionalRvkValuation rho 1808 = rho 16 := by
  simp only [
    OptionalRvkValuation, Seg51.localRho,
    Deployed.Templates.seated]
  rw [show Seg51.wireSeating 1808 = 16 by
    decide +kernel]

/-- Audited action-facing seat for `optional_rvk` local 1813. -/
@[simp] theorem optionalRvkAt1813
    (rho : Nat → DeployedF) :
    OptionalRvkValuation rho 1813 = rho 51404 := by
  simp only [
    OptionalRvkValuation, Seg51.localRho,
    Deployed.Templates.seated]
  rw [show Seg51.wireSeating 1813 = 51404 by
    decide +kernel]

/-- Audited action-facing seat for `optional_rvk` local 1814. -/
@[simp] theorem optionalRvkAt1814
    (rho : Nat → DeployedF) :
    OptionalRvkValuation rho 1814 = rho 51405 := by
  simp only [
    OptionalRvkValuation, Seg51.localRho,
    Deployed.Templates.seated]
  rw [show Seg51.wireSeating 1814 = 51405 by
    decide +kernel]

/-- Deployed seating for the `optional_rk_equivalent` certified local semantics. -/
def OptionalRkEquivalentValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg52.localRho rho

/-- Certified local semantics for the `optional_rk_equivalent` source operation. -/
def OptionalRkEquivalentSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.spec (OptionalRkEquivalentValuation rho)

/-- Audited action-facing seat for `optional_rk_equivalent` local 1. -/
@[simp] theorem optionalRkEquivalentAt1
    (rho : Nat → DeployedF) :
    OptionalRkEquivalentValuation rho 1 = rho 339 := by
  simp only [
    OptionalRkEquivalentValuation, Seg52.localRho,
    Deployed.Templates.seated]
  rw [show Seg52.wireSeating 1 = 339 by
    decide +kernel]

/-- Audited action-facing seat for `optional_rk_equivalent` local 2. -/
@[simp] theorem optionalRkEquivalentAt2
    (rho : Nat → DeployedF) :
    OptionalRkEquivalentValuation rho 2 = rho 51404 := by
  simp only [
    OptionalRkEquivalentValuation, Seg52.localRho,
    Deployed.Templates.seated]
  rw [show Seg52.wireSeating 2 = 51404 by
    decide +kernel]

/-- Audited action-facing seat for `optional_rk_equivalent` local 3. -/
@[simp] theorem optionalRkEquivalentAt3
    (rho : Nat → DeployedF) :
    OptionalRkEquivalentValuation rho 3 = rho 262 := by
  simp only [
    OptionalRkEquivalentValuation, Seg52.localRho,
    Deployed.Templates.seated]
  rw [show Seg52.wireSeating 3 = 262 by
    decide +kernel]

/-- Audited action-facing seat for `optional_rk_equivalent` local 5. -/
@[simp] theorem optionalRkEquivalentAt5
    (rho : Nat → DeployedF) :
    OptionalRkEquivalentValuation rho 5 = rho 261 := by
  simp only [
    OptionalRkEquivalentValuation, Seg52.localRho,
    Deployed.Templates.seated]
  rw [show Seg52.wireSeating 5 = 261 by
    decide +kernel]

/-- Audited action-facing seat for `optional_rk_equivalent` local 6. -/
@[simp] theorem optionalRkEquivalentAt6
    (rho : Nat → DeployedF) :
    OptionalRkEquivalentValuation rho 6 = rho 51405 := by
  simp only [
    OptionalRkEquivalentValuation, Seg52.localRho,
    Deployed.Templates.seated]
  rw [show Seg52.wireSeating 6 = 51405 by
    decide +kernel]

/-- Deployed seating for the `optional_amount_zero` certified local semantics. -/
def OptionalAmountZeroValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg53.localRho rho

/-- Certified local semantics for the `optional_amount_zero` source operation. -/
def OptionalAmountZeroSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.spec (OptionalAmountZeroValuation rho)

/-- Audited action-facing seat for `optional_amount_zero` local 1. -/
@[simp] theorem optionalAmountZeroAt1
    (rho : Nat → DeployedF) :
    OptionalAmountZeroValuation rho 1 = rho 264 := by
  simp only [
    OptionalAmountZeroValuation, Seg53.localRho,
    Deployed.Templates.seated]
  rw [show Seg53.wireSeating 1 = 264 by
    decide +kernel]

/-- Audited action-facing seat for `optional_amount_zero` local 2. -/
@[simp] theorem optionalAmountZeroAt2
    (rho : Nat → DeployedF) :
    OptionalAmountZeroValuation rho 2 = rho 339 := by
  simp only [
    OptionalAmountZeroValuation, Seg53.localRho,
    Deployed.Templates.seated]
  rw [show Seg53.wireSeating 2 = 339 by
    decide +kernel]

/-- Deployed seating for the `optional_history_classify` certified local semantics. -/
def OptionalHistoryClassifyValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg54.localRho rho

/-- Certified local semantics for the `optional_history_classify` source operation. -/
def OptionalHistoryClassifySemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (OptionalHistoryClassifyValuation rho)

/-- Audited action-facing seat for `optional_history_classify` local 49. -/
@[simp] theorem optionalHistoryClassifyAt49
    (rho : Nat → DeployedF) :
    OptionalHistoryClassifyValuation rho 49 = rho 265 := by
  simp only [
    OptionalHistoryClassifyValuation, Seg54.localRho,
    Deployed.Templates.seated]
  rw [show Seg54.wireSeating 49 = 265 by
    decide +kernel]

/-- Audited action-facing seat for `optional_history_classify` local 98. -/
@[simp] theorem optionalHistoryClassifyAt98
    (rho : Nat → DeployedF) :
    OptionalHistoryClassifyValuation rho 98 = rho 5 := by
  simp only [
    OptionalHistoryClassifyValuation, Seg54.localRho,
    Deployed.Templates.seated]
  rw [show Seg54.wireSeating 98 = 5 by
    decide +kernel]

/-- Audited action-facing seat for `optional_history_classify` local 149. -/
@[simp] theorem optionalHistoryClassifyAt149
    (rho : Nat → DeployedF) :
    OptionalHistoryClassifyValuation rho 149 = rho 339 := by
  simp only [
    OptionalHistoryClassifyValuation, Seg54.localRho,
    Deployed.Templates.seated]
  rw [show Seg54.wireSeating 149 = 339 by
    decide +kernel]

/-- Audited action-facing seat for `optional_history_classify` local 151. -/
@[simp] theorem optionalHistoryClassifyAt151
    (rho : Nat → DeployedF) :
    OptionalHistoryClassifyValuation rho 151 = rho 341 := by
  simp only [
    OptionalHistoryClassifyValuation, Seg54.localRho,
    Deployed.Templates.seated]
  rw [show Seg54.wireSeating 151 = 341 by
    decide +kernel]

/-- Deployed seating for the `optional_rk_compress` certified local semantics. -/
def OptionalRkCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg55.localRho rho

/-- Certified local semantics for the `optional_rk_compress` source operation. -/
def OptionalRkCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (OptionalRkCompressValuation rho)

/-- Audited action-facing seat for `optional_rk_compress` local 1. -/
@[simp] theorem optionalRkCompressAt1
    (rho : Nat → DeployedF) :
    OptionalRkCompressValuation rho 1 = rho 261 := by
  simp only [
    OptionalRkCompressValuation, Seg55.localRho,
    Deployed.Templates.seated]
  rw [show Seg55.wireSeating 1 = 261 by
    decide +kernel]

/-- Audited action-facing seat for `optional_rk_compress` local 3. -/
@[simp] theorem optionalRkCompressAt3
    (rho : Nat → DeployedF) :
    OptionalRkCompressValuation rho 3 = rho 262 := by
  simp only [
    OptionalRkCompressValuation, Seg55.localRho,
    Deployed.Templates.seated]
  rw [show Seg55.wireSeating 3 = 262 by
    decide +kernel]

/-- Audited action-facing seat for `optional_rk_compress` local 365. -/
@[simp] theorem optionalRkCompressAt365
    (rho : Nat → DeployedF) :
    OptionalRkCompressValuation rho 365 = rho 51920 := by
  simp only [
    OptionalRkCompressValuation, Seg55.localRho,
    Deployed.Templates.seated]
  rw [show Seg55.wireSeating 365 = 51920 by
    decide +kernel]

/-- Audited action-facing seat for `optional_rk_compress` local 705. -/
@[simp] theorem optionalRkCompressAt705
    (rho : Nat → DeployedF) :
    OptionalRkCompressValuation rho 705 = rho 52260 := by
  simp only [
    OptionalRkCompressValuation, Seg55.localRho,
    Deployed.Templates.seated]
  rw [show Seg55.wireSeating 705 = 52260 by
    decide +kernel]

/-- Deployed seating for the `receiver_div_gen_non_identity` certified local semantics. -/
def ReceiverDivGenNonIdentityValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg58.localRho rho

/-- Certified local semantics for the `receiver_div_gen_non_identity` source operation. -/
def ReceiverDivGenNonIdentitySemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (ReceiverDivGenNonIdentityValuation rho)

/-- Deployed seating for the `receiver_transmission_non_identity` certified local semantics. -/
def ReceiverTransmissionNonIdentityValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg59.localRho rho

/-- Certified local semantics for the `receiver_transmission_non_identity` source operation. -/
def ReceiverTransmissionNonIdentitySemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (ReceiverTransmissionNonIdentityValuation rho)

/-- Deployed seating for the `receiver_amount_is_zero` certified local semantics. -/
def ReceiverAmountIsZeroValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg60.localRho rho

/-- Certified local semantics for the `receiver_amount_is_zero` source operation. -/
def ReceiverAmountIsZeroSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991.spec (ReceiverAmountIsZeroValuation rho)

/-- Audited action-facing seat for `receiver_amount_is_zero` local 1. -/
@[simp] theorem receiverAmountIsZeroAt1
    (rho : Nat → DeployedF) :
    ReceiverAmountIsZeroValuation rho 1 = rho 344 := by
  simp only [
    ReceiverAmountIsZeroValuation, Seg60.localRho,
    Deployed.Templates.seated]
  rw [show Seg60.wireSeating 1 = 344 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_amount_is_zero` local 3. -/
@[simp] theorem receiverAmountIsZeroAt3
    (rho : Nat → DeployedF) :
    ReceiverAmountIsZeroValuation rho 3 = rho 52263 := by
  simp only [
    ReceiverAmountIsZeroValuation, Seg60.localRho,
    Deployed.Templates.seated]
  rw [show Seg60.wireSeating 3 = 52263 by
    decide +kernel]

/-- Deployed seating for the `receiver_div_gen_compress` certified local semantics. -/
def ReceiverDivGenCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg61.localRho rho

/-- Certified local semantics for the `receiver_div_gen_compress` source operation. -/
def ReceiverDivGenCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (ReceiverDivGenCompressValuation rho)

/-- Audited action-facing seat for `receiver_div_gen_compress` local 1. -/
@[simp] theorem receiverDivGenCompressAt1
    (rho : Nat → DeployedF) :
    ReceiverDivGenCompressValuation rho 1 = rho 345 := by
  simp only [
    ReceiverDivGenCompressValuation, Seg61.localRho,
    Deployed.Templates.seated]
  rw [show Seg61.wireSeating 1 = 345 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_div_gen_compress` local 3. -/
@[simp] theorem receiverDivGenCompressAt3
    (rho : Nat → DeployedF) :
    ReceiverDivGenCompressValuation rho 3 = rho 346 := by
  simp only [
    ReceiverDivGenCompressValuation, Seg61.localRho,
    Deployed.Templates.seated]
  rw [show Seg61.wireSeating 3 = 346 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_div_gen_compress` local 365. -/
@[simp] theorem receiverDivGenCompressAt365
    (rho : Nat → DeployedF) :
    ReceiverDivGenCompressValuation rho 365 = rho 52627 := by
  simp only [
    ReceiverDivGenCompressValuation, Seg61.localRho,
    Deployed.Templates.seated]
  rw [show Seg61.wireSeating 365 = 52627 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_div_gen_compress` local 705. -/
@[simp] theorem receiverDivGenCompressAt705
    (rho : Nat → DeployedF) :
    ReceiverDivGenCompressValuation rho 705 = rho 52967 := by
  simp only [
    ReceiverDivGenCompressValuation, Seg61.localRho,
    Deployed.Templates.seated]
  rw [show Seg61.wireSeating 705 = 52967 by
    decide +kernel]

/-- Deployed seating for the `receiver_transmission_compress` certified local semantics. -/
def ReceiverTransmissionCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg62.localRho rho

/-- Certified local semantics for the `receiver_transmission_compress` source operation. -/
def ReceiverTransmissionCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (ReceiverTransmissionCompressValuation rho)

/-- Audited action-facing seat for `receiver_transmission_compress` local 1. -/
@[simp] theorem receiverTransmissionCompressAt1
    (rho : Nat → DeployedF) :
    ReceiverTransmissionCompressValuation rho 1 = rho 347 := by
  simp only [
    ReceiverTransmissionCompressValuation, Seg62.localRho,
    Deployed.Templates.seated]
  rw [show Seg62.wireSeating 1 = 347 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_transmission_compress` local 3. -/
@[simp] theorem receiverTransmissionCompressAt3
    (rho : Nat → DeployedF) :
    ReceiverTransmissionCompressValuation rho 3 = rho 348 := by
  simp only [
    ReceiverTransmissionCompressValuation, Seg62.localRho,
    Deployed.Templates.seated]
  rw [show Seg62.wireSeating 3 = 348 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_transmission_compress` local 365. -/
@[simp] theorem receiverTransmissionCompressAt365
    (rho : Nat → DeployedF) :
    ReceiverTransmissionCompressValuation rho 365 = rho 53330 := by
  simp only [
    ReceiverTransmissionCompressValuation, Seg62.localRho,
    Deployed.Templates.seated]
  rw [show Seg62.wireSeating 365 = 53330 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_transmission_compress` local 705. -/
@[simp] theorem receiverTransmissionCompressAt705
    (rho : Nat → DeployedF) :
    ReceiverTransmissionCompressValuation rho 705 = rho 53670 := by
  simp only [
    ReceiverTransmissionCompressValuation, Seg62.localRho,
    Deployed.Templates.seated]
  rw [show Seg62.wireSeating 705 = 53670 by
    decide +kernel]

/-- Deployed seating for the `receiver_note_commitment` certified local semantics. -/
def ReceiverNoteCommitmentValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg63.localRho rho

/-- Certified local semantics for the `receiver_note_commitment` source operation. -/
def ReceiverNoteCommitmentSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.spec (ReceiverNoteCommitmentValuation rho)

/-- Audited action-facing seat for `receiver_note_commitment` local 1. -/
@[simp] theorem receiverNoteCommitmentAt1
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 1 = rho 343 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 1 = 343 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_commitment` local 7. -/
@[simp] theorem receiverNoteCommitmentAt7
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 7 = rho 344 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 7 = 344 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_commitment` local 13. -/
@[simp] theorem receiverNoteCommitmentAt13
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 13 = rho 184 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 13 = 184 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_commitment` local 19. -/
@[simp] theorem receiverNoteCommitmentAt19
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 19 = rho 52627 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 19 = 52627 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_commitment` local 20. -/
@[simp] theorem receiverNoteCommitmentAt20
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 20 = rho 52967 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 20 = 52967 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_commitment` local 26. -/
@[simp] theorem receiverNoteCommitmentAt26
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 26 = rho 53330 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 26 = 53330 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_commitment` local 27. -/
@[simp] theorem receiverNoteCommitmentAt27
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 27 = rho 53670 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 27 = 53670 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_commitment` local 372. -/
@[simp] theorem receiverNoteCommitmentAt372
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 372 = rho 54035 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 372 = 54035 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_commitment` local 377. -/
@[simp] theorem receiverNoteCommitmentAt377
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 377 = rho 54040 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 377 = 54040 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_commitment` local 382. -/
@[simp] theorem receiverNoteCommitmentAt382
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 382 = rho 54045 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 382 = 54045 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_commitment` local 387. -/
@[simp] theorem receiverNoteCommitmentAt387
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 387 = rho 54050 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 387 = 54050 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_commitment` local 392. -/
@[simp] theorem receiverNoteCommitmentAt392
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 392 = rho 54055 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 392 = 54055 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_commitment` local 397. -/
@[simp] theorem receiverNoteCommitmentAt397
    (rho : Nat → DeployedF) :
    ReceiverNoteCommitmentValuation rho 397 = rho 54060 := by
  simp only [
    ReceiverNoteCommitmentValuation, Seg63.localRho,
    Deployed.Templates.seated]
  rw [show Seg63.wireSeating 397 = 54060 by
    decide +kernel]

/-- Deployed seating for the `receiver_note_assert` certified local semantics. -/
def ReceiverNoteAssertValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg64.localRho rho

/-- Certified local semantics for the `receiver_note_assert` source operation. -/
def ReceiverNoteAssertSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.spec (ReceiverNoteAssertValuation rho)

/-- Audited action-facing seat for `receiver_note_assert` local 1. -/
@[simp] theorem receiverNoteAssertAt1
    (rho : Nat → DeployedF) :
    ReceiverNoteAssertValuation rho 1 = rho 54035 := by
  simp only [
    ReceiverNoteAssertValuation, Seg64.localRho,
    Deployed.Templates.seated]
  rw [show Seg64.wireSeating 1 = 54035 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_assert` local 2. -/
@[simp] theorem receiverNoteAssertAt2
    (rho : Nat → DeployedF) :
    ReceiverNoteAssertValuation rho 2 = rho 54040 := by
  simp only [
    ReceiverNoteAssertValuation, Seg64.localRho,
    Deployed.Templates.seated]
  rw [show Seg64.wireSeating 2 = 54040 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_assert` local 3. -/
@[simp] theorem receiverNoteAssertAt3
    (rho : Nat → DeployedF) :
    ReceiverNoteAssertValuation rho 3 = rho 54045 := by
  simp only [
    ReceiverNoteAssertValuation, Seg64.localRho,
    Deployed.Templates.seated]
  rw [show Seg64.wireSeating 3 = 54045 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_assert` local 4. -/
@[simp] theorem receiverNoteAssertAt4
    (rho : Nat → DeployedF) :
    ReceiverNoteAssertValuation rho 4 = rho 54050 := by
  simp only [
    ReceiverNoteAssertValuation, Seg64.localRho,
    Deployed.Templates.seated]
  rw [show Seg64.wireSeating 4 = 54050 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_assert` local 5. -/
@[simp] theorem receiverNoteAssertAt5
    (rho : Nat → DeployedF) :
    ReceiverNoteAssertValuation rho 5 = rho 54055 := by
  simp only [
    ReceiverNoteAssertValuation, Seg64.localRho,
    Deployed.Templates.seated]
  rw [show Seg64.wireSeating 5 = 54055 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_assert` local 6. -/
@[simp] theorem receiverNoteAssertAt6
    (rho : Nat → DeployedF) :
    ReceiverNoteAssertValuation rho 6 = rho 54060 := by
  simp only [
    ReceiverNoteAssertValuation, Seg64.localRho,
    Deployed.Templates.seated]
  rw [show Seg64.wireSeating 6 = 54060 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_note_assert` local 7. -/
@[simp] theorem receiverNoteAssertAt7
    (rho : Nat → DeployedF) :
    ReceiverNoteAssertValuation rho 7 = rho 342 := by
  simp only [
    ReceiverNoteAssertValuation, Seg64.localRho,
    Deployed.Templates.seated]
  rw [show Seg64.wireSeating 7 = 342 by
    decide +kernel]

/-- Deployed seating for the `receiver_compliance_leaf` certified local semantics. -/
def ReceiverComplianceLeafValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg65.localRho rho

/-- Certified local semantics for the `receiver_compliance_leaf` source operation. -/
def ReceiverComplianceLeafSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.spec (ReceiverComplianceLeafValuation rho)

/-- Audited action-facing seat for `receiver_compliance_leaf` local 1. -/
@[simp] theorem receiverComplianceLeafAt1
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 1 = rho 52627 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 1 = 52627 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 2. -/
@[simp] theorem receiverComplianceLeafAt2
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 2 = rho 52967 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 2 = 52967 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 8. -/
@[simp] theorem receiverComplianceLeafAt8
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 8 = rho 53330 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 8 = 53330 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 9. -/
@[simp] theorem receiverComplianceLeafAt9
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 9 = rho 53670 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 9 = 53670 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 15. -/
@[simp] theorem receiverComplianceLeafAt15
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 15 = rho 184 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 15 = 184 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 21. -/
@[simp] theorem receiverComplianceLeafAt21
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 21 = rho 349 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 21 = 349 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 27. -/
@[simp] theorem receiverComplianceLeafAt27
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 27 = rho 350 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 27 = 350 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 33. -/
@[simp] theorem receiverComplianceLeafAt33
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 33 = rho 351 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 33 = 351 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 408. -/
@[simp] theorem receiverComplianceLeafAt408
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 408 = rho 54460 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 408 = 54460 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 413. -/
@[simp] theorem receiverComplianceLeafAt413
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 413 = rho 54465 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 413 = 54465 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 418. -/
@[simp] theorem receiverComplianceLeafAt418
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 418 = rho 54470 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 418 = 54470 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 423. -/
@[simp] theorem receiverComplianceLeafAt423
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 423 = rho 54475 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 423 = 54475 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 428. -/
@[simp] theorem receiverComplianceLeafAt428
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 428 = rho 54480 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 428 = 54480 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 433. -/
@[simp] theorem receiverComplianceLeafAt433
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 433 = rho 54485 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 433 = 54485 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_leaf` local 438. -/
@[simp] theorem receiverComplianceLeafAt438
    (rho : Nat → DeployedF) :
    ReceiverComplianceLeafValuation rho 438 = rho 54490 := by
  simp only [
    ReceiverComplianceLeafValuation, Seg65.localRho,
    Deployed.Templates.seated]
  rw [show Seg65.wireSeating 438 = 54490 by
    decide +kernel]

/-- Deployed seating for the `receiver_compliance_path` certified local semantics. -/
def ReceiverCompliancePathValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg66.localRho rho

/-- Certified local semantics for the `receiver_compliance_path` source operation. -/
def ReceiverCompliancePathSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.spec (ReceiverCompliancePathValuation rho)

/-- Audited action-facing seat for `receiver_compliance_path` local 33. -/
@[simp] theorem receiverCompliancePathAt33
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 33 = rho 400 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 33 = 400 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 38. -/
@[simp] theorem receiverCompliancePathAt38
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 38 = rho 352 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 38 = 352 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 39. -/
@[simp] theorem receiverCompliancePathAt39
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 39 = rho 54460 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 39 = 54460 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 40. -/
@[simp] theorem receiverCompliancePathAt40
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 40 = rho 54465 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 40 = 54465 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 41. -/
@[simp] theorem receiverCompliancePathAt41
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 41 = rho 54470 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 41 = 54470 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 42. -/
@[simp] theorem receiverCompliancePathAt42
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 42 = rho 54475 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 42 = 54475 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 43. -/
@[simp] theorem receiverCompliancePathAt43
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 43 = rho 54480 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 43 = 54480 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 44. -/
@[simp] theorem receiverCompliancePathAt44
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 44 = rho 54485 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 44 = 54485 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 45. -/
@[simp] theorem receiverCompliancePathAt45
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 45 = rho 54490 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 45 = 54490 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 47. -/
@[simp] theorem receiverCompliancePathAt47
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 47 = rho 353 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 47 = 353 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 50. -/
@[simp] theorem receiverCompliancePathAt50
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 50 = rho 354 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 50 = 354 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 408. -/
@[simp] theorem receiverCompliancePathAt408
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 408 = rho 355 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 408 = 355 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 410. -/
@[simp] theorem receiverCompliancePathAt410
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 410 = rho 356 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 410 = 356 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 413. -/
@[simp] theorem receiverCompliancePathAt413
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 413 = rho 357 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 413 = 357 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 771. -/
@[simp] theorem receiverCompliancePathAt771
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 771 = rho 358 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 771 = 358 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 773. -/
@[simp] theorem receiverCompliancePathAt773
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 773 = rho 359 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 773 = 359 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 776. -/
@[simp] theorem receiverCompliancePathAt776
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 776 = rho 360 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 776 = 360 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 1134. -/
@[simp] theorem receiverCompliancePathAt1134
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 1134 = rho 361 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 1134 = 361 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 1136. -/
@[simp] theorem receiverCompliancePathAt1136
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 1136 = rho 362 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 1136 = 362 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 1139. -/
@[simp] theorem receiverCompliancePathAt1139
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 1139 = rho 363 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 1139 = 363 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 1497. -/
@[simp] theorem receiverCompliancePathAt1497
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 1497 = rho 364 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 1497 = 364 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 1499. -/
@[simp] theorem receiverCompliancePathAt1499
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 1499 = rho 365 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 1499 = 365 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 1502. -/
@[simp] theorem receiverCompliancePathAt1502
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 1502 = rho 366 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 1502 = 366 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 1860. -/
@[simp] theorem receiverCompliancePathAt1860
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 1860 = rho 367 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 1860 = 367 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 1862. -/
@[simp] theorem receiverCompliancePathAt1862
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 1862 = rho 368 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 1862 = 368 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 1865. -/
@[simp] theorem receiverCompliancePathAt1865
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 1865 = rho 369 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 1865 = 369 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 2223. -/
@[simp] theorem receiverCompliancePathAt2223
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 2223 = rho 370 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 2223 = 370 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 2225. -/
@[simp] theorem receiverCompliancePathAt2225
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 2225 = rho 371 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 2225 = 371 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 2228. -/
@[simp] theorem receiverCompliancePathAt2228
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 2228 = rho 372 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 2228 = 372 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 2586. -/
@[simp] theorem receiverCompliancePathAt2586
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 2586 = rho 373 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 2586 = 373 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 2588. -/
@[simp] theorem receiverCompliancePathAt2588
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 2588 = rho 374 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 2588 = 374 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 2591. -/
@[simp] theorem receiverCompliancePathAt2591
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 2591 = rho 375 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 2591 = 375 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 2949. -/
@[simp] theorem receiverCompliancePathAt2949
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 2949 = rho 376 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 2949 = 376 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 2951. -/
@[simp] theorem receiverCompliancePathAt2951
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 2951 = rho 377 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 2951 = 377 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 2954. -/
@[simp] theorem receiverCompliancePathAt2954
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 2954 = rho 378 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 2954 = 378 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 3312. -/
@[simp] theorem receiverCompliancePathAt3312
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 3312 = rho 379 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 3312 = 379 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 3314. -/
@[simp] theorem receiverCompliancePathAt3314
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 3314 = rho 380 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 3314 = 380 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 3317. -/
@[simp] theorem receiverCompliancePathAt3317
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 3317 = rho 381 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 3317 = 381 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 3675. -/
@[simp] theorem receiverCompliancePathAt3675
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 3675 = rho 382 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 3675 = 382 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 3677. -/
@[simp] theorem receiverCompliancePathAt3677
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 3677 = rho 383 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 3677 = 383 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 3680. -/
@[simp] theorem receiverCompliancePathAt3680
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 3680 = rho 384 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 3680 = 384 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 4038. -/
@[simp] theorem receiverCompliancePathAt4038
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 4038 = rho 385 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 4038 = 385 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 4040. -/
@[simp] theorem receiverCompliancePathAt4040
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 4040 = rho 386 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 4040 = 386 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 4043. -/
@[simp] theorem receiverCompliancePathAt4043
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 4043 = rho 387 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 4043 = 387 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 4401. -/
@[simp] theorem receiverCompliancePathAt4401
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 4401 = rho 388 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 4401 = 388 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 4403. -/
@[simp] theorem receiverCompliancePathAt4403
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 4403 = rho 389 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 4403 = 389 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 4406. -/
@[simp] theorem receiverCompliancePathAt4406
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 4406 = rho 390 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 4406 = 390 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 4764. -/
@[simp] theorem receiverCompliancePathAt4764
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 4764 = rho 391 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 4764 = 391 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 4766. -/
@[simp] theorem receiverCompliancePathAt4766
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 4766 = rho 392 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 4766 = 392 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 4769. -/
@[simp] theorem receiverCompliancePathAt4769
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 4769 = rho 393 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 4769 = 393 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 5127. -/
@[simp] theorem receiverCompliancePathAt5127
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 5127 = rho 394 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 5127 = 394 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 5129. -/
@[simp] theorem receiverCompliancePathAt5129
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 5129 = rho 395 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 5129 = 395 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 5132. -/
@[simp] theorem receiverCompliancePathAt5132
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 5132 = rho 396 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 5132 = 396 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 5490. -/
@[simp] theorem receiverCompliancePathAt5490
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 5490 = rho 397 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 5490 = 397 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 5492. -/
@[simp] theorem receiverCompliancePathAt5492
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 5492 = rho 398 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 5492 = 398 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 5495. -/
@[simp] theorem receiverCompliancePathAt5495
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 5495 = rho 399 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 5495 = 399 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 5828. -/
@[simp] theorem receiverCompliancePathAt5828
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 5828 = rho 60262 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 5828 = 60262 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 5833. -/
@[simp] theorem receiverCompliancePathAt5833
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 5833 = rho 60267 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 5833 = 60267 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 5838. -/
@[simp] theorem receiverCompliancePathAt5838
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 5838 = rho 60272 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 5838 = 60272 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 5843. -/
@[simp] theorem receiverCompliancePathAt5843
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 5843 = rho 60277 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 5843 = 60277 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_path` local 5848. -/
@[simp] theorem receiverCompliancePathAt5848
    (rho : Nat → DeployedF) :
    ReceiverCompliancePathValuation rho 5848 = rho 60282 := by
  simp only [
    ReceiverCompliancePathValuation, Seg66.localRho,
    Deployed.Templates.seated]
  rw [show Seg66.wireSeating 5848 = 60282 by
    decide +kernel]

/-- Deployed seating for the `receiver_compliance_assert` certified local semantics. -/
def ReceiverComplianceAssertValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg67.localRho rho

/-- Certified local semantics for the `receiver_compliance_assert` source operation. -/
def ReceiverComplianceAssertSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d.spec (ReceiverComplianceAssertValuation rho)

/-- Audited action-facing seat for `receiver_compliance_assert` local 1. -/
@[simp] theorem receiverComplianceAssertAt1
    (rho : Nat → DeployedF) :
    ReceiverComplianceAssertValuation rho 1 = rho 11 := by
  simp only [
    ReceiverComplianceAssertValuation, Seg67.localRho,
    Deployed.Templates.seated]
  rw [show Seg67.wireSeating 1 = 11 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_assert` local 2. -/
@[simp] theorem receiverComplianceAssertAt2
    (rho : Nat → DeployedF) :
    ReceiverComplianceAssertValuation rho 2 = rho 8 := by
  simp only [
    ReceiverComplianceAssertValuation, Seg67.localRho,
    Deployed.Templates.seated]
  rw [show Seg67.wireSeating 2 = 8 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_assert` local 3. -/
@[simp] theorem receiverComplianceAssertAt3
    (rho : Nat → DeployedF) :
    ReceiverComplianceAssertValuation rho 3 = rho 60262 := by
  simp only [
    ReceiverComplianceAssertValuation, Seg67.localRho,
    Deployed.Templates.seated]
  rw [show Seg67.wireSeating 3 = 60262 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_assert` local 4. -/
@[simp] theorem receiverComplianceAssertAt4
    (rho : Nat → DeployedF) :
    ReceiverComplianceAssertValuation rho 4 = rho 60267 := by
  simp only [
    ReceiverComplianceAssertValuation, Seg67.localRho,
    Deployed.Templates.seated]
  rw [show Seg67.wireSeating 4 = 60267 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_assert` local 5. -/
@[simp] theorem receiverComplianceAssertAt5
    (rho : Nat → DeployedF) :
    ReceiverComplianceAssertValuation rho 5 = rho 60272 := by
  simp only [
    ReceiverComplianceAssertValuation, Seg67.localRho,
    Deployed.Templates.seated]
  rw [show Seg67.wireSeating 5 = 60272 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_assert` local 6. -/
@[simp] theorem receiverComplianceAssertAt6
    (rho : Nat → DeployedF) :
    ReceiverComplianceAssertValuation rho 6 = rho 60277 := by
  simp only [
    ReceiverComplianceAssertValuation, Seg67.localRho,
    Deployed.Templates.seated]
  rw [show Seg67.wireSeating 6 = 60277 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_compliance_assert` local 7. -/
@[simp] theorem receiverComplianceAssertAt7
    (rho : Nat → DeployedF) :
    ReceiverComplianceAssertValuation rho 7 = rho 60282 := by
  simp only [
    ReceiverComplianceAssertValuation, Seg67.localRho,
    Deployed.Templates.seated]
  rw [show Seg67.wireSeating 7 = 60282 by
    decide +kernel]

/-- Deployed seating for the `receiver_nonzero_assert` certified local semantics. -/
def ReceiverNonzeroAssertValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg68.localRho rho

/-- Certified local semantics for the `receiver_nonzero_assert` source operation. -/
def ReceiverNonzeroAssertSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd.spec (ReceiverNonzeroAssertValuation rho)

/-- Audited action-facing seat for `receiver_nonzero_assert` local 1. -/
@[simp] theorem receiverNonzeroAssertAt1
    (rho : Nat → DeployedF) :
    ReceiverNonzeroAssertValuation rho 1 = rho 52263 := by
  simp only [
    ReceiverNonzeroAssertValuation, Seg68.localRho,
    Deployed.Templates.seated]
  rw [show Seg68.wireSeating 1 = 52263 by
    decide +kernel]

/-- Deployed seating for the `receiver_ack` certified local semantics. -/
def ReceiverAckValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg69.localRho rho

/-- Certified local semantics for the `receiver_ack` source operation. -/
def ReceiverAckSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.spec (ReceiverAckValuation rho)

/-- Audited action-facing seat for `receiver_ack` local 252. -/
@[simp] theorem receiverAckAt252
    (rho : Nat → DeployedF) :
    ReceiverAckValuation rho 252 = rho 351 := by
  simp only [
    ReceiverAckValuation, Seg69.localRho,
    Deployed.Templates.seated]
  rw [show Seg69.wireSeating 252 = 351 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_ack` local 253. -/
@[simp] theorem receiverAckAt253
    (rho : Nat → DeployedF) :
    ReceiverAckValuation rho 253 = rho 407 := by
  simp only [
    ReceiverAckValuation, Seg69.localRho,
    Deployed.Templates.seated]
  rw [show Seg69.wireSeating 253 = 407 by
    decide +kernel]

/-- Audited action-facing seat for `receiver_ack` local 254. -/
@[simp] theorem receiverAckAt254
    (rho : Nat → DeployedF) :
    ReceiverAckValuation rho 254 = rho 408 := by
  simp only [
    ReceiverAckValuation, Seg69.localRho,
    Deployed.Templates.seated]
  rw [show Seg69.wireSeating 254 = 408 by
    decide +kernel]

/-- Deployed seating for the `change_note_commitment` certified local semantics. -/
def ChangeNoteCommitmentValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg72.localRho rho

/-- Certified local semantics for the `change_note_commitment` source operation. -/
def ChangeNoteCommitmentSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.spec (ChangeNoteCommitmentValuation rho)

/-- Audited action-facing seat for `change_note_commitment` local 1. -/
@[simp] theorem changeNoteCommitmentAt1
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 1 = rho 402 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 1 = 402 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_commitment` local 7. -/
@[simp] theorem changeNoteCommitmentAt7
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 7 = rho 403 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 7 = 403 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_commitment` local 13. -/
@[simp] theorem changeNoteCommitmentAt13
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 13 = rho 184 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 13 = 184 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_commitment` local 19. -/
@[simp] theorem changeNoteCommitmentAt19
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 19 = rho 777 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 19 = 777 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_commitment` local 20. -/
@[simp] theorem changeNoteCommitmentAt20
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 20 = rho 1117 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 20 = 1117 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_commitment` local 26. -/
@[simp] theorem changeNoteCommitmentAt26
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 26 = rho 1480 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 26 = 1480 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_commitment` local 27. -/
@[simp] theorem changeNoteCommitmentAt27
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 27 = rho 1820 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 27 = 1820 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_commitment` local 372. -/
@[simp] theorem changeNoteCommitmentAt372
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 372 = rho 63657 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 372 = 63657 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_commitment` local 377. -/
@[simp] theorem changeNoteCommitmentAt377
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 377 = rho 63662 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 377 = 63662 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_commitment` local 382. -/
@[simp] theorem changeNoteCommitmentAt382
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 382 = rho 63667 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 382 = 63667 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_commitment` local 387. -/
@[simp] theorem changeNoteCommitmentAt387
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 387 = rho 63672 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 387 = 63672 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_commitment` local 392. -/
@[simp] theorem changeNoteCommitmentAt392
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 392 = rho 63677 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 392 = 63677 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_commitment` local 397. -/
@[simp] theorem changeNoteCommitmentAt397
    (rho : Nat → DeployedF) :
    ChangeNoteCommitmentValuation rho 397 = rho 63682 := by
  simp only [
    ChangeNoteCommitmentValuation, Seg72.localRho,
    Deployed.Templates.seated]
  rw [show Seg72.wireSeating 397 = 63682 by
    decide +kernel]

/-- Deployed seating for the `change_note_assert` certified local semantics. -/
def ChangeNoteAssertValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg73.localRho rho

/-- Certified local semantics for the `change_note_assert` source operation. -/
def ChangeNoteAssertSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.spec (ChangeNoteAssertValuation rho)

/-- Audited action-facing seat for `change_note_assert` local 1. -/
@[simp] theorem changeNoteAssertAt1
    (rho : Nat → DeployedF) :
    ChangeNoteAssertValuation rho 1 = rho 63657 := by
  simp only [
    ChangeNoteAssertValuation, Seg73.localRho,
    Deployed.Templates.seated]
  rw [show Seg73.wireSeating 1 = 63657 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_assert` local 2. -/
@[simp] theorem changeNoteAssertAt2
    (rho : Nat → DeployedF) :
    ChangeNoteAssertValuation rho 2 = rho 63662 := by
  simp only [
    ChangeNoteAssertValuation, Seg73.localRho,
    Deployed.Templates.seated]
  rw [show Seg73.wireSeating 2 = 63662 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_assert` local 3. -/
@[simp] theorem changeNoteAssertAt3
    (rho : Nat → DeployedF) :
    ChangeNoteAssertValuation rho 3 = rho 63667 := by
  simp only [
    ChangeNoteAssertValuation, Seg73.localRho,
    Deployed.Templates.seated]
  rw [show Seg73.wireSeating 3 = 63667 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_assert` local 4. -/
@[simp] theorem changeNoteAssertAt4
    (rho : Nat → DeployedF) :
    ChangeNoteAssertValuation rho 4 = rho 63672 := by
  simp only [
    ChangeNoteAssertValuation, Seg73.localRho,
    Deployed.Templates.seated]
  rw [show Seg73.wireSeating 4 = 63672 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_assert` local 5. -/
@[simp] theorem changeNoteAssertAt5
    (rho : Nat → DeployedF) :
    ChangeNoteAssertValuation rho 5 = rho 63677 := by
  simp only [
    ChangeNoteAssertValuation, Seg73.localRho,
    Deployed.Templates.seated]
  rw [show Seg73.wireSeating 5 = 63677 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_assert` local 6. -/
@[simp] theorem changeNoteAssertAt6
    (rho : Nat → DeployedF) :
    ChangeNoteAssertValuation rho 6 = rho 63682 := by
  simp only [
    ChangeNoteAssertValuation, Seg73.localRho,
    Deployed.Templates.seated]
  rw [show Seg73.wireSeating 6 = 63682 by
    decide +kernel]

/-- Audited action-facing seat for `change_note_assert` local 7. -/
@[simp] theorem changeNoteAssertAt7
    (rho : Nat → DeployedF) :
    ChangeNoteAssertValuation rho 7 = rho 401 := by
  simp only [
    ChangeNoteAssertValuation, Seg73.localRho,
    Deployed.Templates.seated]
  rw [show Seg73.wireSeating 7 = 401 by
    decide +kernel]

/-- Deployed seating for the `routing_precision_select` certified local semantics. -/
def RoutingPrecisionSelectValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg74.localRho rho

/-- Certified local semantics for the `routing_precision_select` source operation. -/
def RoutingPrecisionSelectSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingPrecisionSelect_125b62f4637be641a0e83ca5b67e6b0fde3dc4a203b53954c10e341830651161.spec (RoutingPrecisionSelectValuation rho)

/-- Deployed seating for the `routing_parameters_hash` certified local semantics. -/
def RoutingParametersHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg75.localRho rho

/-- Certified local semantics for the `routing_parameters_hash` source operation. -/
def RoutingParametersHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingParametersHash_4ac07381879f7b48f8431947af1db1328923b54907622f47df5426e5ea9b6653.spec (RoutingParametersHashValuation rho)

/-- Deployed seating for the `routing_parameters_bind` certified local semantics. -/
def RoutingParametersBindValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg76.localRho rho

/-- Certified local semantics for the `routing_parameters_bind` source operation. -/
def RoutingParametersBindSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.spec (RoutingParametersBindValuation rho)

/-- Deployed seating for the `routing_sender_route_word` certified local semantics. -/
def RoutingSenderRouteWordValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg77.localRho rho

/-- Certified local semantics for the `routing_sender_route_word` source operation. -/
def RoutingSenderRouteWordSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279.spec (RoutingSenderRouteWordValuation rho)

/-- Deployed seating for the `routing_receiver_route_word` certified local semantics. -/
def RoutingReceiverRouteWordValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg78.localRho rho

/-- Certified local semantics for the `routing_receiver_route_word` source operation. -/
def RoutingReceiverRouteWordSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279.spec (RoutingReceiverRouteWordValuation rho)

/-- Deployed seating for the `routing_permutation_hash` certified local semantics. -/
def RoutingPermutationHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg79.localRho rho

/-- Certified local semantics for the `routing_permutation_hash` source operation. -/
def RoutingPermutationHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingPermutationHash_e192a8182110fdbc13b07c4a18e32a203dbb18e8203962744b80b191a845a030.spec (RoutingPermutationHashValuation rho)

/-- Deployed seating for the `routing_permutation_compose` certified local semantics. -/
def RoutingPermutationComposeValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg80.localRho rho

/-- Certified local semantics for the `routing_permutation_compose` source operation. -/
def RoutingPermutationComposeSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingPermutationCompose_38126e47de90298f59bd17b5452e92d8d2b20161cbaf377aef252b7e1fe3c573.spec (RoutingPermutationComposeValuation rho)

/-- Deployed seating for the `routing_tag0_public_range` certified local semantics. -/
def RoutingTag0PublicRangeValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg81.localRho rho

/-- Certified local semantics for the `routing_tag0_public_range` source operation. -/
def RoutingTag0PublicRangeSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227.spec (RoutingTag0PublicRangeValuation rho)

/-- Deployed seating for the `routing_tag0_route_bits` certified local semantics. -/
def RoutingTag0RouteBitsValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg82.localRho rho

/-- Certified local semantics for the `routing_tag0_route_bits` source operation. -/
def RoutingTag0RouteBitsSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374.spec (RoutingTag0RouteBitsValuation rho)

/-- Deployed seating for the `routing_tag0_random_word` certified local semantics. -/
def RoutingTag0RandomWordValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg83.localRho rho

/-- Certified local semantics for the `routing_tag0_random_word` source operation. -/
def RoutingTag0RandomWordSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingTagRandomWord_4480567d0ad9109ab45843d493f32a0ed4ed6acebd0be5471905902706d09764.spec (RoutingTag0RandomWordValuation rho)

/-- Deployed seating for the `routing_tag0_compose` certified local semantics. -/
def RoutingTag0ComposeValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg84.localRho rho

/-- Certified local semantics for the `routing_tag0_compose` source operation. -/
def RoutingTag0ComposeSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingTagCompose_96b7bad6a126477ad863859abf885df171ba39077e195c445287f1fe7feb8aed.spec (RoutingTag0ComposeValuation rho)

/-- Deployed seating for the `routing_tag1_public_range` certified local semantics. -/
def RoutingTag1PublicRangeValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg85.localRho rho

/-- Certified local semantics for the `routing_tag1_public_range` source operation. -/
def RoutingTag1PublicRangeSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227.spec (RoutingTag1PublicRangeValuation rho)

/-- Deployed seating for the `routing_tag1_route_bits` certified local semantics. -/
def RoutingTag1RouteBitsValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg86.localRho rho

/-- Certified local semantics for the `routing_tag1_route_bits` source operation. -/
def RoutingTag1RouteBitsSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374.spec (RoutingTag1RouteBitsValuation rho)

/-- Deployed seating for the `routing_tag1_random_word` certified local semantics. -/
def RoutingTag1RandomWordValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg87.localRho rho

/-- Certified local semantics for the `routing_tag1_random_word` source operation. -/
def RoutingTag1RandomWordSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingTagRandomWord_214c257798ce9ea73b964e6f1d8353234a318db1530ede36af2658731198a3fd.spec (RoutingTag1RandomWordValuation rho)

/-- Deployed seating for the `routing_tag1_compose` certified local semantics. -/
def RoutingTag1ComposeValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg88.localRho rho

/-- Certified local semantics for the `routing_tag1_compose` source operation. -/
def RoutingTag1ComposeSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TRoutingTagCompose_693a5e7e265dd4badbbd5ea9a64eb22c4ba3b423d34f08e4ae1f94375a8d3fbb.spec (RoutingTag1ComposeValuation rho)

/-- Deployed seating for the `threshold_flag` certified local semantics. -/
def ThresholdFlagValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg91.localRho rho

/-- Certified local semantics for the `threshold_flag` source operation. -/
def ThresholdFlagSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202.spec (ThresholdFlagValuation rho)

/-- Audited action-facing seat for `threshold_flag` local 129. -/
@[simp] theorem thresholdFlagAt129
    (rho : Nat → DeployedF) :
    ThresholdFlagValuation rho 129 = rho 344 := by
  simp only [
    ThresholdFlagValuation, Seg91.localRho,
    Deployed.Templates.seated]
  rw [show Seg91.wireSeating 129 = 344 by
    decide +kernel]

/-- Audited action-facing seat for `threshold_flag` local 258. -/
@[simp] theorem thresholdFlagAt258
    (rho : Nat → DeployedF) :
    ThresholdFlagValuation rho 258 = rho 25 := by
  simp only [
    ThresholdFlagValuation, Seg91.localRho,
    Deployed.Templates.seated]
  rw [show Seg91.wireSeating 258 = 25 by
    decide +kernel]

/-- Audited action-facing seat for `threshold_flag` local 896. -/
@[simp] theorem thresholdFlagAt896
    (rho : Nat → DeployedF) :
    ThresholdFlagValuation rho 896 = rho 11 := by
  simp only [
    ThresholdFlagValuation, Seg91.localRho,
    Deployed.Templates.seated]
  rw [show Seg91.wireSeating 896 = 11 by
    decide +kernel]

/-- Audited action-facing seat for `threshold_flag` local 897. -/
@[simp] theorem thresholdFlagAt897
    (rho : Nat → DeployedF) :
    ThresholdFlagValuation rho 897 = rho 68693 := by
  simp only [
    ThresholdFlagValuation, Seg91.localRho,
    Deployed.Templates.seated]
  rw [show Seg91.wireSeating 897 = 68693 by
    decide +kernel]

/-- Deployed seating for the `sender_core_epk_compress` certified local semantics. -/
def SenderCoreEpkCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg92.localRho rho

/-- Certified local semantics for the `sender_core_epk_compress` source operation. -/
def SenderCoreEpkCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (SenderCoreEpkCompressValuation rho)

/-- Audited action-facing seat for `sender_core_epk_compress` local 1. -/
@[simp] theorem senderCoreEpkCompressAt1
    (rho : Nat → DeployedF) :
    SenderCoreEpkCompressValuation rho 1 = rho 159 := by
  simp only [
    SenderCoreEpkCompressValuation, Seg92.localRho,
    Deployed.Templates.seated]
  rw [show Seg92.wireSeating 1 = 159 by
    decide +kernel]

/-- Audited action-facing seat for `sender_core_epk_compress` local 3. -/
@[simp] theorem senderCoreEpkCompressAt3
    (rho : Nat → DeployedF) :
    SenderCoreEpkCompressValuation rho 3 = rho 160 := by
  simp only [
    SenderCoreEpkCompressValuation, Seg92.localRho,
    Deployed.Templates.seated]
  rw [show Seg92.wireSeating 3 = 160 by
    decide +kernel]

/-- Audited action-facing seat for `sender_core_epk_compress` local 365. -/
@[simp] theorem senderCoreEpkCompressAt365
    (rho : Nat → DeployedF) :
    SenderCoreEpkCompressValuation rho 365 = rho 69056 := by
  simp only [
    SenderCoreEpkCompressValuation, Seg92.localRho,
    Deployed.Templates.seated]
  rw [show Seg92.wireSeating 365 = 69056 by
    decide +kernel]

/-- Audited action-facing seat for `sender_core_epk_compress` local 705. -/
@[simp] theorem senderCoreEpkCompressAt705
    (rho : Nat → DeployedF) :
    SenderCoreEpkCompressValuation rho 705 = rho 69396 := by
  simp only [
    SenderCoreEpkCompressValuation, Seg92.localRho,
    Deployed.Templates.seated]
  rw [show Seg92.wireSeating 705 = 69396 by
    decide +kernel]

/-- Deployed seating for the `sender_ext_epk_compress` certified local semantics. -/
def SenderExtEpkCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg93.localRho rho

/-- Certified local semantics for the `sender_ext_epk_compress` source operation. -/
def SenderExtEpkCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (SenderExtEpkCompressValuation rho)

/-- Audited action-facing seat for `sender_ext_epk_compress` local 1. -/
@[simp] theorem senderExtEpkCompressAt1
    (rho : Nat → DeployedF) :
    SenderExtEpkCompressValuation rho 1 = rho 163 := by
  simp only [
    SenderExtEpkCompressValuation, Seg93.localRho,
    Deployed.Templates.seated]
  rw [show Seg93.wireSeating 1 = 163 by
    decide +kernel]

/-- Audited action-facing seat for `sender_ext_epk_compress` local 3. -/
@[simp] theorem senderExtEpkCompressAt3
    (rho : Nat → DeployedF) :
    SenderExtEpkCompressValuation rho 3 = rho 164 := by
  simp only [
    SenderExtEpkCompressValuation, Seg93.localRho,
    Deployed.Templates.seated]
  rw [show Seg93.wireSeating 3 = 164 by
    decide +kernel]

/-- Audited action-facing seat for `sender_ext_epk_compress` local 365. -/
@[simp] theorem senderExtEpkCompressAt365
    (rho : Nat → DeployedF) :
    SenderExtEpkCompressValuation rho 365 = rho 69759 := by
  simp only [
    SenderExtEpkCompressValuation, Seg93.localRho,
    Deployed.Templates.seated]
  rw [show Seg93.wireSeating 365 = 69759 by
    decide +kernel]

/-- Audited action-facing seat for `sender_ext_epk_compress` local 705. -/
@[simp] theorem senderExtEpkCompressAt705
    (rho : Nat → DeployedF) :
    SenderExtEpkCompressValuation rho 705 = rho 70099 := by
  simp only [
    SenderExtEpkCompressValuation, Seg93.localRho,
    Deployed.Templates.seated]
  rw [show Seg93.wireSeating 705 = 70099 by
    decide +kernel]

/-- Deployed seating for the `output_core_epk_compress` certified local semantics. -/
def OutputCoreEpkCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg94.localRho rho

/-- Certified local semantics for the `output_core_epk_compress` source operation. -/
def OutputCoreEpkCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (OutputCoreEpkCompressValuation rho)

/-- Audited action-facing seat for `output_core_epk_compress` local 1. -/
@[simp] theorem outputCoreEpkCompressAt1
    (rho : Nat → DeployedF) :
    OutputCoreEpkCompressValuation rho 1 = rho 169 := by
  simp only [
    OutputCoreEpkCompressValuation, Seg94.localRho,
    Deployed.Templates.seated]
  rw [show Seg94.wireSeating 1 = 169 by
    decide +kernel]

/-- Audited action-facing seat for `output_core_epk_compress` local 3. -/
@[simp] theorem outputCoreEpkCompressAt3
    (rho : Nat → DeployedF) :
    OutputCoreEpkCompressValuation rho 3 = rho 170 := by
  simp only [
    OutputCoreEpkCompressValuation, Seg94.localRho,
    Deployed.Templates.seated]
  rw [show Seg94.wireSeating 3 = 170 by
    decide +kernel]

/-- Audited action-facing seat for `output_core_epk_compress` local 365. -/
@[simp] theorem outputCoreEpkCompressAt365
    (rho : Nat → DeployedF) :
    OutputCoreEpkCompressValuation rho 365 = rho 70462 := by
  simp only [
    OutputCoreEpkCompressValuation, Seg94.localRho,
    Deployed.Templates.seated]
  rw [show Seg94.wireSeating 365 = 70462 by
    decide +kernel]

/-- Audited action-facing seat for `output_core_epk_compress` local 705. -/
@[simp] theorem outputCoreEpkCompressAt705
    (rho : Nat → DeployedF) :
    OutputCoreEpkCompressValuation rho 705 = rho 70802 := by
  simp only [
    OutputCoreEpkCompressValuation, Seg94.localRho,
    Deployed.Templates.seated]
  rw [show Seg94.wireSeating 705 = 70802 by
    decide +kernel]

/-- Deployed seating for the `output_ext_epk_compress` certified local semantics. -/
def OutputExtEpkCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg95.localRho rho

/-- Certified local semantics for the `output_ext_epk_compress` source operation. -/
def OutputExtEpkCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (OutputExtEpkCompressValuation rho)

/-- Audited action-facing seat for `output_ext_epk_compress` local 1. -/
@[simp] theorem outputExtEpkCompressAt1
    (rho : Nat → DeployedF) :
    OutputExtEpkCompressValuation rho 1 = rho 173 := by
  simp only [
    OutputExtEpkCompressValuation, Seg95.localRho,
    Deployed.Templates.seated]
  rw [show Seg95.wireSeating 1 = 173 by
    decide +kernel]

/-- Audited action-facing seat for `output_ext_epk_compress` local 3. -/
@[simp] theorem outputExtEpkCompressAt3
    (rho : Nat → DeployedF) :
    OutputExtEpkCompressValuation rho 3 = rho 174 := by
  simp only [
    OutputExtEpkCompressValuation, Seg95.localRho,
    Deployed.Templates.seated]
  rw [show Seg95.wireSeating 3 = 174 by
    decide +kernel]

/-- Audited action-facing seat for `output_ext_epk_compress` local 365. -/
@[simp] theorem outputExtEpkCompressAt365
    (rho : Nat → DeployedF) :
    OutputExtEpkCompressValuation rho 365 = rho 71165 := by
  simp only [
    OutputExtEpkCompressValuation, Seg95.localRho,
    Deployed.Templates.seated]
  rw [show Seg95.wireSeating 365 = 71165 by
    decide +kernel]

/-- Audited action-facing seat for `output_ext_epk_compress` local 705. -/
@[simp] theorem outputExtEpkCompressAt705
    (rho : Nat → DeployedF) :
    OutputExtEpkCompressValuation rho 705 = rho 71505 := by
  simp only [
    OutputExtEpkCompressValuation, Seg95.localRho,
    Deployed.Templates.seated]
  rw [show Seg95.wireSeating 705 = 71505 by
    decide +kernel]

/-- Deployed seating for the `salt0` certified local semantics. -/
def Salt0Valuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg96.localRho rho

/-- Certified local semantics for the `salt0` source operation. -/
def Salt0SemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetTransferSalt_f771a421e77b34e798b9a3684411305ddf046c31c0dcdd45f55a3341904f59c7.spec (Salt0Valuation rho)

/-- Audited action-facing seat for `salt0` local 1. -/
@[simp] theorem salt0At1
    (rho : Nat → DeployedF) :
    Salt0Valuation rho 1 = rho 139 := by
  simp only [
    Salt0Valuation, Seg96.localRho,
    Deployed.Templates.seated]
  rw [show Seg96.wireSeating 1 = 139 by
    decide +kernel]

/-- Audited action-facing seat for `salt0` local 256. -/
@[simp] theorem salt0At256
    (rho : Nat → DeployedF) :
    Salt0Valuation rho 256 = rho 71760 := by
  simp only [
    Salt0Valuation, Seg96.localRho,
    Deployed.Templates.seated]
  rw [show Seg96.wireSeating 256 = 71760 by
    decide +kernel]

/-- Audited action-facing seat for `salt0` local 261. -/
@[simp] theorem salt0At261
    (rho : Nat → DeployedF) :
    Salt0Valuation rho 261 = rho 71765 := by
  simp only [
    Salt0Valuation, Seg96.localRho,
    Deployed.Templates.seated]
  rw [show Seg96.wireSeating 261 = 71765 by
    decide +kernel]

/-- Audited action-facing seat for `salt0` local 266. -/
@[simp] theorem salt0At266
    (rho : Nat → DeployedF) :
    Salt0Valuation rho 266 = rho 71770 := by
  simp only [
    Salt0Valuation, Seg96.localRho,
    Deployed.Templates.seated]
  rw [show Seg96.wireSeating 266 = 71770 by
    decide +kernel]

/-- Deployed seating for the `salt1` certified local semantics. -/
def Salt1Valuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg97.localRho rho

/-- Certified local semantics for the `salt1` source operation. -/
def Salt1SemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetTransferSalt_6102356f10803bf3a14c647c07a6804c8be9ed25097c1247a5f07e703b892326.spec (Salt1Valuation rho)

/-- Audited action-facing seat for `salt1` local 1. -/
@[simp] theorem salt1At1
    (rho : Nat → DeployedF) :
    Salt1Valuation rho 1 = rho 139 := by
  simp only [
    Salt1Valuation, Seg97.localRho,
    Deployed.Templates.seated]
  rw [show Seg97.wireSeating 1 = 139 by
    decide +kernel]

/-- Audited action-facing seat for `salt1` local 256. -/
@[simp] theorem salt1At256
    (rho : Nat → DeployedF) :
    Salt1Valuation rho 256 = rho 72025 := by
  simp only [
    Salt1Valuation, Seg97.localRho,
    Deployed.Templates.seated]
  rw [show Seg97.wireSeating 256 = 72025 by
    decide +kernel]

/-- Audited action-facing seat for `salt1` local 261. -/
@[simp] theorem salt1At261
    (rho : Nat → DeployedF) :
    Salt1Valuation rho 261 = rho 72030 := by
  simp only [
    Salt1Valuation, Seg97.localRho,
    Deployed.Templates.seated]
  rw [show Seg97.wireSeating 261 = 72030 by
    decide +kernel]

/-- Audited action-facing seat for `salt1` local 266. -/
@[simp] theorem salt1At266
    (rho : Nat → DeployedF) :
    Salt1Valuation rho 266 = rho 72035 := by
  simp only [
    Salt1Valuation, Seg97.localRho,
    Deployed.Templates.seated]
  rw [show Seg97.wireSeating 266 = 72035 by
    decide +kernel]

/-- Deployed seating for the `salt2` certified local semantics. -/
def Salt2Valuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg98.localRho rho

/-- Certified local semantics for the `salt2` source operation. -/
def Salt2SemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetTransferSalt_7ca1f127ae2aba8ae3ff0daa0762a2981d18913d868dc2742d5a74f22684c557.spec (Salt2Valuation rho)

/-- Audited action-facing seat for `salt2` local 1. -/
@[simp] theorem salt2At1
    (rho : Nat → DeployedF) :
    Salt2Valuation rho 1 = rho 139 := by
  simp only [
    Salt2Valuation, Seg98.localRho,
    Deployed.Templates.seated]
  rw [show Seg98.wireSeating 1 = 139 by
    decide +kernel]

/-- Audited action-facing seat for `salt2` local 256. -/
@[simp] theorem salt2At256
    (rho : Nat → DeployedF) :
    Salt2Valuation rho 256 = rho 72290 := by
  simp only [
    Salt2Valuation, Seg98.localRho,
    Deployed.Templates.seated]
  rw [show Seg98.wireSeating 256 = 72290 by
    decide +kernel]

/-- Audited action-facing seat for `salt2` local 261. -/
@[simp] theorem salt2At261
    (rho : Nat → DeployedF) :
    Salt2Valuation rho 261 = rho 72295 := by
  simp only [
    Salt2Valuation, Seg98.localRho,
    Deployed.Templates.seated]
  rw [show Seg98.wireSeating 261 = 72295 by
    decide +kernel]

/-- Audited action-facing seat for `salt2` local 266. -/
@[simp] theorem salt2At266
    (rho : Nat → DeployedF) :
    Salt2Valuation rho 266 = rho 72300 := by
  simp only [
    Salt2Valuation, Seg98.localRho,
    Deployed.Templates.seated]
  rw [show Seg98.wireSeating 266 = 72300 by
    decide +kernel]

/-- Deployed seating for the `salt3` certified local semantics. -/
def Salt3Valuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg99.localRho rho

/-- Certified local semantics for the `salt3` source operation. -/
def Salt3SemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetTransferSalt_afc1dab7ce4cb1d665f58c0e62c3211c7152d792a45bd80acbbe3444a7be5d4e.spec (Salt3Valuation rho)

/-- Audited action-facing seat for `salt3` local 1. -/
@[simp] theorem salt3At1
    (rho : Nat → DeployedF) :
    Salt3Valuation rho 1 = rho 139 := by
  simp only [
    Salt3Valuation, Seg99.localRho,
    Deployed.Templates.seated]
  rw [show Seg99.wireSeating 1 = 139 by
    decide +kernel]

/-- Audited action-facing seat for `salt3` local 256. -/
@[simp] theorem salt3At256
    (rho : Nat → DeployedF) :
    Salt3Valuation rho 256 = rho 72555 := by
  simp only [
    Salt3Valuation, Seg99.localRho,
    Deployed.Templates.seated]
  rw [show Seg99.wireSeating 256 = 72555 by
    decide +kernel]

/-- Audited action-facing seat for `salt3` local 261. -/
@[simp] theorem salt3At261
    (rho : Nat → DeployedF) :
    Salt3Valuation rho 261 = rho 72560 := by
  simp only [
    Salt3Valuation, Seg99.localRho,
    Deployed.Templates.seated]
  rw [show Seg99.wireSeating 261 = 72560 by
    decide +kernel]

/-- Audited action-facing seat for `salt3` local 266. -/
@[simp] theorem salt3At266
    (rho : Nat → DeployedF) :
    Salt3Valuation rho 266 = rho 72565 := by
  simp only [
    Salt3Valuation, Seg99.localRho,
    Deployed.Templates.seated]
  rw [show Seg99.wireSeating 266 = 72565 by
    decide +kernel]

/-- Deployed seating for the `salt4` certified local semantics. -/
def Salt4Valuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg100.localRho rho

/-- Certified local semantics for the `salt4` source operation. -/
def Salt4SemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetTransferSalt_c897628fb413fa804e577bd04151d6ba3b460e6052b87493c17e1529720c3945.spec (Salt4Valuation rho)

/-- Audited action-facing seat for `salt4` local 1. -/
@[simp] theorem salt4At1
    (rho : Nat → DeployedF) :
    Salt4Valuation rho 1 = rho 139 := by
  simp only [
    Salt4Valuation, Seg100.localRho,
    Deployed.Templates.seated]
  rw [show Seg100.wireSeating 1 = 139 by
    decide +kernel]

/-- Audited action-facing seat for `salt4` local 256. -/
@[simp] theorem salt4At256
    (rho : Nat → DeployedF) :
    Salt4Valuation rho 256 = rho 72820 := by
  simp only [
    Salt4Valuation, Seg100.localRho,
    Deployed.Templates.seated]
  rw [show Seg100.wireSeating 256 = 72820 by
    decide +kernel]

/-- Audited action-facing seat for `salt4` local 261. -/
@[simp] theorem salt4At261
    (rho : Nat → DeployedF) :
    Salt4Valuation rho 261 = rho 72825 := by
  simp only [
    Salt4Valuation, Seg100.localRho,
    Deployed.Templates.seated]
  rw [show Seg100.wireSeating 261 = 72825 by
    decide +kernel]

/-- Audited action-facing seat for `salt4` local 266. -/
@[simp] theorem salt4At266
    (rho : Nat → DeployedF) :
    Salt4Valuation rho 266 = rho 72830 := by
  simp only [
    Salt4Valuation, Seg100.localRho,
    Deployed.Templates.seated]
  rw [show Seg100.wireSeating 266 = 72830 by
    decide +kernel]

/-- Deployed seating for the `sender_core_shared_secret` certified local semantics. -/
def SenderCoreSharedSecretValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg101.localRho rho

/-- Certified local semantics for the `sender_core_shared_secret` source operation. -/
def SenderCoreSharedSecretSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.spec (SenderCoreSharedSecretValuation rho)

/-- Audited action-facing seat for `sender_core_shared_secret` local 1. -/
@[simp] theorem senderCoreSharedSecretAt1
    (rho : Nat → DeployedF) :
    SenderCoreSharedSecretValuation rho 1 = rho 68693 := by
  simp only [
    SenderCoreSharedSecretValuation, Seg101.localRho,
    Deployed.Templates.seated]
  rw [show Seg101.wireSeating 1 = 68693 by
    decide +kernel]

/-- Audited action-facing seat for `sender_core_shared_secret` local 253. -/
@[simp] theorem senderCoreSharedSecretAt253
    (rho : Nat → DeployedF) :
    SenderCoreSharedSecretValuation rho 253 = rho 155 := by
  simp only [
    SenderCoreSharedSecretValuation, Seg101.localRho,
    Deployed.Templates.seated]
  rw [show Seg101.wireSeating 253 = 155 by
    decide +kernel]

/-- Audited action-facing seat for `sender_core_shared_secret` local 1807. -/
@[simp] theorem senderCoreSharedSecretAt1807
    (rho : Nat → DeployedF) :
    SenderCoreSharedSecretValuation rho 1807 = rho 160 := by
  simp only [
    SenderCoreSharedSecretValuation, Seg101.localRho,
    Deployed.Templates.seated]
  rw [show Seg101.wireSeating 1807 = 160 by
    decide +kernel]

/-- Audited action-facing seat for `sender_core_shared_secret` local 1809. -/
@[simp] theorem senderCoreSharedSecretAt1809
    (rho : Nat → DeployedF) :
    SenderCoreSharedSecretValuation rho 1809 = rho 159 := by
  simp only [
    SenderCoreSharedSecretValuation, Seg101.localRho,
    Deployed.Templates.seated]
  rw [show Seg101.wireSeating 1809 = 159 by
    decide +kernel]

/-- Audited action-facing seat for `sender_core_shared_secret` local 4573. -/
@[simp] theorem senderCoreSharedSecretAt4573
    (rho : Nat → DeployedF) :
    SenderCoreSharedSecretValuation rho 4573 = rho 409 := by
  simp only [
    SenderCoreSharedSecretValuation, Seg101.localRho,
    Deployed.Templates.seated]
  rw [show Seg101.wireSeating 4573 = 409 by
    decide +kernel]

/-- Audited action-facing seat for `sender_core_shared_secret` local 4574. -/
@[simp] theorem senderCoreSharedSecretAt4574
    (rho : Nat → DeployedF) :
    SenderCoreSharedSecretValuation rho 4574 = rho 410 := by
  simp only [
    SenderCoreSharedSecretValuation, Seg101.localRho,
    Deployed.Templates.seated]
  rw [show Seg101.wireSeating 4574 = 410 by
    decide +kernel]

/-- Deployed seating for the `sender_ext_shared_secret` certified local semantics. -/
def SenderExtSharedSecretValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg102.localRho rho

/-- Certified local semantics for the `sender_ext_shared_secret` source operation. -/
def SenderExtSharedSecretSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.spec (SenderExtSharedSecretValuation rho)

/-- Audited action-facing seat for `sender_ext_shared_secret` local 252. -/
@[simp] theorem senderExtSharedSecretAt252
    (rho : Nat → DeployedF) :
    SenderExtSharedSecretValuation rho 252 = rho 156 := by
  simp only [
    SenderExtSharedSecretValuation, Seg102.localRho,
    Deployed.Templates.seated]
  rw [show Seg102.wireSeating 252 = 156 by
    decide +kernel]

/-- Audited action-facing seat for `sender_ext_shared_secret` local 1806. -/
@[simp] theorem senderExtSharedSecretAt1806
    (rho : Nat → DeployedF) :
    SenderExtSharedSecretValuation rho 1806 = rho 164 := by
  simp only [
    SenderExtSharedSecretValuation, Seg102.localRho,
    Deployed.Templates.seated]
  rw [show Seg102.wireSeating 1806 = 164 by
    decide +kernel]

/-- Audited action-facing seat for `sender_ext_shared_secret` local 1808. -/
@[simp] theorem senderExtSharedSecretAt1808
    (rho : Nat → DeployedF) :
    SenderExtSharedSecretValuation rho 1808 = rho 163 := by
  simp only [
    SenderExtSharedSecretValuation, Seg102.localRho,
    Deployed.Templates.seated]
  rw [show Seg102.wireSeating 1808 = 163 by
    decide +kernel]

/-- Audited action-facing seat for `sender_ext_shared_secret` local 4572. -/
@[simp] theorem senderExtSharedSecretAt4572
    (rho : Nat → DeployedF) :
    SenderExtSharedSecretValuation rho 4572 = rho 409 := by
  simp only [
    SenderExtSharedSecretValuation, Seg102.localRho,
    Deployed.Templates.seated]
  rw [show Seg102.wireSeating 4572 = 409 by
    decide +kernel]

/-- Audited action-facing seat for `sender_ext_shared_secret` local 4573. -/
@[simp] theorem senderExtSharedSecretAt4573
    (rho : Nat → DeployedF) :
    SenderExtSharedSecretValuation rho 4573 = rho 410 := by
  simp only [
    SenderExtSharedSecretValuation, Seg102.localRho,
    Deployed.Templates.seated]
  rw [show Seg102.wireSeating 4573 = 410 by
    decide +kernel]

/-- Audited action-facing seat for `sender_ext_shared_secret` local 7332. -/
@[simp] theorem senderExtSharedSecretAt7332
    (rho : Nat → DeployedF) :
    SenderExtSharedSecretValuation rho 7332 = rho 68693 := by
  simp only [
    SenderExtSharedSecretValuation, Seg102.localRho,
    Deployed.Templates.seated]
  rw [show Seg102.wireSeating 7332 = 68693 by
    decide +kernel]

/-- Deployed seating for the `output_core_shared_secret` certified local semantics. -/
def OutputCoreSharedSecretValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg103.localRho rho

/-- Certified local semantics for the `output_core_shared_secret` source operation. -/
def OutputCoreSharedSecretSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.spec (OutputCoreSharedSecretValuation rho)

/-- Audited action-facing seat for `output_core_shared_secret` local 252. -/
@[simp] theorem outputCoreSharedSecretAt252
    (rho : Nat → DeployedF) :
    OutputCoreSharedSecretValuation rho 252 = rho 157 := by
  simp only [
    OutputCoreSharedSecretValuation, Seg103.localRho,
    Deployed.Templates.seated]
  rw [show Seg103.wireSeating 252 = 157 by
    decide +kernel]

/-- Audited action-facing seat for `output_core_shared_secret` local 1806. -/
@[simp] theorem outputCoreSharedSecretAt1806
    (rho : Nat → DeployedF) :
    OutputCoreSharedSecretValuation rho 1806 = rho 170 := by
  simp only [
    OutputCoreSharedSecretValuation, Seg103.localRho,
    Deployed.Templates.seated]
  rw [show Seg103.wireSeating 1806 = 170 by
    decide +kernel]

/-- Audited action-facing seat for `output_core_shared_secret` local 1808. -/
@[simp] theorem outputCoreSharedSecretAt1808
    (rho : Nat → DeployedF) :
    OutputCoreSharedSecretValuation rho 1808 = rho 169 := by
  simp only [
    OutputCoreSharedSecretValuation, Seg103.localRho,
    Deployed.Templates.seated]
  rw [show Seg103.wireSeating 1808 = 169 by
    decide +kernel]

/-- Audited action-facing seat for `output_core_shared_secret` local 4572. -/
@[simp] theorem outputCoreSharedSecretAt4572
    (rho : Nat → DeployedF) :
    OutputCoreSharedSecretValuation rho 4572 = rho 409 := by
  simp only [
    OutputCoreSharedSecretValuation, Seg103.localRho,
    Deployed.Templates.seated]
  rw [show Seg103.wireSeating 4572 = 409 by
    decide +kernel]

/-- Audited action-facing seat for `output_core_shared_secret` local 4573. -/
@[simp] theorem outputCoreSharedSecretAt4573
    (rho : Nat → DeployedF) :
    OutputCoreSharedSecretValuation rho 4573 = rho 410 := by
  simp only [
    OutputCoreSharedSecretValuation, Seg103.localRho,
    Deployed.Templates.seated]
  rw [show Seg103.wireSeating 4573 = 410 by
    decide +kernel]

/-- Audited action-facing seat for `output_core_shared_secret` local 7332. -/
@[simp] theorem outputCoreSharedSecretAt7332
    (rho : Nat → DeployedF) :
    OutputCoreSharedSecretValuation rho 7332 = rho 68693 := by
  simp only [
    OutputCoreSharedSecretValuation, Seg103.localRho,
    Deployed.Templates.seated]
  rw [show Seg103.wireSeating 7332 = 68693 by
    decide +kernel]

/-- Deployed seating for the `output_ext_shared_secret` certified local semantics. -/
def OutputExtSharedSecretValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg104.localRho rho

/-- Certified local semantics for the `output_ext_shared_secret` source operation. -/
def OutputExtSharedSecretSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.spec (OutputExtSharedSecretValuation rho)

/-- Audited action-facing seat for `output_ext_shared_secret` local 252. -/
@[simp] theorem outputExtSharedSecretAt252
    (rho : Nat → DeployedF) :
    OutputExtSharedSecretValuation rho 252 = rho 158 := by
  simp only [
    OutputExtSharedSecretValuation, Seg104.localRho,
    Deployed.Templates.seated]
  rw [show Seg104.wireSeating 252 = 158 by
    decide +kernel]

/-- Audited action-facing seat for `output_ext_shared_secret` local 1806. -/
@[simp] theorem outputExtSharedSecretAt1806
    (rho : Nat → DeployedF) :
    OutputExtSharedSecretValuation rho 1806 = rho 174 := by
  simp only [
    OutputExtSharedSecretValuation, Seg104.localRho,
    Deployed.Templates.seated]
  rw [show Seg104.wireSeating 1806 = 174 by
    decide +kernel]

/-- Audited action-facing seat for `output_ext_shared_secret` local 1808. -/
@[simp] theorem outputExtSharedSecretAt1808
    (rho : Nat → DeployedF) :
    OutputExtSharedSecretValuation rho 1808 = rho 173 := by
  simp only [
    OutputExtSharedSecretValuation, Seg104.localRho,
    Deployed.Templates.seated]
  rw [show Seg104.wireSeating 1808 = 173 by
    decide +kernel]

/-- Audited action-facing seat for `output_ext_shared_secret` local 4572. -/
@[simp] theorem outputExtSharedSecretAt4572
    (rho : Nat → DeployedF) :
    OutputExtSharedSecretValuation rho 4572 = rho 409 := by
  simp only [
    OutputExtSharedSecretValuation, Seg104.localRho,
    Deployed.Templates.seated]
  rw [show Seg104.wireSeating 4572 = 409 by
    decide +kernel]

/-- Audited action-facing seat for `output_ext_shared_secret` local 4573. -/
@[simp] theorem outputExtSharedSecretAt4573
    (rho : Nat → DeployedF) :
    OutputExtSharedSecretValuation rho 4573 = rho 410 := by
  simp only [
    OutputExtSharedSecretValuation, Seg104.localRho,
    Deployed.Templates.seated]
  rw [show Seg104.wireSeating 4573 = 410 by
    decide +kernel]

/-- Audited action-facing seat for `output_ext_shared_secret` local 7332. -/
@[simp] theorem outputExtSharedSecretAt7332
    (rho : Nat → DeployedF) :
    OutputExtSharedSecretValuation rho 7332 = rho 68693 := by
  simp only [
    OutputExtSharedSecretValuation, Seg104.localRho,
    Deployed.Templates.seated]
  rw [show Seg104.wireSeating 7332 = 68693 by
    decide +kernel]

/-- Deployed seating for the `detection_encryption` certified local semantics. -/
def DetectionEncryptionValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg105.localRho rho

/-- Certified local semantics for the `detection_encryption` source operation. -/
def DetectionEncryptionSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetPoseidonEncryptionDetection_63775682d65609fcb7205087c01734b96d2d3337f3d614c8ffd568df5c38c49c.spec (DetectionEncryptionValuation rho)

/-- Audited action-facing seat for `detection_encryption` local 33. -/
@[simp] theorem detectionEncryptionAt33
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 33 = rho 87 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 33 = 87 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 66. -/
@[simp] theorem detectionEncryptionAt66
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 66 = rho 349 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 66 = 349 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 779. -/
@[simp] theorem detectionEncryptionAt779
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 779 = rho 69056 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 779 = 69056 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 780. -/
@[simp] theorem detectionEncryptionAt780
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 780 = rho 69396 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 780 = 69396 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 2106. -/
@[simp] theorem detectionEncryptionAt2106
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2106 = rho 184 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 2106 = 184 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 2107. -/
@[simp] theorem detectionEncryptionAt2107
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2107 = rho 140 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 2107 = 140 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 2108. -/
@[simp] theorem detectionEncryptionAt2108
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2108 = rho 71760 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 2108 = 71760 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 2109. -/
@[simp] theorem detectionEncryptionAt2109
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2109 = rho 71765 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 2109 = 71765 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 2110. -/
@[simp] theorem detectionEncryptionAt2110
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2110 = rho 71770 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 2110 = 71770 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 2111. -/
@[simp] theorem detectionEncryptionAt2111
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2111 = rho 141 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 2111 = 141 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 2112. -/
@[simp] theorem detectionEncryptionAt2112
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2112 = rho 65376 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 2112 = 65376 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 2113. -/
@[simp] theorem detectionEncryptionAt2113
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2113 = rho 68693 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 2113 = 68693 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 2114. -/
@[simp] theorem detectionEncryptionAt2114
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2114 = rho 142 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 2114 = 142 by
    decide +kernel]

/-- Audited action-facing seat for `detection_encryption` local 2115. -/
@[simp] theorem detectionEncryptionAt2115
    (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2115 = rho 143 := by
  simp only [
    DetectionEncryptionValuation, Seg105.localRho,
    Deployed.Templates.seated]
  rw [show Seg105.wireSeating 2115 = 143 by
    decide +kernel]

/-- Deployed seating for the `sender_amount_encryption` certified local semantics. -/
def SenderAmountEncryptionValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg106.localRho rho

/-- Certified local semantics for the `sender_amount_encryption` source operation. -/
def SenderAmountEncryptionSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e.spec (SenderAmountEncryptionValuation rho)

/-- Audited action-facing seat for `sender_amount_encryption` local 710. -/
@[simp] theorem senderAmountEncryptionAt710
    (rho : Nat → DeployedF) :
    SenderAmountEncryptionValuation rho 710 = rho 161 := by
  simp only [
    SenderAmountEncryptionValuation, Seg106.localRho,
    Deployed.Templates.seated]
  rw [show Seg106.wireSeating 710 = 161 by
    decide +kernel]

/-- Audited action-facing seat for `sender_amount_encryption` local 976. -/
@[simp] theorem senderAmountEncryptionAt976
    (rho : Nat → DeployedF) :
    SenderAmountEncryptionValuation rho 976 = rho 344 := by
  simp only [
    SenderAmountEncryptionValuation, Seg106.localRho,
    Deployed.Templates.seated]
  rw [show Seg106.wireSeating 976 = 344 by
    decide +kernel]

/-- Audited action-facing seat for `sender_amount_encryption` local 977. -/
@[simp] theorem senderAmountEncryptionAt977
    (rho : Nat → DeployedF) :
    SenderAmountEncryptionValuation rho 977 = rho 162 := by
  simp only [
    SenderAmountEncryptionValuation, Seg106.localRho,
    Deployed.Templates.seated]
  rw [show Seg106.wireSeating 977 = 162 by
    decide +kernel]

/-- Deployed seating for the `sender_address_encryption` certified local semantics. -/
def SenderAddressEncryptionValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg107.localRho rho

/-- Certified local semantics for the `sender_address_encryption` source operation. -/
def SenderAddressEncryptionSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.spec (SenderAddressEncryptionValuation rho)

/-- Audited action-facing seat for `sender_address_encryption` local 963. -/
@[simp] theorem senderAddressEncryptionAt963
    (rho : Nat → DeployedF) :
    SenderAddressEncryptionValuation rho 963 = rho 52627 := by
  simp only [
    SenderAddressEncryptionValuation, Seg107.localRho,
    Deployed.Templates.seated]
  rw [show Seg107.wireSeating 963 = 52627 by
    decide +kernel]

/-- Audited action-facing seat for `sender_address_encryption` local 964. -/
@[simp] theorem senderAddressEncryptionAt964
    (rho : Nat → DeployedF) :
    SenderAddressEncryptionValuation rho 964 = rho 52967 := by
  simp only [
    SenderAddressEncryptionValuation, Seg107.localRho,
    Deployed.Templates.seated]
  rw [show Seg107.wireSeating 964 = 52967 by
    decide +kernel]

/-- Audited action-facing seat for `sender_address_encryption` local 1304. -/
@[simp] theorem senderAddressEncryptionAt1304
    (rho : Nat → DeployedF) :
    SenderAddressEncryptionValuation rho 1304 = rho 53330 := by
  simp only [
    SenderAddressEncryptionValuation, Seg107.localRho,
    Deployed.Templates.seated]
  rw [show Seg107.wireSeating 1304 = 53330 by
    decide +kernel]

/-- Audited action-facing seat for `sender_address_encryption` local 1305. -/
@[simp] theorem senderAddressEncryptionAt1305
    (rho : Nat → DeployedF) :
    SenderAddressEncryptionValuation rho 1305 = rho 53670 := by
  simp only [
    SenderAddressEncryptionValuation, Seg107.localRho,
    Deployed.Templates.seated]
  rw [show Seg107.wireSeating 1305 = 53670 by
    decide +kernel]

/-- Audited action-facing seat for `sender_address_encryption` local 1392. -/
@[simp] theorem senderAddressEncryptionAt1392
    (rho : Nat → DeployedF) :
    SenderAddressEncryptionValuation rho 1392 = rho 165 := by
  simp only [
    SenderAddressEncryptionValuation, Seg107.localRho,
    Deployed.Templates.seated]
  rw [show Seg107.wireSeating 1392 = 165 by
    decide +kernel]

/-- Audited action-facing seat for `sender_address_encryption` local 1658. -/
@[simp] theorem senderAddressEncryptionAt1658
    (rho : Nat → DeployedF) :
    SenderAddressEncryptionValuation rho 1658 = rho 166 := by
  simp only [
    SenderAddressEncryptionValuation, Seg107.localRho,
    Deployed.Templates.seated]
  rw [show Seg107.wireSeating 1658 = 166 by
    decide +kernel]

/-- Audited action-facing seat for `sender_address_encryption` local 1924. -/
@[simp] theorem senderAddressEncryptionAt1924
    (rho : Nat → DeployedF) :
    SenderAddressEncryptionValuation rho 1924 = rho 167 := by
  simp only [
    SenderAddressEncryptionValuation, Seg107.localRho,
    Deployed.Templates.seated]
  rw [show Seg107.wireSeating 1924 = 167 by
    decide +kernel]

/-- Audited action-facing seat for `sender_address_encryption` local 2190. -/
@[simp] theorem senderAddressEncryptionAt2190
    (rho : Nat → DeployedF) :
    SenderAddressEncryptionValuation rho 2190 = rho 168 := by
  simp only [
    SenderAddressEncryptionValuation, Seg107.localRho,
    Deployed.Templates.seated]
  rw [show Seg107.wireSeating 2190 = 168 by
    decide +kernel]

/-- Deployed seating for the `output_amount_encryption` certified local semantics. -/
def OutputAmountEncryptionValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg108.localRho rho

/-- Certified local semantics for the `output_amount_encryption` source operation. -/
def OutputAmountEncryptionSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e.spec (OutputAmountEncryptionValuation rho)

/-- Audited action-facing seat for `output_amount_encryption` local 710. -/
@[simp] theorem outputAmountEncryptionAt710
    (rho : Nat → DeployedF) :
    OutputAmountEncryptionValuation rho 710 = rho 171 := by
  simp only [
    OutputAmountEncryptionValuation, Seg108.localRho,
    Deployed.Templates.seated]
  rw [show Seg108.wireSeating 710 = 171 by
    decide +kernel]

/-- Audited action-facing seat for `output_amount_encryption` local 976. -/
@[simp] theorem outputAmountEncryptionAt976
    (rho : Nat → DeployedF) :
    OutputAmountEncryptionValuation rho 976 = rho 344 := by
  simp only [
    OutputAmountEncryptionValuation, Seg108.localRho,
    Deployed.Templates.seated]
  rw [show Seg108.wireSeating 976 = 344 by
    decide +kernel]

/-- Audited action-facing seat for `output_amount_encryption` local 977. -/
@[simp] theorem outputAmountEncryptionAt977
    (rho : Nat → DeployedF) :
    OutputAmountEncryptionValuation rho 977 = rho 172 := by
  simp only [
    OutputAmountEncryptionValuation, Seg108.localRho,
    Deployed.Templates.seated]
  rw [show Seg108.wireSeating 977 = 172 by
    decide +kernel]

/-- Deployed seating for the `output_address_encryption` certified local semantics. -/
def OutputAddressEncryptionValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg109.localRho rho

/-- Certified local semantics for the `output_address_encryption` source operation. -/
def OutputAddressEncryptionSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.spec (OutputAddressEncryptionValuation rho)

/-- Audited action-facing seat for `output_address_encryption` local 963. -/
@[simp] theorem outputAddressEncryptionAt963
    (rho : Nat → DeployedF) :
    OutputAddressEncryptionValuation rho 963 = rho 777 := by
  simp only [
    OutputAddressEncryptionValuation, Seg109.localRho,
    Deployed.Templates.seated]
  rw [show Seg109.wireSeating 963 = 777 by
    decide +kernel]

/-- Audited action-facing seat for `output_address_encryption` local 964. -/
@[simp] theorem outputAddressEncryptionAt964
    (rho : Nat → DeployedF) :
    OutputAddressEncryptionValuation rho 964 = rho 1117 := by
  simp only [
    OutputAddressEncryptionValuation, Seg109.localRho,
    Deployed.Templates.seated]
  rw [show Seg109.wireSeating 964 = 1117 by
    decide +kernel]

/-- Audited action-facing seat for `output_address_encryption` local 1304. -/
@[simp] theorem outputAddressEncryptionAt1304
    (rho : Nat → DeployedF) :
    OutputAddressEncryptionValuation rho 1304 = rho 1480 := by
  simp only [
    OutputAddressEncryptionValuation, Seg109.localRho,
    Deployed.Templates.seated]
  rw [show Seg109.wireSeating 1304 = 1480 by
    decide +kernel]

/-- Audited action-facing seat for `output_address_encryption` local 1305. -/
@[simp] theorem outputAddressEncryptionAt1305
    (rho : Nat → DeployedF) :
    OutputAddressEncryptionValuation rho 1305 = rho 1820 := by
  simp only [
    OutputAddressEncryptionValuation, Seg109.localRho,
    Deployed.Templates.seated]
  rw [show Seg109.wireSeating 1305 = 1820 by
    decide +kernel]

/-- Audited action-facing seat for `output_address_encryption` local 1392. -/
@[simp] theorem outputAddressEncryptionAt1392
    (rho : Nat → DeployedF) :
    OutputAddressEncryptionValuation rho 1392 = rho 175 := by
  simp only [
    OutputAddressEncryptionValuation, Seg109.localRho,
    Deployed.Templates.seated]
  rw [show Seg109.wireSeating 1392 = 175 by
    decide +kernel]

/-- Audited action-facing seat for `output_address_encryption` local 1658. -/
@[simp] theorem outputAddressEncryptionAt1658
    (rho : Nat → DeployedF) :
    OutputAddressEncryptionValuation rho 1658 = rho 176 := by
  simp only [
    OutputAddressEncryptionValuation, Seg109.localRho,
    Deployed.Templates.seated]
  rw [show Seg109.wireSeating 1658 = 176 by
    decide +kernel]

/-- Audited action-facing seat for `output_address_encryption` local 1924. -/
@[simp] theorem outputAddressEncryptionAt1924
    (rho : Nat → DeployedF) :
    OutputAddressEncryptionValuation rho 1924 = rho 177 := by
  simp only [
    OutputAddressEncryptionValuation, Seg109.localRho,
    Deployed.Templates.seated]
  rw [show Seg109.wireSeating 1924 = 177 by
    decide +kernel]

/-- Audited action-facing seat for `output_address_encryption` local 2190. -/
@[simp] theorem outputAddressEncryptionAt2190
    (rho : Nat → DeployedF) :
    OutputAddressEncryptionValuation rho 2190 = rho 178 := by
  simp only [
    OutputAddressEncryptionValuation, Seg109.localRho,
    Deployed.Templates.seated]
  rw [show Seg109.wireSeating 2190 = 178 by
    decide +kernel]

/-- Deployed seating for the `metadata_sender_subject_derivation` certified local semantics. -/
def MetadataSenderSubjectDerivationValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg111.localRho rho

/-- Certified local semantics for the `metadata_sender_subject_derivation` source operation. -/
def MetadataSenderSubjectDerivationSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd.spec (MetadataSenderSubjectDerivationValuation rho)

/-- Audited action-facing seat for `metadata_sender_subject_derivation` local 1. -/
@[simp] theorem metadataSenderSubjectDerivationAt1
    (rho : Nat → DeployedF) :
    MetadataSenderSubjectDerivationValuation rho 1 = rho 144 := by
  simp only [
    MetadataSenderSubjectDerivationValuation, Seg111.localRho,
    Deployed.Templates.seated]
  rw [show Seg111.wireSeating 1 = 144 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_sender_subject_derivation` local 2. -/
@[simp] theorem metadataSenderSubjectDerivationAt2
    (rho : Nat → DeployedF) :
    MetadataSenderSubjectDerivationValuation rho 2 = rho 88 := by
  simp only [
    MetadataSenderSubjectDerivationValuation, Seg111.localRho,
    Deployed.Templates.seated]
  rw [show Seg111.wireSeating 2 = 88 by
    decide +kernel]

/-- Deployed seating for the `metadata_output_subject_derivation` certified local semantics. -/
def MetadataOutputSubjectDerivationValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg112.localRho rho

/-- Certified local semantics for the `metadata_output_subject_derivation` source operation. -/
def MetadataOutputSubjectDerivationSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd.spec (MetadataOutputSubjectDerivationValuation rho)

/-- Audited action-facing seat for `metadata_output_subject_derivation` local 1. -/
@[simp] theorem metadataOutputSubjectDerivationAt1
    (rho : Nat → DeployedF) :
    MetadataOutputSubjectDerivationValuation rho 1 = rho 145 := by
  simp only [
    MetadataOutputSubjectDerivationValuation, Seg112.localRho,
    Deployed.Templates.seated]
  rw [show Seg112.wireSeating 1 = 145 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_output_subject_derivation` local 2. -/
@[simp] theorem metadataOutputSubjectDerivationAt2
    (rho : Nat → DeployedF) :
    MetadataOutputSubjectDerivationValuation rho 2 = rho 350 := by
  simp only [
    MetadataOutputSubjectDerivationValuation, Seg112.localRho,
    Deployed.Templates.seated]
  rw [show Seg112.wireSeating 2 = 350 by
    decide +kernel]

/-- Deployed seating for the `metadata_ring_id_hash` certified local semantics. -/
def MetadataRingIdHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg113.localRho rho

/-- Certified local semantics for the `metadata_ring_id_hash` source operation. -/
def MetadataRingIdHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.spec (MetadataRingIdHashValuation rho)

/-- Audited action-facing seat for `metadata_ring_id_hash` local 1. -/
@[simp] theorem metadataRingIdHashAt1
    (rho : Nat → DeployedF) :
    MetadataRingIdHashValuation rho 1 = rho 146 := by
  simp only [
    MetadataRingIdHashValuation, Seg113.localRho,
    Deployed.Templates.seated]
  rw [show Seg113.wireSeating 1 = 146 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_ring_id_hash` local 2. -/
@[simp] theorem metadataRingIdHashAt2
    (rho : Nat → DeployedF) :
    MetadataRingIdHashValuation rho 2 = rho 411 := by
  simp only [
    MetadataRingIdHashValuation, Seg113.localRho,
    Deployed.Templates.seated]
  rw [show Seg113.wireSeating 2 = 411 by
    decide +kernel]

/-- Deployed seating for the `metadata_policy_id_hash` certified local semantics. -/
def MetadataPolicyIdHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg114.localRho rho

/-- Certified local semantics for the `metadata_policy_id_hash` source operation. -/
def MetadataPolicyIdHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.spec (MetadataPolicyIdHashValuation rho)

/-- Audited action-facing seat for `metadata_policy_id_hash` local 1. -/
@[simp] theorem metadataPolicyIdHashAt1
    (rho : Nat → DeployedF) :
    MetadataPolicyIdHashValuation rho 1 = rho 147 := by
  simp only [
    MetadataPolicyIdHashValuation, Seg114.localRho,
    Deployed.Templates.seated]
  rw [show Seg114.wireSeating 1 = 147 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_policy_id_hash` local 2. -/
@[simp] theorem metadataPolicyIdHashAt2
    (rho : Nat → DeployedF) :
    MetadataPolicyIdHashValuation rho 2 = rho 412 := by
  simp only [
    MetadataPolicyIdHashValuation, Seg114.localRho,
    Deployed.Templates.seated]
  rw [show Seg114.wireSeating 2 = 412 by
    decide +kernel]

/-- Deployed seating for the `metadata_resource_hash` certified local semantics. -/
def MetadataResourceHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg115.localRho rho

/-- Certified local semantics for the `metadata_resource_hash` source operation. -/
def MetadataResourceHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.spec (MetadataResourceHashValuation rho)

/-- Audited action-facing seat for `metadata_resource_hash` local 1. -/
@[simp] theorem metadataResourceHashAt1
    (rho : Nat → DeployedF) :
    MetadataResourceHashValuation rho 1 = rho 148 := by
  simp only [
    MetadataResourceHashValuation, Seg115.localRho,
    Deployed.Templates.seated]
  rw [show Seg115.wireSeating 1 = 148 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_resource_hash` local 2. -/
@[simp] theorem metadataResourceHashAt2
    (rho : Nat → DeployedF) :
    MetadataResourceHashValuation rho 2 = rho 413 := by
  simp only [
    MetadataResourceHashValuation, Seg115.localRho,
    Deployed.Templates.seated]
  rw [show Seg115.wireSeating 2 = 413 by
    decide +kernel]

/-- Deployed seating for the `metadata_permission_hash` certified local semantics. -/
def MetadataPermissionHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg116.localRho rho

/-- Certified local semantics for the `metadata_permission_hash` source operation. -/
def MetadataPermissionHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.spec (MetadataPermissionHashValuation rho)

/-- Audited action-facing seat for `metadata_permission_hash` local 1. -/
@[simp] theorem metadataPermissionHashAt1
    (rho : Nat → DeployedF) :
    MetadataPermissionHashValuation rho 1 = rho 149 := by
  simp only [
    MetadataPermissionHashValuation, Seg116.localRho,
    Deployed.Templates.seated]
  rw [show Seg116.wireSeating 1 = 149 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_permission_hash` local 2. -/
@[simp] theorem metadataPermissionHashAt2
    (rho : Nat → DeployedF) :
    MetadataPermissionHashValuation rho 2 = rho 414 := by
  simp only [
    MetadataPermissionHashValuation, Seg116.localRho,
    Deployed.Templates.seated]
  rw [show Seg116.wireSeating 2 = 414 by
    decide +kernel]

/-- Deployed seating for the `metadata_target_timestamp` certified local semantics. -/
def MetadataTargetTimestampValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg117.localRho rho

/-- Certified local semantics for the `metadata_target_timestamp` source operation. -/
def MetadataTargetTimestampSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd.spec (MetadataTargetTimestampValuation rho)

/-- Audited action-facing seat for `metadata_target_timestamp` local 1. -/
@[simp] theorem metadataTargetTimestampAt1
    (rho : Nat → DeployedF) :
    MetadataTargetTimestampValuation rho 1 = rho 150 := by
  simp only [
    MetadataTargetTimestampValuation, Seg117.localRho,
    Deployed.Templates.seated]
  rw [show Seg117.wireSeating 1 = 150 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_target_timestamp` local 2. -/
@[simp] theorem metadataTargetTimestampAt2
    (rho : Nat → DeployedF) :
    MetadataTargetTimestampValuation rho 2 = rho 9 := by
  simp only [
    MetadataTargetTimestampValuation, Seg117.localRho,
    Deployed.Templates.seated]
  rw [show Seg117.wireSeating 2 = 9 by
    decide +kernel]

/-- Deployed seating for the `metadata_sender_core_salt` certified local semantics. -/
def MetadataSenderCoreSaltValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg118.localRho rho

/-- Certified local semantics for the `metadata_sender_core_salt` source operation. -/
def MetadataSenderCoreSaltSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.spec (MetadataSenderCoreSaltValuation rho)

/-- Audited action-facing seat for `metadata_sender_core_salt` local 1. -/
@[simp] theorem metadataSenderCoreSaltAt1
    (rho : Nat → DeployedF) :
    MetadataSenderCoreSaltValuation rho 1 = rho 151 := by
  simp only [
    MetadataSenderCoreSaltValuation, Seg118.localRho,
    Deployed.Templates.seated]
  rw [show Seg118.wireSeating 1 = 151 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_sender_core_salt` local 2. -/
@[simp] theorem metadataSenderCoreSaltAt2
    (rho : Nat → DeployedF) :
    MetadataSenderCoreSaltValuation rho 2 = rho 72025 := by
  simp only [
    MetadataSenderCoreSaltValuation, Seg118.localRho,
    Deployed.Templates.seated]
  rw [show Seg118.wireSeating 2 = 72025 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_sender_core_salt` local 3. -/
@[simp] theorem metadataSenderCoreSaltAt3
    (rho : Nat → DeployedF) :
    MetadataSenderCoreSaltValuation rho 3 = rho 72030 := by
  simp only [
    MetadataSenderCoreSaltValuation, Seg118.localRho,
    Deployed.Templates.seated]
  rw [show Seg118.wireSeating 3 = 72030 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_sender_core_salt` local 4. -/
@[simp] theorem metadataSenderCoreSaltAt4
    (rho : Nat → DeployedF) :
    MetadataSenderCoreSaltValuation rho 4 = rho 72035 := by
  simp only [
    MetadataSenderCoreSaltValuation, Seg118.localRho,
    Deployed.Templates.seated]
  rw [show Seg118.wireSeating 4 = 72035 by
    decide +kernel]

/-- Deployed seating for the `metadata_sender_ext_salt` certified local semantics. -/
def MetadataSenderExtSaltValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg119.localRho rho

/-- Certified local semantics for the `metadata_sender_ext_salt` source operation. -/
def MetadataSenderExtSaltSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.spec (MetadataSenderExtSaltValuation rho)

/-- Audited action-facing seat for `metadata_sender_ext_salt` local 1. -/
@[simp] theorem metadataSenderExtSaltAt1
    (rho : Nat → DeployedF) :
    MetadataSenderExtSaltValuation rho 1 = rho 152 := by
  simp only [
    MetadataSenderExtSaltValuation, Seg119.localRho,
    Deployed.Templates.seated]
  rw [show Seg119.wireSeating 1 = 152 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_sender_ext_salt` local 2. -/
@[simp] theorem metadataSenderExtSaltAt2
    (rho : Nat → DeployedF) :
    MetadataSenderExtSaltValuation rho 2 = rho 72290 := by
  simp only [
    MetadataSenderExtSaltValuation, Seg119.localRho,
    Deployed.Templates.seated]
  rw [show Seg119.wireSeating 2 = 72290 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_sender_ext_salt` local 3. -/
@[simp] theorem metadataSenderExtSaltAt3
    (rho : Nat → DeployedF) :
    MetadataSenderExtSaltValuation rho 3 = rho 72295 := by
  simp only [
    MetadataSenderExtSaltValuation, Seg119.localRho,
    Deployed.Templates.seated]
  rw [show Seg119.wireSeating 3 = 72295 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_sender_ext_salt` local 4. -/
@[simp] theorem metadataSenderExtSaltAt4
    (rho : Nat → DeployedF) :
    MetadataSenderExtSaltValuation rho 4 = rho 72300 := by
  simp only [
    MetadataSenderExtSaltValuation, Seg119.localRho,
    Deployed.Templates.seated]
  rw [show Seg119.wireSeating 4 = 72300 by
    decide +kernel]

/-- Deployed seating for the `metadata_output_core_salt` certified local semantics. -/
def MetadataOutputCoreSaltValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg120.localRho rho

/-- Certified local semantics for the `metadata_output_core_salt` source operation. -/
def MetadataOutputCoreSaltSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.spec (MetadataOutputCoreSaltValuation rho)

/-- Audited action-facing seat for `metadata_output_core_salt` local 1. -/
@[simp] theorem metadataOutputCoreSaltAt1
    (rho : Nat → DeployedF) :
    MetadataOutputCoreSaltValuation rho 1 = rho 153 := by
  simp only [
    MetadataOutputCoreSaltValuation, Seg120.localRho,
    Deployed.Templates.seated]
  rw [show Seg120.wireSeating 1 = 153 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_output_core_salt` local 2. -/
@[simp] theorem metadataOutputCoreSaltAt2
    (rho : Nat → DeployedF) :
    MetadataOutputCoreSaltValuation rho 2 = rho 72555 := by
  simp only [
    MetadataOutputCoreSaltValuation, Seg120.localRho,
    Deployed.Templates.seated]
  rw [show Seg120.wireSeating 2 = 72555 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_output_core_salt` local 3. -/
@[simp] theorem metadataOutputCoreSaltAt3
    (rho : Nat → DeployedF) :
    MetadataOutputCoreSaltValuation rho 3 = rho 72560 := by
  simp only [
    MetadataOutputCoreSaltValuation, Seg120.localRho,
    Deployed.Templates.seated]
  rw [show Seg120.wireSeating 3 = 72560 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_output_core_salt` local 4. -/
@[simp] theorem metadataOutputCoreSaltAt4
    (rho : Nat → DeployedF) :
    MetadataOutputCoreSaltValuation rho 4 = rho 72565 := by
  simp only [
    MetadataOutputCoreSaltValuation, Seg120.localRho,
    Deployed.Templates.seated]
  rw [show Seg120.wireSeating 4 = 72565 by
    decide +kernel]

/-- Deployed seating for the `metadata_output_ext_salt` certified local semantics. -/
def MetadataOutputExtSaltValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg121.localRho rho

/-- Certified local semantics for the `metadata_output_ext_salt` source operation. -/
def MetadataOutputExtSaltSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.spec (MetadataOutputExtSaltValuation rho)

/-- Audited action-facing seat for `metadata_output_ext_salt` local 1. -/
@[simp] theorem metadataOutputExtSaltAt1
    (rho : Nat → DeployedF) :
    MetadataOutputExtSaltValuation rho 1 = rho 154 := by
  simp only [
    MetadataOutputExtSaltValuation, Seg121.localRho,
    Deployed.Templates.seated]
  rw [show Seg121.wireSeating 1 = 154 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_output_ext_salt` local 2. -/
@[simp] theorem metadataOutputExtSaltAt2
    (rho : Nat → DeployedF) :
    MetadataOutputExtSaltValuation rho 2 = rho 72820 := by
  simp only [
    MetadataOutputExtSaltValuation, Seg121.localRho,
    Deployed.Templates.seated]
  rw [show Seg121.wireSeating 2 = 72820 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_output_ext_salt` local 3. -/
@[simp] theorem metadataOutputExtSaltAt3
    (rho : Nat → DeployedF) :
    MetadataOutputExtSaltValuation rho 3 = rho 72825 := by
  simp only [
    MetadataOutputExtSaltValuation, Seg121.localRho,
    Deployed.Templates.seated]
  rw [show Seg121.wireSeating 3 = 72825 by
    decide +kernel]

/-- Audited action-facing seat for `metadata_output_ext_salt` local 4. -/
@[simp] theorem metadataOutputExtSaltAt4
    (rho : Nat → DeployedF) :
    MetadataOutputExtSaltValuation rho 4 = rho 72830 := by
  simp only [
    MetadataOutputExtSaltValuation, Seg121.localRho,
    Deployed.Templates.seated]
  rw [show Seg121.wireSeating 4 = 72830 by
    decide +kernel]

/-- Deployed seating for the `net_balance` certified local semantics. -/
def NetBalanceValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg123.localRho rho

/-- Certified local semantics for the `net_balance` source operation. -/
def NetBalanceSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.spec (NetBalanceValuation rho)

/-- Audited action-facing seat for `net_balance` local 1. -/
@[simp] theorem netBalanceAt1
    (rho : Nat → DeployedF) :
    NetBalanceValuation rho 1 = rho 184 := by
  simp only [
    NetBalanceValuation, Seg123.localRho,
    Deployed.Templates.seated]
  rw [show Seg123.wireSeating 1 = 184 by
    decide +kernel]

/-- Audited action-facing seat for `net_balance` local 732. -/
@[simp] theorem netBalanceAt732
    (rho : Nat → DeployedF) :
    NetBalanceValuation rho 732 = rho 183 := by
  simp only [
    NetBalanceValuation, Seg123.localRho,
    Deployed.Templates.seated]
  rw [show Seg123.wireSeating 732 = 183 by
    decide +kernel]

/-- Audited action-facing seat for `net_balance` local 861. -/
@[simp] theorem netBalanceAt861
    (rho : Nat → DeployedF) :
    NetBalanceValuation rho 861 = rho 264 := by
  simp only [
    NetBalanceValuation, Seg123.localRho,
    Deployed.Templates.seated]
  rw [show Seg123.wireSeating 861 = 264 by
    decide +kernel]

/-- Audited action-facing seat for `net_balance` local 990. -/
@[simp] theorem netBalanceAt990
    (rho : Nat → DeployedF) :
    NetBalanceValuation rho 990 = rho 344 := by
  simp only [
    NetBalanceValuation, Seg123.localRho,
    Deployed.Templates.seated]
  rw [show Seg123.wireSeating 990 = 344 by
    decide +kernel]

/-- Audited action-facing seat for `net_balance` local 1119. -/
@[simp] theorem netBalanceAt1119
    (rho : Nat → DeployedF) :
    NetBalanceValuation rho 1119 = rho 403 := by
  simp only [
    NetBalanceValuation, Seg123.localRho,
    Deployed.Templates.seated]
  rw [show Seg123.wireSeating 1119 = 403 by
    decide +kernel]

/-- Audited action-facing seat for `net_balance` local 4467. -/
@[simp] theorem netBalanceAt4467
    (rho : Nat → DeployedF) :
    NetBalanceValuation rho 4467 = rho 10 := by
  simp only [
    NetBalanceValuation, Seg123.localRho,
    Deployed.Templates.seated]
  rw [show Seg123.wireSeating 4467 = 10 by
    decide +kernel]

/-- Audited action-facing seat for `net_balance` local 6026. -/
@[simp] theorem netBalanceAt6026
    (rho : Nat → DeployedF) :
    NetBalanceValuation rho 6026 = rho 116531 := by
  simp only [
    NetBalanceValuation, Seg123.localRho,
    Deployed.Templates.seated]
  rw [show Seg123.wireSeating 6026 = 116531 by
    decide +kernel]

/-- Audited action-facing seat for `net_balance` local 6027. -/
@[simp] theorem netBalanceAt6027
    (rho : Nat → DeployedF) :
    NetBalanceValuation rho 6027 = rho 116532 := by
  simp only [
    NetBalanceValuation, Seg123.localRho,
    Deployed.Templates.seated]
  rw [show Seg123.wireSeating 6027 = 116532 by
    decide +kernel]

/-- Deployed seating for the `balance_compress` certified local semantics. -/
def BalanceCompressValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg124.localRho rho

/-- Certified local semantics for the `balance_compress` source operation. -/
def BalanceCompressSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (BalanceCompressValuation rho)

/-- Audited action-facing seat for `balance_compress` local 1. -/
@[simp] theorem balanceCompressAt1
    (rho : Nat → DeployedF) :
    BalanceCompressValuation rho 1 = rho 116531 := by
  simp only [
    BalanceCompressValuation, Seg124.localRho,
    Deployed.Templates.seated]
  rw [show Seg124.wireSeating 1 = 116531 by
    decide +kernel]

/-- Audited action-facing seat for `balance_compress` local 3. -/
@[simp] theorem balanceCompressAt3
    (rho : Nat → DeployedF) :
    BalanceCompressValuation rho 3 = rho 116532 := by
  simp only [
    BalanceCompressValuation, Seg124.localRho,
    Deployed.Templates.seated]
  rw [show Seg124.wireSeating 3 = 116532 by
    decide +kernel]

/-- Audited action-facing seat for `balance_compress` local 365. -/
@[simp] theorem balanceCompressAt365
    (rho : Nat → DeployedF) :
    BalanceCompressValuation rho 365 = rho 116895 := by
  simp only [
    BalanceCompressValuation, Seg124.localRho,
    Deployed.Templates.seated]
  rw [show Seg124.wireSeating 365 = 116895 by
    decide +kernel]

/-- Audited action-facing seat for `balance_compress` local 705. -/
@[simp] theorem balanceCompressAt705
    (rho : Nat → DeployedF) :
    BalanceCompressValuation rho 705 = rho 117235 := by
  simp only [
    BalanceCompressValuation, Seg124.localRho,
    Deployed.Templates.seated]
  rw [show Seg124.wireSeating 705 = 117235 by
    decide +kernel]

/-- Deployed seating for the `statement_hash` certified local semantics. -/
def StatementHashValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg126.localRho rho

/-- Certified local semantics for the `statement_hash` source operation. -/
def StatementHashSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TStatementHash_0e54d8ea5fc5d0d95e113695b4b0340e4b6bab4d5abb13df4d51436c93755a86.spec (StatementHashValuation rho)

/-- Audited action-facing seat for `statement_hash` local 1. -/
@[simp] theorem statementHashAt1
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1 = rho 6 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1 = 6 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 7. -/
@[simp] theorem statementHashAt7
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 7 = rho 342 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 7 = 342 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 13. -/
@[simp] theorem statementHashAt13
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 13 = rho 401 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 13 = 401 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 19. -/
@[simp] theorem statementHashAt19
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 19 = rho 116895 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 19 = 116895 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 20. -/
@[simp] theorem statementHashAt20
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 20 = rho 117235 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 20 = 117235 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 26. -/
@[simp] theorem statementHashAt26
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 26 = rho 2 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 26 = 2 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 32. -/
@[simp] theorem statementHashAt32
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 32 = rho 3 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 32 = 3 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 38. -/
@[simp] theorem statementHashAt38
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 38 = rho 4 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 38 = 4 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 484. -/
@[simp] theorem statementHashAt484
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 484 = rho 5 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 484 = 5 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 490. -/
@[simp] theorem statementHashAt490
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 490 = rho 179 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 490 = 179 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 496. -/
@[simp] theorem statementHashAt496
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 496 = rho 39328 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 496 = 39328 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 497. -/
@[simp] theorem statementHashAt497
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 497 = rho 39668 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 497 = 39668 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 503. -/
@[simp] theorem statementHashAt503
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 503 = rho 259 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 503 = 259 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 509. -/
@[simp] theorem statementHashAt509
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 509 = rho 260 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 509 = 260 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 515. -/
@[simp] theorem statementHashAt515
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 515 = rho 51920 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 515 = 51920 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 516. -/
@[simp] theorem statementHashAt516
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 516 = rho 52260 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 516 = 52260 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 962. -/
@[simp] theorem statementHashAt962
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 962 = rho 341 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 962 = 341 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 968. -/
@[simp] theorem statementHashAt968
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 968 = rho 7 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 968 = 7 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 974. -/
@[simp] theorem statementHashAt974
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 974 = rho 8 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 974 = 8 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 980. -/
@[simp] theorem statementHashAt980
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 980 = rho 140 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 980 = 140 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 986. -/
@[simp] theorem statementHashAt986
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 986 = rho 141 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 986 = 141 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 992. -/
@[simp] theorem statementHashAt992
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 992 = rho 142 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 992 = 142 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1438. -/
@[simp] theorem statementHashAt1438
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1438 = rho 143 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1438 = 143 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1444. -/
@[simp] theorem statementHashAt1444
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1444 = rho 69056 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1444 = 69056 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1445. -/
@[simp] theorem statementHashAt1445
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1445 = rho 69396 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1445 = 69396 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1451. -/
@[simp] theorem statementHashAt1451
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1451 = rho 161 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1451 = 161 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1457. -/
@[simp] theorem statementHashAt1457
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1457 = rho 162 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1457 = 162 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1463. -/
@[simp] theorem statementHashAt1463
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1463 = rho 69759 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1463 = 69759 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1464. -/
@[simp] theorem statementHashAt1464
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1464 = rho 70099 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1464 = 70099 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1470. -/
@[simp] theorem statementHashAt1470
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1470 = rho 165 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1470 = 165 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1916. -/
@[simp] theorem statementHashAt1916
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1916 = rho 166 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1916 = 166 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1922. -/
@[simp] theorem statementHashAt1922
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1922 = rho 167 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1922 = 167 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1928. -/
@[simp] theorem statementHashAt1928
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1928 = rho 168 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1928 = 168 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1934. -/
@[simp] theorem statementHashAt1934
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1934 = rho 70462 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1934 = 70462 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1935. -/
@[simp] theorem statementHashAt1935
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1935 = rho 70802 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1935 = 70802 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1941. -/
@[simp] theorem statementHashAt1941
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1941 = rho 171 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1941 = 171 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 1947. -/
@[simp] theorem statementHashAt1947
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 1947 = rho 172 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 1947 = 172 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2393. -/
@[simp] theorem statementHashAt2393
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2393 = rho 71165 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2393 = 71165 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2394. -/
@[simp] theorem statementHashAt2394
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2394 = rho 71505 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2394 = 71505 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2400. -/
@[simp] theorem statementHashAt2400
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2400 = rho 175 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2400 = 175 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2406. -/
@[simp] theorem statementHashAt2406
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2406 = rho 176 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2406 = 176 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2412. -/
@[simp] theorem statementHashAt2412
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2412 = rho 177 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2412 = 177 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2418. -/
@[simp] theorem statementHashAt2418
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2418 = rho 178 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2418 = 178 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2424. -/
@[simp] theorem statementHashAt2424
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2424 = rho 9 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2424 = 9 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2870. -/
@[simp] theorem statementHashAt2870
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2870 = rho 144 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2870 = 144 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2876. -/
@[simp] theorem statementHashAt2876
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2876 = rho 145 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2876 = 145 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2882. -/
@[simp] theorem statementHashAt2882
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2882 = rho 146 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2882 = 146 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2888. -/
@[simp] theorem statementHashAt2888
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2888 = rho 147 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2888 = 147 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2894. -/
@[simp] theorem statementHashAt2894
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2894 = rho 148 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2894 = 148 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 2900. -/
@[simp] theorem statementHashAt2900
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 2900 = rho 149 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 2900 = 149 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 3346. -/
@[simp] theorem statementHashAt3346
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 3346 = rho 151 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 3346 = 151 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 3352. -/
@[simp] theorem statementHashAt3352
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 3352 = rho 152 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 3352 = 152 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 3358. -/
@[simp] theorem statementHashAt3358
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 3358 = rho 153 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 3358 = 153 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 3364. -/
@[simp] theorem statementHashAt3364
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 3364 = rho 154 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 3364 = 154 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 3769. -/
@[simp] theorem statementHashAt3769
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 3769 = rho 120950 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 3769 = 120950 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 3774. -/
@[simp] theorem statementHashAt3774
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 3774 = rho 120955 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 3774 = 120955 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 3779. -/
@[simp] theorem statementHashAt3779
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 3779 = rho 120960 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 3779 = 120960 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 3784. -/
@[simp] theorem statementHashAt3784
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 3784 = rho 120965 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 3784 = 120965 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 3789. -/
@[simp] theorem statementHashAt3789
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 3789 = rho 120970 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 3789 = 120970 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 3794. -/
@[simp] theorem statementHashAt3794
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 3794 = rho 120975 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 3794 = 120975 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 3799. -/
@[simp] theorem statementHashAt3799
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 3799 = rho 120980 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 3799 = 120980 by
    decide +kernel]

/-- Audited action-facing seat for `statement_hash` local 3804. -/
@[simp] theorem statementHashAt3804
    (rho : Nat → DeployedF) :
    StatementHashValuation rho 3804 = rho 120985 := by
  simp only [
    StatementHashValuation, Seg126.localRho,
    Deployed.Templates.seated]
  rw [show Seg126.wireSeating 3804 = 120985 by
    decide +kernel]

/-- Deployed seating for the `statement_assert` certified local semantics. -/
def StatementAssertValuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg127.localRho rho

/-- Certified local semantics for the `statement_assert` source operation. -/
def StatementAssertSemanticSpec (rho : Nat → DeployedF) : Prop :=
  Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec (StatementAssertValuation rho)

/-- Audited action-facing seat for `statement_assert` local 1. -/
@[simp] theorem statementAssertAt1
    (rho : Nat → DeployedF) :
    StatementAssertValuation rho 1 = rho 120950 := by
  simp only [
    StatementAssertValuation, Seg127.localRho,
    Deployed.Templates.seated]
  rw [show Seg127.wireSeating 1 = 120950 by
    decide +kernel]

/-- Audited action-facing seat for `statement_assert` local 2. -/
@[simp] theorem statementAssertAt2
    (rho : Nat → DeployedF) :
    StatementAssertValuation rho 2 = rho 120955 := by
  simp only [
    StatementAssertValuation, Seg127.localRho,
    Deployed.Templates.seated]
  rw [show Seg127.wireSeating 2 = 120955 by
    decide +kernel]

/-- Audited action-facing seat for `statement_assert` local 3. -/
@[simp] theorem statementAssertAt3
    (rho : Nat → DeployedF) :
    StatementAssertValuation rho 3 = rho 120960 := by
  simp only [
    StatementAssertValuation, Seg127.localRho,
    Deployed.Templates.seated]
  rw [show Seg127.wireSeating 3 = 120960 by
    decide +kernel]

/-- Audited action-facing seat for `statement_assert` local 4. -/
@[simp] theorem statementAssertAt4
    (rho : Nat → DeployedF) :
    StatementAssertValuation rho 4 = rho 120965 := by
  simp only [
    StatementAssertValuation, Seg127.localRho,
    Deployed.Templates.seated]
  rw [show Seg127.wireSeating 4 = 120965 by
    decide +kernel]

/-- Audited action-facing seat for `statement_assert` local 5. -/
@[simp] theorem statementAssertAt5
    (rho : Nat → DeployedF) :
    StatementAssertValuation rho 5 = rho 120970 := by
  simp only [
    StatementAssertValuation, Seg127.localRho,
    Deployed.Templates.seated]
  rw [show Seg127.wireSeating 5 = 120970 by
    decide +kernel]

/-- Audited action-facing seat for `statement_assert` local 6. -/
@[simp] theorem statementAssertAt6
    (rho : Nat → DeployedF) :
    StatementAssertValuation rho 6 = rho 120975 := by
  simp only [
    StatementAssertValuation, Seg127.localRho,
    Deployed.Templates.seated]
  rw [show Seg127.wireSeating 6 = 120975 by
    decide +kernel]

/-- Audited action-facing seat for `statement_assert` local 7. -/
@[simp] theorem statementAssertAt7
    (rho : Nat → DeployedF) :
    StatementAssertValuation rho 7 = rho 120980 := by
  simp only [
    StatementAssertValuation, Seg127.localRho,
    Deployed.Templates.seated]
  rw [show Seg127.wireSeating 7 = 120980 by
    decide +kernel]

/-- Audited action-facing seat for `statement_assert` local 8. -/
@[simp] theorem statementAssertAt8
    (rho : Nat → DeployedF) :
    StatementAssertValuation rho 8 = rho 120985 := by
  simp only [
    StatementAssertValuation, Seg127.localRho,
    Deployed.Templates.seated]
  rw [show Seg127.wireSeating 8 = 120985 by
    decide +kernel]

/-- Audited action-facing seat for `statement_assert` local 9. -/
@[simp] theorem statementAssertAt9
    (rho : Nat → DeployedF) :
    StatementAssertValuation rho 9 = rho 1 := by
  simp only [
    StatementAssertValuation, Seg127.localRho,
    Deployed.Templates.seated]
  rw [show Seg127.wireSeating 9 = 1 by
    decide +kernel]

/--
Exhaustive certified local semantics for the 94 operations used by Transfer
protocol refinement.  Every field is produced from an exact relation provider;
there are no caller-supplied semantic premises.
-/
structure TransferSemanticProviders (rho : Nat → DeployedF) : Prop where
  isRegulatedBoolean : IsRegulatedBooleanSemanticSpec rho
  authAkNonIdentity : AuthAkNonIdentitySemanticSpec rho
  senderDivGenNonIdentity : SenderDivGenNonIdentitySemanticSpec rho
  assetIdNonzero : AssetIdNonzeroSemanticSpec rho
  effectiveRingPk : EffectiveRingPkSemanticSpec rho
  effectiveDkPub : EffectiveDkPubSemanticSpec rho
  effectiveRingIdHash : EffectiveRingIdHashSemanticSpec rho
  effectivePolicyIdHash : EffectivePolicyIdHashSemanticSpec rho
  effectiveResourceHash : EffectiveResourceHashSemanticSpec rho
  effectivePermissionHash : EffectivePermissionHashSemanticSpec rho
  senderDivGenCompress : SenderDivGenCompressSemanticSpec rho
  senderTransmissionCompress : SenderTransmissionCompressSemanticSpec rho
  incomingViewingKeyNonzero : IncomingViewingKeyNonzeroSemanticSpec rho
  senderDtk : SenderDtkSemanticSpec rho
  senderTransmissionEquivalent : SenderTransmissionEquivalentSemanticSpec rho
  senderTransmissionNonIdentity : SenderTransmissionNonIdentitySemanticSpec rho
  assetDkCompress : AssetDkCompressSemanticSpec rho
  assetParamsHash : AssetParamsHashSemanticSpec rho
  assetRingPkCompress : AssetRingPkCompressSemanticSpec rho
  assetRingHash : AssetRingHashSemanticSpec rho
  assetLeafHash : AssetLeafHashSemanticSpec rho
  assetPath : AssetPathSemanticSpec rho
  assetRootAssert : AssetRootAssertSemanticSpec rho
  assetGap : AssetGapSemanticSpec rho
  assetGapAccept : AssetGapAcceptSemanticSpec rho
  senderComplianceLeaf : SenderComplianceLeafSemanticSpec rho
  senderCompliancePath : SenderCompliancePathSemanticSpec rho
  senderComplianceAssert : SenderComplianceAssertSemanticSpec rho
  senderAck : SenderAckSemanticSpec rho
  requiredNoteCommitment : RequiredNoteCommitmentSemanticSpec rho
  requiredNullifier : RequiredNullifierSemanticSpec rho
  requiredStatePath : RequiredStatePathSemanticSpec rho
  requiredNullifierAssert : RequiredNullifierAssertSemanticSpec rho
  requiredAnchorAssert : RequiredAnchorAssertSemanticSpec rho
  requiredRvk : RequiredRvkSemanticSpec rho
  requiredRkEquivalent : RequiredRkEquivalentSemanticSpec rho
  requiredHistoryClassify : RequiredHistoryClassifySemanticSpec rho
  requiredRkCompress : RequiredRkCompressSemanticSpec rho
  optionalIsDummyBoolean : OptionalIsDummyBooleanSemanticSpec rho
  optionalNoteCommitment : OptionalNoteCommitmentSemanticSpec rho
  optionalNullifier : OptionalNullifierSemanticSpec rho
  optionalStatePath : OptionalStatePathSemanticSpec rho
  optionalSyntheticNullifier : OptionalSyntheticNullifierSemanticSpec rho
  optionalNullifierMux : OptionalNullifierMuxSemanticSpec rho
  optionalNullifierAssert : OptionalNullifierAssertSemanticSpec rho
  optionalAnchorAssert : OptionalAnchorAssertSemanticSpec rho
  optionalRvk : OptionalRvkSemanticSpec rho
  optionalRkEquivalent : OptionalRkEquivalentSemanticSpec rho
  optionalAmountZero : OptionalAmountZeroSemanticSpec rho
  optionalHistoryClassify : OptionalHistoryClassifySemanticSpec rho
  optionalRkCompress : OptionalRkCompressSemanticSpec rho
  receiverDivGenNonIdentity : ReceiverDivGenNonIdentitySemanticSpec rho
  receiverTransmissionNonIdentity : ReceiverTransmissionNonIdentitySemanticSpec rho
  receiverAmountIsZero : ReceiverAmountIsZeroSemanticSpec rho
  receiverDivGenCompress : ReceiverDivGenCompressSemanticSpec rho
  receiverTransmissionCompress : ReceiverTransmissionCompressSemanticSpec rho
  receiverNoteCommitment : ReceiverNoteCommitmentSemanticSpec rho
  receiverNoteAssert : ReceiverNoteAssertSemanticSpec rho
  receiverComplianceLeaf : ReceiverComplianceLeafSemanticSpec rho
  receiverCompliancePath : ReceiverCompliancePathSemanticSpec rho
  receiverComplianceAssert : ReceiverComplianceAssertSemanticSpec rho
  receiverNonzeroAssert : ReceiverNonzeroAssertSemanticSpec rho
  receiverAck : ReceiverAckSemanticSpec rho
  changeNoteCommitment : ChangeNoteCommitmentSemanticSpec rho
  changeNoteAssert : ChangeNoteAssertSemanticSpec rho
  routingPrecisionSelect : RoutingPrecisionSelectSemanticSpec rho
  routingParametersHash : RoutingParametersHashSemanticSpec rho
  routingParametersBind : RoutingParametersBindSemanticSpec rho
  routingSenderRouteWord : RoutingSenderRouteWordSemanticSpec rho
  routingReceiverRouteWord : RoutingReceiverRouteWordSemanticSpec rho
  routingPermutationHash : RoutingPermutationHashSemanticSpec rho
  routingPermutationCompose : RoutingPermutationComposeSemanticSpec rho
  routingTag0PublicRange : RoutingTag0PublicRangeSemanticSpec rho
  routingTag0RouteBits : RoutingTag0RouteBitsSemanticSpec rho
  routingTag0RandomWord : RoutingTag0RandomWordSemanticSpec rho
  routingTag0Compose : RoutingTag0ComposeSemanticSpec rho
  routingTag1PublicRange : RoutingTag1PublicRangeSemanticSpec rho
  routingTag1RouteBits : RoutingTag1RouteBitsSemanticSpec rho
  routingTag1RandomWord : RoutingTag1RandomWordSemanticSpec rho
  routingTag1Compose : RoutingTag1ComposeSemanticSpec rho
  thresholdFlag : ThresholdFlagSemanticSpec rho
  senderCoreEpkCompress : SenderCoreEpkCompressSemanticSpec rho
  senderExtEpkCompress : SenderExtEpkCompressSemanticSpec rho
  outputCoreEpkCompress : OutputCoreEpkCompressSemanticSpec rho
  outputExtEpkCompress : OutputExtEpkCompressSemanticSpec rho
  salt0 : Salt0SemanticSpec rho
  salt1 : Salt1SemanticSpec rho
  salt2 : Salt2SemanticSpec rho
  salt3 : Salt3SemanticSpec rho
  salt4 : Salt4SemanticSpec rho
  senderCoreSharedSecret : SenderCoreSharedSecretSemanticSpec rho
  senderExtSharedSecret : SenderExtSharedSecretSemanticSpec rho
  outputCoreSharedSecret : OutputCoreSharedSecretSemanticSpec rho
  outputExtSharedSecret : OutputExtSharedSecretSemanticSpec rho
  detectionEncryption : DetectionEncryptionSemanticSpec rho
  senderAmountEncryption : SenderAmountEncryptionSemanticSpec rho
  senderAddressEncryption : SenderAddressEncryptionSemanticSpec rho
  outputAmountEncryption : OutputAmountEncryptionSemanticSpec rho
  outputAddressEncryption : OutputAddressEncryptionSemanticSpec rho
  metadataSenderSubjectDerivation : MetadataSenderSubjectDerivationSemanticSpec rho
  metadataOutputSubjectDerivation : MetadataOutputSubjectDerivationSemanticSpec rho
  metadataRingIdHash : MetadataRingIdHashSemanticSpec rho
  metadataPolicyIdHash : MetadataPolicyIdHashSemanticSpec rho
  metadataResourceHash : MetadataResourceHashSemanticSpec rho
  metadataPermissionHash : MetadataPermissionHashSemanticSpec rho
  metadataTargetTimestamp : MetadataTargetTimestampSemanticSpec rho
  metadataSenderCoreSalt : MetadataSenderCoreSaltSemanticSpec rho
  metadataSenderExtSalt : MetadataSenderExtSaltSemanticSpec rho
  metadataOutputCoreSalt : MetadataOutputCoreSaltSemanticSpec rho
  metadataOutputExtSalt : MetadataOutputExtSaltSemanticSpec rho
  netBalance : NetBalanceSemanticSpec rho
  balanceCompress : BalanceCompressSemanticSpec rho
  statementHash : StatementHashSemanticSpec rho
  statementAssert : StatementAssertSemanticSpec rho

/-- Normalize every exact provider without weakening or dropping a field. -/
theorem transferSemanticProviders_of_exact
    (rho : Nat → DeployedF)
    (exactProviders : TransferExactProviders rho) :
    TransferSemanticProviders rho := by
  exact {
      isRegulatedBoolean := by
        change Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec (Seg1.localRho rho)
        exact exactProviders.assetRegistry.isRegulatedBoolean
      authAkNonIdentity := by
        change Deployed.Templates.Semantics.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (Seg3.localRho rho)
        exact exactProviders.canonicalSender.authAkNonIdentity
      senderDivGenNonIdentity := by
        change Deployed.Templates.Semantics.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (Seg4.localRho rho)
        exact exactProviders.canonicalSender.senderDivGenNonIdentity
      assetIdNonzero := by
        change Deployed.Templates.Semantics.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (Seg5.localRho rho)
        exact exactProviders.assetRegistry.assetIdNonzero
      effectiveRingPk := by
        change Deployed.Templates.Semantics.TSelectPoint_cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799.spec (Seg6.localRho rho)
        exact exactProviders.complianceTranscript.effectiveRingPk
      effectiveDkPub := by
        change Deployed.Templates.Semantics.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975.spec (Seg7.localRho rho)
        exact exactProviders.complianceTranscript.effectiveDkPub
      effectiveRingIdHash := by
        change Deployed.Templates.Semantics.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.spec (Seg8.localRho rho)
        exact exactProviders.complianceTranscript.effectiveRingIdHash
      effectivePolicyIdHash := by
        change Deployed.Templates.Semantics.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.spec (Seg9.localRho rho)
        exact exactProviders.complianceTranscript.effectivePolicyIdHash
      effectiveResourceHash := by
        change Deployed.Templates.Semantics.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.spec (Seg10.localRho rho)
        exact exactProviders.complianceTranscript.effectiveResourceHash
      effectivePermissionHash := by
        change Deployed.Templates.Semantics.TSelectField_0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e.spec (Seg11.localRho rho)
        exact exactProviders.complianceTranscript.effectivePermissionHash
      senderDivGenCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg12.localRho rho)
        exact exactProviders.canonicalSender.senderDivGenCompress
      senderTransmissionCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg13.localRho rho)
        exact exactProviders.canonicalSender.senderTransmissionCompress
      incomingViewingKeyNonzero := by
        change Deployed.Templates.Semantics.TAssertNe_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (Seg14.localRho rho)
        exact exactProviders.canonicalSender.incomingViewingKeyNonzero
      senderDtk := by
        change Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c.spec (Seg15.localRho rho)
        exact exactProviders.canonicalSender.senderDtk
      senderTransmissionEquivalent := by
        change Deployed.Templates.Semantics.TDecafAssertEquivalent_337547ecab9ed69ef703225ce3fb67ba58652a95490dc7e75be736b205e39646.spec (Seg16.localRho rho)
        exact exactProviders.canonicalSender.senderTransmissionEquivalent
      senderTransmissionNonIdentity := by
        change Deployed.Templates.Semantics.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (Seg17.localRho rho)
        exact exactProviders.canonicalSender.senderTransmissionNonIdentity
      assetDkCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg18.localRho rho)
        exact exactProviders.assetRegistry.assetDkCompress
      assetParamsHash := by
        change Deployed.Templates.Semantics.TGadgetAssetRegistryParamsHash_d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086.spec (Seg19.localRho rho)
        exact exactProviders.assetRegistry.assetParamsHash
      assetRingPkCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg20.localRho rho)
        exact exactProviders.assetRegistry.assetRingPkCompress
      assetRingHash := by
        change Deployed.Templates.Semantics.TGadgetAssetRegistryRingHash_fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2.spec (Seg21.localRho rho)
        exact exactProviders.assetRegistry.assetRingHash
      assetLeafHash := by
        change Deployed.Templates.Semantics.TGadgetAssetRegistryLeafHash_9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744.spec (Seg22.localRho rho)
        exact exactProviders.assetRegistry.assetLeafHash
      assetPath := by
        change Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.spec (Seg23.localRho rho)
        exact exactProviders.assetRegistry.assetPath
      assetRootAssert := by
        change Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec (Seg24.localRho rho)
        exact exactProviders.assetRegistry.assetRootAssert
      assetGap := by
        change Deployed.Templates.Semantics.TGadgetAssetRegistryGap_591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16.spec (Seg25.localRho rho)
        exact exactProviders.assetRegistry.assetGap
      assetGapAccept := by
        change Deployed.Templates.Semantics.TAssertEq_8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c.spec (Seg26.localRho rho)
        exact exactProviders.assetRegistry.assetGapAccept
      senderComplianceLeaf := by
        change Deployed.Templates.Semantics.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.spec (Seg27.localRho rho)
        exact exactProviders.senderCompliance.senderComplianceLeaf
      senderCompliancePath := by
        change Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.spec (Seg28.localRho rho)
        exact exactProviders.senderCompliance.senderCompliancePath
      senderComplianceAssert := by
        change Deployed.Templates.Semantics.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d.spec (Seg29.localRho rho)
        exact exactProviders.senderCompliance.senderComplianceAssert
      senderAck := by
        change Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.spec (Seg30.localRho rho)
        exact exactProviders.senderCompliance.senderAck
      requiredNoteCommitment := by
        change Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.spec (Seg32.localRho rho)
        exact exactProviders.requiredSpend.requiredNoteCommitment
      requiredNullifier := by
        change Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4.spec (Seg33.localRho rho)
        exact exactProviders.requiredSpend.requiredNullifier
      requiredStatePath := by
        change Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.spec (Seg34.localRho rho)
        exact exactProviders.requiredSpend.requiredStatePath
      requiredNullifierAssert := by
        change Deployed.Templates.Semantics.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b.spec (Seg35.localRho rho)
        exact exactProviders.requiredSpend.requiredNullifierAssert
      requiredAnchorAssert := by
        change Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec (Seg36.localRho rho)
        exact exactProviders.requiredSpend.requiredAnchorAssert
      requiredRvk := by
        change Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.spec (Seg37.localRho rho)
        exact exactProviders.requiredSpend.requiredRvk
      requiredRkEquivalent := by
        change Deployed.Templates.Semantics.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec (Seg38.localRho rho)
        exact exactProviders.requiredSpend.requiredRkEquivalent
      requiredHistoryClassify := by
        change Deployed.Templates.Semantics.THistoryClassify_24943fd2154aa0ac8bbf9adce870214e50badfb7c18cba54c33b68fcd9222905.spec (Seg39.localRho rho)
        exact exactProviders.requiredSpend.requiredHistoryClassify
      requiredRkCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg40.localRho rho)
        exact exactProviders.requiredSpend.requiredRkCompress
      optionalIsDummyBoolean := by
        change Deployed.Templates.Semantics.TAssertBoolean_469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc.spec (Seg43.localRho rho)
        exact exactProviders.optionalSpend.optionalIsDummyBoolean
      optionalNoteCommitment := by
        change Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.spec (Seg44.localRho rho)
        exact exactProviders.optionalSpend.optionalNoteCommitment
      optionalNullifier := by
        change Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4.spec (Seg45.localRho rho)
        exact exactProviders.optionalSpend.optionalNullifier
      optionalStatePath := by
        change Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.spec (Seg46.localRho rho)
        exact exactProviders.optionalSpend.optionalStatePath
      optionalSyntheticNullifier := by
        change Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.spec (Seg47.localRho rho)
        exact exactProviders.optionalSpend.optionalSyntheticNullifier
      optionalNullifierMux := by
        change Deployed.Templates.Semantics.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.spec (Seg48.localRho rho)
        exact exactProviders.optionalSpend.optionalNullifierMux
      optionalNullifierAssert := by
        change Deployed.Templates.Semantics.TAssertEq_460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3.spec (Seg49.localRho rho)
        exact exactProviders.optionalSpend.optionalNullifierAssert
      optionalAnchorAssert := by
        change Deployed.Templates.Semantics.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03.spec (Seg50.localRho rho)
        exact exactProviders.optionalSpend.optionalAnchorAssert
      optionalRvk := by
        change Deployed.Templates.Semantics.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f.spec (Seg51.localRho rho)
        exact exactProviders.optionalSpend.optionalRvk
      optionalRkEquivalent := by
        change Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.spec (Seg52.localRho rho)
        exact exactProviders.optionalSpend.optionalRkEquivalent
      optionalAmountZero := by
        change Deployed.Templates.Semantics.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.spec (Seg53.localRho rho)
        exact exactProviders.optionalSpend.optionalAmountZero
      optionalHistoryClassify := by
        change Deployed.Templates.Semantics.THistoryClassify_63bcfde2aa853f39c988314bacdeeddfe5aa236959c22bd9f97803415badf545.spec (Seg54.localRho rho)
        exact exactProviders.optionalSpend.optionalHistoryClassify
      optionalRkCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg55.localRho rho)
        exact exactProviders.optionalSpend.optionalRkCompress
      receiverDivGenNonIdentity := by
        change Deployed.Templates.Semantics.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (Seg58.localRho rho)
        exact exactProviders.receiverOutput.receiverDivGenNonIdentity
      receiverTransmissionNonIdentity := by
        change Deployed.Templates.Semantics.TAssertDecafNonIdentity_50cbccf8f817daa8e44c093750c80e184e1fe6d1fc8286031e7838dfb6b344fd.spec (Seg59.localRho rho)
        exact exactProviders.receiverOutput.receiverTransmissionNonIdentity
      receiverAmountIsZero := by
        change Deployed.Templates.Semantics.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991.spec (Seg60.localRho rho)
        exact exactProviders.receiverOutput.receiverAmountIsZero
      receiverDivGenCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg61.localRho rho)
        exact exactProviders.receiverOutput.receiverDivGenCompress
      receiverTransmissionCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg62.localRho rho)
        exact exactProviders.receiverOutput.receiverTransmissionCompress
      receiverNoteCommitment := by
        change Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.spec (Seg63.localRho rho)
        exact exactProviders.receiverOutput.receiverNoteCommitment
      receiverNoteAssert := by
        change Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.spec (Seg64.localRho rho)
        exact exactProviders.receiverOutput.receiverNoteAssert
      receiverComplianceLeaf := by
        change Deployed.Templates.Semantics.TGadgetComplianceLeaf_dcb0a1040c535cf394b8bda4f381260121926f7d477fb80a22e4e84b0cb431bc.spec (Seg65.localRho rho)
        exact exactProviders.receiverCompliance.receiverComplianceLeaf
      receiverCompliancePath := by
        change Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.spec (Seg66.localRho rho)
        exact exactProviders.receiverCompliance.receiverCompliancePath
      receiverComplianceAssert := by
        change Deployed.Templates.Semantics.TAssertEqIf_8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d.spec (Seg67.localRho rho)
        exact exactProviders.receiverCompliance.receiverComplianceAssert
      receiverNonzeroAssert := by
        change Deployed.Templates.Semantics.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd.spec (Seg68.localRho rho)
        exact exactProviders.receiverOutput.receiverNonzeroAssert
      receiverAck := by
        change Deployed.Templates.Semantics.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1.spec (Seg69.localRho rho)
        exact exactProviders.receiverCompliance.receiverAck
      changeNoteCommitment := by
        change Deployed.Templates.Semantics.TGadgetNoteCommitment_252c34d237e9b74178cdbbf5a9717debfc74e1b16a3efce054302a298f56fd4c.spec (Seg72.localRho rho)
        exact exactProviders.changeOutput.changeNoteCommitment
      changeNoteAssert := by
        change Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.spec (Seg73.localRho rho)
        exact exactProviders.changeOutput.changeNoteAssert
      routingPrecisionSelect := by
        change Deployed.Templates.Semantics.TRoutingPrecisionSelect_125b62f4637be641a0e83ca5b67e6b0fde3dc4a203b53954c10e341830651161.spec (Seg74.localRho rho)
        exact exactProviders.statementBinding.routingPrecisionSelect
      routingParametersHash := by
        change Deployed.Templates.Semantics.TRoutingParametersHash_4ac07381879f7b48f8431947af1db1328923b54907622f47df5426e5ea9b6653.spec (Seg75.localRho rho)
        exact exactProviders.statementBinding.routingParametersHash
      routingParametersBind := by
        change Deployed.Templates.Semantics.TRoutingParametersBind_46f527d3e36d976837f6c928381fedce823324751461dd2d8bd615716c786979.spec (Seg76.localRho rho)
        exact exactProviders.statementBinding.routingParametersBind
      routingSenderRouteWord := by
        change Deployed.Templates.Semantics.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279.spec (Seg77.localRho rho)
        exact exactProviders.statementBinding.routingSenderRouteWord
      routingReceiverRouteWord := by
        change Deployed.Templates.Semantics.TRoutingRouteWord_8ea7a07420a20d4c8b83bc50f00b755ab22e9fe9b8b9f9d669003cd2a5fb5279.spec (Seg78.localRho rho)
        exact exactProviders.statementBinding.routingReceiverRouteWord
      routingPermutationHash := by
        change Deployed.Templates.Semantics.TRoutingPermutationHash_e192a8182110fdbc13b07c4a18e32a203dbb18e8203962744b80b191a845a030.spec (Seg79.localRho rho)
        exact exactProviders.statementBinding.routingPermutationHash
      routingPermutationCompose := by
        change Deployed.Templates.Semantics.TRoutingPermutationCompose_38126e47de90298f59bd17b5452e92d8d2b20161cbaf377aef252b7e1fe3c573.spec (Seg80.localRho rho)
        exact exactProviders.statementBinding.routingPermutationCompose
      routingTag0PublicRange := by
        change Deployed.Templates.Semantics.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227.spec (Seg81.localRho rho)
        exact exactProviders.statementBinding.routingTag0PublicRange
      routingTag0RouteBits := by
        change Deployed.Templates.Semantics.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374.spec (Seg82.localRho rho)
        exact exactProviders.statementBinding.routingTag0RouteBits
      routingTag0RandomWord := by
        change Deployed.Templates.Semantics.TRoutingTagRandomWord_4480567d0ad9109ab45843d493f32a0ed4ed6acebd0be5471905902706d09764.spec (Seg83.localRho rho)
        exact exactProviders.statementBinding.routingTag0RandomWord
      routingTag0Compose := by
        change Deployed.Templates.Semantics.TRoutingTagCompose_96b7bad6a126477ad863859abf885df171ba39077e195c445287f1fe7feb8aed.spec (Seg84.localRho rho)
        exact exactProviders.statementBinding.routingTag0Compose
      routingTag1PublicRange := by
        change Deployed.Templates.Semantics.TRoutingTagPublicRange_59e76d0fcd4dbc54aa0f71ef6780ba9462e5a0dc5ed4d67c4889d339632c9227.spec (Seg85.localRho rho)
        exact exactProviders.statementBinding.routingTag1PublicRange
      routingTag1RouteBits := by
        change Deployed.Templates.Semantics.TRoutingTagRouteBits_e6d7e42306aedc03d5686a40e7e216dcf3e8dda08833c3dfcf4551391cbee374.spec (Seg86.localRho rho)
        exact exactProviders.statementBinding.routingTag1RouteBits
      routingTag1RandomWord := by
        change Deployed.Templates.Semantics.TRoutingTagRandomWord_214c257798ce9ea73b964e6f1d8353234a318db1530ede36af2658731198a3fd.spec (Seg87.localRho rho)
        exact exactProviders.statementBinding.routingTag1RandomWord
      routingTag1Compose := by
        change Deployed.Templates.Semantics.TRoutingTagCompose_693a5e7e265dd4badbbd5ea9a64eb22c4ba3b423d34f08e4ae1f94375a8d3fbb.spec (Seg88.localRho rho)
        exact exactProviders.statementBinding.routingTag1Compose
      thresholdFlag := by
        change Deployed.Templates.Semantics.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202.spec (Seg91.localRho rho)
        exact exactProviders.complianceTranscript.thresholdFlag
      senderCoreEpkCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg92.localRho rho)
        exact exactProviders.complianceTranscript.senderCoreEpkCompress
      senderExtEpkCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg93.localRho rho)
        exact exactProviders.complianceTranscript.senderExtEpkCompress
      outputCoreEpkCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg94.localRho rho)
        exact exactProviders.complianceTranscript.outputCoreEpkCompress
      outputExtEpkCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg95.localRho rho)
        exact exactProviders.complianceTranscript.outputExtEpkCompress
      salt0 := by
        change Deployed.Templates.Semantics.TGadgetTransferSalt_f771a421e77b34e798b9a3684411305ddf046c31c0dcdd45f55a3341904f59c7.spec (Seg96.localRho rho)
        exact exactProviders.complianceTranscript.salt0
      salt1 := by
        change Deployed.Templates.Semantics.TGadgetTransferSalt_6102356f10803bf3a14c647c07a6804c8be9ed25097c1247a5f07e703b892326.spec (Seg97.localRho rho)
        exact exactProviders.complianceTranscript.salt1
      salt2 := by
        change Deployed.Templates.Semantics.TGadgetTransferSalt_7ca1f127ae2aba8ae3ff0daa0762a2981d18913d868dc2742d5a74f22684c557.spec (Seg98.localRho rho)
        exact exactProviders.complianceTranscript.salt2
      salt3 := by
        change Deployed.Templates.Semantics.TGadgetTransferSalt_afc1dab7ce4cb1d665f58c0e62c3211c7152d792a45bd80acbbe3444a7be5d4e.spec (Seg99.localRho rho)
        exact exactProviders.complianceTranscript.salt3
      salt4 := by
        change Deployed.Templates.Semantics.TGadgetTransferSalt_c897628fb413fa804e577bd04151d6ba3b460e6052b87493c17e1529720c3945.spec (Seg100.localRho rho)
        exact exactProviders.complianceTranscript.salt4
      senderCoreSharedSecret := by
        change Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.spec (Seg101.localRho rho)
        exact exactProviders.complianceTranscript.senderCoreSharedSecret
      senderExtSharedSecret := by
        change Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.spec (Seg102.localRho rho)
        exact exactProviders.complianceTranscript.senderExtSharedSecret
      outputCoreSharedSecret := by
        change Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.spec (Seg103.localRho rho)
        exact exactProviders.complianceTranscript.outputCoreSharedSecret
      outputExtSharedSecret := by
        change Deployed.Templates.Semantics.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41.spec (Seg104.localRho rho)
        exact exactProviders.complianceTranscript.outputExtSharedSecret
      detectionEncryption := by
        change Deployed.Templates.Semantics.TGadgetPoseidonEncryptionDetection_63775682d65609fcb7205087c01734b96d2d3337f3d614c8ffd568df5c38c49c.spec (Seg105.localRho rho)
        exact exactProviders.complianceTranscript.detectionEncryption
      senderAmountEncryption := by
        change Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e.spec (Seg106.localRho rho)
        exact exactProviders.complianceTranscript.senderAmountEncryption
      senderAddressEncryption := by
        change Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.spec (Seg107.localRho rho)
        exact exactProviders.complianceTranscript.senderAddressEncryption
      outputAmountEncryption := by
        change Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAmount_da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e.spec (Seg108.localRho rho)
        exact exactProviders.complianceTranscript.outputAmountEncryption
      outputAddressEncryption := by
        change Deployed.Templates.Semantics.TGadgetPoseidonEncryptionAddress_9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f.spec (Seg109.localRho rho)
        exact exactProviders.complianceTranscript.outputAddressEncryption
      metadataSenderSubjectDerivation := by
        change Deployed.Templates.Semantics.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd.spec (Seg111.localRho rho)
        exact exactProviders.complianceTranscript.metadataSenderSubjectDerivation
      metadataOutputSubjectDerivation := by
        change Deployed.Templates.Semantics.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd.spec (Seg112.localRho rho)
        exact exactProviders.complianceTranscript.metadataOutputSubjectDerivation
      metadataRingIdHash := by
        change Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.spec (Seg113.localRho rho)
        exact exactProviders.complianceTranscript.metadataRingIdHash
      metadataPolicyIdHash := by
        change Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.spec (Seg114.localRho rho)
        exact exactProviders.complianceTranscript.metadataPolicyIdHash
      metadataResourceHash := by
        change Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.spec (Seg115.localRho rho)
        exact exactProviders.complianceTranscript.metadataResourceHash
      metadataPermissionHash := by
        change Deployed.Templates.Semantics.TAssertEq_f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707.spec (Seg116.localRho rho)
        exact exactProviders.complianceTranscript.metadataPermissionHash
      metadataTargetTimestamp := by
        change Deployed.Templates.Semantics.TAssertEq_d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd.spec (Seg117.localRho rho)
        exact exactProviders.complianceTranscript.metadataTargetTimestamp
      metadataSenderCoreSalt := by
        change Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.spec (Seg118.localRho rho)
        exact exactProviders.complianceTranscript.metadataSenderCoreSalt
      metadataSenderExtSalt := by
        change Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.spec (Seg119.localRho rho)
        exact exactProviders.complianceTranscript.metadataSenderExtSalt
      metadataOutputCoreSalt := by
        change Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.spec (Seg120.localRho rho)
        exact exactProviders.complianceTranscript.metadataOutputCoreSalt
      metadataOutputExtSalt := by
        change Deployed.Templates.Semantics.TAssertEq_49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed.spec (Seg121.localRho rho)
        exact exactProviders.complianceTranscript.metadataOutputExtSalt
      netBalance := by
        change Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.spec (Seg123.localRho rho)
        exact exactProviders.balanceComputedAndCompressed.netBalance
      balanceCompress := by
        change Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec (Seg124.localRho rho)
        exact exactProviders.balanceComputedAndCompressed.balanceCompress
      statementHash := by
        change Deployed.Templates.Semantics.TStatementHash_0e54d8ea5fc5d0d95e113695b4b0340e4b6bab4d5abb13df4d51436c93755a86.spec (Seg126.localRho rho)
        exact exactProviders.statementBinding.statementHash
      statementAssert := by
        change Deployed.Templates.Semantics.TAssertEq_001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69.spec (Seg127.localRho rho)
        exact exactProviders.statementBinding.statementAssert
  }

/-- The `required_state_path` provider consumes the generated action path exactly. -/
theorem requiredStatePathProviderPath_eq
    (rho : Nat → DeployedF) :
    StateMembership925Bridge.segmentPath (RequiredStatePathValuation rho) =
      Deployed.TransferRefinement.C.requiredPath rho := by
  funext level sibling
  rcases level with ⟨level, level_lt⟩
  rcases sibling with ⟨sibling, sibling_lt⟩
  interval_cases level <;> interval_cases sibling
  · change RequiredStatePathValuation rho 290 = spend0StateProofPath69 rho
    simpa only [
      spend0StateProofPath69,
      spend0StateProofPath69LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt290 rho
  · change RequiredStatePathValuation rho 292 = spend0StateProofPath70 rho
    simpa only [
      spend0StateProofPath70,
      spend0StateProofPath70LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt292 rho
  · change RequiredStatePathValuation rho 295 = spend0StateProofPath71 rho
    simpa only [
      spend0StateProofPath71,
      spend0StateProofPath71LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt295 rho
  · change RequiredStatePathValuation rho 653 = spend0StateProofPath66 rho
    simpa only [
      spend0StateProofPath66,
      spend0StateProofPath66LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt653 rho
  · change RequiredStatePathValuation rho 655 = spend0StateProofPath67 rho
    simpa only [
      spend0StateProofPath67,
      spend0StateProofPath67LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt655 rho
  · change RequiredStatePathValuation rho 658 = spend0StateProofPath68 rho
    simpa only [
      spend0StateProofPath68,
      spend0StateProofPath68LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt658 rho
  · change RequiredStatePathValuation rho 1016 = spend0StateProofPath63 rho
    simpa only [
      spend0StateProofPath63,
      spend0StateProofPath63LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt1016 rho
  · change RequiredStatePathValuation rho 1018 = spend0StateProofPath64 rho
    simpa only [
      spend0StateProofPath64,
      spend0StateProofPath64LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt1018 rho
  · change RequiredStatePathValuation rho 1021 = spend0StateProofPath65 rho
    simpa only [
      spend0StateProofPath65,
      spend0StateProofPath65LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt1021 rho
  · change RequiredStatePathValuation rho 1379 = spend0StateProofPath60 rho
    simpa only [
      spend0StateProofPath60,
      spend0StateProofPath60LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt1379 rho
  · change RequiredStatePathValuation rho 1381 = spend0StateProofPath61 rho
    simpa only [
      spend0StateProofPath61,
      spend0StateProofPath61LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt1381 rho
  · change RequiredStatePathValuation rho 1384 = spend0StateProofPath62 rho
    simpa only [
      spend0StateProofPath62,
      spend0StateProofPath62LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt1384 rho
  · change RequiredStatePathValuation rho 1742 = spend0StateProofPath57 rho
    simpa only [
      spend0StateProofPath57,
      spend0StateProofPath57LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt1742 rho
  · change RequiredStatePathValuation rho 1744 = spend0StateProofPath58 rho
    simpa only [
      spend0StateProofPath58,
      spend0StateProofPath58LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt1744 rho
  · change RequiredStatePathValuation rho 1747 = spend0StateProofPath59 rho
    simpa only [
      spend0StateProofPath59,
      spend0StateProofPath59LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt1747 rho
  · change RequiredStatePathValuation rho 2105 = spend0StateProofPath54 rho
    simpa only [
      spend0StateProofPath54,
      spend0StateProofPath54LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt2105 rho
  · change RequiredStatePathValuation rho 2107 = spend0StateProofPath55 rho
    simpa only [
      spend0StateProofPath55,
      spend0StateProofPath55LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt2107 rho
  · change RequiredStatePathValuation rho 2110 = spend0StateProofPath56 rho
    simpa only [
      spend0StateProofPath56,
      spend0StateProofPath56LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt2110 rho
  · change RequiredStatePathValuation rho 2468 = spend0StateProofPath51 rho
    simpa only [
      spend0StateProofPath51,
      spend0StateProofPath51LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt2468 rho
  · change RequiredStatePathValuation rho 2470 = spend0StateProofPath52 rho
    simpa only [
      spend0StateProofPath52,
      spend0StateProofPath52LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt2470 rho
  · change RequiredStatePathValuation rho 2473 = spend0StateProofPath53 rho
    simpa only [
      spend0StateProofPath53,
      spend0StateProofPath53LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt2473 rho
  · change RequiredStatePathValuation rho 2831 = spend0StateProofPath48 rho
    simpa only [
      spend0StateProofPath48,
      spend0StateProofPath48LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt2831 rho
  · change RequiredStatePathValuation rho 2833 = spend0StateProofPath49 rho
    simpa only [
      spend0StateProofPath49,
      spend0StateProofPath49LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt2833 rho
  · change RequiredStatePathValuation rho 2836 = spend0StateProofPath50 rho
    simpa only [
      spend0StateProofPath50,
      spend0StateProofPath50LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt2836 rho
  · change RequiredStatePathValuation rho 3194 = spend0StateProofPath45 rho
    simpa only [
      spend0StateProofPath45,
      spend0StateProofPath45LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt3194 rho
  · change RequiredStatePathValuation rho 3196 = spend0StateProofPath46 rho
    simpa only [
      spend0StateProofPath46,
      spend0StateProofPath46LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt3196 rho
  · change RequiredStatePathValuation rho 3199 = spend0StateProofPath47 rho
    simpa only [
      spend0StateProofPath47,
      spend0StateProofPath47LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt3199 rho
  · change RequiredStatePathValuation rho 3557 = spend0StateProofPath42 rho
    simpa only [
      spend0StateProofPath42,
      spend0StateProofPath42LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt3557 rho
  · change RequiredStatePathValuation rho 3559 = spend0StateProofPath43 rho
    simpa only [
      spend0StateProofPath43,
      spend0StateProofPath43LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt3559 rho
  · change RequiredStatePathValuation rho 3562 = spend0StateProofPath44 rho
    simpa only [
      spend0StateProofPath44,
      spend0StateProofPath44LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt3562 rho
  · change RequiredStatePathValuation rho 3920 = spend0StateProofPath39 rho
    simpa only [
      spend0StateProofPath39,
      spend0StateProofPath39LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt3920 rho
  · change RequiredStatePathValuation rho 3922 = spend0StateProofPath40 rho
    simpa only [
      spend0StateProofPath40,
      spend0StateProofPath40LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt3922 rho
  · change RequiredStatePathValuation rho 3925 = spend0StateProofPath41 rho
    simpa only [
      spend0StateProofPath41,
      spend0StateProofPath41LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt3925 rho
  · change RequiredStatePathValuation rho 4283 = spend0StateProofPath36 rho
    simpa only [
      spend0StateProofPath36,
      spend0StateProofPath36LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt4283 rho
  · change RequiredStatePathValuation rho 4285 = spend0StateProofPath37 rho
    simpa only [
      spend0StateProofPath37,
      spend0StateProofPath37LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt4285 rho
  · change RequiredStatePathValuation rho 4288 = spend0StateProofPath38 rho
    simpa only [
      spend0StateProofPath38,
      spend0StateProofPath38LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt4288 rho
  · change RequiredStatePathValuation rho 4646 = spend0StateProofPath33 rho
    simpa only [
      spend0StateProofPath33,
      spend0StateProofPath33LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt4646 rho
  · change RequiredStatePathValuation rho 4648 = spend0StateProofPath34 rho
    simpa only [
      spend0StateProofPath34,
      spend0StateProofPath34LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt4648 rho
  · change RequiredStatePathValuation rho 4651 = spend0StateProofPath35 rho
    simpa only [
      spend0StateProofPath35,
      spend0StateProofPath35LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt4651 rho
  · change RequiredStatePathValuation rho 5009 = spend0StateProofPath30 rho
    simpa only [
      spend0StateProofPath30,
      spend0StateProofPath30LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt5009 rho
  · change RequiredStatePathValuation rho 5011 = spend0StateProofPath31 rho
    simpa only [
      spend0StateProofPath31,
      spend0StateProofPath31LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt5011 rho
  · change RequiredStatePathValuation rho 5014 = spend0StateProofPath32 rho
    simpa only [
      spend0StateProofPath32,
      spend0StateProofPath32LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt5014 rho
  · change RequiredStatePathValuation rho 5372 = spend0StateProofPath27 rho
    simpa only [
      spend0StateProofPath27,
      spend0StateProofPath27LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt5372 rho
  · change RequiredStatePathValuation rho 5374 = spend0StateProofPath28 rho
    simpa only [
      spend0StateProofPath28,
      spend0StateProofPath28LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt5374 rho
  · change RequiredStatePathValuation rho 5377 = spend0StateProofPath29 rho
    simpa only [
      spend0StateProofPath29,
      spend0StateProofPath29LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt5377 rho
  · change RequiredStatePathValuation rho 5735 = spend0StateProofPath24 rho
    simpa only [
      spend0StateProofPath24,
      spend0StateProofPath24LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt5735 rho
  · change RequiredStatePathValuation rho 5737 = spend0StateProofPath25 rho
    simpa only [
      spend0StateProofPath25,
      spend0StateProofPath25LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt5737 rho
  · change RequiredStatePathValuation rho 5740 = spend0StateProofPath26 rho
    simpa only [
      spend0StateProofPath26,
      spend0StateProofPath26LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt5740 rho
  · change RequiredStatePathValuation rho 6098 = spend0StateProofPath21 rho
    simpa only [
      spend0StateProofPath21,
      spend0StateProofPath21LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt6098 rho
  · change RequiredStatePathValuation rho 6100 = spend0StateProofPath22 rho
    simpa only [
      spend0StateProofPath22,
      spend0StateProofPath22LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt6100 rho
  · change RequiredStatePathValuation rho 6103 = spend0StateProofPath23 rho
    simpa only [
      spend0StateProofPath23,
      spend0StateProofPath23LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt6103 rho
  · change RequiredStatePathValuation rho 6461 = spend0StateProofPath18 rho
    simpa only [
      spend0StateProofPath18,
      spend0StateProofPath18LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt6461 rho
  · change RequiredStatePathValuation rho 6463 = spend0StateProofPath19 rho
    simpa only [
      spend0StateProofPath19,
      spend0StateProofPath19LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt6463 rho
  · change RequiredStatePathValuation rho 6466 = spend0StateProofPath20 rho
    simpa only [
      spend0StateProofPath20,
      spend0StateProofPath20LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt6466 rho
  · change RequiredStatePathValuation rho 6824 = spend0StateProofPath15 rho
    simpa only [
      spend0StateProofPath15,
      spend0StateProofPath15LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt6824 rho
  · change RequiredStatePathValuation rho 6826 = spend0StateProofPath16 rho
    simpa only [
      spend0StateProofPath16,
      spend0StateProofPath16LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt6826 rho
  · change RequiredStatePathValuation rho 6829 = spend0StateProofPath17 rho
    simpa only [
      spend0StateProofPath17,
      spend0StateProofPath17LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt6829 rho
  · change RequiredStatePathValuation rho 7187 = spend0StateProofPath12 rho
    simpa only [
      spend0StateProofPath12,
      spend0StateProofPath12LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt7187 rho
  · change RequiredStatePathValuation rho 7189 = spend0StateProofPath13 rho
    simpa only [
      spend0StateProofPath13,
      spend0StateProofPath13LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt7189 rho
  · change RequiredStatePathValuation rho 7192 = spend0StateProofPath14 rho
    simpa only [
      spend0StateProofPath14,
      spend0StateProofPath14LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt7192 rho
  · change RequiredStatePathValuation rho 7550 = spend0StateProofPath9 rho
    simpa only [
      spend0StateProofPath9,
      spend0StateProofPath9LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt7550 rho
  · change RequiredStatePathValuation rho 7552 = spend0StateProofPath10 rho
    simpa only [
      spend0StateProofPath10,
      spend0StateProofPath10LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt7552 rho
  · change RequiredStatePathValuation rho 7555 = spend0StateProofPath11 rho
    simpa only [
      spend0StateProofPath11,
      spend0StateProofPath11LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt7555 rho
  · change RequiredStatePathValuation rho 7913 = spend0StateProofPath6 rho
    simpa only [
      spend0StateProofPath6,
      spend0StateProofPath6LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt7913 rho
  · change RequiredStatePathValuation rho 7915 = spend0StateProofPath7 rho
    simpa only [
      spend0StateProofPath7,
      spend0StateProofPath7LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt7915 rho
  · change RequiredStatePathValuation rho 7918 = spend0StateProofPath8 rho
    simpa only [
      spend0StateProofPath8,
      spend0StateProofPath8LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt7918 rho
  · change RequiredStatePathValuation rho 8276 = spend0StateProofPath3 rho
    simpa only [
      spend0StateProofPath3,
      spend0StateProofPath3LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt8276 rho
  · change RequiredStatePathValuation rho 8278 = spend0StateProofPath4 rho
    simpa only [
      spend0StateProofPath4,
      spend0StateProofPath4LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt8278 rho
  · change RequiredStatePathValuation rho 8281 = spend0StateProofPath5 rho
    simpa only [
      spend0StateProofPath5,
      spend0StateProofPath5LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt8281 rho
  · change RequiredStatePathValuation rho 8639 = spend0StateProofPath0 rho
    simpa only [
      spend0StateProofPath0,
      spend0StateProofPath0LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt8639 rho
  · change RequiredStatePathValuation rho 8641 = spend0StateProofPath1 rho
    simpa only [
      spend0StateProofPath1,
      spend0StateProofPath1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt8641 rho
  · change RequiredStatePathValuation rho 8644 = spend0StateProofPath2 rho
    simpa only [
      spend0StateProofPath2,
      spend0StateProofPath2LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      requiredStatePathAt8644 rho

/-- The `optional_state_path` provider consumes the generated action path exactly. -/
theorem optionalStatePathProviderPath_eq
    (rho : Nat → DeployedF) :
    StateMembership925Bridge.segmentPath (OptionalStatePathValuation rho) =
      Deployed.TransferRefinement.C.optionalPath rho := by
  funext level sibling
  rcases level with ⟨level, level_lt⟩
  rcases sibling with ⟨sibling, sibling_lt⟩
  interval_cases level <;> interval_cases sibling
  · change OptionalStatePathValuation rho 290 = spend1StateProofPath69 rho
    simpa only [
      spend1StateProofPath69,
      spend1StateProofPath69LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt290 rho
  · change OptionalStatePathValuation rho 292 = spend1StateProofPath70 rho
    simpa only [
      spend1StateProofPath70,
      spend1StateProofPath70LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt292 rho
  · change OptionalStatePathValuation rho 295 = spend1StateProofPath71 rho
    simpa only [
      spend1StateProofPath71,
      spend1StateProofPath71LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt295 rho
  · change OptionalStatePathValuation rho 653 = spend1StateProofPath66 rho
    simpa only [
      spend1StateProofPath66,
      spend1StateProofPath66LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt653 rho
  · change OptionalStatePathValuation rho 655 = spend1StateProofPath67 rho
    simpa only [
      spend1StateProofPath67,
      spend1StateProofPath67LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt655 rho
  · change OptionalStatePathValuation rho 658 = spend1StateProofPath68 rho
    simpa only [
      spend1StateProofPath68,
      spend1StateProofPath68LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt658 rho
  · change OptionalStatePathValuation rho 1016 = spend1StateProofPath63 rho
    simpa only [
      spend1StateProofPath63,
      spend1StateProofPath63LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt1016 rho
  · change OptionalStatePathValuation rho 1018 = spend1StateProofPath64 rho
    simpa only [
      spend1StateProofPath64,
      spend1StateProofPath64LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt1018 rho
  · change OptionalStatePathValuation rho 1021 = spend1StateProofPath65 rho
    simpa only [
      spend1StateProofPath65,
      spend1StateProofPath65LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt1021 rho
  · change OptionalStatePathValuation rho 1379 = spend1StateProofPath60 rho
    simpa only [
      spend1StateProofPath60,
      spend1StateProofPath60LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt1379 rho
  · change OptionalStatePathValuation rho 1381 = spend1StateProofPath61 rho
    simpa only [
      spend1StateProofPath61,
      spend1StateProofPath61LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt1381 rho
  · change OptionalStatePathValuation rho 1384 = spend1StateProofPath62 rho
    simpa only [
      spend1StateProofPath62,
      spend1StateProofPath62LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt1384 rho
  · change OptionalStatePathValuation rho 1742 = spend1StateProofPath57 rho
    simpa only [
      spend1StateProofPath57,
      spend1StateProofPath57LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt1742 rho
  · change OptionalStatePathValuation rho 1744 = spend1StateProofPath58 rho
    simpa only [
      spend1StateProofPath58,
      spend1StateProofPath58LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt1744 rho
  · change OptionalStatePathValuation rho 1747 = spend1StateProofPath59 rho
    simpa only [
      spend1StateProofPath59,
      spend1StateProofPath59LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt1747 rho
  · change OptionalStatePathValuation rho 2105 = spend1StateProofPath54 rho
    simpa only [
      spend1StateProofPath54,
      spend1StateProofPath54LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt2105 rho
  · change OptionalStatePathValuation rho 2107 = spend1StateProofPath55 rho
    simpa only [
      spend1StateProofPath55,
      spend1StateProofPath55LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt2107 rho
  · change OptionalStatePathValuation rho 2110 = spend1StateProofPath56 rho
    simpa only [
      spend1StateProofPath56,
      spend1StateProofPath56LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt2110 rho
  · change OptionalStatePathValuation rho 2468 = spend1StateProofPath51 rho
    simpa only [
      spend1StateProofPath51,
      spend1StateProofPath51LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt2468 rho
  · change OptionalStatePathValuation rho 2470 = spend1StateProofPath52 rho
    simpa only [
      spend1StateProofPath52,
      spend1StateProofPath52LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt2470 rho
  · change OptionalStatePathValuation rho 2473 = spend1StateProofPath53 rho
    simpa only [
      spend1StateProofPath53,
      spend1StateProofPath53LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt2473 rho
  · change OptionalStatePathValuation rho 2831 = spend1StateProofPath48 rho
    simpa only [
      spend1StateProofPath48,
      spend1StateProofPath48LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt2831 rho
  · change OptionalStatePathValuation rho 2833 = spend1StateProofPath49 rho
    simpa only [
      spend1StateProofPath49,
      spend1StateProofPath49LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt2833 rho
  · change OptionalStatePathValuation rho 2836 = spend1StateProofPath50 rho
    simpa only [
      spend1StateProofPath50,
      spend1StateProofPath50LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt2836 rho
  · change OptionalStatePathValuation rho 3194 = spend1StateProofPath45 rho
    simpa only [
      spend1StateProofPath45,
      spend1StateProofPath45LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt3194 rho
  · change OptionalStatePathValuation rho 3196 = spend1StateProofPath46 rho
    simpa only [
      spend1StateProofPath46,
      spend1StateProofPath46LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt3196 rho
  · change OptionalStatePathValuation rho 3199 = spend1StateProofPath47 rho
    simpa only [
      spend1StateProofPath47,
      spend1StateProofPath47LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt3199 rho
  · change OptionalStatePathValuation rho 3557 = spend1StateProofPath42 rho
    simpa only [
      spend1StateProofPath42,
      spend1StateProofPath42LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt3557 rho
  · change OptionalStatePathValuation rho 3559 = spend1StateProofPath43 rho
    simpa only [
      spend1StateProofPath43,
      spend1StateProofPath43LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt3559 rho
  · change OptionalStatePathValuation rho 3562 = spend1StateProofPath44 rho
    simpa only [
      spend1StateProofPath44,
      spend1StateProofPath44LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt3562 rho
  · change OptionalStatePathValuation rho 3920 = spend1StateProofPath39 rho
    simpa only [
      spend1StateProofPath39,
      spend1StateProofPath39LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt3920 rho
  · change OptionalStatePathValuation rho 3922 = spend1StateProofPath40 rho
    simpa only [
      spend1StateProofPath40,
      spend1StateProofPath40LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt3922 rho
  · change OptionalStatePathValuation rho 3925 = spend1StateProofPath41 rho
    simpa only [
      spend1StateProofPath41,
      spend1StateProofPath41LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt3925 rho
  · change OptionalStatePathValuation rho 4283 = spend1StateProofPath36 rho
    simpa only [
      spend1StateProofPath36,
      spend1StateProofPath36LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt4283 rho
  · change OptionalStatePathValuation rho 4285 = spend1StateProofPath37 rho
    simpa only [
      spend1StateProofPath37,
      spend1StateProofPath37LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt4285 rho
  · change OptionalStatePathValuation rho 4288 = spend1StateProofPath38 rho
    simpa only [
      spend1StateProofPath38,
      spend1StateProofPath38LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt4288 rho
  · change OptionalStatePathValuation rho 4646 = spend1StateProofPath33 rho
    simpa only [
      spend1StateProofPath33,
      spend1StateProofPath33LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt4646 rho
  · change OptionalStatePathValuation rho 4648 = spend1StateProofPath34 rho
    simpa only [
      spend1StateProofPath34,
      spend1StateProofPath34LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt4648 rho
  · change OptionalStatePathValuation rho 4651 = spend1StateProofPath35 rho
    simpa only [
      spend1StateProofPath35,
      spend1StateProofPath35LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt4651 rho
  · change OptionalStatePathValuation rho 5009 = spend1StateProofPath30 rho
    simpa only [
      spend1StateProofPath30,
      spend1StateProofPath30LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt5009 rho
  · change OptionalStatePathValuation rho 5011 = spend1StateProofPath31 rho
    simpa only [
      spend1StateProofPath31,
      spend1StateProofPath31LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt5011 rho
  · change OptionalStatePathValuation rho 5014 = spend1StateProofPath32 rho
    simpa only [
      spend1StateProofPath32,
      spend1StateProofPath32LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt5014 rho
  · change OptionalStatePathValuation rho 5372 = spend1StateProofPath27 rho
    simpa only [
      spend1StateProofPath27,
      spend1StateProofPath27LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt5372 rho
  · change OptionalStatePathValuation rho 5374 = spend1StateProofPath28 rho
    simpa only [
      spend1StateProofPath28,
      spend1StateProofPath28LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt5374 rho
  · change OptionalStatePathValuation rho 5377 = spend1StateProofPath29 rho
    simpa only [
      spend1StateProofPath29,
      spend1StateProofPath29LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt5377 rho
  · change OptionalStatePathValuation rho 5735 = spend1StateProofPath24 rho
    simpa only [
      spend1StateProofPath24,
      spend1StateProofPath24LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt5735 rho
  · change OptionalStatePathValuation rho 5737 = spend1StateProofPath25 rho
    simpa only [
      spend1StateProofPath25,
      spend1StateProofPath25LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt5737 rho
  · change OptionalStatePathValuation rho 5740 = spend1StateProofPath26 rho
    simpa only [
      spend1StateProofPath26,
      spend1StateProofPath26LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt5740 rho
  · change OptionalStatePathValuation rho 6098 = spend1StateProofPath21 rho
    simpa only [
      spend1StateProofPath21,
      spend1StateProofPath21LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt6098 rho
  · change OptionalStatePathValuation rho 6100 = spend1StateProofPath22 rho
    simpa only [
      spend1StateProofPath22,
      spend1StateProofPath22LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt6100 rho
  · change OptionalStatePathValuation rho 6103 = spend1StateProofPath23 rho
    simpa only [
      spend1StateProofPath23,
      spend1StateProofPath23LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt6103 rho
  · change OptionalStatePathValuation rho 6461 = spend1StateProofPath18 rho
    simpa only [
      spend1StateProofPath18,
      spend1StateProofPath18LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt6461 rho
  · change OptionalStatePathValuation rho 6463 = spend1StateProofPath19 rho
    simpa only [
      spend1StateProofPath19,
      spend1StateProofPath19LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt6463 rho
  · change OptionalStatePathValuation rho 6466 = spend1StateProofPath20 rho
    simpa only [
      spend1StateProofPath20,
      spend1StateProofPath20LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt6466 rho
  · change OptionalStatePathValuation rho 6824 = spend1StateProofPath15 rho
    simpa only [
      spend1StateProofPath15,
      spend1StateProofPath15LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt6824 rho
  · change OptionalStatePathValuation rho 6826 = spend1StateProofPath16 rho
    simpa only [
      spend1StateProofPath16,
      spend1StateProofPath16LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt6826 rho
  · change OptionalStatePathValuation rho 6829 = spend1StateProofPath17 rho
    simpa only [
      spend1StateProofPath17,
      spend1StateProofPath17LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt6829 rho
  · change OptionalStatePathValuation rho 7187 = spend1StateProofPath12 rho
    simpa only [
      spend1StateProofPath12,
      spend1StateProofPath12LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt7187 rho
  · change OptionalStatePathValuation rho 7189 = spend1StateProofPath13 rho
    simpa only [
      spend1StateProofPath13,
      spend1StateProofPath13LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt7189 rho
  · change OptionalStatePathValuation rho 7192 = spend1StateProofPath14 rho
    simpa only [
      spend1StateProofPath14,
      spend1StateProofPath14LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt7192 rho
  · change OptionalStatePathValuation rho 7550 = spend1StateProofPath9 rho
    simpa only [
      spend1StateProofPath9,
      spend1StateProofPath9LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt7550 rho
  · change OptionalStatePathValuation rho 7552 = spend1StateProofPath10 rho
    simpa only [
      spend1StateProofPath10,
      spend1StateProofPath10LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt7552 rho
  · change OptionalStatePathValuation rho 7555 = spend1StateProofPath11 rho
    simpa only [
      spend1StateProofPath11,
      spend1StateProofPath11LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt7555 rho
  · change OptionalStatePathValuation rho 7913 = spend1StateProofPath6 rho
    simpa only [
      spend1StateProofPath6,
      spend1StateProofPath6LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt7913 rho
  · change OptionalStatePathValuation rho 7915 = spend1StateProofPath7 rho
    simpa only [
      spend1StateProofPath7,
      spend1StateProofPath7LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt7915 rho
  · change OptionalStatePathValuation rho 7918 = spend1StateProofPath8 rho
    simpa only [
      spend1StateProofPath8,
      spend1StateProofPath8LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt7918 rho
  · change OptionalStatePathValuation rho 8276 = spend1StateProofPath3 rho
    simpa only [
      spend1StateProofPath3,
      spend1StateProofPath3LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt8276 rho
  · change OptionalStatePathValuation rho 8278 = spend1StateProofPath4 rho
    simpa only [
      spend1StateProofPath4,
      spend1StateProofPath4LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt8278 rho
  · change OptionalStatePathValuation rho 8281 = spend1StateProofPath5 rho
    simpa only [
      spend1StateProofPath5,
      spend1StateProofPath5LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt8281 rho
  · change OptionalStatePathValuation rho 8639 = spend1StateProofPath0 rho
    simpa only [
      spend1StateProofPath0,
      spend1StateProofPath0LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt8639 rho
  · change OptionalStatePathValuation rho 8641 = spend1StateProofPath1 rho
    simpa only [
      spend1StateProofPath1,
      spend1StateProofPath1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt8641 rho
  · change OptionalStatePathValuation rho 8644 = spend1StateProofPath2 rho
    simpa only [
      spend1StateProofPath2,
      spend1StateProofPath2LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero] using
      optionalStatePathAt8644 rho

/-- Stable name for the note-commitment LC consumed by `required_nullifier`. -/
def RequiredNullifierStateCommitment (rho : Nat → DeployedF) : DeployedF :=
  Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4.stateCommitment (RequiredNullifierValuation rho)

/-- `required_nullifier` consumes the compiler-labelled note commitment. -/
theorem requiredNullifierStateCommitment_eq
    (rho : Nat → DeployedF) :
    RequiredNullifierStateCommitment rho =
      spend0NoteCommitmentComputed rho := by
  simp only [
    RequiredNullifierStateCommitment, Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4.stateCommitment,
    spend0NoteCommitmentComputed,
    spend0NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    requiredNullifierAt7, requiredNullifierAt8, requiredNullifierAt9, requiredNullifierAt10, requiredNullifierAt11, requiredNullifierAt12,
    zero_add, one_mul, add_zero]
  ring

/-- Stable name for the note-commitment LC consumed by `optional_nullifier`. -/
def OptionalNullifierStateCommitment (rho : Nat → DeployedF) : DeployedF :=
  Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4.stateCommitment (OptionalNullifierValuation rho)

/-- `optional_nullifier` consumes the compiler-labelled note commitment. -/
theorem optionalNullifierStateCommitment_eq
    (rho : Nat → DeployedF) :
    OptionalNullifierStateCommitment rho =
      spend1NoteCommitmentComputed rho := by
  simp only [
    OptionalNullifierStateCommitment, Deployed.Templates.Semantics.TGadgetNullifier_5707ecfa23746942d4eee98a87b841d07f40163e3e15aeba5d907533f9aa58c4.stateCommitment,
    spend1NoteCommitmentComputed,
    spend1NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    optionalNullifierAt7, optionalNullifierAt8, optionalNullifierAt9, optionalNullifierAt10, optionalNullifierAt11, optionalNullifierAt12,
    zero_add, one_mul, add_zero]
  ring

/-- Exact Decaf compression certified by `required_rk_compress`. -/
theorem requiredRkCompressSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩ (spend0RkCompressed rho) := by
  have h := semantic.requiredRkCompress
  simp [
    RequiredRkCompressSemanticSpec,
    Decaf377Assumptions.CompressToFieldSpec,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec, Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputX, Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputY,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho,
    spend0RkClaimed0, spend0RkClaimed0LC, spend0RkClaimed1, spend0RkClaimed1LC,
    spend0RkCompressed, spend0RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    requiredRkCompressAt1, requiredRkCompressAt3,
    requiredRkCompressAt365, requiredRkCompressAt705,
    sub_eq_add_neg, add_comm] at h ⊢
  rw [transferNegOneLc]
  exact h

/-- Exact Decaf compression certified by `optional_rk_compress`. -/
theorem optionalRkCompressSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩ (spend1RkCompressed rho) := by
  have h := semantic.optionalRkCompress
  simp [
    OptionalRkCompressSemanticSpec,
    Decaf377Assumptions.CompressToFieldSpec,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec, Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputX, Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputY,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho,
    spend1RkClaimed0, spend1RkClaimed0LC, spend1RkClaimed1, spend1RkClaimed1LC,
    spend1RkCompressed, spend1RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    optionalRkCompressAt1, optionalRkCompressAt3,
    optionalRkCompressAt365, optionalRkCompressAt705,
    sub_eq_add_neg, add_comm] at h ⊢
  rw [transferNegOneLc]
  exact h

/-- Exact Decaf compression certified by `receiver_div_gen_compress`. -/
theorem receiverDivGenCompressSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨output0RecipientDivGen0 rho, output0RecipientDivGen1 rho⟩ (output0RecipientDivGenFq rho) := by
  have h := semantic.receiverDivGenCompress
  simp [
    ReceiverDivGenCompressSemanticSpec,
    Decaf377Assumptions.CompressToFieldSpec,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec, Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputX, Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputY,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho,
    output0RecipientDivGen0, output0RecipientDivGen0LC, output0RecipientDivGen1, output0RecipientDivGen1LC,
    output0RecipientDivGenFq, output0RecipientDivGenFqLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    receiverDivGenCompressAt1, receiverDivGenCompressAt3,
    receiverDivGenCompressAt365, receiverDivGenCompressAt705,
    sub_eq_add_neg, add_comm] at h ⊢
  rw [transferNegOneLc]
  exact h

/-- Exact Decaf compression certified by `receiver_transmission_compress`. -/
theorem receiverTransmissionCompressSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨output0RecipientTransmission0 rho, output0RecipientTransmission1 rho⟩ (output0RecipientTransmissionFq rho) := by
  have h := semantic.receiverTransmissionCompress
  simp [
    ReceiverTransmissionCompressSemanticSpec,
    Decaf377Assumptions.CompressToFieldSpec,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.spec, Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputX, Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.inputY,
    Deployed.Templates.Semantics.TDecafCompressToField_231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb.templateRho,
    output0RecipientTransmission0, output0RecipientTransmission0LC, output0RecipientTransmission1, output0RecipientTransmission1LC,
    output0RecipientTransmissionFq, output0RecipientTransmissionFqLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    receiverTransmissionCompressAt1, receiverTransmissionCompressAt3,
    receiverTransmissionCompressAt365, receiverTransmissionCompressAt705,
    sub_eq_add_neg, add_comm] at h ⊢
  rw [transferNegOneLc]
  exact h

/-- The receiver amount is nonzero by the certified is-zero assertion. -/
theorem receiverAmountNonzero_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    output0NoteAmount rho ≠ 0 := by
  have hzero := semantic.receiverAmountIsZero
  unfold ReceiverAmountIsZeroSemanticSpec at hzero
  have hflag := semantic.receiverNonzeroAssert
  unfold ReceiverNonzeroAssertSemanticSpec at hflag
  have hflagZero :
      ReceiverAmountIsZeroValuation rho 3 = 0 := by
    simpa only [
      Deployed.Templates.Semantics.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd.spec,
      one_mul,
      receiverNonzeroAssertAt1,
      receiverAmountIsZeroAt3,
      eq_comm
    ] using hflag
  have hinput :
      ReceiverAmountIsZeroValuation rho 1 =
        output0NoteAmount rho := by
    simpa only [
      output0NoteAmount, output0NoteAmountLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      receiverAmountIsZeroAt1,
      zero_add, one_mul, add_zero]
  unfold Deployed.Templates.Semantics.TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991.spec at hzero
  rcases hzero with nonzero | zero
  · simpa only [hinput] using nonzero.1
  · have h01 : (0 : DeployedF) ≠ 1 := by decide
    exact (h01 (hflagZero.symm.trans zero.2)).elim

/-- The optional dummy nullifier is the certified Poseidon3 output. -/
theorem optionalSyntheticNullifierHash_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    spend1NullifierSynthetic rho =
      Poseidon377.hash3
        Protocol.Transfer.Concrete.syntheticDummyNullifierDomain
        (spend1DummyNullifierSeed rho) (spend1AuthRandomizer rho) 1 := by
  have h := semantic.optionalSyntheticNullifier
  calc
    spend1NullifierSynthetic rho =
        Deployed.Nullifier.s38_1
          (OptionalSyntheticNullifierValuation rho 292)
          (OptionalSyntheticNullifierValuation rho 297)
          (OptionalSyntheticNullifierValuation rho 302)
          (OptionalSyntheticNullifierValuation rho 307) := by
      simp only [
        spend1NullifierSynthetic, spend1NullifierSyntheticLC,
        Deployed.Nullifier.s38_1, Deployed.Poseidon3Link.row4,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual,
        optionalSyntheticNullifierAt292, optionalSyntheticNullifierAt297,
        optionalSyntheticNullifierAt302, optionalSyntheticNullifierAt307,
        zero_add, one_mul, add_zero]
      ring
    _ = Poseidon377.hash3
          Protocol.Transfer.Concrete.syntheticDummyNullifierDomain
          (spend1DummyNullifierSeed rho)
          (spend1AuthRandomizer rho) 1 := by
      simpa only [
        OptionalSyntheticNullifierSemanticSpec,
        Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.spec,
        Deployed.Templates.Semantics.TGadgetSyntheticDummyNullifier_baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd.Fixed.syntheticDummyNullifierDomainLit,
        Protocol.Transfer.Concrete.syntheticDummyNullifierDomain,
        Poseidon3Bridge.permSpec3,
        spend1DummyNullifierSeed, spend1DummyNullifierSeedLC,
        spend1AuthRandomizer, spend1AuthRandomizerLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual,
        optionalSyntheticNullifierAt1, optionalSyntheticNullifierAt7,
        zero_add, one_mul, add_zero] using h

/-- The receiver's public note commitment equals its computed hash output. -/
theorem receiverNoteClaimed_eq_computed_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    output0NoteCommitmentClaimed rho =
      output0NoteCommitmentComputed rho := by
  have h := semantic.receiverNoteAssert
  unfold ReceiverNoteAssertSemanticSpec Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.spec at h
  simp only [
    one_mul,
    receiverNoteAssertAt1, receiverNoteAssertAt2,
    receiverNoteAssertAt3, receiverNoteAssertAt4,
    receiverNoteAssertAt5, receiverNoteAssertAt6,
    receiverNoteAssertAt7
  ] at h
  simp only [
    output0NoteCommitmentClaimed, output0NoteCommitmentClaimedLC,
    output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, zero_add, one_mul, add_zero]
  simpa only [add_assoc] using h

/-- The change output's public note commitment equals its computed hash. -/
theorem changeNoteClaimed_eq_computed_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    output1NoteCommitmentClaimed rho =
      output1NoteCommitmentComputed rho := by
  have h := semantic.changeNoteAssert
  unfold ChangeNoteAssertSemanticSpec Deployed.Templates.Semantics.TAssertEq_c4acc0cb39ee1820ee3eb4fda139846ccb6ea995c7d6605854f111a0b177b240.spec at h
  simp only [
    one_mul,
    changeNoteAssertAt1, changeNoteAssertAt2,
    changeNoteAssertAt3, changeNoteAssertAt4,
    changeNoteAssertAt5, changeNoteAssertAt6,
    changeNoteAssertAt7
  ] at h
  simp only [
    output1NoteCommitmentClaimed, output1NoteCommitmentClaimedLC,
    output1NoteCommitmentComputed, output1NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, zero_add, one_mul, add_zero]
  simpa only [add_assoc] using h

/-- The required state-path root is bound to the action anchor. -/
theorem requiredAnchor_eq_computed_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    anchor rho = spend0AnchorComputed rho := by
  have h := semantic.requiredAnchorAssert
  unfold RequiredAnchorAssertSemanticSpec
    Deployed.Templates.Semantics.TAssertEq_5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef.spec at h
  simp only [
    one_mul,
    requiredAnchorAssertAt1, requiredAnchorAssertAt2,
    requiredAnchorAssertAt3, requiredAnchorAssertAt4,
    requiredAnchorAssertAt5, requiredAnchorAssertAt6
  ] at h
  simp only [
    anchor, anchorLC, spend0AnchorComputed, spend0AnchorComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero]
  simpa only [add_assoc] using h

/-- A real optional spend's state-path root is bound to the action anchor. -/
theorem optionalAnchor_eq_computed_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (real : spend1IsDummy rho = 0) :
    anchor rho = spend1AnchorComputed rho := by
  have h := semantic.optionalAnchorAssert
  unfold OptionalAnchorAssertSemanticSpec
    Deployed.Templates.Semantics.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03.spec
    Deployed.Templates.Semantics.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03.guard
    Deployed.Templates.Semantics.TAssertEqIf_36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03.residual at h
  simp only [
    optionalAnchorAssertAt1, optionalAnchorAssertAt2,
    optionalAnchorAssertAt3, optionalAnchorAssertAt4,
    optionalAnchorAssertAt5, optionalAnchorAssertAt6,
    optionalAnchorAssertAt7] at h
  have hreal : rho 339 = 0 := by
    simpa [
      spend1IsDummy, spend1IsDummyLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual] using real
  rcases h with disabled | enabled
  · rw [hreal] at disabled
    have h10 : (1 : DeployedF) ≠ 0 := by decide
    exact (h10 (by linear_combination disabled)).elim
  · simp only [
      anchor, anchorLC, spend1AnchorComputed, spend1AnchorComputedLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, zero_add, one_mul, add_zero]
    symm
    linear_combination enabled

/-- The public required nullifier equals the real-nullifier output. -/
theorem requiredNullifierClaimed_eq_real_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    spend0NullifierClaimed rho = spend0NullifierReal rho := by
  have h := semantic.requiredNullifierAssert
  unfold RequiredNullifierAssertSemanticSpec
    Deployed.Templates.Semantics.TAssertEq_f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b.spec at h
  simp [
    spend0NullifierClaimed, spend0NullifierClaimedLC,
    spend0NullifierReal, spend0NullifierRealLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual,
    requiredNullifierAssertAt1, requiredNullifierAssertAt2,
    requiredNullifierAssertAt3, requiredNullifierAssertAt4,
    requiredNullifierAssertAt5] at h ⊢
  ring_nf at h ⊢
  exact h.symm

/-- In the real branch the optional mux selects the real nullifier. -/
theorem optionalNullifierSelected_eq_real_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (real : spend1IsDummy rho = 0) :
    spend1NullifierSelected rho = spend1NullifierReal rho := by
  have h := semantic.optionalNullifierMux
  unfold OptionalNullifierMuxSemanticSpec
    Deployed.Templates.Semantics.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.spec at h
  simp only [
    optionalNullifierMuxAt1, optionalNullifierMuxAt2,
    optionalNullifierMuxAt3, optionalNullifierMuxAt4,
    optionalNullifierMuxAt5, optionalNullifierMuxAt6,
    optionalNullifierMuxAt7, optionalNullifierMuxAt8,
    optionalNullifierMuxAt9, optionalNullifierMuxAt10,
    optionalNullifierMuxAt11] at h
  simp only [
    spend1NullifierSelected, spend1NullifierSelectedLC,
    spend1NullifierReal, spend1NullifierRealLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, zero_add, one_mul, add_zero]
  have hreal : rho 339 = 0 := by
    simpa [
      spend1IsDummy, spend1IsDummyLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual] using real
  simp [hreal] at h
  linear_combination h.1 + h.2

/-- In the dummy branch the optional mux selects the synthetic nullifier. -/
theorem optionalNullifierSelected_eq_synthetic_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (dummy : spend1IsDummy rho = 1) :
    spend1NullifierSelected rho = spend1NullifierSynthetic rho := by
  have h := semantic.optionalNullifierMux
  unfold OptionalNullifierMuxSemanticSpec
    Deployed.Templates.Semantics.TDummyMux_6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce.spec at h
  simp only [
    optionalNullifierMuxAt1, optionalNullifierMuxAt2,
    optionalNullifierMuxAt3, optionalNullifierMuxAt4,
    optionalNullifierMuxAt5, optionalNullifierMuxAt6,
    optionalNullifierMuxAt7, optionalNullifierMuxAt8,
    optionalNullifierMuxAt9, optionalNullifierMuxAt10,
    optionalNullifierMuxAt11] at h
  simp only [
    spend1NullifierSelected, spend1NullifierSelectedLC,
    spend1NullifierSynthetic, spend1NullifierSyntheticLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, zero_add, one_mul, add_zero]
  have hdummy : rho 339 = 1 := by
    simpa [
      spend1IsDummy, spend1IsDummyLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual] using dummy
  simp [hdummy] at h
  linear_combination h.1 + h.2

/-- A dummy optional spend has zero amount. -/
theorem optionalDummyAmountZero_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (dummy : spend1IsDummy rho = 1) :
    spend1NoteAmount rho = 0 := by
  have h := semantic.optionalAmountZero
  unfold OptionalAmountZeroSemanticSpec
    Deployed.Templates.Semantics.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.spec
    Deployed.Templates.Semantics.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.guard
    Deployed.Templates.Semantics.TAssertEqIf_ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d.residual at h
  simp only [optionalAmountZeroAt1, optionalAmountZeroAt2] at h
  rcases h with amountZero | flagZero
  · simpa [
      spend1NoteAmount, spend1NoteAmountLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual] using amountZero
  · have hdummy : rho 339 = 1 := by
      simpa [
        spend1IsDummy, spend1IsDummyLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual] using dummy
    rw [hdummy] at flagZero
    have h10 : (1 : DeployedF) ≠ 0 := by decide
    exact (h10 flagZero).elim

/-- Required computed and claimed RVKs satisfy the certified cross ratio. -/
theorem requiredRkCrossRatio_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.AssertEquivalentSpec
      ⟨spend0RkComputed0 rho, spend0RkComputed1 rho⟩
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩ := by
  have h := semantic.requiredRkEquivalent
  unfold RequiredRkEquivalentSemanticSpec
    Deployed.Templates.Semantics.TDecafAssertEquivalent_534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e.spec at h
  simpa [
    Decaf377Assumptions.AssertEquivalentSpec,
    spend0RkComputed0, spend0RkComputed0LC,
    spend0RkComputed1, spend0RkComputed1LC,
    spend0RkClaimed0, spend0RkClaimed0LC,
    spend0RkClaimed1, spend0RkClaimed1LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual,
    requiredRkEquivalentAt1, requiredRkEquivalentAt2,
    requiredRkEquivalentAt4, requiredRkEquivalentAt5] using h

/-- A real optional spend's RVKs satisfy the certified cross ratio. -/
theorem optionalRkCrossRatio_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (real : spend1IsDummy rho = 0) :
    Decaf377Assumptions.AssertEquivalentSpec
      ⟨spend1RkComputed0 rho, spend1RkComputed1 rho⟩
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩ := by
  have h := semantic.optionalRkEquivalent
  unfold OptionalRkEquivalentSemanticSpec
    Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.spec
    Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.selectorIsBoolean
    Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.selector
    Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.guard
    Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.leftCrossProduct
    Deployed.Templates.Semantics.TDecafAssertEquivalentIf_5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f.rightCrossProduct at h
  simp only [
    optionalRkEquivalentAt1, optionalRkEquivalentAt2,
    optionalRkEquivalentAt3, optionalRkEquivalentAt5,
    optionalRkEquivalentAt6] at h
  rcases h.2 with disabled | equal
  · have hselector : rho 339 = 0 := by
      simpa [
        spend1IsDummy, spend1IsDummyLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual] using real
    rw [hselector] at disabled
    have h10 : (1 : DeployedF) ≠ 0 := by decide
    exact (h10 (by linear_combination disabled)).elim
  · simpa [
      Decaf377Assumptions.AssertEquivalentSpec,
      spend1RkComputed0, spend1RkComputed0LC,
      spend1RkComputed1, spend1RkComputed1LC,
      spend1RkClaimed0, spend1RkClaimed0LC,
      spend1RkClaimed1, spend1RkClaimed1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual] using equal

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer
