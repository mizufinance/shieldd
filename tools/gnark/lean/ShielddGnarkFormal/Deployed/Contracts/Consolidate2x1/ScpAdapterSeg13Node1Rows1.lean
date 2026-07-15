import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node1_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r707 : Seg13.relationRow707 rho)
    (r708 : Seg13.relationRow708 rho)
    (r709 : Seg13.relationRow709 rho)
    (r710 : Seg13.relationRow710 rho)
    (r711 : Seg13.relationRow711 rho)
    (tail : next (rho 7890) (rho 7895) (rho 7900) (rho 7905) (rho 7910) (rho 7915) (rho 7920)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg10 (rho 7890) (rho 7895) (rho 7900) (rho 7905) (rho 7910) (rho 7915) next := by
  exact ⟨rho 7916, rho 7917, rho 7918, rho 7919, rho 7920, r707, r708, r709, r710, r711, tail⟩

theorem seg13_scp_node1_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r712 : Seg13.relationRow712 rho)
    (r713 : Seg13.relationRow713 rho)
    (r714 : Seg13.relationRow714 rho)
    (r715 : Seg13.relationRow715 rho)
    (r716 : Seg13.relationRow716 rho)
    (tail : next (rho 7890) (rho 7895) (rho 7900) (rho 7905) (rho 7910) (rho 7915) (rho 7920) (rho 7925)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg11 (rho 7890) (rho 7895) (rho 7900) (rho 7905) (rho 7910) (rho 7915) (rho 7920) next := by
  exact ⟨rho 7921, rho 7922, rho 7923, rho 7924, rho 7925, r712, r713, r714, r715, r716, tail⟩

theorem seg13_scp_node1_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r717 : Seg13.relationRow717 rho)
    (r718 : Seg13.relationRow718 rho)
    (r719 : Seg13.relationRow719 rho)
    (r720 : Seg13.relationRow720 rho)
    (r721 : Seg13.relationRow721 rho)
    (tail : next (rho 7890) (rho 7895) (rho 7900) (rho 7905) (rho 7910) (rho 7915) (rho 7920) (rho 7925) (rho 7930)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg12 (rho 7890) (rho 7895) (rho 7900) (rho 7905) (rho 7910) (rho 7915) (rho 7920) (rho 7925) next := by
  exact ⟨rho 7926, rho 7927, rho 7928, rho 7929, rho 7930, r717, r718, r719, r720, r721, tail⟩

theorem seg13_scp_node1_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r722 : Seg13.relationRow722 rho)
    (r723 : Seg13.relationRow723 rho)
    (r724 : Seg13.relationRow724 rho)
    (r725 : Seg13.relationRow725 rho)
    (r726 : Seg13.relationRow726 rho)
    (tail : next (rho 7915) (rho 7920) (rho 7925) (rho 7930) (rho 7935)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg13 (rho 7890) (rho 7895) (rho 7900) (rho 7905) (rho 7910) (rho 7915) (rho 7920) (rho 7925) (rho 7930) next := by
  exact ⟨rho 7931, rho 7932, rho 7933, rho 7934, rho 7935, r722, r723, r724, r725, r726, tail⟩

theorem seg13_scp_node1_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r727 : Seg13.relationRow727 rho)
    (r728 : Seg13.relationRow728 rho)
    (r729 : Seg13.relationRow729 rho)
    (r730 : Seg13.relationRow730 rho)
    (r731 : Seg13.relationRow731 rho)
    (tail : next (rho 7915) (rho 7920) (rho 7925) (rho 7930) (rho 7935) (rho 7940)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg14 (rho 7915) (rho 7920) (rho 7925) (rho 7930) (rho 7935) next := by
  exact ⟨rho 7936, rho 7937, rho 7938, rho 7939, rho 7940, r727, r728, r729, r730, r731, tail⟩

theorem seg13_scp_node1_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r732 : Seg13.relationRow732 rho)
    (r733 : Seg13.relationRow733 rho)
    (r734 : Seg13.relationRow734 rho)
    (r735 : Seg13.relationRow735 rho)
    (r736 : Seg13.relationRow736 rho)
    (tail : next (rho 7915) (rho 7920) (rho 7925) (rho 7930) (rho 7935) (rho 7940) (rho 7945)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg15 (rho 7915) (rho 7920) (rho 7925) (rho 7930) (rho 7935) (rho 7940) next := by
  exact ⟨rho 7941, rho 7942, rho 7943, rho 7944, rho 7945, r732, r733, r734, r735, r736, tail⟩

theorem seg13_scp_node1_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r737 : Seg13.relationRow737 rho)
    (r738 : Seg13.relationRow738 rho)
    (r739 : Seg13.relationRow739 rho)
    (r740 : Seg13.relationRow740 rho)
    (r741 : Seg13.relationRow741 rho)
    (tail : next (rho 7915) (rho 7920) (rho 7925) (rho 7930) (rho 7935) (rho 7940) (rho 7945) (rho 7950)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg16 (rho 7915) (rho 7920) (rho 7925) (rho 7930) (rho 7935) (rho 7940) (rho 7945) next := by
  exact ⟨rho 7946, rho 7947, rho 7948, rho 7949, rho 7950, r737, r738, r739, r740, r741, tail⟩

theorem seg13_scp_node1_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r742 : Seg13.relationRow742 rho)
    (r743 : Seg13.relationRow743 rho)
    (r744 : Seg13.relationRow744 rho)
    (r745 : Seg13.relationRow745 rho)
    (r746 : Seg13.relationRow746 rho)
    (tail : next (rho 7915) (rho 7920) (rho 7925) (rho 7930) (rho 7935) (rho 7940) (rho 7945) (rho 7950) (rho 7955)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg17 (rho 7915) (rho 7920) (rho 7925) (rho 7930) (rho 7935) (rho 7940) (rho 7945) (rho 7950) next := by
  exact ⟨rho 7951, rho 7952, rho 7953, rho 7954, rho 7955, r742, r743, r744, r745, r746, tail⟩

theorem seg13_scp_node1_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r747 : Seg13.relationRow747 rho)
    (r748 : Seg13.relationRow748 rho)
    (r749 : Seg13.relationRow749 rho)
    (r750 : Seg13.relationRow750 rho)
    (r751 : Seg13.relationRow751 rho)
    (tail : next (rho 7940) (rho 7945) (rho 7950) (rho 7955) (rho 7960)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg18 (rho 7915) (rho 7920) (rho 7925) (rho 7930) (rho 7935) (rho 7940) (rho 7945) (rho 7950) (rho 7955) next := by
  exact ⟨rho 7956, rho 7957, rho 7958, rho 7959, rho 7960, r747, r748, r749, r750, r751, tail⟩

theorem seg13_scp_node1_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r752 : Seg13.relationRow752 rho)
    (r753 : Seg13.relationRow753 rho)
    (r754 : Seg13.relationRow754 rho)
    (r755 : Seg13.relationRow755 rho)
    (r756 : Seg13.relationRow756 rho)
    (tail : next (rho 7940) (rho 7945) (rho 7950) (rho 7955) (rho 7960) (rho 7965)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg19 (rho 7940) (rho 7945) (rho 7950) (rho 7955) (rho 7960) next := by
  exact ⟨rho 7961, rho 7962, rho 7963, rho 7964, rho 7965, r752, r753, r754, r755, r756, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

