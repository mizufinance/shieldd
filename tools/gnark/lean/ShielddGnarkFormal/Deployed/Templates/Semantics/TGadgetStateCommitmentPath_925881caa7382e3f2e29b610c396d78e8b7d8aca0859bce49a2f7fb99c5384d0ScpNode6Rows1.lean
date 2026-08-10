import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node6_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2527 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2527 rho)
    (r2528 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2528 rho)
    (r2529 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2529 rho)
    (r2530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2530 rho)
    (r2531 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2531 rho)
    (tail : next (rho 2502) (rho 2507) (rho 2512) (rho 2517) (rho 2522) (rho 2527) (rho 2532)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg10 (rho 2502) (rho 2507) (rho 2512) (rho 2517) (rho 2522) (rho 2527) next := by
  exact ⟨rho 2528, rho 2529, rho 2530, rho 2531, rho 2532, r2527, r2528, r2529, r2530, r2531, tail⟩

theorem template_scp_node6_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2532 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2532 rho)
    (r2533 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2533 rho)
    (r2534 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2534 rho)
    (r2535 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2535 rho)
    (r2536 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2536 rho)
    (tail : next (rho 2502) (rho 2507) (rho 2512) (rho 2517) (rho 2522) (rho 2527) (rho 2532) (rho 2537)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg11 (rho 2502) (rho 2507) (rho 2512) (rho 2517) (rho 2522) (rho 2527) (rho 2532) next := by
  exact ⟨rho 2533, rho 2534, rho 2535, rho 2536, rho 2537, r2532, r2533, r2534, r2535, r2536, tail⟩

theorem template_scp_node6_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2537 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2537 rho)
    (r2538 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2538 rho)
    (r2539 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2539 rho)
    (r2540 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2540 rho)
    (r2541 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2541 rho)
    (tail : next (rho 2502) (rho 2507) (rho 2512) (rho 2517) (rho 2522) (rho 2527) (rho 2532) (rho 2537) (rho 2542)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg12 (rho 2502) (rho 2507) (rho 2512) (rho 2517) (rho 2522) (rho 2527) (rho 2532) (rho 2537) next := by
  exact ⟨rho 2538, rho 2539, rho 2540, rho 2541, rho 2542, r2537, r2538, r2539, r2540, r2541, tail⟩

theorem template_scp_node6_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2542 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2542 rho)
    (r2543 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2543 rho)
    (r2544 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2544 rho)
    (r2545 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2545 rho)
    (r2546 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2546 rho)
    (tail : next (rho 2527) (rho 2532) (rho 2537) (rho 2542) (rho 2547)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg13 (rho 2502) (rho 2507) (rho 2512) (rho 2517) (rho 2522) (rho 2527) (rho 2532) (rho 2537) (rho 2542) next := by
  exact ⟨rho 2543, rho 2544, rho 2545, rho 2546, rho 2547, r2542, r2543, r2544, r2545, r2546, tail⟩

theorem template_scp_node6_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2547 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2547 rho)
    (r2548 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2548 rho)
    (r2549 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2549 rho)
    (r2550 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2550 rho)
    (r2551 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2551 rho)
    (tail : next (rho 2527) (rho 2532) (rho 2537) (rho 2542) (rho 2547) (rho 2552)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg14 (rho 2527) (rho 2532) (rho 2537) (rho 2542) (rho 2547) next := by
  exact ⟨rho 2548, rho 2549, rho 2550, rho 2551, rho 2552, r2547, r2548, r2549, r2550, r2551, tail⟩

theorem template_scp_node6_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r2552 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2552 rho)
    (r2553 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2553 rho)
    (r2554 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2554 rho)
    (r2555 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2555 rho)
    (r2556 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2556 rho)
    (tail : next (rho 2527) (rho 2532) (rho 2537) (rho 2542) (rho 2547) (rho 2552) (rho 2557)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg15 (rho 2527) (rho 2532) (rho 2537) (rho 2542) (rho 2547) (rho 2552) next := by
  exact ⟨rho 2553, rho 2554, rho 2555, rho 2556, rho 2557, r2552, r2553, r2554, r2555, r2556, tail⟩

theorem template_scp_node6_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r2557 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2557 rho)
    (r2558 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2558 rho)
    (r2559 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2559 rho)
    (r2560 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2560 rho)
    (r2561 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2561 rho)
    (tail : next (rho 2527) (rho 2532) (rho 2537) (rho 2542) (rho 2547) (rho 2552) (rho 2557) (rho 2562)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg16 (rho 2527) (rho 2532) (rho 2537) (rho 2542) (rho 2547) (rho 2552) (rho 2557) next := by
  exact ⟨rho 2558, rho 2559, rho 2560, rho 2561, rho 2562, r2557, r2558, r2559, r2560, r2561, tail⟩

theorem template_scp_node6_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r2562 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2562 rho)
    (r2563 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2563 rho)
    (r2564 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2564 rho)
    (r2565 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2565 rho)
    (r2566 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2566 rho)
    (tail : next (rho 2527) (rho 2532) (rho 2537) (rho 2542) (rho 2547) (rho 2552) (rho 2557) (rho 2562) (rho 2567)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg17 (rho 2527) (rho 2532) (rho 2537) (rho 2542) (rho 2547) (rho 2552) (rho 2557) (rho 2562) next := by
  exact ⟨rho 2563, rho 2564, rho 2565, rho 2566, rho 2567, r2562, r2563, r2564, r2565, r2566, tail⟩

theorem template_scp_node6_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r2567 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2567 rho)
    (r2568 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2568 rho)
    (r2569 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2569 rho)
    (r2570 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2570 rho)
    (r2571 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2571 rho)
    (tail : next (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg18 (rho 2527) (rho 2532) (rho 2537) (rho 2542) (rho 2547) (rho 2552) (rho 2557) (rho 2562) (rho 2567) next := by
  exact ⟨rho 2568, rho 2569, rho 2570, rho 2571, rho 2572, r2567, r2568, r2569, r2570, r2571, tail⟩

theorem template_scp_node6_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r2572 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2572 rho)
    (r2573 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2573 rho)
    (r2574 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2574 rho)
    (r2575 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2575 rho)
    (r2576 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow2576 rho)
    (tail : next (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) (rho 2577)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg19 (rho 2552) (rho 2557) (rho 2562) (rho 2567) (rho 2572) next := by
  exact ⟨rho 2573, rho 2574, rho 2575, rho 2576, rho 2577, r2572, r2573, r2574, r2575, r2576, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
