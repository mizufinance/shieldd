import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node23_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8715 : Seg28.relationRow8715 rho)
    (r8716 : Seg28.relationRow8716 rho)
    (r8717 : Seg28.relationRow8717 rho)
    (r8718 : Seg28.relationRow8718 rho)
    (r8719 : Seg28.relationRow8719 rho)
    (tail : next (rho 27991) (rho 27996) (rho 28001) (rho 28006) (rho 28011) (rho 28016) (rho 28021)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg10 (rho 27991) (rho 27996) (rho 28001) (rho 28006) (rho 28011) (rho 28016) next := by
  exact ⟨rho 28017, rho 28018, rho 28019, rho 28020, rho 28021, r8715, r8716, r8717, r8718, r8719, tail⟩

theorem seg28_scp_node23_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8720 : Seg28.relationRow8720 rho)
    (r8721 : Seg28.relationRow8721 rho)
    (r8722 : Seg28.relationRow8722 rho)
    (r8723 : Seg28.relationRow8723 rho)
    (r8724 : Seg28.relationRow8724 rho)
    (tail : next (rho 27991) (rho 27996) (rho 28001) (rho 28006) (rho 28011) (rho 28016) (rho 28021) (rho 28026)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg11 (rho 27991) (rho 27996) (rho 28001) (rho 28006) (rho 28011) (rho 28016) (rho 28021) next := by
  exact ⟨rho 28022, rho 28023, rho 28024, rho 28025, rho 28026, r8720, r8721, r8722, r8723, r8724, tail⟩

theorem seg28_scp_node23_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8725 : Seg28.relationRow8725 rho)
    (r8726 : Seg28.relationRow8726 rho)
    (r8727 : Seg28.relationRow8727 rho)
    (r8728 : Seg28.relationRow8728 rho)
    (r8729 : Seg28.relationRow8729 rho)
    (tail : next (rho 27991) (rho 27996) (rho 28001) (rho 28006) (rho 28011) (rho 28016) (rho 28021) (rho 28026) (rho 28031)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg12 (rho 27991) (rho 27996) (rho 28001) (rho 28006) (rho 28011) (rho 28016) (rho 28021) (rho 28026) next := by
  exact ⟨rho 28027, rho 28028, rho 28029, rho 28030, rho 28031, r8725, r8726, r8727, r8728, r8729, tail⟩

theorem seg28_scp_node23_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8730 : Seg28.relationRow8730 rho)
    (r8731 : Seg28.relationRow8731 rho)
    (r8732 : Seg28.relationRow8732 rho)
    (r8733 : Seg28.relationRow8733 rho)
    (r8734 : Seg28.relationRow8734 rho)
    (tail : next (rho 28016) (rho 28021) (rho 28026) (rho 28031) (rho 28036)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg13 (rho 27991) (rho 27996) (rho 28001) (rho 28006) (rho 28011) (rho 28016) (rho 28021) (rho 28026) (rho 28031) next := by
  exact ⟨rho 28032, rho 28033, rho 28034, rho 28035, rho 28036, r8730, r8731, r8732, r8733, r8734, tail⟩

theorem seg28_scp_node23_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8735 : Seg28.relationRow8735 rho)
    (r8736 : Seg28.relationRow8736 rho)
    (r8737 : Seg28.relationRow8737 rho)
    (r8738 : Seg28.relationRow8738 rho)
    (r8739 : Seg28.relationRow8739 rho)
    (tail : next (rho 28016) (rho 28021) (rho 28026) (rho 28031) (rho 28036) (rho 28041)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg14 (rho 28016) (rho 28021) (rho 28026) (rho 28031) (rho 28036) next := by
  exact ⟨rho 28037, rho 28038, rho 28039, rho 28040, rho 28041, r8735, r8736, r8737, r8738, r8739, tail⟩

theorem seg28_scp_node23_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8740 : Seg28.relationRow8740 rho)
    (r8741 : Seg28.relationRow8741 rho)
    (r8742 : Seg28.relationRow8742 rho)
    (r8743 : Seg28.relationRow8743 rho)
    (r8744 : Seg28.relationRow8744 rho)
    (tail : next (rho 28016) (rho 28021) (rho 28026) (rho 28031) (rho 28036) (rho 28041) (rho 28046)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg15 (rho 28016) (rho 28021) (rho 28026) (rho 28031) (rho 28036) (rho 28041) next := by
  exact ⟨rho 28042, rho 28043, rho 28044, rho 28045, rho 28046, r8740, r8741, r8742, r8743, r8744, tail⟩

theorem seg28_scp_node23_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8745 : Seg28.relationRow8745 rho)
    (r8746 : Seg28.relationRow8746 rho)
    (r8747 : Seg28.relationRow8747 rho)
    (r8748 : Seg28.relationRow8748 rho)
    (r8749 : Seg28.relationRow8749 rho)
    (tail : next (rho 28016) (rho 28021) (rho 28026) (rho 28031) (rho 28036) (rho 28041) (rho 28046) (rho 28051)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg16 (rho 28016) (rho 28021) (rho 28026) (rho 28031) (rho 28036) (rho 28041) (rho 28046) next := by
  exact ⟨rho 28047, rho 28048, rho 28049, rho 28050, rho 28051, r8745, r8746, r8747, r8748, r8749, tail⟩

theorem seg28_scp_node23_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8750 : Seg28.relationRow8750 rho)
    (r8751 : Seg28.relationRow8751 rho)
    (r8752 : Seg28.relationRow8752 rho)
    (r8753 : Seg28.relationRow8753 rho)
    (r8754 : Seg28.relationRow8754 rho)
    (tail : next (rho 28016) (rho 28021) (rho 28026) (rho 28031) (rho 28036) (rho 28041) (rho 28046) (rho 28051) (rho 28056)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg17 (rho 28016) (rho 28021) (rho 28026) (rho 28031) (rho 28036) (rho 28041) (rho 28046) (rho 28051) next := by
  exact ⟨rho 28052, rho 28053, rho 28054, rho 28055, rho 28056, r8750, r8751, r8752, r8753, r8754, tail⟩

theorem seg28_scp_node23_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8755 : Seg28.relationRow8755 rho)
    (r8756 : Seg28.relationRow8756 rho)
    (r8757 : Seg28.relationRow8757 rho)
    (r8758 : Seg28.relationRow8758 rho)
    (r8759 : Seg28.relationRow8759 rho)
    (tail : next (rho 28041) (rho 28046) (rho 28051) (rho 28056) (rho 28061)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg18 (rho 28016) (rho 28021) (rho 28026) (rho 28031) (rho 28036) (rho 28041) (rho 28046) (rho 28051) (rho 28056) next := by
  exact ⟨rho 28057, rho 28058, rho 28059, rho 28060, rho 28061, r8755, r8756, r8757, r8758, r8759, tail⟩

theorem seg28_scp_node23_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8760 : Seg28.relationRow8760 rho)
    (r8761 : Seg28.relationRow8761 rho)
    (r8762 : Seg28.relationRow8762 rho)
    (r8763 : Seg28.relationRow8763 rho)
    (r8764 : Seg28.relationRow8764 rho)
    (tail : next (rho 28041) (rho 28046) (rho 28051) (rho 28056) (rho 28061) (rho 28066)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg19 (rho 28041) (rho 28046) (rho 28051) (rho 28056) (rho 28061) next := by
  exact ⟨rho 28062, rho 28063, rho 28064, rho 28065, rho 28066, r8760, r8761, r8762, r8763, r8764, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

