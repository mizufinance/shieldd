import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node8_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3505 : Seg13.relationRow3505 rho)
    (r3506 : Seg13.relationRow3506 rho)
    (r3507 : Seg13.relationRow3507 rho)
    (r3508 : Seg13.relationRow3508 rho)
    (r3509 : Seg13.relationRow3509 rho)
    (tail : next (rho 10659) (rho 10664) (rho 10669) (rho 10674) (rho 10679) (rho 10684)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg60 (rho 10659) (rho 10664) (rho 10669) (rho 10674) (rho 10679) next := by
  exact ⟨rho 10680, rho 10681, rho 10682, rho 10683, rho 10684, r3505, r3506, r3507, r3508, r3509, tail⟩

theorem seg13_scp_node8_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3510 : Seg13.relationRow3510 rho)
    (r3511 : Seg13.relationRow3511 rho)
    (r3512 : Seg13.relationRow3512 rho)
    (r3513 : Seg13.relationRow3513 rho)
    (r3514 : Seg13.relationRow3514 rho)
    (tail : next (rho 10659) (rho 10664) (rho 10669) (rho 10674) (rho 10679) (rho 10684) (rho 10689)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg61 (rho 10659) (rho 10664) (rho 10669) (rho 10674) (rho 10679) (rho 10684) next := by
  exact ⟨rho 10685, rho 10686, rho 10687, rho 10688, rho 10689, r3510, r3511, r3512, r3513, r3514, tail⟩

theorem seg13_scp_node8_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3515 : Seg13.relationRow3515 rho)
    (r3516 : Seg13.relationRow3516 rho)
    (r3517 : Seg13.relationRow3517 rho)
    (r3518 : Seg13.relationRow3518 rho)
    (r3519 : Seg13.relationRow3519 rho)
    (tail : next (rho 10659) (rho 10664) (rho 10669) (rho 10674) (rho 10679) (rho 10684) (rho 10689) (rho 10694)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg62 (rho 10659) (rho 10664) (rho 10669) (rho 10674) (rho 10679) (rho 10684) (rho 10689) next := by
  exact ⟨rho 10690, rho 10691, rho 10692, rho 10693, rho 10694, r3515, r3516, r3517, r3518, r3519, tail⟩

theorem seg13_scp_node8_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3520 : Seg13.relationRow3520 rho)
    (r3521 : Seg13.relationRow3521 rho)
    (r3522 : Seg13.relationRow3522 rho)
    (r3523 : Seg13.relationRow3523 rho)
    (r3524 : Seg13.relationRow3524 rho)
    (tail : next (rho 10659) (rho 10664) (rho 10669) (rho 10674) (rho 10679) (rho 10684) (rho 10689) (rho 10694) (rho 10699)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg63 (rho 10659) (rho 10664) (rho 10669) (rho 10674) (rho 10679) (rho 10684) (rho 10689) (rho 10694) next := by
  exact ⟨rho 10695, rho 10696, rho 10697, rho 10698, rho 10699, r3520, r3521, r3522, r3523, r3524, tail⟩

theorem seg13_scp_node8_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3525 : Seg13.relationRow3525 rho)
    (r3526 : Seg13.relationRow3526 rho)
    (r3527 : Seg13.relationRow3527 rho)
    (r3528 : Seg13.relationRow3528 rho)
    (r3529 : Seg13.relationRow3529 rho)
    (tail : next (rho 10684) (rho 10689) (rho 10694) (rho 10699) (rho 10704)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg64 (rho 10659) (rho 10664) (rho 10669) (rho 10674) (rho 10679) (rho 10684) (rho 10689) (rho 10694) (rho 10699) next := by
  exact ⟨rho 10700, rho 10701, rho 10702, rho 10703, rho 10704, r3525, r3526, r3527, r3528, r3529, tail⟩

theorem seg13_scp_node8_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3530 : Seg13.relationRow3530 rho)
    (r3531 : Seg13.relationRow3531 rho)
    (r3532 : Seg13.relationRow3532 rho)
    (r3533 : Seg13.relationRow3533 rho)
    (r3534 : Seg13.relationRow3534 rho)
    (tail : next (rho 10684) (rho 10689) (rho 10694) (rho 10699) (rho 10704) (rho 10709)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg65 (rho 10684) (rho 10689) (rho 10694) (rho 10699) (rho 10704) next := by
  exact ⟨rho 10705, rho 10706, rho 10707, rho 10708, rho 10709, r3530, r3531, r3532, r3533, r3534, tail⟩

theorem seg13_scp_node8_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3535 : Seg13.relationRow3535 rho)
    (r3536 : Seg13.relationRow3536 rho)
    (r3537 : Seg13.relationRow3537 rho)
    (r3538 : Seg13.relationRow3538 rho)
    (r3539 : Seg13.relationRow3539 rho)
    (tail : next (rho 10684) (rho 10689) (rho 10694) (rho 10699) (rho 10704) (rho 10709) (rho 10714)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg66 (rho 10684) (rho 10689) (rho 10694) (rho 10699) (rho 10704) (rho 10709) next := by
  exact ⟨rho 10710, rho 10711, rho 10712, rho 10713, rho 10714, r3535, r3536, r3537, r3538, r3539, tail⟩

theorem seg13_scp_node8_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3540 : Seg13.relationRow3540 rho)
    (r3541 : Seg13.relationRow3541 rho)
    (r3542 : Seg13.relationRow3542 rho)
    (r3543 : Seg13.relationRow3543 rho)
    (r3544 : Seg13.relationRow3544 rho)
    (tail : next (rho 10684) (rho 10689) (rho 10694) (rho 10699) (rho 10704) (rho 10709) (rho 10714) (rho 10719)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg67 (rho 10684) (rho 10689) (rho 10694) (rho 10699) (rho 10704) (rho 10709) (rho 10714) next := by
  exact ⟨rho 10715, rho 10716, rho 10717, rho 10718, rho 10719, r3540, r3541, r3542, r3543, r3544, tail⟩

theorem seg13_scp_node8_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3545 : Seg13.relationRow3545 rho)
    (r3546 : Seg13.relationRow3546 rho)
    (r3547 : Seg13.relationRow3547 rho)
    (r3548 : Seg13.relationRow3548 rho)
    (r3549 : Seg13.relationRow3549 rho)
    (tail : next (rho 10684) (rho 10689) (rho 10694) (rho 10699) (rho 10704) (rho 10709) (rho 10714) (rho 10719) (rho 10724)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg68 (rho 10684) (rho 10689) (rho 10694) (rho 10699) (rho 10704) (rho 10709) (rho 10714) (rho 10719) next := by
  exact ⟨rho 10720, rho 10721, rho 10722, rho 10723, rho 10724, r3545, r3546, r3547, r3548, r3549, tail⟩

theorem seg13_scp_node8_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r3550 : Seg13.relationRow3550 rho)
    (r3551 : Seg13.relationRow3551 rho)
    (r3552 : Seg13.relationRow3552 rho)
    (r3553 : Seg13.relationRow3553 rho)
    (r3554 : Seg13.relationRow3554 rho)
    (tail : next (rho 10709) (rho 10714) (rho 10719) (rho 10724) (rho 10729)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode8350_e85518.seg69 (rho 10684) (rho 10689) (rho 10694) (rho 10699) (rho 10704) (rho 10709) (rho 10714) (rho 10719) (rho 10724) next := by
  exact ⟨rho 10725, rho 10726, rho 10727, rho 10728, rho 10729, r3550, r3551, r3552, r3553, r3554, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

