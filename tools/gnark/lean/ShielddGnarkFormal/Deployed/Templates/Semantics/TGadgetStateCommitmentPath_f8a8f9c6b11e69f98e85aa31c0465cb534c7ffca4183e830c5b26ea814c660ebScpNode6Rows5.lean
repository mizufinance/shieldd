import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node6_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2727 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2727 rho)
    (r2728 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2728 rho)
    (r2729 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2729 rho)
    (r2730 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2730 rho)
    (r2731 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2731 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) (rho 2616) (rho 2621) (rho 2626) (rho 2631) (rho 2636) (rho 2641) (rho 2646) (rho 2651) (rho 2656) (rho 2661) (rho 2666) (rho 2671) (rho 2676) (rho 2681) (rho 2686) (rho 2691) (rho 2696) (rho 2701) (rho 2706) (rho 2711) (rho 2716) (rho 2721) (rho 2726)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg50 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) (rho 2616) (rho 2621) (rho 2626) (rho 2631) (rho 2636) (rho 2641) (rho 2646) (rho 2651) (rho 2656) (rho 2661) (rho 2666) (rho 2671) (rho 2676) (rho 2681) (rho 2686) (rho 2691) (rho 2696) (rho 2701) (rho 2706) (rho 2711) (rho 2716) (rho 2721) next := by
  exact ⟨rho 2722, rho 2723, rho 2724, rho 2725, rho 2726, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2727 at r2727; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc62, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc62Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc62Part1] at r2727; linear_combination r2727), r2728, r2729, r2730, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2731 at r2731; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc62, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc62Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc62Part1] at r2731; linear_combination r2731), tail⟩

theorem template_scp_node6_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2732 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2732 rho)
    (r2733 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2733 rho)
    (r2734 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2734 rho)
    (r2735 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2735 rho)
    (r2736 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2736 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) (rho 2616) (rho 2621) (rho 2626) (rho 2631) (rho 2636) (rho 2641) (rho 2646) (rho 2651) (rho 2656) (rho 2661) (rho 2666) (rho 2671) (rho 2676) (rho 2681) (rho 2686) (rho 2691) (rho 2696) (rho 2701) (rho 2706) (rho 2711) (rho 2716) (rho 2721) (rho 2726) (rho 2731)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg51 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) (rho 2616) (rho 2621) (rho 2626) (rho 2631) (rho 2636) (rho 2641) (rho 2646) (rho 2651) (rho 2656) (rho 2661) (rho 2666) (rho 2671) (rho 2676) (rho 2681) (rho 2686) (rho 2691) (rho 2696) (rho 2701) (rho 2706) (rho 2711) (rho 2716) (rho 2721) (rho 2726) next := by
  exact ⟨rho 2727, rho 2728, rho 2729, rho 2730, rho 2731, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2732 at r2732; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc63, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc63Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc63Part1] at r2732; linear_combination r2732), r2733, r2734, r2735, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2736 at r2736; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc63, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc63Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc63Part1] at r2736; linear_combination r2736), tail⟩

theorem template_scp_node6_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2737 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2737 rho)
    (r2738 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2738 rho)
    (r2739 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2739 rho)
    (r2740 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2740 rho)
    (r2741 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2741 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) (rho 2616) (rho 2621) (rho 2626) (rho 2631) (rho 2636) (rho 2641) (rho 2646) (rho 2651) (rho 2656) (rho 2661) (rho 2666) (rho 2671) (rho 2676) (rho 2681) (rho 2686) (rho 2691) (rho 2696) (rho 2701) (rho 2706) (rho 2711) (rho 2716) (rho 2721) (rho 2726) (rho 2731) (rho 2736)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg52 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) (rho 2616) (rho 2621) (rho 2626) (rho 2631) (rho 2636) (rho 2641) (rho 2646) (rho 2651) (rho 2656) (rho 2661) (rho 2666) (rho 2671) (rho 2676) (rho 2681) (rho 2686) (rho 2691) (rho 2696) (rho 2701) (rho 2706) (rho 2711) (rho 2716) (rho 2721) (rho 2726) (rho 2731) next := by
  exact ⟨rho 2732, rho 2733, rho 2734, rho 2735, rho 2736, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2737 at r2737; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc64, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc64Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc64Part1] at r2737; linear_combination r2737), r2738, r2739, r2740, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2741 at r2741; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc64, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc64Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc64Part1] at r2741; linear_combination r2741), tail⟩

