import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node15_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5803 : Seg13.relationRow5803 rho)
    (r5804 : Seg13.relationRow5804 rho)
    (r5805 : Seg13.relationRow5805 rho)
    (r5806 : Seg13.relationRow5806 rho)
    (r5807 : Seg13.relationRow5807 rho)
    (tail : next (rho 12930) (rho 12935) (rho 12940) (rho 12945) (rho 12950) (rho 12955) (rho 12960)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg10 (rho 12930) (rho 12935) (rho 12940) (rho 12945) (rho 12950) (rho 12955) next := by
  exact ⟨rho 12956, rho 12957, rho 12958, rho 12959, rho 12960, r5803, r5804, r5805, r5806, r5807, tail⟩

theorem seg13_scp_node15_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5808 : Seg13.relationRow5808 rho)
    (r5809 : Seg13.relationRow5809 rho)
    (r5810 : Seg13.relationRow5810 rho)
    (r5811 : Seg13.relationRow5811 rho)
    (r5812 : Seg13.relationRow5812 rho)
    (tail : next (rho 12930) (rho 12935) (rho 12940) (rho 12945) (rho 12950) (rho 12955) (rho 12960) (rho 12965)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg11 (rho 12930) (rho 12935) (rho 12940) (rho 12945) (rho 12950) (rho 12955) (rho 12960) next := by
  exact ⟨rho 12961, rho 12962, rho 12963, rho 12964, rho 12965, r5808, r5809, r5810, r5811, r5812, tail⟩

theorem seg13_scp_node15_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5813 : Seg13.relationRow5813 rho)
    (r5814 : Seg13.relationRow5814 rho)
    (r5815 : Seg13.relationRow5815 rho)
    (r5816 : Seg13.relationRow5816 rho)
    (r5817 : Seg13.relationRow5817 rho)
    (tail : next (rho 12930) (rho 12935) (rho 12940) (rho 12945) (rho 12950) (rho 12955) (rho 12960) (rho 12965) (rho 12970)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg12 (rho 12930) (rho 12935) (rho 12940) (rho 12945) (rho 12950) (rho 12955) (rho 12960) (rho 12965) next := by
  exact ⟨rho 12966, rho 12967, rho 12968, rho 12969, rho 12970, r5813, r5814, r5815, r5816, r5817, tail⟩

theorem seg13_scp_node15_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5818 : Seg13.relationRow5818 rho)
    (r5819 : Seg13.relationRow5819 rho)
    (r5820 : Seg13.relationRow5820 rho)
    (r5821 : Seg13.relationRow5821 rho)
    (r5822 : Seg13.relationRow5822 rho)
    (tail : next (rho 12955) (rho 12960) (rho 12965) (rho 12970) (rho 12975)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg13 (rho 12930) (rho 12935) (rho 12940) (rho 12945) (rho 12950) (rho 12955) (rho 12960) (rho 12965) (rho 12970) next := by
  exact ⟨rho 12971, rho 12972, rho 12973, rho 12974, rho 12975, r5818, r5819, r5820, r5821, r5822, tail⟩

theorem seg13_scp_node15_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5823 : Seg13.relationRow5823 rho)
    (r5824 : Seg13.relationRow5824 rho)
    (r5825 : Seg13.relationRow5825 rho)
    (r5826 : Seg13.relationRow5826 rho)
    (r5827 : Seg13.relationRow5827 rho)
    (tail : next (rho 12955) (rho 12960) (rho 12965) (rho 12970) (rho 12975) (rho 12980)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg14 (rho 12955) (rho 12960) (rho 12965) (rho 12970) (rho 12975) next := by
  exact ⟨rho 12976, rho 12977, rho 12978, rho 12979, rho 12980, r5823, r5824, r5825, r5826, r5827, tail⟩

theorem seg13_scp_node15_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5828 : Seg13.relationRow5828 rho)
    (r5829 : Seg13.relationRow5829 rho)
    (r5830 : Seg13.relationRow5830 rho)
    (r5831 : Seg13.relationRow5831 rho)
    (r5832 : Seg13.relationRow5832 rho)
    (tail : next (rho 12955) (rho 12960) (rho 12965) (rho 12970) (rho 12975) (rho 12980) (rho 12985)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg15 (rho 12955) (rho 12960) (rho 12965) (rho 12970) (rho 12975) (rho 12980) next := by
  exact ⟨rho 12981, rho 12982, rho 12983, rho 12984, rho 12985, r5828, r5829, r5830, r5831, r5832, tail⟩

theorem seg13_scp_node15_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5833 : Seg13.relationRow5833 rho)
    (r5834 : Seg13.relationRow5834 rho)
    (r5835 : Seg13.relationRow5835 rho)
    (r5836 : Seg13.relationRow5836 rho)
    (r5837 : Seg13.relationRow5837 rho)
    (tail : next (rho 12955) (rho 12960) (rho 12965) (rho 12970) (rho 12975) (rho 12980) (rho 12985) (rho 12990)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg16 (rho 12955) (rho 12960) (rho 12965) (rho 12970) (rho 12975) (rho 12980) (rho 12985) next := by
  exact ⟨rho 12986, rho 12987, rho 12988, rho 12989, rho 12990, r5833, r5834, r5835, r5836, r5837, tail⟩

theorem seg13_scp_node15_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5838 : Seg13.relationRow5838 rho)
    (r5839 : Seg13.relationRow5839 rho)
    (r5840 : Seg13.relationRow5840 rho)
    (r5841 : Seg13.relationRow5841 rho)
    (r5842 : Seg13.relationRow5842 rho)
    (tail : next (rho 12955) (rho 12960) (rho 12965) (rho 12970) (rho 12975) (rho 12980) (rho 12985) (rho 12990) (rho 12995)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg17 (rho 12955) (rho 12960) (rho 12965) (rho 12970) (rho 12975) (rho 12980) (rho 12985) (rho 12990) next := by
  exact ⟨rho 12991, rho 12992, rho 12993, rho 12994, rho 12995, r5838, r5839, r5840, r5841, r5842, tail⟩

theorem seg13_scp_node15_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5843 : Seg13.relationRow5843 rho)
    (r5844 : Seg13.relationRow5844 rho)
    (r5845 : Seg13.relationRow5845 rho)
    (r5846 : Seg13.relationRow5846 rho)
    (r5847 : Seg13.relationRow5847 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg18 (rho 12955) (rho 12960) (rho 12965) (rho 12970) (rho 12975) (rho 12980) (rho 12985) (rho 12990) (rho 12995) next := by
  exact ⟨rho 12996, rho 12997, rho 12998, rho 12999, rho 13000, r5843, r5844, r5845, r5846, r5847, tail⟩

theorem seg13_scp_node15_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5848 : Seg13.relationRow5848 rho)
    (r5849 : Seg13.relationRow5849 rho)
    (r5850 : Seg13.relationRow5850 rho)
    (r5851 : Seg13.relationRow5851 rho)
    (r5852 : Seg13.relationRow5852 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg19 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) next := by
  exact ⟨rho 13001, rho 13002, rho 13003, rho 13004, rho 13005, r5848, r5849, r5850, r5851, r5852, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

