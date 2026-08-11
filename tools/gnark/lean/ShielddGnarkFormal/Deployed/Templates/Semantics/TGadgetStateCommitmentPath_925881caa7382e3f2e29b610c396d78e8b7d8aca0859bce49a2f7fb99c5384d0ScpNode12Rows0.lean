import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node12_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4661 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4661 rho)
    (r4662 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4662 rho)
    (r4663 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4663 rho)
    (r4664 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4664 rho)
    (r4665 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4665 rho)
    (tail : next (rho 4649) (rho 4652) (rho 4650) (rho 4651) (rho 4653) (rho 4654) (rho 4655) (rho 4660)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg0 (rho 4647) (rho 4649) (rho 4652) (rho 4648) (rho 4650) (rho 4651) (rho 4653) (rho 4654) (rho 4655) next := by
  exact ⟨rho 4656, rho 4657, rho 4658, rho 4659, rho 4660, r4661, r4662, r4663, r4664, r4665, tail⟩

theorem template_scp_node12_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4666 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4666 rho)
    (r4667 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4667 rho)
    (r4668 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4668 rho)
    (r4669 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4669 rho)
    (r4670 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4670 rho)
    (tail : next (rho 4649) (rho 4652) (rho 4653) (rho 4654) (rho 4655) (rho 4660) (rho 4665)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg1 (rho 4649) (rho 4652) (rho 4650) (rho 4651) (rho 4653) (rho 4654) (rho 4655) (rho 4660) next := by
  exact ⟨rho 4661, rho 4662, rho 4663, rho 4664, rho 4665, r4666, r4667, r4668, r4669, r4670, tail⟩

theorem template_scp_node12_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4671 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4671 rho)
    (r4672 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4672 rho)
    (r4673 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4673 rho)
    (r4674 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4674 rho)
    (r4675 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4675 rho)
    (tail : next (rho 4652) (rho 4655) (rho 4660) (rho 4665) (rho 4670)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg2 (rho 4649) (rho 4652) (rho 4653) (rho 4654) (rho 4655) (rho 4660) (rho 4665) next := by
  exact ⟨rho 4666, rho 4667, rho 4668, rho 4669, rho 4670, r4671, r4672, r4673, r4674, r4675, tail⟩

theorem template_scp_node12_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r4676 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4676 rho)
    (r4677 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4677 rho)
    (r4678 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4678 rho)
    (r4679 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4679 rho)
    (r4680 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4680 rho)
    (tail : next (rho 4660) (rho 4665) (rho 4670) (rho 4675)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg3 (rho 4652) (rho 4655) (rho 4660) (rho 4665) (rho 4670) next := by
  exact ⟨rho 4671, rho 4672, rho 4673, rho 4674, rho 4675, r4676, r4677, r4678, r4679, r4680, tail⟩

theorem template_scp_node12_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4681 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4681 rho)
    (r4682 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4682 rho)
    (r4683 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4683 rho)
    (r4684 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4684 rho)
    (r4685 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4685 rho)
    (tail : next (rho 4660) (rho 4665) (rho 4670) (rho 4675) (rho 4680)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg4 (rho 4660) (rho 4665) (rho 4670) (rho 4675) next := by
  exact ⟨rho 4676, rho 4677, rho 4678, rho 4679, rho 4680, r4681, r4682, r4683, r4684, r4685, tail⟩

theorem template_scp_node12_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r4686 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4686 rho)
    (r4687 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4687 rho)
    (r4688 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4688 rho)
    (r4689 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4689 rho)
    (r4690 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4690 rho)
    (tail : next (rho 4660) (rho 4665) (rho 4670) (rho 4675) (rho 4680) (rho 4685)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg5 (rho 4660) (rho 4665) (rho 4670) (rho 4675) (rho 4680) next := by
  exact ⟨rho 4681, rho 4682, rho 4683, rho 4684, rho 4685, r4686, r4687, r4688, r4689, r4690, tail⟩

theorem template_scp_node12_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4691 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4691 rho)
    (r4692 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4692 rho)
    (r4693 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4693 rho)
    (r4694 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4694 rho)
    (r4695 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4695 rho)
    (tail : next (rho 4660) (rho 4665) (rho 4670) (rho 4675) (rho 4680) (rho 4685) (rho 4690)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg6 (rho 4660) (rho 4665) (rho 4670) (rho 4675) (rho 4680) (rho 4685) next := by
  exact ⟨rho 4686, rho 4687, rho 4688, rho 4689, rho 4690, r4691, r4692, r4693, r4694, r4695, tail⟩

theorem template_scp_node12_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4696 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4696 rho)
    (r4697 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4697 rho)
    (r4698 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4698 rho)
    (r4699 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4699 rho)
    (r4700 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4700 rho)
    (tail : next (rho 4660) (rho 4665) (rho 4670) (rho 4675) (rho 4680) (rho 4685) (rho 4690) (rho 4695)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg7 (rho 4660) (rho 4665) (rho 4670) (rho 4675) (rho 4680) (rho 4685) (rho 4690) next := by
  exact ⟨rho 4691, rho 4692, rho 4693, rho 4694, rho 4695, r4696, r4697, r4698, r4699, r4700, tail⟩

theorem template_scp_node12_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r4701 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4701 rho)
    (r4702 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4702 rho)
    (r4703 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4703 rho)
    (r4704 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4704 rho)
    (r4705 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4705 rho)
    (tail : next (rho 4680) (rho 4685) (rho 4690) (rho 4695) (rho 4700)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg8 (rho 4660) (rho 4665) (rho 4670) (rho 4675) (rho 4680) (rho 4685) (rho 4690) (rho 4695) next := by
  exact ⟨rho 4696, rho 4697, rho 4698, rho 4699, rho 4700, r4701, r4702, r4703, r4704, r4705, tail⟩

theorem template_scp_node12_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r4706 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4706 rho)
    (r4707 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4707 rho)
    (r4708 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4708 rho)
    (r4709 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4709 rho)
    (r4710 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow4710 rho)
    (tail : next (rho 4680) (rho 4685) (rho 4690) (rho 4695) (rho 4700) (rho 4705)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_a82626.seg9 (rho 4680) (rho 4685) (rho 4690) (rho 4695) (rho 4700) next := by
  exact ⟨rho 4701, rho 4702, rho 4703, rho 4704, rho 4705, r4706, r4707, r4708, r4709, r4710, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