theorem template_scp_node6_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2742 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2742 rho)
    (r2743 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2743 rho)
    (r2744 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2744 rho)
    (r2745 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2745 rho)
    (r2746 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2746 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) (rho 2616) (rho 2621) (rho 2626) (rho 2631) (rho 2636) (rho 2641) (rho 2646) (rho 2651) (rho 2656) (rho 2661) (rho 2666) (rho 2671) (rho 2676) (rho 2681) (rho 2686) (rho 2691) (rho 2696) (rho 2701) (rho 2706) (rho 2711) (rho 2716) (rho 2721) (rho 2726) (rho 2731) (rho 2736) (rho 2741)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg53 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) (rho 2616) (rho 2621) (rho 2626) (rho 2631) (rho 2636) (rho 2641) (rho 2646) (rho 2651) (rho 2656) (rho 2661) (rho 2666) (rho 2671) (rho 2676) (rho 2681) (rho 2686) (rho 2691) (rho 2696) (rho 2701) (rho 2706) (rho 2711) (rho 2716) (rho 2721) (rho 2726) (rho 2731) (rho 2736) next := by
  exact ⟨rho 2737, rho 2738, rho 2739, rho 2740, rho 2741, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2742 at r2742; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc65, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc65Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc65Part1] at r2742; linear_combination r2742), r2743, r2744, r2745, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2746 at r2746; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc65, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc65Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc65Part1] at r2746; linear_combination r2746), tail⟩

theorem template_scp_node6_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2747 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2747 rho)
    (r2748 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2748 rho)
    (r2749 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2749 rho)
    (r2750 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2750 rho)
    (r2751 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2751 rho)
    (tail : next (rho 2726) (rho 2731) (rho 2736) (rho 2741) (rho 2746)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg54 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) (rho 2616) (rho 2621) (rho 2626) (rho 2631) (rho 2636) (rho 2641) (rho 2646) (rho 2651) (rho 2656) (rho 2661) (rho 2666) (rho 2671) (rho 2676) (rho 2681) (rho 2686) (rho 2691) (rho 2696) (rho 2701) (rho 2706) (rho 2711) (rho 2716) (rho 2721) (rho 2726) (rho 2731) (rho 2736) (rho 2741) next := by
  exact ⟨rho 2742, rho 2743, rho 2744, rho 2745, rho 2746, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2747 at r2747; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc66, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc66Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc66Part1] at r2747; linear_combination r2747), r2748, r2749, r2750, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2751 at r2751; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc66, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc66Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationLc66Part1] at r2751; linear_combination r2751), tail⟩

theorem template_scp_node6_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2752 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2752 rho)
    (r2753 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2753 rho)
    (r2754 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2754 rho)
    (r2755 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2755 rho)
    (r2756 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2756 rho)
    (tail : next (rho 2726) (rho 2731) (rho 2736) (rho 2741) (rho 2746) (rho 2751)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg55 (rho 2726) (rho 2731) (rho 2736) (rho 2741) (rho 2746) next := by
  exact ⟨rho 2747, rho 2748, rho 2749, rho 2750, rho 2751, r2752, r2753, r2754, r2755, r2756, tail⟩

theorem template_scp_node6_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2757 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2757 rho)
    (r2758 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2758 rho)
    (r2759 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2759 rho)
    (r2760 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2760 rho)
    (r2761 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2761 rho)
    (tail : next (rho 2726) (rho 2731) (rho 2736) (rho 2741) (rho 2746) (rho 2751) (rho 2756)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg56 (rho 2726) (rho 2731) (rho 2736) (rho 2741) (rho 2746) (rho 2751) next := by
  exact ⟨rho 2752, rho 2753, rho 2754, rho 2755, rho 2756, r2757, r2758, r2759, r2760, r2761, tail⟩

theorem template_scp_node6_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2762 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2762 rho)
    (r2763 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2763 rho)
    (r2764 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2764 rho)
    (r2765 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2765 rho)
    (r2766 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2766 rho)
    (tail : next (rho 2726) (rho 2731) (rho 2736) (rho 2741) (rho 2746) (rho 2751) (rho 2756) (rho 2761)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg57 (rho 2726) (rho 2731) (rho 2736) (rho 2741) (rho 2746) (rho 2751) (rho 2756) next := by
  exact ⟨rho 2757, rho 2758, rho 2759, rho 2760, rho 2761, r2762, r2763, r2764, r2765, r2766, tail⟩

theorem template_scp_node6_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2767 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2767 rho)
    (r2768 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2768 rho)
    (r2769 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2769 rho)
    (r2770 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2770 rho)
    (r2771 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2771 rho)
    (tail : next (rho 2726) (rho 2731) (rho 2736) (rho 2741) (rho 2746) (rho 2751) (rho 2756) (rho 2761) (rho 2766)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg58 (rho 2726) (rho 2731) (rho 2736) (rho 2741) (rho 2746) (rho 2751) (rho 2756) (rho 2761) next := by
  exact ⟨rho 2762, rho 2763, rho 2764, rho 2765, rho 2766, r2767, r2768, r2769, r2770, r2771, tail⟩

theorem template_scp_node6_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2772 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2772 rho)
    (r2773 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2773 rho)
    (r2774 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2774 rho)
    (r2775 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2775 rho)
    (r2776 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2776 rho)
    (tail : next (rho 2751) (rho 2756) (rho 2761) (rho 2766) (rho 2771)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg59 (rho 2726) (rho 2731) (rho 2736) (rho 2741) (rho 2746) (rho 2751) (rho 2756) (rho 2761) (rho 2766) next := by
  exact ⟨rho 2767, rho 2768, rho 2769, rho 2770, rho 2771, r2772, r2773, r2774, r2775, r2776, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
