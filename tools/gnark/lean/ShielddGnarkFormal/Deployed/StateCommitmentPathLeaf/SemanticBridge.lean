import ShielddGnarkFormal.Deployed.StateCommitmentPathLeaf.SegSound

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf

open Shieldd.GnarkFormal.Poseidon1Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon1Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.Order)]

instance : Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.PoseidonHash1.Order) :=
  inferInstanceAs (Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.Order))

theorem range0_sound (w23 : F) (k : F → F → F → Prop)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg0 w23 (fun w1657 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg1 w1657 (fun w1657 w1662 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg2 w1657 w1662 (fun w1662 w1667 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg3 w1662 w1667 (fun w1662 w1667 w1672 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg4 w1662 w1667 w1672 (fun w1672 w1677 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg5 w1672 w1677 (fun w1672 w1677 w1682 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg6 w1672 w1677 w1682 (fun w1682 w1687 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg7 w1682 w1687 (fun w1682 w1687 w1692 =>
      k w1682 w1687 w1692))))))))) :
    ∃ w1682 w1687 w1692 : F, spec4 (w23) = st4 w1682 w1687 w1692 ∧ k w1682 w1687 w1692 := by
  have h0 := seg0_sound w23 _ h
  rcases h0 with ⟨w1657, hw1657, h⟩
  have hSpec0 := spec0_eq (w23) w1657 hw1657
  have h1 := seg1_sound w1657 _ h
  rcases h1 with ⟨w1662, hw1662, h⟩
  have h2 := seg2_sound w1657 w1662 _ h
  rcases h2 with ⟨w1667, hw1667, h⟩
  have hSpec1 := spec1_step (w23) w1657 w1662 w1667 hSpec0 hw1662 hw1667
  have h3 := seg3_sound w1662 w1667 _ h
  rcases h3 with ⟨w1672, hw1672, h⟩
  have h4 := seg4_sound w1662 w1667 w1672 _ h
  rcases h4 with ⟨w1677, hw1677, h⟩
  have hSpec2 := spec2_step (w23) w1662 w1667 w1672 w1677 hSpec1 hw1672 hw1677
  have h5 := seg5_sound w1672 w1677 _ h
  rcases h5 with ⟨w1682, hw1682, h⟩
  have h6 := seg6_sound w1672 w1677 w1682 _ h
  rcases h6 with ⟨w1687, hw1687, h⟩
  have hSpec3 := spec3_step (w23) w1672 w1677 w1682 w1687 hSpec2 hw1682 hw1687
  have h7 := seg7_sound w1682 w1687 _ h
  rcases h7 with ⟨w1692, hw1692, h⟩
  have hSpec4 := spec4_step (w23) w1682 w1687 w1692 hSpec3 hw1692
  exact ⟨w1682, w1687, w1692, hSpec4, h⟩

theorem range1_sound (w23 : F) (w1682 : F) (w1687 : F) (w1692 : F) (k : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec4 : spec4 (w23) = st4 w1682 w1687 w1692)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg8 w1682 w1687 w1692 (fun w1682 w1687 w1692 w1697 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg9 w1682 w1687 w1692 w1697 (fun w1682 w1687 w1692 w1697 w1702 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg10 w1682 w1687 w1692 w1697 w1702 (fun w1682 w1687 w1692 w1697 w1702 w1707 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg11 w1682 w1687 w1692 w1697 w1702 w1707 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg12 w1682 w1687 w1692 w1697 w1702 w1707 w1712 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg13 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg14 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg15 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 =>
      k w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732))))))))) :
    ∃ w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 : F, spec12 (w23) = st12 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 ∧ k w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 := by
  have h8 := seg8_sound w1682 w1687 w1692 _ h
  rcases h8 with ⟨w1697, hw1697, h⟩
  have hSpec5 := spec5_step (w23) w1682 w1687 w1692 w1697 hSpec4 hw1697
  have h9 := seg9_sound w1682 w1687 w1692 w1697 _ h
  rcases h9 with ⟨w1702, hw1702, h⟩
  have hSpec6 := spec6_step (w23) w1682 w1687 w1692 w1697 w1702 hSpec5 hw1702
  have h10 := seg10_sound w1682 w1687 w1692 w1697 w1702 _ h
  rcases h10 with ⟨w1707, hw1707, h⟩
  have hSpec7 := spec7_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 hSpec6 hw1707
  have h11 := seg11_sound w1682 w1687 w1692 w1697 w1702 w1707 _ h
  rcases h11 with ⟨w1712, hw1712, h⟩
  have hSpec8 := spec8_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 hSpec7 hw1712
  have h12 := seg12_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 _ h
  rcases h12 with ⟨w1717, hw1717, h⟩
  have hSpec9 := spec9_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 hSpec8 hw1717
  have h13 := seg13_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 _ h
  rcases h13 with ⟨w1722, hw1722, h⟩
  have hSpec10 := spec10_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 hSpec9 hw1722
  have h14 := seg14_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 _ h
  rcases h14 with ⟨w1727, hw1727, h⟩
  have hSpec11 := spec11_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 hSpec10 hw1727
  have h15 := seg15_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 _ h
  rcases h15 with ⟨w1732, hw1732, h⟩
  have hSpec12 := spec12_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 hSpec11 hw1732
  exact ⟨w1682, w1687, w1692, w1697, w1702, w1707, w1712, w1717, w1722, w1727, w1732, hSpec12, h⟩

