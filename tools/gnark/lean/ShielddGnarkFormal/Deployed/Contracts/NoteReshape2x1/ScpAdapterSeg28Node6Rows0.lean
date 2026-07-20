import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node6_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2477 : Seg28.relationRow2477 rho)
    (r2478 : Seg28.relationRow2478 rho)
    (r2479 : Seg28.relationRow2479 rho)
    (r2480 : Seg28.relationRow2480 rho)
    (r2481 : Seg28.relationRow2481 rho)
    (tail : next (rho 164) (rho 165) (rho 21836) (rho 21837) (rho 21838) (rho 21839) (rho 21840) (rho 21845)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg0 (rho 163) (rho 164) (rho 165) (rho 21835) (rho 21836) (rho 21837) (rho 21838) (rho 21839) (rho 21840) next := by
  exact ⟨rho 21841, rho 21842, rho 21843, rho 21844, rho 21845, r2477, r2478, r2479, r2480, r2481, tail⟩

theorem seg28_scp_node6_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2482 : Seg28.relationRow2482 rho)
    (r2483 : Seg28.relationRow2483 rho)
    (r2484 : Seg28.relationRow2484 rho)
    (r2485 : Seg28.relationRow2485 rho)
    (r2486 : Seg28.relationRow2486 rho)
    (tail : next (rho 164) (rho 165) (rho 21838) (rho 21839) (rho 21840) (rho 21845) (rho 21850)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg1 (rho 164) (rho 165) (rho 21836) (rho 21837) (rho 21838) (rho 21839) (rho 21840) (rho 21845) next := by
  exact ⟨rho 21846, rho 21847, rho 21848, rho 21849, rho 21850, r2482, r2483, r2484, r2485, r2486, tail⟩

theorem seg28_scp_node6_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2487 : Seg28.relationRow2487 rho)
    (r2488 : Seg28.relationRow2488 rho)
    (r2489 : Seg28.relationRow2489 rho)
    (r2490 : Seg28.relationRow2490 rho)
    (r2491 : Seg28.relationRow2491 rho)
    (tail : next (rho 165) (rho 21840) (rho 21845) (rho 21850) (rho 21855)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg2 (rho 164) (rho 165) (rho 21838) (rho 21839) (rho 21840) (rho 21845) (rho 21850) next := by
  exact ⟨rho 21851, rho 21852, rho 21853, rho 21854, rho 21855, r2487, r2488, r2489, r2490, r2491, tail⟩

theorem seg28_scp_node6_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2492 : Seg28.relationRow2492 rho)
    (r2493 : Seg28.relationRow2493 rho)
    (r2494 : Seg28.relationRow2494 rho)
    (r2495 : Seg28.relationRow2495 rho)
    (r2496 : Seg28.relationRow2496 rho)
    (tail : next (rho 21845) (rho 21850) (rho 21855) (rho 21860)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg3 (rho 165) (rho 21840) (rho 21845) (rho 21850) (rho 21855) next := by
  exact ⟨rho 21856, rho 21857, rho 21858, rho 21859, rho 21860, r2492, r2493, r2494, r2495, r2496, tail⟩

theorem seg28_scp_node6_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2497 : Seg28.relationRow2497 rho)
    (r2498 : Seg28.relationRow2498 rho)
    (r2499 : Seg28.relationRow2499 rho)
    (r2500 : Seg28.relationRow2500 rho)
    (r2501 : Seg28.relationRow2501 rho)
    (tail : next (rho 21845) (rho 21850) (rho 21855) (rho 21860) (rho 21865)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg4 (rho 21845) (rho 21850) (rho 21855) (rho 21860) next := by
  exact ⟨rho 21861, rho 21862, rho 21863, rho 21864, rho 21865, r2497, r2498, r2499, r2500, r2501, tail⟩

theorem seg28_scp_node6_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2502 : Seg28.relationRow2502 rho)
    (r2503 : Seg28.relationRow2503 rho)
    (r2504 : Seg28.relationRow2504 rho)
    (r2505 : Seg28.relationRow2505 rho)
    (r2506 : Seg28.relationRow2506 rho)
    (tail : next (rho 21845) (rho 21850) (rho 21855) (rho 21860) (rho 21865) (rho 21870)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg5 (rho 21845) (rho 21850) (rho 21855) (rho 21860) (rho 21865) next := by
  exact ⟨rho 21866, rho 21867, rho 21868, rho 21869, rho 21870, r2502, r2503, r2504, r2505, r2506, tail⟩

theorem seg28_scp_node6_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2507 : Seg28.relationRow2507 rho)
    (r2508 : Seg28.relationRow2508 rho)
    (r2509 : Seg28.relationRow2509 rho)
    (r2510 : Seg28.relationRow2510 rho)
    (r2511 : Seg28.relationRow2511 rho)
    (tail : next (rho 21845) (rho 21850) (rho 21855) (rho 21860) (rho 21865) (rho 21870) (rho 21875)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg6 (rho 21845) (rho 21850) (rho 21855) (rho 21860) (rho 21865) (rho 21870) next := by
  exact ⟨rho 21871, rho 21872, rho 21873, rho 21874, rho 21875, r2507, r2508, r2509, r2510, r2511, tail⟩

theorem seg28_scp_node6_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2512 : Seg28.relationRow2512 rho)
    (r2513 : Seg28.relationRow2513 rho)
    (r2514 : Seg28.relationRow2514 rho)
    (r2515 : Seg28.relationRow2515 rho)
    (r2516 : Seg28.relationRow2516 rho)
    (tail : next (rho 21845) (rho 21850) (rho 21855) (rho 21860) (rho 21865) (rho 21870) (rho 21875) (rho 21880)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg7 (rho 21845) (rho 21850) (rho 21855) (rho 21860) (rho 21865) (rho 21870) (rho 21875) next := by
  exact ⟨rho 21876, rho 21877, rho 21878, rho 21879, rho 21880, r2512, r2513, r2514, r2515, r2516, tail⟩

theorem seg28_scp_node6_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2517 : Seg28.relationRow2517 rho)
    (r2518 : Seg28.relationRow2518 rho)
    (r2519 : Seg28.relationRow2519 rho)
    (r2520 : Seg28.relationRow2520 rho)
    (r2521 : Seg28.relationRow2521 rho)
    (tail : next (rho 21865) (rho 21870) (rho 21875) (rho 21880) (rho 21885)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg8 (rho 21845) (rho 21850) (rho 21855) (rho 21860) (rho 21865) (rho 21870) (rho 21875) (rho 21880) next := by
  exact ⟨rho 21881, rho 21882, rho 21883, rho 21884, rho 21885, r2517, r2518, r2519, r2520, r2521, tail⟩

theorem seg28_scp_node6_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r2522 : Seg28.relationRow2522 rho)
    (r2523 : Seg28.relationRow2523 rho)
    (r2524 : Seg28.relationRow2524 rho)
    (r2525 : Seg28.relationRow2525 rho)
    (r2526 : Seg28.relationRow2526 rho)
    (tail : next (rho 21865) (rho 21870) (rho 21875) (rho 21880) (rho 21885) (rho 21890)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode6350_cfa4b9.seg9 (rho 21865) (rho 21870) (rho 21875) (rho 21880) (rho 21885) next := by
  exact ⟨rho 21886, rho 21887, rho 21888, rho 21889, rho 21890, r2522, r2523, r2524, r2525, r2526, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

