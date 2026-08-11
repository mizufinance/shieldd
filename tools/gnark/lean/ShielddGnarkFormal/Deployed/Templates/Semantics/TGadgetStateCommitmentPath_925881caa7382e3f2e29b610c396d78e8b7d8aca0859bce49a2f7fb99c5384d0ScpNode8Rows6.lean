import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node8_seg60 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3505 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3505 rho)
    (r3506 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3506 rho)
    (r3507 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3507 rho)
    (r3508 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3508 rho)
    (r3509 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3509 rho)
    (tail : next (rho 3483) (rho 3488) (rho 3493) (rho 3498) (rho 3503) (rho 3508)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg60 (rho 3483) (rho 3488) (rho 3493) (rho 3498) (rho 3503) next := by
  exact ⟨rho 3504, rho 3505, rho 3506, rho 3507, rho 3508, r3505, r3506, r3507, r3508, r3509, tail⟩

theorem template_scp_node8_seg61 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3510 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3510 rho)
    (r3511 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3511 rho)
    (r3512 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3512 rho)
    (r3513 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3513 rho)
    (r3514 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3514 rho)
    (tail : next (rho 3483) (rho 3488) (rho 3493) (rho 3498) (rho 3503) (rho 3508) (rho 3513)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg61 (rho 3483) (rho 3488) (rho 3493) (rho 3498) (rho 3503) (rho 3508) next := by
  exact ⟨rho 3509, rho 3510, rho 3511, rho 3512, rho 3513, r3510, r3511, r3512, r3513, r3514, tail⟩

theorem template_scp_node8_seg62 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3515 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3515 rho)
    (r3516 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3516 rho)
    (r3517 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3517 rho)
    (r3518 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3518 rho)
    (r3519 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3519 rho)
    (tail : next (rho 3483) (rho 3488) (rho 3493) (rho 3498) (rho 3503) (rho 3508) (rho 3513) (rho 3518)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg62 (rho 3483) (rho 3488) (rho 3493) (rho 3498) (rho 3503) (rho 3508) (rho 3513) next := by
  exact ⟨rho 3514, rho 3515, rho 3516, rho 3517, rho 3518, r3515, r3516, r3517, r3518, r3519, tail⟩

theorem template_scp_node8_seg63 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3520 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3520 rho)
    (r3521 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3521 rho)
    (r3522 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3522 rho)
    (r3523 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3523 rho)
    (r3524 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3524 rho)
    (tail : next (rho 3483) (rho 3488) (rho 3493) (rho 3498) (rho 3503) (rho 3508) (rho 3513) (rho 3518) (rho 3523)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg63 (rho 3483) (rho 3488) (rho 3493) (rho 3498) (rho 3503) (rho 3508) (rho 3513) (rho 3518) next := by
  exact ⟨rho 3519, rho 3520, rho 3521, rho 3522, rho 3523, r3520, r3521, r3522, r3523, r3524, tail⟩

theorem template_scp_node8_seg64 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3525 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3525 rho)
    (r3526 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3526 rho)
    (r3527 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3527 rho)
    (r3528 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3528 rho)
    (r3529 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3529 rho)
    (tail : next (rho 3508) (rho 3513) (rho 3518) (rho 3523) (rho 3528)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg64 (rho 3483) (rho 3488) (rho 3493) (rho 3498) (rho 3503) (rho 3508) (rho 3513) (rho 3518) (rho 3523) next := by
  exact ⟨rho 3524, rho 3525, rho 3526, rho 3527, rho 3528, r3525, r3526, r3527, r3528, r3529, tail⟩

theorem template_scp_node8_seg65 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r3530 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3530 rho)
    (r3531 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3531 rho)
    (r3532 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3532 rho)
    (r3533 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3533 rho)
    (r3534 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3534 rho)
    (tail : next (rho 3508) (rho 3513) (rho 3518) (rho 3523) (rho 3528) (rho 3533)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg65 (rho 3508) (rho 3513) (rho 3518) (rho 3523) (rho 3528) next := by
  exact ⟨rho 3529, rho 3530, rho 3531, rho 3532, rho 3533, r3530, r3531, r3532, r3533, r3534, tail⟩

theorem template_scp_node8_seg66 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r3535 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3535 rho)
    (r3536 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3536 rho)
    (r3537 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3537 rho)
    (r3538 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3538 rho)
    (r3539 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3539 rho)
    (tail : next (rho 3508) (rho 3513) (rho 3518) (rho 3523) (rho 3528) (rho 3533) (rho 3538)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg66 (rho 3508) (rho 3513) (rho 3518) (rho 3523) (rho 3528) (rho 3533) next := by
  exact ⟨rho 3534, rho 3535, rho 3536, rho 3537, rho 3538, r3535, r3536, r3537, r3538, r3539, tail⟩

theorem template_scp_node8_seg67 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r3540 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3540 rho)
    (r3541 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3541 rho)
    (r3542 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3542 rho)
    (r3543 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3543 rho)
    (r3544 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3544 rho)
    (tail : next (rho 3508) (rho 3513) (rho 3518) (rho 3523) (rho 3528) (rho 3533) (rho 3538) (rho 3543)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg67 (rho 3508) (rho 3513) (rho 3518) (rho 3523) (rho 3528) (rho 3533) (rho 3538) next := by
  exact ⟨rho 3539, rho 3540, rho 3541, rho 3542, rho 3543, r3540, r3541, r3542, r3543, r3544, tail⟩

theorem template_scp_node8_seg68 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r3545 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3545 rho)
    (r3546 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3546 rho)
    (r3547 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3547 rho)
    (r3548 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3548 rho)
    (r3549 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3549 rho)
    (tail : next (rho 3508) (rho 3513) (rho 3518) (rho 3523) (rho 3528) (rho 3533) (rho 3538) (rho 3543) (rho 3548)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg68 (rho 3508) (rho 3513) (rho 3518) (rho 3523) (rho 3528) (rho 3533) (rho 3538) (rho 3543) next := by
  exact ⟨rho 3544, rho 3545, rho 3546, rho 3547, rho 3548, r3545, r3546, r3547, r3548, r3549, tail⟩

theorem template_scp_node8_seg69 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r3550 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3550 rho)
    (r3551 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3551 rho)
    (r3552 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3552 rho)
    (r3553 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3553 rho)
    (r3554 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow3554 rho)
    (tail : next (rho 3533) (rho 3538) (rho 3543) (rho 3548) (rho 3553)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg69 (rho 3508) (rho 3513) (rho 3518) (rho 3523) (rho 3528) (rho 3533) (rho 3538) (rho 3543) (rho 3548) next := by
  exact ⟨rho 3549, rho 3550, rho 3551, rho 3552, rho 3553, r3550, r3551, r3552, r3553, r3554, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