theorem range2_sound (w23 : F) (w1682 : F) (w1687 : F) (w1692 : F) (w1697 : F) (w1702 : F) (w1707 : F) (w1712 : F) (w1717 : F) (w1722 : F) (w1727 : F) (w1732 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec12 : spec12 (w23) = st12 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg16 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg17 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg18 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg19 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg20 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg21 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg22 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg23 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 =>
      k w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772))))))))) :
    ∃ w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 : F, spec20 (w23) = st20 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 ∧ k w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 := by
  have h16 := seg16_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 _ h
  rcases h16 with ⟨w1737, hw1737, h⟩
  have hSpec13 := spec13_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 hSpec12 hw1737
  have h17 := seg17_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 _ h
  rcases h17 with ⟨w1742, hw1742, h⟩
  have hSpec14 := spec14_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 hSpec13 hw1742
  have h18 := seg18_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 _ h
  rcases h18 with ⟨w1747, hw1747, h⟩
  have hSpec15 := spec15_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 hSpec14 hw1747
  have h19 := seg19_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 _ h
  rcases h19 with ⟨w1752, hw1752, h⟩
  have hSpec16 := spec16_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 hSpec15 hw1752
  have h20 := seg20_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 _ h
  rcases h20 with ⟨w1757, hw1757, h⟩
  have hSpec17 := spec17_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 hSpec16 hw1757
  have h21 := seg21_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 _ h
  rcases h21 with ⟨w1762, hw1762, h⟩
  have hSpec18 := spec18_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 hSpec17 hw1762
  have h22 := seg22_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 _ h
  rcases h22 with ⟨w1767, hw1767, h⟩
  have hSpec19 := spec19_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 hSpec18 hw1767
  have h23 := seg23_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 _ h
  rcases h23 with ⟨w1772, hw1772, h⟩
  have hSpec20 := spec20_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 hSpec19 hw1772
  exact ⟨w1682, w1687, w1692, w1697, w1702, w1707, w1712, w1717, w1722, w1727, w1732, w1737, w1742, w1747, w1752, w1757, w1762, w1767, w1772, hSpec20, h⟩

