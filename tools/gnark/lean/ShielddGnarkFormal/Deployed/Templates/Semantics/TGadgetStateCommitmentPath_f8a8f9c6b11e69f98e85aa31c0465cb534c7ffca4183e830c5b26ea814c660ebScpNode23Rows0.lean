import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node23_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8665 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8665 rho)
    (r8666 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8666 rho)
    (r8667 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8667 rho)
    (r8668 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8668 rho)
    (r8669 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8669 rho)
    (tail : next (rho 8636) (rho 8639) (rho 8637) (rho 8638) (rho 8640) (rho 8641) (rho 8642) (rho 8647)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg0 (rho 8634) (rho 8636) (rho 8639) (rho 8635) (rho 8637) (rho 8638) (rho 8640) (rho 8641) (rho 8642) next := by
  exact ⟨rho 8643, rho 8644, rho 8645, rho 8646, rho 8647, r8665, r8666, r8667, r8668, r8669, tail⟩

theorem template_scp_node23_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8670 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8670 rho)
    (r8671 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8671 rho)
    (r8672 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8672 rho)
    (r8673 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8673 rho)
    (r8674 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8674 rho)
    (tail : next (rho 8636) (rho 8639) (rho 8640) (rho 8641) (rho 8642) (rho 8647) (rho 8652)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg1 (rho 8636) (rho 8639) (rho 8637) (rho 8638) (rho 8640) (rho 8641) (rho 8642) (rho 8647) next := by
  exact ⟨rho 8648, rho 8649, rho 8650, rho 8651, rho 8652, r8670, r8671, r8672, r8673, r8674, tail⟩

theorem template_scp_node23_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8675 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8675 rho)
    (r8676 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8676 rho)
    (r8677 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8677 rho)
    (r8678 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8678 rho)
    (r8679 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8679 rho)
    (tail : next (rho 8639) (rho 8642) (rho 8647) (rho 8652) (rho 8657)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg2 (rho 8636) (rho 8639) (rho 8640) (rho 8641) (rho 8642) (rho 8647) (rho 8652) next := by
  exact ⟨rho 8653, rho 8654, rho 8655, rho 8656, rho 8657, r8675, r8676, r8677, r8678, r8679, tail⟩

theorem template_scp_node23_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r8680 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8680 rho)
    (r8681 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8681 rho)
    (r8682 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8682 rho)
    (r8683 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8683 rho)
    (r8684 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8684 rho)
    (tail : next (rho 8647) (rho 8652) (rho 8657) (rho 8662)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg3 (rho 8639) (rho 8642) (rho 8647) (rho 8652) (rho 8657) next := by
  exact ⟨rho 8658, rho 8659, rho 8660, rho 8661, rho 8662, r8680, r8681, r8682, r8683, r8684, tail⟩

theorem template_scp_node23_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8685 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8685 rho)
    (r8686 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8686 rho)
    (r8687 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8687 rho)
    (r8688 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8688 rho)
    (r8689 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8689 rho)
    (tail : next (rho 8647) (rho 8652) (rho 8657) (rho 8662) (rho 8667)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg4 (rho 8647) (rho 8652) (rho 8657) (rho 8662) next := by
  exact ⟨rho 8663, rho 8664, rho 8665, rho 8666, rho 8667, r8685, r8686, r8687, r8688, r8689, tail⟩

theorem template_scp_node23_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8690 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8690 rho)
    (r8691 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8691 rho)
    (r8692 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8692 rho)
    (r8693 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8693 rho)
    (r8694 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8694 rho)
    (tail : next (rho 8647) (rho 8652) (rho 8657) (rho 8662) (rho 8667) (rho 8672)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg5 (rho 8647) (rho 8652) (rho 8657) (rho 8662) (rho 8667) next := by
  exact ⟨rho 8668, rho 8669, rho 8670, rho 8671, rho 8672, r8690, r8691, r8692, r8693, r8694, tail⟩

theorem template_scp_node23_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8695 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8695 rho)
    (r8696 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8696 rho)
    (r8697 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8697 rho)
    (r8698 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8698 rho)
    (r8699 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8699 rho)
    (tail : next (rho 8647) (rho 8652) (rho 8657) (rho 8662) (rho 8667) (rho 8672) (rho 8677)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg6 (rho 8647) (rho 8652) (rho 8657) (rho 8662) (rho 8667) (rho 8672) next := by
  exact ⟨rho 8673, rho 8674, rho 8675, rho 8676, rho 8677, r8695, r8696, r8697, r8698, r8699, tail⟩

theorem template_scp_node23_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8700 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8700 rho)
    (r8701 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8701 rho)
    (r8702 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8702 rho)
    (r8703 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8703 rho)
    (r8704 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8704 rho)
    (tail : next (rho 8647) (rho 8652) (rho 8657) (rho 8662) (rho 8667) (rho 8672) (rho 8677) (rho 8682)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg7 (rho 8647) (rho 8652) (rho 8657) (rho 8662) (rho 8667) (rho 8672) (rho 8677) next := by
  exact ⟨rho 8678, rho 8679, rho 8680, rho 8681, rho 8682, r8700, r8701, r8702, r8703, r8704, tail⟩

theorem template_scp_node23_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r8705 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8705 rho)
    (r8706 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8706 rho)
    (r8707 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8707 rho)
    (r8708 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8708 rho)
    (r8709 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8709 rho)
    (tail : next (rho 8667) (rho 8672) (rho 8677) (rho 8682) (rho 8687)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg8 (rho 8647) (rho 8652) (rho 8657) (rho 8662) (rho 8667) (rho 8672) (rho 8677) (rho 8682) next := by
  exact ⟨rho 8683, rho 8684, rho 8685, rho 8686, rho 8687, r8705, r8706, r8707, r8708, r8709, tail⟩

theorem template_scp_node23_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r8710 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8710 rho)
    (r8711 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8711 rho)
    (r8712 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8712 rho)
    (r8713 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8713 rho)
    (r8714 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow8714 rho)
    (tail : next (rho 8667) (rho 8672) (rho 8677) (rho 8682) (rho 8687) (rho 8692)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_15360d.seg9 (rho 8667) (rho 8672) (rho 8677) (rho 8682) (rho 8687) next := by
  exact ⟨rho 8688, rho 8689, rho 8690, rho 8691, rho 8692, r8710, r8711, r8712, r8713, r8714, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
