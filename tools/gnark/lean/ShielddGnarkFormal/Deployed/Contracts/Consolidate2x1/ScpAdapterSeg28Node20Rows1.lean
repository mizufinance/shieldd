import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node20_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7623 : Seg28.relationRow7623 rho)
    (r7624 : Seg28.relationRow7624 rho)
    (r7625 : Seg28.relationRow7625 rho)
    (r7626 : Seg28.relationRow7626 rho)
    (r7627 : Seg28.relationRow7627 rho)
    (tail : next (rho 26911) (rho 26916) (rho 26921) (rho 26926) (rho 26931) (rho 26936) (rho 26941)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg10 (rho 26911) (rho 26916) (rho 26921) (rho 26926) (rho 26931) (rho 26936) next := by
  exact ⟨rho 26937, rho 26938, rho 26939, rho 26940, rho 26941, r7623, r7624, r7625, r7626, r7627, tail⟩

theorem seg28_scp_node20_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7628 : Seg28.relationRow7628 rho)
    (r7629 : Seg28.relationRow7629 rho)
    (r7630 : Seg28.relationRow7630 rho)
    (r7631 : Seg28.relationRow7631 rho)
    (r7632 : Seg28.relationRow7632 rho)
    (tail : next (rho 26911) (rho 26916) (rho 26921) (rho 26926) (rho 26931) (rho 26936) (rho 26941) (rho 26946)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg11 (rho 26911) (rho 26916) (rho 26921) (rho 26926) (rho 26931) (rho 26936) (rho 26941) next := by
  exact ⟨rho 26942, rho 26943, rho 26944, rho 26945, rho 26946, r7628, r7629, r7630, r7631, r7632, tail⟩

theorem seg28_scp_node20_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7633 : Seg28.relationRow7633 rho)
    (r7634 : Seg28.relationRow7634 rho)
    (r7635 : Seg28.relationRow7635 rho)
    (r7636 : Seg28.relationRow7636 rho)
    (r7637 : Seg28.relationRow7637 rho)
    (tail : next (rho 26911) (rho 26916) (rho 26921) (rho 26926) (rho 26931) (rho 26936) (rho 26941) (rho 26946) (rho 26951)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg12 (rho 26911) (rho 26916) (rho 26921) (rho 26926) (rho 26931) (rho 26936) (rho 26941) (rho 26946) next := by
  exact ⟨rho 26947, rho 26948, rho 26949, rho 26950, rho 26951, r7633, r7634, r7635, r7636, r7637, tail⟩

theorem seg28_scp_node20_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7638 : Seg28.relationRow7638 rho)
    (r7639 : Seg28.relationRow7639 rho)
    (r7640 : Seg28.relationRow7640 rho)
    (r7641 : Seg28.relationRow7641 rho)
    (r7642 : Seg28.relationRow7642 rho)
    (tail : next (rho 26936) (rho 26941) (rho 26946) (rho 26951) (rho 26956)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg13 (rho 26911) (rho 26916) (rho 26921) (rho 26926) (rho 26931) (rho 26936) (rho 26941) (rho 26946) (rho 26951) next := by
  exact ⟨rho 26952, rho 26953, rho 26954, rho 26955, rho 26956, r7638, r7639, r7640, r7641, r7642, tail⟩

theorem seg28_scp_node20_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7643 : Seg28.relationRow7643 rho)
    (r7644 : Seg28.relationRow7644 rho)
    (r7645 : Seg28.relationRow7645 rho)
    (r7646 : Seg28.relationRow7646 rho)
    (r7647 : Seg28.relationRow7647 rho)
    (tail : next (rho 26936) (rho 26941) (rho 26946) (rho 26951) (rho 26956) (rho 26961)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg14 (rho 26936) (rho 26941) (rho 26946) (rho 26951) (rho 26956) next := by
  exact ⟨rho 26957, rho 26958, rho 26959, rho 26960, rho 26961, r7643, r7644, r7645, r7646, r7647, tail⟩

theorem seg28_scp_node20_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7648 : Seg28.relationRow7648 rho)
    (r7649 : Seg28.relationRow7649 rho)
    (r7650 : Seg28.relationRow7650 rho)
    (r7651 : Seg28.relationRow7651 rho)
    (r7652 : Seg28.relationRow7652 rho)
    (tail : next (rho 26936) (rho 26941) (rho 26946) (rho 26951) (rho 26956) (rho 26961) (rho 26966)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg15 (rho 26936) (rho 26941) (rho 26946) (rho 26951) (rho 26956) (rho 26961) next := by
  exact ⟨rho 26962, rho 26963, rho 26964, rho 26965, rho 26966, r7648, r7649, r7650, r7651, r7652, tail⟩

theorem seg28_scp_node20_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7653 : Seg28.relationRow7653 rho)
    (r7654 : Seg28.relationRow7654 rho)
    (r7655 : Seg28.relationRow7655 rho)
    (r7656 : Seg28.relationRow7656 rho)
    (r7657 : Seg28.relationRow7657 rho)
    (tail : next (rho 26936) (rho 26941) (rho 26946) (rho 26951) (rho 26956) (rho 26961) (rho 26966) (rho 26971)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg16 (rho 26936) (rho 26941) (rho 26946) (rho 26951) (rho 26956) (rho 26961) (rho 26966) next := by
  exact ⟨rho 26967, rho 26968, rho 26969, rho 26970, rho 26971, r7653, r7654, r7655, r7656, r7657, tail⟩

theorem seg28_scp_node20_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7658 : Seg28.relationRow7658 rho)
    (r7659 : Seg28.relationRow7659 rho)
    (r7660 : Seg28.relationRow7660 rho)
    (r7661 : Seg28.relationRow7661 rho)
    (r7662 : Seg28.relationRow7662 rho)
    (tail : next (rho 26936) (rho 26941) (rho 26946) (rho 26951) (rho 26956) (rho 26961) (rho 26966) (rho 26971) (rho 26976)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg17 (rho 26936) (rho 26941) (rho 26946) (rho 26951) (rho 26956) (rho 26961) (rho 26966) (rho 26971) next := by
  exact ⟨rho 26972, rho 26973, rho 26974, rho 26975, rho 26976, r7658, r7659, r7660, r7661, r7662, tail⟩

theorem seg28_scp_node20_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7663 : Seg28.relationRow7663 rho)
    (r7664 : Seg28.relationRow7664 rho)
    (r7665 : Seg28.relationRow7665 rho)
    (r7666 : Seg28.relationRow7666 rho)
    (r7667 : Seg28.relationRow7667 rho)
    (tail : next (rho 26961) (rho 26966) (rho 26971) (rho 26976) (rho 26981)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg18 (rho 26936) (rho 26941) (rho 26946) (rho 26951) (rho 26956) (rho 26961) (rho 26966) (rho 26971) (rho 26976) next := by
  exact ⟨rho 26977, rho 26978, rho 26979, rho 26980, rho 26981, r7663, r7664, r7665, r7666, r7667, tail⟩

theorem seg28_scp_node20_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7668 : Seg28.relationRow7668 rho)
    (r7669 : Seg28.relationRow7669 rho)
    (r7670 : Seg28.relationRow7670 rho)
    (r7671 : Seg28.relationRow7671 rho)
    (r7672 : Seg28.relationRow7672 rho)
    (tail : next (rho 26961) (rho 26966) (rho 26971) (rho 26976) (rho 26981) (rho 26986)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg19 (rho 26961) (rho 26966) (rho 26971) (rho 26976) (rho 26981) next := by
  exact ⟨rho 26982, rho 26983, rho 26984, rho 26985, rho 26986, r7668, r7669, r7670, r7671, r7672, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