theorem range3_sound (w23 : F) (w1682 : F) (w1687 : F) (w1692 : F) (w1697 : F) (w1702 : F) (w1707 : F) (w1712 : F) (w1717 : F) (w1722 : F) (w1727 : F) (w1732 : F) (w1737 : F) (w1742 : F) (w1747 : F) (w1752 : F) (w1757 : F) (w1762 : F) (w1767 : F) (w1772 : F) (k : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (hSpec20 : spec20 (w23) = st20 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg24 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg25 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg26 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg27 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg28 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg29 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg30 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg31 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 =>
      k w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812))))))))) :
    ∃ w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 : F, spec28 (w23) = st28 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 ∧ k w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 := by
  have h24 := seg24_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 _ h
  rcases h24 with ⟨w1777, hw1777, h⟩
  have hSpec21 := spec21_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 hSpec20 hw1777
  have h25 := seg25_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 _ h
  rcases h25 with ⟨w1782, hw1782, h⟩
  have hSpec22 := spec22_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 hSpec21 hw1782
  have h26 := seg26_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 _ h
  rcases h26 with ⟨w1787, hw1787, h⟩
  have hSpec23 := spec23_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 hSpec22 hw1787
  have h27 := seg27_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 _ h
  rcases h27 with ⟨w1792, hw1792, h⟩
  have hSpec24 := spec24_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 hSpec23 hw1792
  have h28 := seg28_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 _ h
  rcases h28 with ⟨w1797, hw1797, h⟩
  have hSpec25 := spec25_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 hSpec24 hw1797
  have h29 := seg29_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 _ h
  rcases h29 with ⟨w1802, hw1802, h⟩
  have hSpec26 := spec26_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 hSpec25 hw1802
  have h30 := seg30_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 _ h
  rcases h30 with ⟨w1807, hw1807, h⟩
  have hSpec27 := spec27_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 hSpec26 hw1807
  have h31 := seg31_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 _ h
  rcases h31 with ⟨w1812, hw1812, h⟩
  have hSpec28 := spec28_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 hSpec27 hw1812
  exact ⟨w1682, w1687, w1692, w1697, w1702, w1707, w1712, w1717, w1722, w1727, w1732, w1737, w1742, w1747, w1752, w1757, w1762, w1767, w1772, w1777, w1782, w1787, w1792, w1797, w1802, w1807, w1812, hSpec28, h⟩

theorem range4_sound (w23 : F) (w1682 : F) (w1687 : F) (w1692 : F) (w1697 : F) (w1702 : F) (w1707 : F) (w1712 : F) (w1717 : F) (w1722 : F) (w1727 : F) (w1732 : F) (w1737 : F) (w1742 : F) (w1747 : F) (w1752 : F) (w1757 : F) (w1762 : F) (w1767 : F) (w1772 : F) (w1777 : F) (w1782 : F) (w1787 : F) (w1792 : F) (w1797 : F) (w1802 : F) (w1807 : F) (w1812 : F) (k : F → F → Prop)
    (hSpec28 : spec28 (w23) = st28 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg32 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg33 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg34 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg35 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg36 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 w1837 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg37 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 w1837 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 w1837 w1842 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg38 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 w1837 w1842 (fun w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 w1837 w1842 w1847 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg39 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 w1837 w1842 w1847 (fun w1847 w1852 =>
      k w1847 w1852))))))))) :
    ∃ w1847 w1852 : F, spec35 (w23) = st35 w1847 w1852 ∧ k w1847 w1852 := by
  have h32 := seg32_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 _ h
  rcases h32 with ⟨w1817, hw1817, h⟩
  have hSpec29 := spec29_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 hSpec28 hw1817
  have h33 := seg33_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 _ h
  rcases h33 with ⟨w1822, hw1822, h⟩
  have hSpec30 := spec30_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 hSpec29 hw1822
  have h34 := seg34_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 _ h
  rcases h34 with ⟨w1827, hw1827, h⟩
  have hSpec31 := spec31_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 hSpec30 hw1827
  have h35 := seg35_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 _ h
  rcases h35 with ⟨w1832, hw1832, h⟩
  have hSpec32 := spec32_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 hSpec31 hw1832
  have h36 := seg36_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 _ h
  rcases h36 with ⟨w1837, hw1837, h⟩
  have hSpec33 := spec33_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 w1837 hSpec32 hw1837
  have h37 := seg37_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 w1837 _ h
  rcases h37 with ⟨w1842, hw1842, h⟩
  have hSpec34 := spec34_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 w1837 w1842 hSpec33 hw1842
  have h38 := seg38_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 w1837 w1842 _ h
  rcases h38 with ⟨w1847, hw1847, h⟩
  have h39 := seg39_sound w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 w1837 w1842 w1847 _ h
  rcases h39 with ⟨w1852, hw1852, h⟩
  have hSpec35 := spec35_step (w23) w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 w1817 w1822 w1827 w1832 w1837 w1842 w1847 w1852 hSpec34 hw1847 hw1852
  exact ⟨w1847, w1852, hSpec35, h⟩

