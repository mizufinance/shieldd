import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node6_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2577 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2577 rho)
    (r2578 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2578 rho)
    (r2579 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2579 rho)
    (r2580 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2580 rho)
    (r2581 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2581 rho)
    (tail : next (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg20 (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) next := by
  exact ⟨rho 2578, rho 2579, rho 2580, rho 2581, rho 2582, r2577, r2578, r2579, r2580, r2581, tail⟩

theorem template_scp_node6_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2582 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2582 rho)
    (r2583 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2583 rho)
    (r2584 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2584 rho)
    (r2585 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2585 rho)
    (r2586 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2586 rho)
    (tail : next (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg21 (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) next := by
  exact ⟨rho 2583, rho 2584, rho 2585, rho 2586, rho 2587, r2582, r2583, r2584, r2585, r2586, tail⟩

theorem template_scp_node6_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2587 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2587 rho)
    (r2588 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2588 rho)
    (r2589 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2589 rho)
    (r2590 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2590 rho)
    (r2591 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2591 rho)
    (tail : next (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg22 (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) next := by
  exact ⟨rho 2588, rho 2589, rho 2590, rho 2591, rho 2592, r2587, r2588, r2589, r2590, r2591, tail⟩

theorem template_scp_node6_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r2592 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2592 rho)
    (r2593 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2593 rho)
    (r2594 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2594 rho)
    (r2595 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2595 rho)
    (r2596 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2596 rho)
    (tail : next (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg23 (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) next := by
  exact ⟨rho 2593, rho 2594, rho 2595, rho 2596, rho 2597, r2592, r2593, r2594, r2595, r2596, tail⟩

theorem template_scp_node6_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2597 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2597 rho)
    (r2598 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2598 rho)
    (r2599 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2599 rho)
    (r2600 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2600 rho)
    (r2601 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2601 rho)
    (tail : next (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597) (rho 2602)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg24 (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597) next := by
  exact ⟨rho 2598, rho 2599, rho 2600, rho 2601, rho 2602, r2597, r2598, r2599, r2600, r2601, tail⟩

theorem template_scp_node6_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2602 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2602 rho)
    (r2603 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2603 rho)
    (r2604 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2604 rho)
    (r2605 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2605 rho)
    (r2606 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2606 rho)
    (tail : next (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597) (rho 2602) (rho 2607)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg25 (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597) (rho 2602) next := by
  exact ⟨rho 2603, rho 2604, rho 2605, rho 2606, rho 2607, r2602, r2603, r2604, r2605, r2606, tail⟩

theorem template_scp_node6_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2607 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2607 rho)
    (r2608 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2608 rho)
    (r2609 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2609 rho)
    (r2610 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2610 rho)
    (r2611 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2611 rho)
    (tail : next (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597) (rho 2602) (rho 2607) (rho 2612)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg26 (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597) (rho 2602) (rho 2607) next := by
  exact ⟨rho 2608, rho 2609, rho 2610, rho 2611, rho 2612, r2607, r2608, r2609, r2610, r2611, tail⟩

theorem template_scp_node6_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2612 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2612 rho)
    (r2613 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2613 rho)
    (r2614 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2614 rho)
    (r2615 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2615 rho)
    (r2616 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2616 rho)
    (tail : next (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597) (rho 2602) (rho 2607) (rho 2612) (rho 2617)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg27 (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597) (rho 2602) (rho 2607) (rho 2612) next := by
  exact ⟨rho 2613, rho 2614, rho 2615, rho 2616, rho 2617, r2612, r2613, r2614, r2615, r2616, tail⟩

theorem template_scp_node6_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2617 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2617 rho)
    (r2618 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2618 rho)
    (r2619 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2619 rho)
    (r2620 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2620 rho)
    (r2621 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2621 rho)
    (tail : next (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597) (rho 2602) (rho 2607) (rho 2612) (rho 2617) (rho 2622)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg28 (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597) (rho 2602) (rho 2607) (rho 2612) (rho 2617) next := by
  exact ⟨rho 2618, rho 2619, rho 2620, rho 2621, rho 2622, r2617, r2618, r2619, r2620, r2621, tail⟩

theorem template_scp_node6_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2622 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2622 rho)
    (r2623 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2623 rho)
    (r2624 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2624 rho)
    (r2625 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2625 rho)
    (r2626 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2626 rho)
    (tail : next (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597) (rho 2602) (rho 2607) (rho 2612) (rho 2617) (rho 2622) (rho 2627)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg29 (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577) (rho 2582) (rho 2587) (rho 2592) (rho 2597) (rho 2602) (rho 2607) (rho 2612) (rho 2617) (rho 2622) next := by
  exact ⟨rho 2623, rho 2624, rho 2625, rho 2626, rho 2627, r2622, r2623, r2624, r2625, r2626, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
