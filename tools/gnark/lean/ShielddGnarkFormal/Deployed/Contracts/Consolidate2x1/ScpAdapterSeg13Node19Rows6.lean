import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node19_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7509 : Seg13.relationRow7509 rho)
    (r7510 : Seg13.relationRow7510 rho)
    (r7511 : Seg13.relationRow7511 rho)
    (r7512 : Seg13.relationRow7512 rho)
    (r7513 : Seg13.relationRow7513 rho)
    (tail : next (rho 14625) (rho 14630) (rho 14635) (rho 14640) (rho 14645) (rho 14650)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg60 (rho 14625) (rho 14630) (rho 14635) (rho 14640) (rho 14645) next := by
  exact ⟨rho 14646, rho 14647, rho 14648, rho 14649, rho 14650, r7509, r7510, r7511, r7512, r7513, tail⟩

theorem seg13_scp_node19_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7514 : Seg13.relationRow7514 rho)
    (r7515 : Seg13.relationRow7515 rho)
    (r7516 : Seg13.relationRow7516 rho)
    (r7517 : Seg13.relationRow7517 rho)
    (r7518 : Seg13.relationRow7518 rho)
    (tail : next (rho 14625) (rho 14630) (rho 14635) (rho 14640) (rho 14645) (rho 14650) (rho 14655)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg61 (rho 14625) (rho 14630) (rho 14635) (rho 14640) (rho 14645) (rho 14650) next := by
  exact ⟨rho 14651, rho 14652, rho 14653, rho 14654, rho 14655, r7514, r7515, r7516, r7517, r7518, tail⟩

theorem seg13_scp_node19_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7519 : Seg13.relationRow7519 rho)
    (r7520 : Seg13.relationRow7520 rho)
    (r7521 : Seg13.relationRow7521 rho)
    (r7522 : Seg13.relationRow7522 rho)
    (r7523 : Seg13.relationRow7523 rho)
    (tail : next (rho 14625) (rho 14630) (rho 14635) (rho 14640) (rho 14645) (rho 14650) (rho 14655) (rho 14660)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg62 (rho 14625) (rho 14630) (rho 14635) (rho 14640) (rho 14645) (rho 14650) (rho 14655) next := by
  exact ⟨rho 14656, rho 14657, rho 14658, rho 14659, rho 14660, r7519, r7520, r7521, r7522, r7523, tail⟩

theorem seg13_scp_node19_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7524 : Seg13.relationRow7524 rho)
    (r7525 : Seg13.relationRow7525 rho)
    (r7526 : Seg13.relationRow7526 rho)
    (r7527 : Seg13.relationRow7527 rho)
    (r7528 : Seg13.relationRow7528 rho)
    (tail : next (rho 14625) (rho 14630) (rho 14635) (rho 14640) (rho 14645) (rho 14650) (rho 14655) (rho 14660) (rho 14665)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg63 (rho 14625) (rho 14630) (rho 14635) (rho 14640) (rho 14645) (rho 14650) (rho 14655) (rho 14660) next := by
  exact ⟨rho 14661, rho 14662, rho 14663, rho 14664, rho 14665, r7524, r7525, r7526, r7527, r7528, tail⟩

theorem seg13_scp_node19_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7529 : Seg13.relationRow7529 rho)
    (r7530 : Seg13.relationRow7530 rho)
    (r7531 : Seg13.relationRow7531 rho)
    (r7532 : Seg13.relationRow7532 rho)
    (r7533 : Seg13.relationRow7533 rho)
    (tail : next (rho 14650) (rho 14655) (rho 14660) (rho 14665) (rho 14670)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg64 (rho 14625) (rho 14630) (rho 14635) (rho 14640) (rho 14645) (rho 14650) (rho 14655) (rho 14660) (rho 14665) next := by
  exact ⟨rho 14666, rho 14667, rho 14668, rho 14669, rho 14670, r7529, r7530, r7531, r7532, r7533, tail⟩

theorem seg13_scp_node19_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7534 : Seg13.relationRow7534 rho)
    (r7535 : Seg13.relationRow7535 rho)
    (r7536 : Seg13.relationRow7536 rho)
    (r7537 : Seg13.relationRow7537 rho)
    (r7538 : Seg13.relationRow7538 rho)
    (tail : next (rho 14650) (rho 14655) (rho 14660) (rho 14665) (rho 14670) (rho 14675)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg65 (rho 14650) (rho 14655) (rho 14660) (rho 14665) (rho 14670) next := by
  exact ⟨rho 14671, rho 14672, rho 14673, rho 14674, rho 14675, r7534, r7535, r7536, r7537, r7538, tail⟩

theorem seg13_scp_node19_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7539 : Seg13.relationRow7539 rho)
    (r7540 : Seg13.relationRow7540 rho)
    (r7541 : Seg13.relationRow7541 rho)
    (r7542 : Seg13.relationRow7542 rho)
    (r7543 : Seg13.relationRow7543 rho)
    (tail : next (rho 14650) (rho 14655) (rho 14660) (rho 14665) (rho 14670) (rho 14675) (rho 14680)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg66 (rho 14650) (rho 14655) (rho 14660) (rho 14665) (rho 14670) (rho 14675) next := by
  exact ⟨rho 14676, rho 14677, rho 14678, rho 14679, rho 14680, r7539, r7540, r7541, r7542, r7543, tail⟩

theorem seg13_scp_node19_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7544 : Seg13.relationRow7544 rho)
    (r7545 : Seg13.relationRow7545 rho)
    (r7546 : Seg13.relationRow7546 rho)
    (r7547 : Seg13.relationRow7547 rho)
    (r7548 : Seg13.relationRow7548 rho)
    (tail : next (rho 14650) (rho 14655) (rho 14660) (rho 14665) (rho 14670) (rho 14675) (rho 14680) (rho 14685)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg67 (rho 14650) (rho 14655) (rho 14660) (rho 14665) (rho 14670) (rho 14675) (rho 14680) next := by
  exact ⟨rho 14681, rho 14682, rho 14683, rho 14684, rho 14685, r7544, r7545, r7546, r7547, r7548, tail⟩

theorem seg13_scp_node19_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7549 : Seg13.relationRow7549 rho)
    (r7550 : Seg13.relationRow7550 rho)
    (r7551 : Seg13.relationRow7551 rho)
    (r7552 : Seg13.relationRow7552 rho)
    (r7553 : Seg13.relationRow7553 rho)
    (tail : next (rho 14650) (rho 14655) (rho 14660) (rho 14665) (rho 14670) (rho 14675) (rho 14680) (rho 14685) (rho 14690)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg68 (rho 14650) (rho 14655) (rho 14660) (rho 14665) (rho 14670) (rho 14675) (rho 14680) (rho 14685) next := by
  exact ⟨rho 14686, rho 14687, rho 14688, rho 14689, rho 14690, r7549, r7550, r7551, r7552, r7553, tail⟩

theorem seg13_scp_node19_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7554 : Seg13.relationRow7554 rho)
    (r7555 : Seg13.relationRow7555 rho)
    (r7556 : Seg13.relationRow7556 rho)
    (r7557 : Seg13.relationRow7557 rho)
    (r7558 : Seg13.relationRow7558 rho)
    (tail : next (rho 14675) (rho 14680) (rho 14685) (rho 14690) (rho 14695)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg69 (rho 14650) (rho 14655) (rho 14660) (rho 14665) (rho 14670) (rho 14675) (rho 14680) (rho 14685) (rho 14690) next := by
  exact ⟨rho 14691, rho 14692, rho 14693, rho 14694, rho 14695, r7554, r7555, r7556, r7557, r7558, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

