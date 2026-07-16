import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

theorem template_scp_node17_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6731 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6731 rho)
    (r6732 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6732 rho)
    (r6733 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6733 rho)
    (r6734 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6734 rho)
    (r6735 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6735 rho)
    (tail : next (rho 6539) (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg50 (rho 6539) (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) next := by
  exact ⟨rho 6715, rho 6716, rho 6717, rho 6718, rho 6719, r6731, r6732, r6733, r6734, r6735, tail⟩

theorem template_scp_node17_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6736 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6736 rho)
    (r6737 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6737 rho)
    (r6738 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6738 rho)
    (r6739 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6739 rho)
    (r6740 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6740 rho)
    (tail : next (rho 6539) (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg51 (rho 6539) (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) next := by
  exact ⟨rho 6720, rho 6721, rho 6722, rho 6723, rho 6724, r6736, r6737, r6738, r6739, r6740, tail⟩

theorem template_scp_node17_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6741 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6741 rho)
    (r6742 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6742 rho)
    (r6743 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6743 rho)
    (r6744 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6744 rho)
    (r6745 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6745 rho)
    (tail : next (rho 6539) (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724) (rho 6729)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg52 (rho 6539) (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724) next := by
  exact ⟨rho 6725, rho 6726, rho 6727, rho 6728, rho 6729, r6741, r6742, r6743, r6744, r6745, tail⟩

theorem template_scp_node17_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6746 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6746 rho)
    (r6747 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6747 rho)
    (r6748 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6748 rho)
    (r6749 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6749 rho)
    (r6750 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6750 rho)
    (tail : next (rho 6539) (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724) (rho 6729) (rho 6734)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg53 (rho 6539) (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724) (rho 6729) next := by
  exact ⟨rho 6730, rho 6731, rho 6732, rho 6733, rho 6734, r6746, r6747, r6748, r6749, r6750, tail⟩

theorem template_scp_node17_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6751 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6751 rho)
    (r6752 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6752 rho)
    (r6753 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6753 rho)
    (r6754 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6754 rho)
    (r6755 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6755 rho)
    (tail : next (rho 6719) (rho 6724) (rho 6729) (rho 6734) (rho 6739)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg54 (rho 6539) (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724) (rho 6729) (rho 6734) next := by
  exact ⟨rho 6735, rho 6736, rho 6737, rho 6738, rho 6739, r6751, r6752, r6753, r6754, r6755, tail⟩

theorem template_scp_node17_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6756 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6756 rho)
    (r6757 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6757 rho)
    (r6758 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6758 rho)
    (r6759 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6759 rho)
    (r6760 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6760 rho)
    (tail : next (rho 6719) (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg55 (rho 6719) (rho 6724) (rho 6729) (rho 6734) (rho 6739) next := by
  exact ⟨rho 6740, rho 6741, rho 6742, rho 6743, rho 6744, r6756, r6757, r6758, r6759, r6760, tail⟩

theorem template_scp_node17_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6761 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6761 rho)
    (r6762 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6762 rho)
    (r6763 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6763 rho)
    (r6764 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6764 rho)
    (r6765 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6765 rho)
    (tail : next (rho 6719) (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg56 (rho 6719) (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) next := by
  exact ⟨rho 6745, rho 6746, rho 6747, rho 6748, rho 6749, r6761, r6762, r6763, r6764, r6765, tail⟩

theorem template_scp_node17_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6766 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6766 rho)
    (r6767 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6767 rho)
    (r6768 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6768 rho)
    (r6769 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6769 rho)
    (r6770 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6770 rho)
    (tail : next (rho 6719) (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749) (rho 6754)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg57 (rho 6719) (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749) next := by
  exact ⟨rho 6750, rho 6751, rho 6752, rho 6753, rho 6754, r6766, r6767, r6768, r6769, r6770, tail⟩

theorem template_scp_node17_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6771 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6771 rho)
    (r6772 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6772 rho)
    (r6773 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6773 rho)
    (r6774 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6774 rho)
    (r6775 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6775 rho)
    (tail : next (rho 6719) (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749) (rho 6754) (rho 6759)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg58 (rho 6719) (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749) (rho 6754) next := by
  exact ⟨rho 6755, rho 6756, rho 6757, rho 6758, rho 6759, r6771, r6772, r6773, r6774, r6775, tail⟩

theorem template_scp_node17_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6776 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6776 rho)
    (r6777 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6777 rho)
    (r6778 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6778 rho)
    (r6779 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6779 rho)
    (r6780 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow6780 rho)
    (tail : next (rho 6744) (rho 6749) (rho 6754) (rho 6759) (rho 6764)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg59 (rho 6719) (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749) (rho 6754) (rho 6759) next := by
  exact ⟨rho 6760, rho 6761, rho 6762, rho 6763, rho 6764, r6776, r6777, r6778, r6779, r6780, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

