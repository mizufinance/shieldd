import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathBase
import ShielddGnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node12_seg20 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4515 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4515 rho)
    (r4516 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4516 rho)
    (r4517 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4517 rho)
    (r4518 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4518 rho)
    (r4519 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4519 rho)
    (tail : next (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg20 (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) next := by
  exact ⟨rho 4511, rho 4512, rho 4513, rho 4514, rho 4515, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4515 at r4515; linear_combination r4515), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4516 at r4516; linear_combination r4516), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4517 at r4517; linear_combination r4517), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4518 at r4518; linear_combination r4518), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4519 at r4519; linear_combination r4519), tail⟩

theorem node12_seg21 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4520 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4520 rho)
    (r4521 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4521 rho)
    (r4522 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4522 rho)
    (r4523 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4523 rho)
    (r4524 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4524 rho)
    (tail : next (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg21 (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) next := by
  exact ⟨rho 4516, rho 4517, rho 4518, rho 4519, rho 4520, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4520 at r4520; linear_combination r4520), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4521 at r4521; linear_combination r4521), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4522 at r4522; linear_combination r4522), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4523 at r4523; linear_combination r4523), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4524 at r4524; linear_combination r4524), tail⟩

theorem node12_seg22 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r4525 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4525 rho)
    (r4526 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4526 rho)
    (r4527 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4527 rho)
    (r4528 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4528 rho)
    (r4529 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4529 rho)
    (tail : next (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg22 (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) next := by
  exact ⟨rho 4521, rho 4522, rho 4523, rho 4524, rho 4525, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4525 at r4525; linear_combination r4525), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4526 at r4526; linear_combination r4526), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4527 at r4527; linear_combination r4527), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4528 at r4528; linear_combination r4528), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4529 at r4529; linear_combination r4529), tail⟩

theorem node12_seg23 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r4530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4530 rho)
    (r4531 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4531 rho)
    (r4532 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4532 rho)
    (r4533 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4533 rho)
    (r4534 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4534 rho)
    (tail : next (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg23 (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) next := by
  exact ⟨rho 4526, rho 4527, rho 4528, rho 4529, rho 4530, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4530 at r4530; linear_combination r4530), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4531 at r4531; linear_combination r4531), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4532 at r4532; linear_combination r4532), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4533 at r4533; linear_combination r4533), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4534 at r4534; linear_combination r4534), tail⟩

theorem node12_seg24 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4535 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4535 rho)
    (r4536 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4536 rho)
    (r4537 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4537 rho)
    (r4538 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4538 rho)
    (r4539 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4539 rho)
    (tail : next (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530) (rho 4535)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg24 (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530) next := by
  exact ⟨rho 4531, rho 4532, rho 4533, rho 4534, rho 4535, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4535 at r4535; linear_combination r4535), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4536 at r4536; linear_combination r4536), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4537 at r4537; linear_combination r4537), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4538 at r4538; linear_combination r4538), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4539 at r4539; linear_combination r4539), tail⟩

theorem node12_seg25 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4540 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4540 rho)
    (r4541 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4541 rho)
    (r4542 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4542 rho)
    (r4543 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4543 rho)
    (r4544 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4544 rho)
    (tail : next (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530) (rho 4535) (rho 4540)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg25 (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530) (rho 4535) next := by
  exact ⟨rho 4536, rho 4537, rho 4538, rho 4539, rho 4540, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4540 at r4540; linear_combination r4540), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4541 at r4541; linear_combination r4541), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4542 at r4542; linear_combination r4542), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4543 at r4543; linear_combination r4543), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4544 at r4544; linear_combination r4544), tail⟩

theorem node12_seg26 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4545 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4545 rho)
    (r4546 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4546 rho)
    (r4547 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4547 rho)
    (r4548 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4548 rho)
    (r4549 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4549 rho)
    (tail : next (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530) (rho 4535) (rho 4540) (rho 4545)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg26 (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530) (rho 4535) (rho 4540) next := by
  exact ⟨rho 4541, rho 4542, rho 4543, rho 4544, rho 4545, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4545 at r4545; linear_combination r4545), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4546 at r4546; linear_combination r4546), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4547 at r4547; linear_combination r4547), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4548 at r4548; linear_combination r4548), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4549 at r4549; linear_combination r4549), tail⟩

theorem node12_seg27 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4550 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4550 rho)
    (r4551 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4551 rho)
    (r4552 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4552 rho)
    (r4553 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4553 rho)
    (r4554 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4554 rho)
    (tail : next (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530) (rho 4535) (rho 4540) (rho 4545) (rho 4550)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg27 (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530) (rho 4535) (rho 4540) (rho 4545) next := by
  exact ⟨rho 4546, rho 4547, rho 4548, rho 4549, rho 4550, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4550 at r4550; linear_combination r4550), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4551 at r4551; linear_combination r4551), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4552 at r4552; linear_combination r4552), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4553 at r4553; linear_combination r4553), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4554 at r4554; linear_combination r4554), tail⟩

theorem node12_seg28 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4555 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4555 rho)
    (r4556 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4556 rho)
    (r4557 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4557 rho)
    (r4558 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4558 rho)
    (r4559 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4559 rho)
    (tail : next (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530) (rho 4535) (rho 4540) (rho 4545) (rho 4550) (rho 4555)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg28 (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530) (rho 4535) (rho 4540) (rho 4545) (rho 4550) next := by
  exact ⟨rho 4551, rho 4552, rho 4553, rho 4554, rho 4555, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4555 at r4555; linear_combination r4555), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4556 at r4556; linear_combination r4556), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4557 at r4557; linear_combination r4557), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4558 at r4558; linear_combination r4558), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4559 at r4559; linear_combination r4559), tail⟩

theorem node12_seg29 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r4560 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4560 rho)
    (r4561 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4561 rho)
    (r4562 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4562 rho)
    (r4563 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4563 rho)
    (r4564 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4564 rho)
    (tail : next (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530) (rho 4535) (rho 4540) (rho 4545) (rho 4550) (rho 4555) (rho 4560)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg29 (rho 4485) (rho 4490) (rho 4495) (rho 4500) (rho 4505) (rho 4510) (rho 4515) (rho 4520) (rho 4525) (rho 4530) (rho 4535) (rho 4540) (rho 4545) (rho 4550) (rho 4555) next := by
  exact ⟨rho 4556, rho 4557, rho 4558, rho 4559, rho 4560, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4560 at r4560; linear_combination r4560), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4561 at r4561; linear_combination r4561), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4562 at r4562; linear_combination r4562), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4563 at r4563; linear_combination r4563), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow4564 at r4564; linear_combination r4564), tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b
