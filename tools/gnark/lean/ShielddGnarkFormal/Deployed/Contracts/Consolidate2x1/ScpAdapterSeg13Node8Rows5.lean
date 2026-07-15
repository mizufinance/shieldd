import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node8_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3455 : Seg13.relationRow3455 rho)
    (r3456 : Seg13.relationRow3456 rho)
    (r3457 : Seg13.relationRow3457 rho)
    (r3458 : Seg13.relationRow3458 rho)
    (r3459 : Seg13.relationRow3459 rho)
    (tail : next (rho 10460) (rho 10465) (rho 10470) (rho 10475) (rho 10480) (rho 10485) (rho 10490) (rho 10495) (rho 10500) (rho 10505) (rho 10510) (rho 10515) (rho 10520) (rho 10525) (rho 10530) (rho 10535) (rho 10540) (rho 10545) (rho 10550) (rho 10555) (rho 10560) (rho 10565) (rho 10570) (rho 10575) (rho 10580) (rho 10585) (rho 10590) (rho 10595) (rho 10600) (rho 10605) (rho 10610) (rho 10615) (rho 10620) (rho 10625) (rho 10630) (rho 10635) (rho 10640)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg50 (rho 10460) (rho 10465) (rho 10470) (rho 10475) (rho 10480) (rho 10485) (rho 10490) (rho 10495) (rho 10500) (rho 10505) (rho 10510) (rho 10515) (rho 10520) (rho 10525) (rho 10530) (rho 10535) (rho 10540) (rho 10545) (rho 10550) (rho 10555) (rho 10560) (rho 10565) (rho 10570) (rho 10575) (rho 10580) (rho 10585) (rho 10590) (rho 10595) (rho 10600) (rho 10605) (rho 10610) (rho 10615) (rho 10620) (rho 10625) (rho 10630) (rho 10635) next := by
  exact ⟨rho 10636, rho 10637, rho 10638, rho 10639, rho 10640, r3455, r3456, r3457, r3458, r3459, tail⟩

theorem seg13_scp_node8_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3460 : Seg13.relationRow3460 rho)
    (r3461 : Seg13.relationRow3461 rho)
    (r3462 : Seg13.relationRow3462 rho)
    (r3463 : Seg13.relationRow3463 rho)
    (r3464 : Seg13.relationRow3464 rho)
    (tail : next (rho 10460) (rho 10465) (rho 10470) (rho 10475) (rho 10480) (rho 10485) (rho 10490) (rho 10495) (rho 10500) (rho 10505) (rho 10510) (rho 10515) (rho 10520) (rho 10525) (rho 10530) (rho 10535) (rho 10540) (rho 10545) (rho 10550) (rho 10555) (rho 10560) (rho 10565) (rho 10570) (rho 10575) (rho 10580) (rho 10585) (rho 10590) (rho 10595) (rho 10600) (rho 10605) (rho 10610) (rho 10615) (rho 10620) (rho 10625) (rho 10630) (rho 10635) (rho 10640) (rho 10645)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg51 (rho 10460) (rho 10465) (rho 10470) (rho 10475) (rho 10480) (rho 10485) (rho 10490) (rho 10495) (rho 10500) (rho 10505) (rho 10510) (rho 10515) (rho 10520) (rho 10525) (rho 10530) (rho 10535) (rho 10540) (rho 10545) (rho 10550) (rho 10555) (rho 10560) (rho 10565) (rho 10570) (rho 10575) (rho 10580) (rho 10585) (rho 10590) (rho 10595) (rho 10600) (rho 10605) (rho 10610) (rho 10615) (rho 10620) (rho 10625) (rho 10630) (rho 10635) (rho 10640) next := by
  exact ⟨rho 10641, rho 10642, rho 10643, rho 10644, rho 10645, r3460, r3461, r3462, r3463, r3464, tail⟩

theorem seg13_scp_node8_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3465 : Seg13.relationRow3465 rho)
    (r3466 : Seg13.relationRow3466 rho)
    (r3467 : Seg13.relationRow3467 rho)
    (r3468 : Seg13.relationRow3468 rho)
    (r3469 : Seg13.relationRow3469 rho)
    (tail : next (rho 10460) (rho 10465) (rho 10470) (rho 10475) (rho 10480) (rho 10485) (rho 10490) (rho 10495) (rho 10500) (rho 10505) (rho 10510) (rho 10515) (rho 10520) (rho 10525) (rho 10530) (rho 10535) (rho 10540) (rho 10545) (rho 10550) (rho 10555) (rho 10560) (rho 10565) (rho 10570) (rho 10575) (rho 10580) (rho 10585) (rho 10590) (rho 10595) (rho 10600) (rho 10605) (rho 10610) (rho 10615) (rho 10620) (rho 10625) (rho 10630) (rho 10635) (rho 10640) (rho 10645) (rho 10650)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg52 (rho 10460) (rho 10465) (rho 10470) (rho 10475) (rho 10480) (rho 10485) (rho 10490) (rho 10495) (rho 10500) (rho 10505) (rho 10510) (rho 10515) (rho 10520) (rho 10525) (rho 10530) (rho 10535) (rho 10540) (rho 10545) (rho 10550) (rho 10555) (rho 10560) (rho 10565) (rho 10570) (rho 10575) (rho 10580) (rho 10585) (rho 10590) (rho 10595) (rho 10600) (rho 10605) (rho 10610) (rho 10615) (rho 10620) (rho 10625) (rho 10630) (rho 10635) (rho 10640) (rho 10645) next := by
  exact ⟨rho 10646, rho 10647, rho 10648, rho 10649, rho 10650, r3465, r3466, r3467, r3468, r3469, tail⟩

theorem seg13_scp_node8_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3470 : Seg13.relationRow3470 rho)
    (r3471 : Seg13.relationRow3471 rho)
    (r3472 : Seg13.relationRow3472 rho)
    (r3473 : Seg13.relationRow3473 rho)
    (r3474 : Seg13.relationRow3474 rho)
    (tail : next (rho 10460) (rho 10465) (rho 10470) (rho 10475) (rho 10480) (rho 10485) (rho 10490) (rho 10495) (rho 10500) (rho 10505) (rho 10510) (rho 10515) (rho 10520) (rho 10525) (rho 10530) (rho 10535) (rho 10540) (rho 10545) (rho 10550) (rho 10555) (rho 10560) (rho 10565) (rho 10570) (rho 10575) (rho 10580) (rho 10585) (rho 10590) (rho 10595) (rho 10600) (rho 10605) (rho 10610) (rho 10615) (rho 10620) (rho 10625) (rho 10630) (rho 10635) (rho 10640) (rho 10645) (rho 10650) (rho 10655)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg53 (rho 10460) (rho 10465) (rho 10470) (rho 10475) (rho 10480) (rho 10485) (rho 10490) (rho 10495) (rho 10500) (rho 10505) (rho 10510) (rho 10515) (rho 10520) (rho 10525) (rho 10530) (rho 10535) (rho 10540) (rho 10545) (rho 10550) (rho 10555) (rho 10560) (rho 10565) (rho 10570) (rho 10575) (rho 10580) (rho 10585) (rho 10590) (rho 10595) (rho 10600) (rho 10605) (rho 10610) (rho 10615) (rho 10620) (rho 10625) (rho 10630) (rho 10635) (rho 10640) (rho 10645) (rho 10650) next := by
  exact ⟨rho 10651, rho 10652, rho 10653, rho 10654, rho 10655, r3470, r3471, r3472, r3473, r3474, tail⟩

theorem seg13_scp_node8_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3475 : Seg13.relationRow3475 rho)
    (r3476 : Seg13.relationRow3476 rho)
    (r3477 : Seg13.relationRow3477 rho)
    (r3478 : Seg13.relationRow3478 rho)
    (r3479 : Seg13.relationRow3479 rho)
    (tail : next (rho 10640) (rho 10645) (rho 10650) (rho 10655) (rho 10660)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg54 (rho 10460) (rho 10465) (rho 10470) (rho 10475) (rho 10480) (rho 10485) (rho 10490) (rho 10495) (rho 10500) (rho 10505) (rho 10510) (rho 10515) (rho 10520) (rho 10525) (rho 10530) (rho 10535) (rho 10540) (rho 10545) (rho 10550) (rho 10555) (rho 10560) (rho 10565) (rho 10570) (rho 10575) (rho 10580) (rho 10585) (rho 10590) (rho 10595) (rho 10600) (rho 10605) (rho 10610) (rho 10615) (rho 10620) (rho 10625) (rho 10630) (rho 10635) (rho 10640) (rho 10645) (rho 10650) (rho 10655) next := by
  exact ⟨rho 10656, rho 10657, rho 10658, rho 10659, rho 10660, r3475, r3476, r3477, r3478, r3479, tail⟩

theorem seg13_scp_node8_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3480 : Seg13.relationRow3480 rho)
    (r3481 : Seg13.relationRow3481 rho)
    (r3482 : Seg13.relationRow3482 rho)
    (r3483 : Seg13.relationRow3483 rho)
    (r3484 : Seg13.relationRow3484 rho)
    (tail : next (rho 10640) (rho 10645) (rho 10650) (rho 10655) (rho 10660) (rho 10665)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg55 (rho 10640) (rho 10645) (rho 10650) (rho 10655) (rho 10660) next := by
  exact ⟨rho 10661, rho 10662, rho 10663, rho 10664, rho 10665, r3480, r3481, r3482, r3483, r3484, tail⟩

theorem seg13_scp_node8_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3485 : Seg13.relationRow3485 rho)
    (r3486 : Seg13.relationRow3486 rho)
    (r3487 : Seg13.relationRow3487 rho)
    (r3488 : Seg13.relationRow3488 rho)
    (r3489 : Seg13.relationRow3489 rho)
    (tail : next (rho 10640) (rho 10645) (rho 10650) (rho 10655) (rho 10660) (rho 10665) (rho 10670)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg56 (rho 10640) (rho 10645) (rho 10650) (rho 10655) (rho 10660) (rho 10665) next := by
  exact ⟨rho 10666, rho 10667, rho 10668, rho 10669, rho 10670, r3485, r3486, r3487, r3488, r3489, tail⟩

theorem seg13_scp_node8_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3490 : Seg13.relationRow3490 rho)
    (r3491 : Seg13.relationRow3491 rho)
    (r3492 : Seg13.relationRow3492 rho)
    (r3493 : Seg13.relationRow3493 rho)
    (r3494 : Seg13.relationRow3494 rho)
    (tail : next (rho 10640) (rho 10645) (rho 10650) (rho 10655) (rho 10660) (rho 10665) (rho 10670) (rho 10675)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg57 (rho 10640) (rho 10645) (rho 10650) (rho 10655) (rho 10660) (rho 10665) (rho 10670) next := by
  exact ⟨rho 10671, rho 10672, rho 10673, rho 10674, rho 10675, r3490, r3491, r3492, r3493, r3494, tail⟩

theorem seg13_scp_node8_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3495 : Seg13.relationRow3495 rho)
    (r3496 : Seg13.relationRow3496 rho)
    (r3497 : Seg13.relationRow3497 rho)
    (r3498 : Seg13.relationRow3498 rho)
    (r3499 : Seg13.relationRow3499 rho)
    (tail : next (rho 10640) (rho 10645) (rho 10650) (rho 10655) (rho 10660) (rho 10665) (rho 10670) (rho 10675) (rho 10680)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg58 (rho 10640) (rho 10645) (rho 10650) (rho 10655) (rho 10660) (rho 10665) (rho 10670) (rho 10675) next := by
  exact ⟨rho 10676, rho 10677, rho 10678, rho 10679, rho 10680, r3495, r3496, r3497, r3498, r3499, tail⟩

theorem seg13_scp_node8_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3500 : Seg13.relationRow3500 rho)
    (r3501 : Seg13.relationRow3501 rho)
    (r3502 : Seg13.relationRow3502 rho)
    (r3503 : Seg13.relationRow3503 rho)
    (r3504 : Seg13.relationRow3504 rho)
    (tail : next (rho 10665) (rho 10670) (rho 10675) (rho 10680) (rho 10685)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg59 (rho 10640) (rho 10645) (rho 10650) (rho 10655) (rho 10660) (rho 10665) (rho 10670) (rho 10675) (rho 10680) next := by
  exact ⟨rho 10681, rho 10682, rho 10683, rho 10684, rho 10685, r3500, r3501, r3502, r3503, r3504, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