theorem range5_sound (w23 : F) (w1847 : F) (w1852 : F) (k : F → F → Prop)
    (hSpec35 : spec35 (w23) = st35 w1847 w1852)
    (h : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg40 w1847 w1852 (fun w1847 w1852 w1857 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg41 w1847 w1852 w1857 (fun w1857 w1862 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg42 w1857 w1862 (fun w1857 w1862 w1867 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg43 w1857 w1862 w1867 (fun w1867 w1872 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg44 w1867 w1872 (fun w1867 w1872 w1877 =>
      Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.seg45 w1867 w1872 w1877 (fun w1877 w1882 =>
      k w1877 w1882))))))) :
    ∃ w1877 w1882 : F, spec38 (w23) = st38 w1877 w1882 ∧ k w1877 w1882 := by
  have h40 := seg40_sound w1847 w1852 _ h
  rcases h40 with ⟨w1857, hw1857, h⟩
  have h41 := seg41_sound w1847 w1852 w1857 _ h
  rcases h41 with ⟨w1862, hw1862, h⟩
  have hSpec36 := spec36_step (w23) w1847 w1852 w1857 w1862 hSpec35 hw1857 hw1862
  have h42 := seg42_sound w1857 w1862 _ h
  rcases h42 with ⟨w1867, hw1867, h⟩
  have h43 := seg43_sound w1857 w1862 w1867 _ h
  rcases h43 with ⟨w1872, hw1872, h⟩
  have hSpec37 := spec37_step (w23) w1857 w1862 w1867 w1872 hSpec36 hw1867 hw1872
  have h44 := seg44_sound w1867 w1872 _ h
  rcases h44 with ⟨w1877, hw1877, h⟩
  have h45 := seg45_sound w1867 w1872 w1877 _ h
  rcases h45 with ⟨w1882, hw1882, h⟩
  have hSpec38 := spec38_step (w23) w1867 w1872 w1877 w1882 hSpec37 hw1877 hw1882
  exact ⟨w1877, w1882, hSpec38, h⟩

theorem relation_sound_permSpec (w23 : F) (k : F → F → Prop) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.relation w23 k →
      ∃ w1877 w1882 : F, k w1877 w1882 ∧
        s38_1 w1877 w1882 = permSpec1 tctLeafDomainLit (w23) := by
  unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathLeaf230_c35850.relation
  intro h
  have r0 := range0_sound w23 _ h
  rcases r0 with ⟨w1682, w1687, w1692, hSpec4, h⟩
  have r1 := range1_sound w23 w1682 w1687 w1692 _ hSpec4 h
  rcases r1 with ⟨w1682, w1687, w1692, w1697, w1702, w1707, w1712, w1717, w1722, w1727, w1732, hSpec12, h⟩
  have r2 := range2_sound w23 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 _ hSpec12 h
  rcases r2 with ⟨w1682, w1687, w1692, w1697, w1702, w1707, w1712, w1717, w1722, w1727, w1732, w1737, w1742, w1747, w1752, w1757, w1762, w1767, w1772, hSpec20, h⟩
  have r3 := range3_sound w23 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 _ hSpec20 h
  rcases r3 with ⟨w1682, w1687, w1692, w1697, w1702, w1707, w1712, w1717, w1722, w1727, w1732, w1737, w1742, w1747, w1752, w1757, w1762, w1767, w1772, w1777, w1782, w1787, w1792, w1797, w1802, w1807, w1812, hSpec28, h⟩
  have r4 := range4_sound w23 w1682 w1687 w1692 w1697 w1702 w1707 w1712 w1717 w1722 w1727 w1732 w1737 w1742 w1747 w1752 w1757 w1762 w1767 w1772 w1777 w1782 w1787 w1792 w1797 w1802 w1807 w1812 _ hSpec28 h
  rcases r4 with ⟨w1847, w1852, hSpec35, h⟩
  have r5 := range5_sound w23 w1847 w1852 _ hSpec35 h
  rcases r5 with ⟨w1877, w1882, hSpec38, h⟩
  refine ⟨w1877, w1882, h, ?_⟩
  rw [← spec38_eq_permSpec (w23)]
  rw [hSpec38]
  simp [st38]

#print axioms relation_sound_permSpec

end Shieldd.GnarkFormal.Deployed.StateCommitmentPathLeaf
