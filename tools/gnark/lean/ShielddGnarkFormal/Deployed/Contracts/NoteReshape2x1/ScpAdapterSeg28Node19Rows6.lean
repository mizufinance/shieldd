import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node19_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7509 : Seg28.relationRow7509 rho)
    (r7510 : Seg28.relationRow7510 rho)
    (r7511 : Seg28.relationRow7511 rho)
    (r7512 : Seg28.relationRow7512 rho)
    (r7513 : Seg28.relationRow7513 rho)
    (tail : next (rho 26800) (rho 26805) (rho 26810) (rho 26815) (rho 26820) (rho 26825)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg60 (rho 26800) (rho 26805) (rho 26810) (rho 26815) (rho 26820) next := by
  exact ⟨rho 26821, rho 26822, rho 26823, rho 26824, rho 26825, r7509, r7510, r7511, r7512, r7513, tail⟩

theorem seg28_scp_node19_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7514 : Seg28.relationRow7514 rho)
    (r7515 : Seg28.relationRow7515 rho)
    (r7516 : Seg28.relationRow7516 rho)
    (r7517 : Seg28.relationRow7517 rho)
    (r7518 : Seg28.relationRow7518 rho)
    (tail : next (rho 26800) (rho 26805) (rho 26810) (rho 26815) (rho 26820) (rho 26825) (rho 26830)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg61 (rho 26800) (rho 26805) (rho 26810) (rho 26815) (rho 26820) (rho 26825) next := by
  exact ⟨rho 26826, rho 26827, rho 26828, rho 26829, rho 26830, r7514, r7515, r7516, r7517, r7518, tail⟩

theorem seg28_scp_node19_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7519 : Seg28.relationRow7519 rho)
    (r7520 : Seg28.relationRow7520 rho)
    (r7521 : Seg28.relationRow7521 rho)
    (r7522 : Seg28.relationRow7522 rho)
    (r7523 : Seg28.relationRow7523 rho)
    (tail : next (rho 26800) (rho 26805) (rho 26810) (rho 26815) (rho 26820) (rho 26825) (rho 26830) (rho 26835)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg62 (rho 26800) (rho 26805) (rho 26810) (rho 26815) (rho 26820) (rho 26825) (rho 26830) next := by
  exact ⟨rho 26831, rho 26832, rho 26833, rho 26834, rho 26835, r7519, r7520, r7521, r7522, r7523, tail⟩

theorem seg28_scp_node19_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7524 : Seg28.relationRow7524 rho)
    (r7525 : Seg28.relationRow7525 rho)
    (r7526 : Seg28.relationRow7526 rho)
    (r7527 : Seg28.relationRow7527 rho)
    (r7528 : Seg28.relationRow7528 rho)
    (tail : next (rho 26800) (rho 26805) (rho 26810) (rho 26815) (rho 26820) (rho 26825) (rho 26830) (rho 26835) (rho 26840)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg63 (rho 26800) (rho 26805) (rho 26810) (rho 26815) (rho 26820) (rho 26825) (rho 26830) (rho 26835) next := by
  exact ⟨rho 26836, rho 26837, rho 26838, rho 26839, rho 26840, r7524, r7525, r7526, r7527, r7528, tail⟩

theorem seg28_scp_node19_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7529 : Seg28.relationRow7529 rho)
    (r7530 : Seg28.relationRow7530 rho)
    (r7531 : Seg28.relationRow7531 rho)
    (r7532 : Seg28.relationRow7532 rho)
    (r7533 : Seg28.relationRow7533 rho)
    (tail : next (rho 26825) (rho 26830) (rho 26835) (rho 26840) (rho 26845)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg64 (rho 26800) (rho 26805) (rho 26810) (rho 26815) (rho 26820) (rho 26825) (rho 26830) (rho 26835) (rho 26840) next := by
  exact ⟨rho 26841, rho 26842, rho 26843, rho 26844, rho 26845, r7529, r7530, r7531, r7532, r7533, tail⟩

theorem seg28_scp_node19_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7534 : Seg28.relationRow7534 rho)
    (r7535 : Seg28.relationRow7535 rho)
    (r7536 : Seg28.relationRow7536 rho)
    (r7537 : Seg28.relationRow7537 rho)
    (r7538 : Seg28.relationRow7538 rho)
    (tail : next (rho 26825) (rho 26830) (rho 26835) (rho 26840) (rho 26845) (rho 26850)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg65 (rho 26825) (rho 26830) (rho 26835) (rho 26840) (rho 26845) next := by
  exact ⟨rho 26846, rho 26847, rho 26848, rho 26849, rho 26850, r7534, r7535, r7536, r7537, r7538, tail⟩

theorem seg28_scp_node19_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7539 : Seg28.relationRow7539 rho)
    (r7540 : Seg28.relationRow7540 rho)
    (r7541 : Seg28.relationRow7541 rho)
    (r7542 : Seg28.relationRow7542 rho)
    (r7543 : Seg28.relationRow7543 rho)
    (tail : next (rho 26825) (rho 26830) (rho 26835) (rho 26840) (rho 26845) (rho 26850) (rho 26855)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg66 (rho 26825) (rho 26830) (rho 26835) (rho 26840) (rho 26845) (rho 26850) next := by
  exact ⟨rho 26851, rho 26852, rho 26853, rho 26854, rho 26855, r7539, r7540, r7541, r7542, r7543, tail⟩

theorem seg28_scp_node19_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7544 : Seg28.relationRow7544 rho)
    (r7545 : Seg28.relationRow7545 rho)
    (r7546 : Seg28.relationRow7546 rho)
    (r7547 : Seg28.relationRow7547 rho)
    (r7548 : Seg28.relationRow7548 rho)
    (tail : next (rho 26825) (rho 26830) (rho 26835) (rho 26840) (rho 26845) (rho 26850) (rho 26855) (rho 26860)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg67 (rho 26825) (rho 26830) (rho 26835) (rho 26840) (rho 26845) (rho 26850) (rho 26855) next := by
  exact ⟨rho 26856, rho 26857, rho 26858, rho 26859, rho 26860, r7544, r7545, r7546, r7547, r7548, tail⟩

theorem seg28_scp_node19_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7549 : Seg28.relationRow7549 rho)
    (r7550 : Seg28.relationRow7550 rho)
    (r7551 : Seg28.relationRow7551 rho)
    (r7552 : Seg28.relationRow7552 rho)
    (r7553 : Seg28.relationRow7553 rho)
    (tail : next (rho 26825) (rho 26830) (rho 26835) (rho 26840) (rho 26845) (rho 26850) (rho 26855) (rho 26860) (rho 26865)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg68 (rho 26825) (rho 26830) (rho 26835) (rho 26840) (rho 26845) (rho 26850) (rho 26855) (rho 26860) next := by
  exact ⟨rho 26861, rho 26862, rho 26863, rho 26864, rho 26865, r7549, r7550, r7551, r7552, r7553, tail⟩

theorem seg28_scp_node19_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7554 : Seg28.relationRow7554 rho)
    (r7555 : Seg28.relationRow7555 rho)
    (r7556 : Seg28.relationRow7556 rho)
    (r7557 : Seg28.relationRow7557 rho)
    (r7558 : Seg28.relationRow7558 rho)
    (tail : next (rho 26850) (rho 26855) (rho 26860) (rho 26865) (rho 26870)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_95add9.seg69 (rho 26825) (rho 26830) (rho 26835) (rho 26840) (rho 26845) (rho 26850) (rho 26855) (rho 26860) (rho 26865) next := by
  exact ⟨rho 26866, rho 26867, rho 26868, rho 26869, rho 26870, r7554, r7555, r7556, r7557, r7558, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

