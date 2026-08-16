import ShielddGnarkFormal.ChoiceFreeZMod
import Mathlib.Tactic.LinearCombination
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node17_seg50 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6731 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6731 rho)
    (r6732 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6732 rho)
    (r6733 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6733 rho)
    (r6734 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6734 rho)
    (r6735 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6735 rho)
    (tail : next (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg50 (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) next := by
  exact ⟨rho 6720, rho 6721, rho 6722, rho 6723, rho 6724, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6731 at r6731; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc161, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc161Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc161Part1] at r6731; linear_combination r6731), r6732, r6733, r6734, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6735 at r6735; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc161, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc161Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc161Part1] at r6735; linear_combination r6735), tail⟩

theorem template_scp_node17_seg51 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6736 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6736 rho)
    (r6737 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6737 rho)
    (r6738 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6738 rho)
    (r6739 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6739 rho)
    (r6740 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6740 rho)
    (tail : next (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724) (rho 6729)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg51 (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724) next := by
  exact ⟨rho 6725, rho 6726, rho 6727, rho 6728, rho 6729, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6736 at r6736; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc162, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc162Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc162Part1] at r6736; linear_combination r6736), r6737, r6738, r6739, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6740 at r6740; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc162, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc162Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc162Part1] at r6740; linear_combination r6740), tail⟩

theorem template_scp_node17_seg52 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6741 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6741 rho)
    (r6742 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6742 rho)
    (r6743 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6743 rho)
    (r6744 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6744 rho)
    (r6745 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6745 rho)
    (tail : next (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724) (rho 6729) (rho 6734)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg52 (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724) (rho 6729) next := by
  exact ⟨rho 6730, rho 6731, rho 6732, rho 6733, rho 6734, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6741 at r6741; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc163, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc163Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc163Part1] at r6741; linear_combination r6741), r6742, r6743, r6744, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6745 at r6745; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc163, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc163Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc163Part1] at r6745; linear_combination r6745), tail⟩

theorem template_scp_node17_seg53 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6746 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6746 rho)
    (r6747 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6747 rho)
    (r6748 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6748 rho)
    (r6749 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6749 rho)
    (r6750 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6750 rho)
    (tail : next (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724) (rho 6729) (rho 6734) (rho 6739)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg53 (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724) (rho 6729) (rho 6734) next := by
  exact ⟨rho 6735, rho 6736, rho 6737, rho 6738, rho 6739, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6746 at r6746; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc164, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc164Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc164Part1] at r6746; linear_combination r6746), r6747, r6748, r6749, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6750 at r6750; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc164, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc164Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc164Part1] at r6750; linear_combination r6750), tail⟩

theorem template_scp_node17_seg54 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6751 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6751 rho)
    (r6752 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6752 rho)
    (r6753 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6753 rho)
    (r6754 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6754 rho)
    (r6755 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6755 rho)
    (tail : next (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg54 (rho 6544) (rho 6549) (rho 6554) (rho 6559) (rho 6564) (rho 6569) (rho 6574) (rho 6579) (rho 6584) (rho 6589) (rho 6594) (rho 6599) (rho 6604) (rho 6609) (rho 6614) (rho 6619) (rho 6624) (rho 6629) (rho 6634) (rho 6639) (rho 6644) (rho 6649) (rho 6654) (rho 6659) (rho 6664) (rho 6669) (rho 6674) (rho 6679) (rho 6684) (rho 6689) (rho 6694) (rho 6699) (rho 6704) (rho 6709) (rho 6714) (rho 6719) (rho 6724) (rho 6729) (rho 6734) (rho 6739) next := by
  exact ⟨rho 6740, rho 6741, rho 6742, rho 6743, rho 6744, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6751 at r6751; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc165, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc165Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc165Part1] at r6751; linear_combination r6751), r6752, r6753, r6754, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6755 at r6755; try simp only [Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc165, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc165Part0, Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationLc165Part1] at r6755; linear_combination r6755), tail⟩

theorem template_scp_node17_seg55 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6756 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6756 rho)
    (r6757 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6757 rho)
    (r6758 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6758 rho)
    (r6759 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6759 rho)
    (r6760 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6760 rho)
    (tail : next (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg55 (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) next := by
  exact ⟨rho 6745, rho 6746, rho 6747, rho 6748, rho 6749, r6756, r6757, r6758, r6759, r6760, tail⟩

theorem template_scp_node17_seg56 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6761 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6761 rho)
    (r6762 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6762 rho)
    (r6763 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6763 rho)
    (r6764 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6764 rho)
    (r6765 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6765 rho)
    (tail : next (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749) (rho 6754)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg56 (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749) next := by
  exact ⟨rho 6750, rho 6751, rho 6752, rho 6753, rho 6754, r6761, r6762, r6763, r6764, r6765, tail⟩

theorem template_scp_node17_seg57 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6766 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6766 rho)
    (r6767 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6767 rho)
    (r6768 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6768 rho)
    (r6769 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6769 rho)
    (r6770 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6770 rho)
    (tail : next (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749) (rho 6754) (rho 6759)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg57 (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749) (rho 6754) next := by
  exact ⟨rho 6755, rho 6756, rho 6757, rho 6758, rho 6759, r6766, r6767, r6768, r6769, r6770, tail⟩

theorem template_scp_node17_seg58 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6771 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6771 rho)
    (r6772 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6772 rho)
    (r6773 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6773 rho)
    (r6774 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6774 rho)
    (r6775 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6775 rho)
    (tail : next (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749) (rho 6754) (rho 6759) (rho 6764)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg58 (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749) (rho 6754) (rho 6759) next := by
  exact ⟨rho 6760, rho 6761, rho 6762, rho 6763, rho 6764, r6771, r6772, r6773, r6774, r6775, tail⟩

theorem template_scp_node17_seg59 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6776 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6776 rho)
    (r6777 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6777 rho)
    (r6778 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6778 rho)
    (r6779 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6779 rho)
    (r6780 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6780 rho)
    (tail : next (rho 6749) (rho 6754) (rho 6759) (rho 6764) (rho 6769)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg59 (rho 6724) (rho 6729) (rho 6734) (rho 6739) (rho 6744) (rho 6749) (rho 6754) (rho 6759) (rho 6764) next := by
  exact ⟨rho 6765, rho 6766, rho 6767, rho 6768, rho 6769, r6776, r6777, r6778, r6779, r6780, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
