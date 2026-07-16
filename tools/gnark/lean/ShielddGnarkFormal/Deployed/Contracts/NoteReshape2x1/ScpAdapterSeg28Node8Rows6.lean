import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node8_seg60 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3505 : Seg28.relationRow3505 rho)
    (r3506 : Seg28.relationRow3506 rho)
    (r3507 : Seg28.relationRow3507 rho)
    (r3508 : Seg28.relationRow3508 rho)
    (r3509 : Seg28.relationRow3509 rho)
    (tail : next (rho 22846) (rho 22851) (rho 22856) (rho 22861) (rho 22866) (rho 22871)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg60 (rho 22846) (rho 22851) (rho 22856) (rho 22861) (rho 22866) next := by
  exact ⟨rho 22867, rho 22868, rho 22869, rho 22870, rho 22871, r3505, r3506, r3507, r3508, r3509, tail⟩

theorem seg28_scp_node8_seg61 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3510 : Seg28.relationRow3510 rho)
    (r3511 : Seg28.relationRow3511 rho)
    (r3512 : Seg28.relationRow3512 rho)
    (r3513 : Seg28.relationRow3513 rho)
    (r3514 : Seg28.relationRow3514 rho)
    (tail : next (rho 22846) (rho 22851) (rho 22856) (rho 22861) (rho 22866) (rho 22871) (rho 22876)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg61 (rho 22846) (rho 22851) (rho 22856) (rho 22861) (rho 22866) (rho 22871) next := by
  exact ⟨rho 22872, rho 22873, rho 22874, rho 22875, rho 22876, r3510, r3511, r3512, r3513, r3514, tail⟩

theorem seg28_scp_node8_seg62 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3515 : Seg28.relationRow3515 rho)
    (r3516 : Seg28.relationRow3516 rho)
    (r3517 : Seg28.relationRow3517 rho)
    (r3518 : Seg28.relationRow3518 rho)
    (r3519 : Seg28.relationRow3519 rho)
    (tail : next (rho 22846) (rho 22851) (rho 22856) (rho 22861) (rho 22866) (rho 22871) (rho 22876) (rho 22881)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg62 (rho 22846) (rho 22851) (rho 22856) (rho 22861) (rho 22866) (rho 22871) (rho 22876) next := by
  exact ⟨rho 22877, rho 22878, rho 22879, rho 22880, rho 22881, r3515, r3516, r3517, r3518, r3519, tail⟩

theorem seg28_scp_node8_seg63 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3520 : Seg28.relationRow3520 rho)
    (r3521 : Seg28.relationRow3521 rho)
    (r3522 : Seg28.relationRow3522 rho)
    (r3523 : Seg28.relationRow3523 rho)
    (r3524 : Seg28.relationRow3524 rho)
    (tail : next (rho 22846) (rho 22851) (rho 22856) (rho 22861) (rho 22866) (rho 22871) (rho 22876) (rho 22881) (rho 22886)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg63 (rho 22846) (rho 22851) (rho 22856) (rho 22861) (rho 22866) (rho 22871) (rho 22876) (rho 22881) next := by
  exact ⟨rho 22882, rho 22883, rho 22884, rho 22885, rho 22886, r3520, r3521, r3522, r3523, r3524, tail⟩

theorem seg28_scp_node8_seg64 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3525 : Seg28.relationRow3525 rho)
    (r3526 : Seg28.relationRow3526 rho)
    (r3527 : Seg28.relationRow3527 rho)
    (r3528 : Seg28.relationRow3528 rho)
    (r3529 : Seg28.relationRow3529 rho)
    (tail : next (rho 22871) (rho 22876) (rho 22881) (rho 22886) (rho 22891)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg64 (rho 22846) (rho 22851) (rho 22856) (rho 22861) (rho 22866) (rho 22871) (rho 22876) (rho 22881) (rho 22886) next := by
  exact ⟨rho 22887, rho 22888, rho 22889, rho 22890, rho 22891, r3525, r3526, r3527, r3528, r3529, tail⟩

theorem seg28_scp_node8_seg65 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3530 : Seg28.relationRow3530 rho)
    (r3531 : Seg28.relationRow3531 rho)
    (r3532 : Seg28.relationRow3532 rho)
    (r3533 : Seg28.relationRow3533 rho)
    (r3534 : Seg28.relationRow3534 rho)
    (tail : next (rho 22871) (rho 22876) (rho 22881) (rho 22886) (rho 22891) (rho 22896)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg65 (rho 22871) (rho 22876) (rho 22881) (rho 22886) (rho 22891) next := by
  exact ⟨rho 22892, rho 22893, rho 22894, rho 22895, rho 22896, r3530, r3531, r3532, r3533, r3534, tail⟩

theorem seg28_scp_node8_seg66 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3535 : Seg28.relationRow3535 rho)
    (r3536 : Seg28.relationRow3536 rho)
    (r3537 : Seg28.relationRow3537 rho)
    (r3538 : Seg28.relationRow3538 rho)
    (r3539 : Seg28.relationRow3539 rho)
    (tail : next (rho 22871) (rho 22876) (rho 22881) (rho 22886) (rho 22891) (rho 22896) (rho 22901)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg66 (rho 22871) (rho 22876) (rho 22881) (rho 22886) (rho 22891) (rho 22896) next := by
  exact ⟨rho 22897, rho 22898, rho 22899, rho 22900, rho 22901, r3535, r3536, r3537, r3538, r3539, tail⟩

theorem seg28_scp_node8_seg67 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3540 : Seg28.relationRow3540 rho)
    (r3541 : Seg28.relationRow3541 rho)
    (r3542 : Seg28.relationRow3542 rho)
    (r3543 : Seg28.relationRow3543 rho)
    (r3544 : Seg28.relationRow3544 rho)
    (tail : next (rho 22871) (rho 22876) (rho 22881) (rho 22886) (rho 22891) (rho 22896) (rho 22901) (rho 22906)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg67 (rho 22871) (rho 22876) (rho 22881) (rho 22886) (rho 22891) (rho 22896) (rho 22901) next := by
  exact ⟨rho 22902, rho 22903, rho 22904, rho 22905, rho 22906, r3540, r3541, r3542, r3543, r3544, tail⟩

theorem seg28_scp_node8_seg68 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3545 : Seg28.relationRow3545 rho)
    (r3546 : Seg28.relationRow3546 rho)
    (r3547 : Seg28.relationRow3547 rho)
    (r3548 : Seg28.relationRow3548 rho)
    (r3549 : Seg28.relationRow3549 rho)
    (tail : next (rho 22871) (rho 22876) (rho 22881) (rho 22886) (rho 22891) (rho 22896) (rho 22901) (rho 22906) (rho 22911)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg68 (rho 22871) (rho 22876) (rho 22881) (rho 22886) (rho 22891) (rho 22896) (rho 22901) (rho 22906) next := by
  exact ⟨rho 22907, rho 22908, rho 22909, rho 22910, rho 22911, r3545, r3546, r3547, r3548, r3549, tail⟩

theorem seg28_scp_node8_seg69 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r3550 : Seg28.relationRow3550 rho)
    (r3551 : Seg28.relationRow3551 rho)
    (r3552 : Seg28.relationRow3552 rho)
    (r3553 : Seg28.relationRow3553 rho)
    (r3554 : Seg28.relationRow3554 rho)
    (tail : next (rho 22896) (rho 22901) (rho 22906) (rho 22911) (rho 22916)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_0f0172.seg69 (rho 22871) (rho 22876) (rho 22881) (rho 22886) (rho 22891) (rho 22896) (rho 22901) (rho 22906) (rho 22911) next := by
  exact ⟨rho 22912, rho 22913, rho 22914, rho 22915, rho 22916, r3550, r3551, r3552, r3553, r3554, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

