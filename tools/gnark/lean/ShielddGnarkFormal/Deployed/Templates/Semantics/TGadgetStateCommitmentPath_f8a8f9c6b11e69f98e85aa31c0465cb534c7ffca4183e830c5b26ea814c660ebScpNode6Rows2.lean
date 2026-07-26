import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node6_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2577 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2577 rho)
    (r2578 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2578 rho)
    (r2579 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2579 rho)
    (r2580 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2580 rho)
    (r2581 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2581 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg20 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) next := by
  exact ⟨rho 2572, rho 2573, rho 2574, rho 2575, rho 2576, r2577, r2578, r2579, r2580, r2581, tail⟩

theorem template_scp_node6_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2582 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2582 rho)
    (r2583 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2583 rho)
    (r2584 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2584 rho)
    (r2585 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2585 rho)
    (r2586 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2586 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg21 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) next := by
  exact ⟨rho 2577, rho 2578, rho 2579, rho 2580, rho 2581, r2582, r2583, r2584, r2585, r2586, tail⟩

theorem template_scp_node6_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2587 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2587 rho)
    (r2588 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2588 rho)
    (r2589 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2589 rho)
    (r2590 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2590 rho)
    (r2591 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2591 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg22 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) next := by
  exact ⟨rho 2582, rho 2583, rho 2584, rho 2585, rho 2586, r2587, r2588, r2589, r2590, r2591, tail⟩

theorem template_scp_node6_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r2592 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2592 rho)
    (r2593 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2593 rho)
    (r2594 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2594 rho)
    (r2595 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2595 rho)
    (r2596 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2596 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg23 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) next := by
  exact ⟨rho 2587, rho 2588, rho 2589, rho 2590, rho 2591, r2592, r2593, r2594, r2595, r2596, tail⟩

theorem template_scp_node6_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2597 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2597 rho)
    (r2598 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2598 rho)
    (r2599 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2599 rho)
    (r2600 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2600 rho)
    (r2601 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2601 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg24 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) next := by
  exact ⟨rho 2592, rho 2593, rho 2594, rho 2595, rho 2596, r2597, r2598, r2599, r2600, r2601, tail⟩

theorem template_scp_node6_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2602 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2602 rho)
    (r2603 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2603 rho)
    (r2604 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2604 rho)
    (r2605 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2605 rho)
    (r2606 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2606 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg25 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) next := by
  exact ⟨rho 2597, rho 2598, rho 2599, rho 2600, rho 2601, r2602, r2603, r2604, r2605, r2606, tail⟩

theorem template_scp_node6_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2607 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2607 rho)
    (r2608 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2608 rho)
    (r2609 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2609 rho)
    (r2610 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2610 rho)
    (r2611 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2611 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg26 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) next := by
  exact ⟨rho 2602, rho 2603, rho 2604, rho 2605, rho 2606, r2607, r2608, r2609, r2610, r2611, tail⟩

theorem template_scp_node6_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2612 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2612 rho)
    (r2613 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2613 rho)
    (r2614 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2614 rho)
    (r2615 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2615 rho)
    (r2616 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2616 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg27 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) next := by
  exact ⟨rho 2607, rho 2608, rho 2609, rho 2610, rho 2611, r2612, r2613, r2614, r2615, r2616, tail⟩

theorem template_scp_node6_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2617 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2617 rho)
    (r2618 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2618 rho)
    (r2619 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2619 rho)
    (r2620 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2620 rho)
    (r2621 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2621 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) (rho 2616)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg28 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) next := by
  exact ⟨rho 2612, rho 2613, rho 2614, rho 2615, rho 2616, r2617, r2618, r2619, r2620, r2621, tail⟩

theorem template_scp_node6_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r2622 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2622 rho)
    (r2623 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2623 rho)
    (r2624 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2624 rho)
    (r2625 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2625 rho)
    (r2626 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow2626 rho)
    (tail : next (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) (rho 2616) (rho 2621)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg29 (rho 2546) (rho 2551) (rho 2556) (rho 2561) (rho 2566) (rho 2571) (rho 2576) (rho 2581) (rho 2586) (rho 2591) (rho 2596) (rho 2601) (rho 2606) (rho 2611) (rho 2616) next := by
  exact ⟨rho 2617, rho 2618, rho 2619, rho 2620, rho 2621, r2622, r2623, r2624, r2625, r2626, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

