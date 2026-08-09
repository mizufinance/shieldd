import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathBase
import ShielddGnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node7_seg20 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2695 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2695 rho)
    (r2696 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2696 rho)
    (r2697 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2697 rho)
    (r2698 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2698 rho)
    (r2699 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2699 rho)
    (tail : next (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg20 (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) next := by
  exact ⟨rho 2694, rho 2695, rho 2696, rho 2697, rho 2698, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2695 at r2695; linear_combination r2695), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2696 at r2696; linear_combination r2696), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2697 at r2697; linear_combination r2697), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2698 at r2698; linear_combination r2698), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2699 at r2699; linear_combination r2699), tail⟩

theorem node7_seg21 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2700 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2700 rho)
    (r2701 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2701 rho)
    (r2702 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2702 rho)
    (r2703 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2703 rho)
    (r2704 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2704 rho)
    (tail : next (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg21 (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) next := by
  exact ⟨rho 2699, rho 2700, rho 2701, rho 2702, rho 2703, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2700 at r2700; linear_combination r2700), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2701 at r2701; linear_combination r2701), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2702 at r2702; linear_combination r2702), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2703 at r2703; linear_combination r2703), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2704 at r2704; linear_combination r2704), tail⟩

theorem node7_seg22 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2705 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2705 rho)
    (r2706 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2706 rho)
    (r2707 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2707 rho)
    (r2708 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2708 rho)
    (r2709 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2709 rho)
    (tail : next (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg22 (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) next := by
  exact ⟨rho 2704, rho 2705, rho 2706, rho 2707, rho 2708, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2705 at r2705; linear_combination r2705), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2706 at r2706; linear_combination r2706), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2707 at r2707; linear_combination r2707), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2708 at r2708; linear_combination r2708), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2709 at r2709; linear_combination r2709), tail⟩

theorem node7_seg23 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r2710 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2710 rho)
    (r2711 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2711 rho)
    (r2712 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2712 rho)
    (r2713 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2713 rho)
    (r2714 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2714 rho)
    (tail : next (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg23 (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) next := by
  exact ⟨rho 2709, rho 2710, rho 2711, rho 2712, rho 2713, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2710 at r2710; linear_combination r2710), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2711 at r2711; linear_combination r2711), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2712 at r2712; linear_combination r2712), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2713 at r2713; linear_combination r2713), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2714 at r2714; linear_combination r2714), tail⟩

theorem node7_seg24 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2715 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2715 rho)
    (r2716 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2716 rho)
    (r2717 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2717 rho)
    (r2718 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2718 rho)
    (r2719 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2719 rho)
    (tail : next (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713) (rho 2718)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg24 (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713) next := by
  exact ⟨rho 2714, rho 2715, rho 2716, rho 2717, rho 2718, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2715 at r2715; linear_combination r2715), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2716 at r2716; linear_combination r2716), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2717 at r2717; linear_combination r2717), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2718 at r2718; linear_combination r2718), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2719 at r2719; linear_combination r2719), tail⟩

theorem node7_seg25 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2720 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2720 rho)
    (r2721 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2721 rho)
    (r2722 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2722 rho)
    (r2723 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2723 rho)
    (r2724 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2724 rho)
    (tail : next (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713) (rho 2718) (rho 2723)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg25 (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713) (rho 2718) next := by
  exact ⟨rho 2719, rho 2720, rho 2721, rho 2722, rho 2723, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2720 at r2720; linear_combination r2720), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2721 at r2721; linear_combination r2721), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2722 at r2722; linear_combination r2722), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2723 at r2723; linear_combination r2723), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2724 at r2724; linear_combination r2724), tail⟩

theorem node7_seg26 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2725 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2725 rho)
    (r2726 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2726 rho)
    (r2727 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2727 rho)
    (r2728 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2728 rho)
    (r2729 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2729 rho)
    (tail : next (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713) (rho 2718) (rho 2723) (rho 2728)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg26 (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713) (rho 2718) (rho 2723) next := by
  exact ⟨rho 2724, rho 2725, rho 2726, rho 2727, rho 2728, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2725 at r2725; linear_combination r2725), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2726 at r2726; linear_combination r2726), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2727 at r2727; linear_combination r2727), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2728 at r2728; linear_combination r2728), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2729 at r2729; linear_combination r2729), tail⟩

theorem node7_seg27 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2730 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2730 rho)
    (r2731 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2731 rho)
    (r2732 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2732 rho)
    (r2733 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2733 rho)
    (r2734 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2734 rho)
    (tail : next (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713) (rho 2718) (rho 2723) (rho 2728) (rho 2733)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg27 (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713) (rho 2718) (rho 2723) (rho 2728) next := by
  exact ⟨rho 2729, rho 2730, rho 2731, rho 2732, rho 2733, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2730 at r2730; linear_combination r2730), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2731 at r2731; linear_combination r2731), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2732 at r2732; linear_combination r2732), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2733 at r2733; linear_combination r2733), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2734 at r2734; linear_combination r2734), tail⟩

theorem node7_seg28 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2735 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2735 rho)
    (r2736 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2736 rho)
    (r2737 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2737 rho)
    (r2738 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2738 rho)
    (r2739 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2739 rho)
    (tail : next (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713) (rho 2718) (rho 2723) (rho 2728) (rho 2733) (rho 2738)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg28 (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713) (rho 2718) (rho 2723) (rho 2728) (rho 2733) next := by
  exact ⟨rho 2734, rho 2735, rho 2736, rho 2737, rho 2738, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2735 at r2735; linear_combination r2735), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2736 at r2736; linear_combination r2736), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2737 at r2737; linear_combination r2737), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2738 at r2738; linear_combination r2738), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2739 at r2739; linear_combination r2739), tail⟩

theorem node7_seg29 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2740 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2740 rho)
    (r2741 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2741 rho)
    (r2742 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2742 rho)
    (r2743 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2743 rho)
    (r2744 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2744 rho)
    (tail : next (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713) (rho 2718) (rho 2723) (rho 2728) (rho 2733) (rho 2738) (rho 2743)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg29 (rho 2668) (rho 2673) (rho 2678) (rho 2683) (rho 2688) (rho 2693) (rho 2698) (rho 2703) (rho 2708) (rho 2713) (rho 2718) (rho 2723) (rho 2728) (rho 2733) (rho 2738) next := by
  exact ⟨rho 2739, rho 2740, rho 2741, rho 2742, rho 2743, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2740 at r2740; linear_combination r2740), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2741 at r2741; linear_combination r2741), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2742 at r2742; linear_combination r2742), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2743 at r2743; linear_combination r2743), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationRow2744 at r2744; linear_combination r2744), tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
