import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathBase
import ShielddGnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node15_seg20 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r5607 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5607 rho)
    (r5608 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5608 rho)
    (r5609 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5609 rho)
    (r5610 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5610 rho)
    (r5611 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5611 rho)
    (tail : next (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg20 (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) next := by
  exact ⟨rho 5600, rho 5601, rho 5602, rho 5603, rho 5604, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5607 at r5607; linear_combination r5607), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5608 at r5608; linear_combination r5608), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5609 at r5609; linear_combination r5609), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5610 at r5610; linear_combination r5610), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5611 at r5611; linear_combination r5611), tail⟩

theorem node15_seg21 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r5612 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5612 rho)
    (r5613 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5613 rho)
    (r5614 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5614 rho)
    (r5615 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5615 rho)
    (r5616 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5616 rho)
    (tail : next (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg21 (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) next := by
  exact ⟨rho 5605, rho 5606, rho 5607, rho 5608, rho 5609, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5612 at r5612; linear_combination r5612), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5613 at r5613; linear_combination r5613), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5614 at r5614; linear_combination r5614), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5615 at r5615; linear_combination r5615), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5616 at r5616; linear_combination r5616), tail⟩

theorem node15_seg22 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r5617 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5617 rho)
    (r5618 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5618 rho)
    (r5619 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5619 rho)
    (r5620 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5620 rho)
    (r5621 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5621 rho)
    (tail : next (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg22 (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) next := by
  exact ⟨rho 5610, rho 5611, rho 5612, rho 5613, rho 5614, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5617 at r5617; linear_combination r5617), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5618 at r5618; linear_combination r5618), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5619 at r5619; linear_combination r5619), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5620 at r5620; linear_combination r5620), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5621 at r5621; linear_combination r5621), tail⟩

theorem node15_seg23 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r5622 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5622 rho)
    (r5623 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5623 rho)
    (r5624 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5624 rho)
    (r5625 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5625 rho)
    (r5626 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5626 rho)
    (tail : next (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg23 (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) next := by
  exact ⟨rho 5615, rho 5616, rho 5617, rho 5618, rho 5619, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5622 at r5622; linear_combination r5622), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5623 at r5623; linear_combination r5623), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5624 at r5624; linear_combination r5624), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5625 at r5625; linear_combination r5625), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5626 at r5626; linear_combination r5626), tail⟩

theorem node15_seg24 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5627 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5627 rho)
    (r5628 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5628 rho)
    (r5629 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5629 rho)
    (r5630 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5630 rho)
    (r5631 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5631 rho)
    (tail : next (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619) (rho 5624)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg24 (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619) next := by
  exact ⟨rho 5620, rho 5621, rho 5622, rho 5623, rho 5624, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5627 at r5627; linear_combination r5627), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5628 at r5628; linear_combination r5628), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5629 at r5629; linear_combination r5629), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5630 at r5630; linear_combination r5630), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5631 at r5631; linear_combination r5631), tail⟩

theorem node15_seg25 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5632 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5632 rho)
    (r5633 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5633 rho)
    (r5634 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5634 rho)
    (r5635 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5635 rho)
    (r5636 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5636 rho)
    (tail : next (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619) (rho 5624) (rho 5629)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg25 (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619) (rho 5624) next := by
  exact ⟨rho 5625, rho 5626, rho 5627, rho 5628, rho 5629, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5632 at r5632; linear_combination r5632), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5633 at r5633; linear_combination r5633), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5634 at r5634; linear_combination r5634), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5635 at r5635; linear_combination r5635), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5636 at r5636; linear_combination r5636), tail⟩

theorem node15_seg26 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5637 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5637 rho)
    (r5638 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5638 rho)
    (r5639 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5639 rho)
    (r5640 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5640 rho)
    (r5641 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5641 rho)
    (tail : next (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619) (rho 5624) (rho 5629) (rho 5634)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg26 (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619) (rho 5624) (rho 5629) next := by
  exact ⟨rho 5630, rho 5631, rho 5632, rho 5633, rho 5634, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5637 at r5637; linear_combination r5637), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5638 at r5638; linear_combination r5638), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5639 at r5639; linear_combination r5639), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5640 at r5640; linear_combination r5640), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5641 at r5641; linear_combination r5641), tail⟩

theorem node15_seg27 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5642 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5642 rho)
    (r5643 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5643 rho)
    (r5644 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5644 rho)
    (r5645 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5645 rho)
    (r5646 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5646 rho)
    (tail : next (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619) (rho 5624) (rho 5629) (rho 5634) (rho 5639)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg27 (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619) (rho 5624) (rho 5629) (rho 5634) next := by
  exact ⟨rho 5635, rho 5636, rho 5637, rho 5638, rho 5639, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5642 at r5642; linear_combination r5642), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5643 at r5643; linear_combination r5643), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5644 at r5644; linear_combination r5644), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5645 at r5645; linear_combination r5645), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5646 at r5646; linear_combination r5646), tail⟩

theorem node15_seg28 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5647 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5647 rho)
    (r5648 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5648 rho)
    (r5649 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5649 rho)
    (r5650 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5650 rho)
    (r5651 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5651 rho)
    (tail : next (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619) (rho 5624) (rho 5629) (rho 5634) (rho 5639) (rho 5644)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg28 (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619) (rho 5624) (rho 5629) (rho 5634) (rho 5639) next := by
  exact ⟨rho 5640, rho 5641, rho 5642, rho 5643, rho 5644, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5647 at r5647; linear_combination r5647), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5648 at r5648; linear_combination r5648), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5649 at r5649; linear_combination r5649), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5650 at r5650; linear_combination r5650), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5651 at r5651; linear_combination r5651), tail⟩

theorem node15_seg29 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r5652 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5652 rho)
    (r5653 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5653 rho)
    (r5654 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5654 rho)
    (r5655 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5655 rho)
    (r5656 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5656 rho)
    (tail : next (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619) (rho 5624) (rho 5629) (rho 5634) (rho 5639) (rho 5644) (rho 5649)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg29 (rho 5574) (rho 5579) (rho 5584) (rho 5589) (rho 5594) (rho 5599) (rho 5604) (rho 5609) (rho 5614) (rho 5619) (rho 5624) (rho 5629) (rho 5634) (rho 5639) (rho 5644) next := by
  exact ⟨rho 5645, rho 5646, rho 5647, rho 5648, rho 5649, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5652 at r5652; linear_combination r5652), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5653 at r5653; linear_combination r5653), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5654 at r5654; linear_combination r5654), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5655 at r5655; linear_combination r5655), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow5656 at r5656; linear_combination r5656), tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b
