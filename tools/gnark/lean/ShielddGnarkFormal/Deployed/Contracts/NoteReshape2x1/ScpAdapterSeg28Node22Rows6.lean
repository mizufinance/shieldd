import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node22_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8601 : Seg28.relationRow8601 rho)
    (r8602 : Seg28.relationRow8602 rho)
    (r8603 : Seg28.relationRow8603 rho)
    (r8604 : Seg28.relationRow8604 rho)
    (r8605 : Seg28.relationRow8605 rho)
    (tail : next (rho 27886) (rho 27891) (rho 27896) (rho 27901) (rho 27906) (rho 27911)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg60 (rho 27886) (rho 27891) (rho 27896) (rho 27901) (rho 27906) next := by
  exact ⟨rho 27907, rho 27908, rho 27909, rho 27910, rho 27911, r8601, r8602, r8603, r8604, r8605, tail⟩

theorem seg28_scp_node22_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8606 : Seg28.relationRow8606 rho)
    (r8607 : Seg28.relationRow8607 rho)
    (r8608 : Seg28.relationRow8608 rho)
    (r8609 : Seg28.relationRow8609 rho)
    (r8610 : Seg28.relationRow8610 rho)
    (tail : next (rho 27886) (rho 27891) (rho 27896) (rho 27901) (rho 27906) (rho 27911) (rho 27916)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg61 (rho 27886) (rho 27891) (rho 27896) (rho 27901) (rho 27906) (rho 27911) next := by
  exact ⟨rho 27912, rho 27913, rho 27914, rho 27915, rho 27916, r8606, r8607, r8608, r8609, r8610, tail⟩

theorem seg28_scp_node22_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8611 : Seg28.relationRow8611 rho)
    (r8612 : Seg28.relationRow8612 rho)
    (r8613 : Seg28.relationRow8613 rho)
    (r8614 : Seg28.relationRow8614 rho)
    (r8615 : Seg28.relationRow8615 rho)
    (tail : next (rho 27886) (rho 27891) (rho 27896) (rho 27901) (rho 27906) (rho 27911) (rho 27916) (rho 27921)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg62 (rho 27886) (rho 27891) (rho 27896) (rho 27901) (rho 27906) (rho 27911) (rho 27916) next := by
  exact ⟨rho 27917, rho 27918, rho 27919, rho 27920, rho 27921, r8611, r8612, r8613, r8614, r8615, tail⟩

theorem seg28_scp_node22_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8616 : Seg28.relationRow8616 rho)
    (r8617 : Seg28.relationRow8617 rho)
    (r8618 : Seg28.relationRow8618 rho)
    (r8619 : Seg28.relationRow8619 rho)
    (r8620 : Seg28.relationRow8620 rho)
    (tail : next (rho 27886) (rho 27891) (rho 27896) (rho 27901) (rho 27906) (rho 27911) (rho 27916) (rho 27921) (rho 27926)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg63 (rho 27886) (rho 27891) (rho 27896) (rho 27901) (rho 27906) (rho 27911) (rho 27916) (rho 27921) next := by
  exact ⟨rho 27922, rho 27923, rho 27924, rho 27925, rho 27926, r8616, r8617, r8618, r8619, r8620, tail⟩

theorem seg28_scp_node22_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8621 : Seg28.relationRow8621 rho)
    (r8622 : Seg28.relationRow8622 rho)
    (r8623 : Seg28.relationRow8623 rho)
    (r8624 : Seg28.relationRow8624 rho)
    (r8625 : Seg28.relationRow8625 rho)
    (tail : next (rho 27911) (rho 27916) (rho 27921) (rho 27926) (rho 27931)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg64 (rho 27886) (rho 27891) (rho 27896) (rho 27901) (rho 27906) (rho 27911) (rho 27916) (rho 27921) (rho 27926) next := by
  exact ⟨rho 27927, rho 27928, rho 27929, rho 27930, rho 27931, r8621, r8622, r8623, r8624, r8625, tail⟩

theorem seg28_scp_node22_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8626 : Seg28.relationRow8626 rho)
    (r8627 : Seg28.relationRow8627 rho)
    (r8628 : Seg28.relationRow8628 rho)
    (r8629 : Seg28.relationRow8629 rho)
    (r8630 : Seg28.relationRow8630 rho)
    (tail : next (rho 27911) (rho 27916) (rho 27921) (rho 27926) (rho 27931) (rho 27936)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg65 (rho 27911) (rho 27916) (rho 27921) (rho 27926) (rho 27931) next := by
  exact ⟨rho 27932, rho 27933, rho 27934, rho 27935, rho 27936, r8626, r8627, r8628, r8629, r8630, tail⟩

theorem seg28_scp_node22_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8631 : Seg28.relationRow8631 rho)
    (r8632 : Seg28.relationRow8632 rho)
    (r8633 : Seg28.relationRow8633 rho)
    (r8634 : Seg28.relationRow8634 rho)
    (r8635 : Seg28.relationRow8635 rho)
    (tail : next (rho 27911) (rho 27916) (rho 27921) (rho 27926) (rho 27931) (rho 27936) (rho 27941)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg66 (rho 27911) (rho 27916) (rho 27921) (rho 27926) (rho 27931) (rho 27936) next := by
  exact ⟨rho 27937, rho 27938, rho 27939, rho 27940, rho 27941, r8631, r8632, r8633, r8634, r8635, tail⟩

theorem seg28_scp_node22_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8636 : Seg28.relationRow8636 rho)
    (r8637 : Seg28.relationRow8637 rho)
    (r8638 : Seg28.relationRow8638 rho)
    (r8639 : Seg28.relationRow8639 rho)
    (r8640 : Seg28.relationRow8640 rho)
    (tail : next (rho 27911) (rho 27916) (rho 27921) (rho 27926) (rho 27931) (rho 27936) (rho 27941) (rho 27946)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg67 (rho 27911) (rho 27916) (rho 27921) (rho 27926) (rho 27931) (rho 27936) (rho 27941) next := by
  exact ⟨rho 27942, rho 27943, rho 27944, rho 27945, rho 27946, r8636, r8637, r8638, r8639, r8640, tail⟩

theorem seg28_scp_node22_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8641 : Seg28.relationRow8641 rho)
    (r8642 : Seg28.relationRow8642 rho)
    (r8643 : Seg28.relationRow8643 rho)
    (r8644 : Seg28.relationRow8644 rho)
    (r8645 : Seg28.relationRow8645 rho)
    (tail : next (rho 27911) (rho 27916) (rho 27921) (rho 27926) (rho 27931) (rho 27936) (rho 27941) (rho 27946) (rho 27951)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg68 (rho 27911) (rho 27916) (rho 27921) (rho 27926) (rho 27931) (rho 27936) (rho 27941) (rho 27946) next := by
  exact ⟨rho 27947, rho 27948, rho 27949, rho 27950, rho 27951, r8641, r8642, r8643, r8644, r8645, tail⟩

theorem seg28_scp_node22_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8646 : Seg28.relationRow8646 rho)
    (r8647 : Seg28.relationRow8647 rho)
    (r8648 : Seg28.relationRow8648 rho)
    (r8649 : Seg28.relationRow8649 rho)
    (r8650 : Seg28.relationRow8650 rho)
    (tail : next (rho 27936) (rho 27941) (rho 27946) (rho 27951) (rho 27956)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg69 (rho 27911) (rho 27916) (rho 27921) (rho 27926) (rho 27931) (rho 27936) (rho 27941) (rho 27946) (rho 27951) next := by
  exact ⟨rho 27952, rho 27953, rho 27954, rho 27955, rho 27956, r8646, r8647, r8648, r8649, r8650, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

