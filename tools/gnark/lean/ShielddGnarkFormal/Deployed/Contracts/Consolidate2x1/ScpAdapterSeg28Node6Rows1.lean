import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node6_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2527 : Seg28.relationRow2527 rho)
    (r2528 : Seg28.relationRow2528 rho)
    (r2529 : Seg28.relationRow2529 rho)
    (r2530 : Seg28.relationRow2530 rho)
    (r2531 : Seg28.relationRow2531 rho)
    (tail : next (rho 21871) (rho 21876) (rho 21881) (rho 21886) (rho 21891) (rho 21896) (rho 21901)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg10 (rho 21871) (rho 21876) (rho 21881) (rho 21886) (rho 21891) (rho 21896) next := by
  exact ⟨rho 21897, rho 21898, rho 21899, rho 21900, rho 21901, r2527, r2528, r2529, r2530, r2531, tail⟩

theorem seg28_scp_node6_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2532 : Seg28.relationRow2532 rho)
    (r2533 : Seg28.relationRow2533 rho)
    (r2534 : Seg28.relationRow2534 rho)
    (r2535 : Seg28.relationRow2535 rho)
    (r2536 : Seg28.relationRow2536 rho)
    (tail : next (rho 21871) (rho 21876) (rho 21881) (rho 21886) (rho 21891) (rho 21896) (rho 21901) (rho 21906)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg11 (rho 21871) (rho 21876) (rho 21881) (rho 21886) (rho 21891) (rho 21896) (rho 21901) next := by
  exact ⟨rho 21902, rho 21903, rho 21904, rho 21905, rho 21906, r2532, r2533, r2534, r2535, r2536, tail⟩

theorem seg28_scp_node6_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2537 : Seg28.relationRow2537 rho)
    (r2538 : Seg28.relationRow2538 rho)
    (r2539 : Seg28.relationRow2539 rho)
    (r2540 : Seg28.relationRow2540 rho)
    (r2541 : Seg28.relationRow2541 rho)
    (tail : next (rho 21871) (rho 21876) (rho 21881) (rho 21886) (rho 21891) (rho 21896) (rho 21901) (rho 21906) (rho 21911)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg12 (rho 21871) (rho 21876) (rho 21881) (rho 21886) (rho 21891) (rho 21896) (rho 21901) (rho 21906) next := by
  exact ⟨rho 21907, rho 21908, rho 21909, rho 21910, rho 21911, r2537, r2538, r2539, r2540, r2541, tail⟩

theorem seg28_scp_node6_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2542 : Seg28.relationRow2542 rho)
    (r2543 : Seg28.relationRow2543 rho)
    (r2544 : Seg28.relationRow2544 rho)
    (r2545 : Seg28.relationRow2545 rho)
    (r2546 : Seg28.relationRow2546 rho)
    (tail : next (rho 21896) (rho 21901) (rho 21906) (rho 21911) (rho 21916)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg13 (rho 21871) (rho 21876) (rho 21881) (rho 21886) (rho 21891) (rho 21896) (rho 21901) (rho 21906) (rho 21911) next := by
  exact ⟨rho 21912, rho 21913, rho 21914, rho 21915, rho 21916, r2542, r2543, r2544, r2545, r2546, tail⟩

theorem seg28_scp_node6_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2547 : Seg28.relationRow2547 rho)
    (r2548 : Seg28.relationRow2548 rho)
    (r2549 : Seg28.relationRow2549 rho)
    (r2550 : Seg28.relationRow2550 rho)
    (r2551 : Seg28.relationRow2551 rho)
    (tail : next (rho 21896) (rho 21901) (rho 21906) (rho 21911) (rho 21916) (rho 21921)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg14 (rho 21896) (rho 21901) (rho 21906) (rho 21911) (rho 21916) next := by
  exact ⟨rho 21917, rho 21918, rho 21919, rho 21920, rho 21921, r2547, r2548, r2549, r2550, r2551, tail⟩

theorem seg28_scp_node6_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2552 : Seg28.relationRow2552 rho)
    (r2553 : Seg28.relationRow2553 rho)
    (r2554 : Seg28.relationRow2554 rho)
    (r2555 : Seg28.relationRow2555 rho)
    (r2556 : Seg28.relationRow2556 rho)
    (tail : next (rho 21896) (rho 21901) (rho 21906) (rho 21911) (rho 21916) (rho 21921) (rho 21926)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg15 (rho 21896) (rho 21901) (rho 21906) (rho 21911) (rho 21916) (rho 21921) next := by
  exact ⟨rho 21922, rho 21923, rho 21924, rho 21925, rho 21926, r2552, r2553, r2554, r2555, r2556, tail⟩

theorem seg28_scp_node6_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2557 : Seg28.relationRow2557 rho)
    (r2558 : Seg28.relationRow2558 rho)
    (r2559 : Seg28.relationRow2559 rho)
    (r2560 : Seg28.relationRow2560 rho)
    (r2561 : Seg28.relationRow2561 rho)
    (tail : next (rho 21896) (rho 21901) (rho 21906) (rho 21911) (rho 21916) (rho 21921) (rho 21926) (rho 21931)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg16 (rho 21896) (rho 21901) (rho 21906) (rho 21911) (rho 21916) (rho 21921) (rho 21926) next := by
  exact ⟨rho 21927, rho 21928, rho 21929, rho 21930, rho 21931, r2557, r2558, r2559, r2560, r2561, tail⟩

theorem seg28_scp_node6_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2562 : Seg28.relationRow2562 rho)
    (r2563 : Seg28.relationRow2563 rho)
    (r2564 : Seg28.relationRow2564 rho)
    (r2565 : Seg28.relationRow2565 rho)
    (r2566 : Seg28.relationRow2566 rho)
    (tail : next (rho 21896) (rho 21901) (rho 21906) (rho 21911) (rho 21916) (rho 21921) (rho 21926) (rho 21931) (rho 21936)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg17 (rho 21896) (rho 21901) (rho 21906) (rho 21911) (rho 21916) (rho 21921) (rho 21926) (rho 21931) next := by
  exact ⟨rho 21932, rho 21933, rho 21934, rho 21935, rho 21936, r2562, r2563, r2564, r2565, r2566, tail⟩

theorem seg28_scp_node6_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2567 : Seg28.relationRow2567 rho)
    (r2568 : Seg28.relationRow2568 rho)
    (r2569 : Seg28.relationRow2569 rho)
    (r2570 : Seg28.relationRow2570 rho)
    (r2571 : Seg28.relationRow2571 rho)
    (tail : next (rho 21921) (rho 21926) (rho 21931) (rho 21936) (rho 21941)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg18 (rho 21896) (rho 21901) (rho 21906) (rho 21911) (rho 21916) (rho 21921) (rho 21926) (rho 21931) (rho 21936) next := by
  exact ⟨rho 21937, rho 21938, rho 21939, rho 21940, rho 21941, r2567, r2568, r2569, r2570, r2571, tail⟩

theorem seg28_scp_node6_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2572 : Seg28.relationRow2572 rho)
    (r2573 : Seg28.relationRow2573 rho)
    (r2574 : Seg28.relationRow2574 rho)
    (r2575 : Seg28.relationRow2575 rho)
    (r2576 : Seg28.relationRow2576 rho)
    (tail : next (rho 21921) (rho 21926) (rho 21931) (rho 21936) (rho 21941) (rho 21946)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_bb4894.seg19 (rho 21921) (rho 21926) (rho 21931) (rho 21936) (rho 21941) next := by
  exact ⟨rho 21942, rho 21943, rho 21944, rho 21945, rho 21946, r2572, r2573, r2574, r2575, r2576, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

