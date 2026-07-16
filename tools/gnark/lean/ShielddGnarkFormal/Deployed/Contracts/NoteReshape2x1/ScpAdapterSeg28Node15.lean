import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node15Rows0
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node15Rows1
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node15Rows2
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node15Rows3
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node15Rows4
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node15Rows5
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Node15Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode15.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node15_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode15Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (16 : Seg28.F))
        (rho 139 + rho 25081) (rho 140 + rho 25082 + rho 25083)
        (rho 140 + rho 25084 + rho 25085) (rho 141 + rho 25086) := by
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p71, p72, p73, p74, p75, p76, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5753, r5754, r5755, r5756, r5757, r5758, r5759⟩
  unfold Seg28.relationPart72 at p72
  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810, r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, r5839⟩
  unfold Seg28.relationPart73 at p73
  rcases p73 with ⟨r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩
  unfold Seg28.relationPart74 at p74
  rcases p74 with ⟨r5920, r5921, r5922, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩
  unfold Seg28.relationPart75 at p75
  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, r6077, r6078, r6079⟩
  unfold Seg28.relationPart76 at p76
  rcases p76 with ⟨r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.relation (rho 139) (rho 140) (rho 141) (rho 25081) (rho 25082) (rho 25083) (rho 25084) (rho 25085) (rho 25086)
      (fun o0 o1 o2 o3 o4 => o0 = rho 25416 ∧ o1 = rho 25421 ∧ o2 = rho 25426 ∧ o3 = rho 25431 ∧ o4 = rho 25436) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.relation
    exact seg28_scp_node15_seg0 rho _ r5753 r5754 r5755 r5756 r5757 (seg28_scp_node15_seg1 rho _ r5758 r5759 r5760 r5761 r5762 (seg28_scp_node15_seg2 rho _ r5763 r5764 r5765 r5766 r5767 (seg28_scp_node15_seg3 rho _ r5768 r5769 r5770 r5771 r5772 (seg28_scp_node15_seg4 rho _ r5773 r5774 r5775 r5776 r5777 (seg28_scp_node15_seg5 rho _ r5778 r5779 r5780 r5781 r5782 (seg28_scp_node15_seg6 rho _ r5783 r5784 r5785 r5786 r5787 (seg28_scp_node15_seg7 rho _ r5788 r5789 r5790 r5791 r5792 (seg28_scp_node15_seg8 rho _ r5793 r5794 r5795 r5796 r5797 (seg28_scp_node15_seg9 rho _ r5798 r5799 r5800 r5801 r5802 (seg28_scp_node15_seg10 rho _ r5803 r5804 r5805 r5806 r5807 (seg28_scp_node15_seg11 rho _ r5808 r5809 r5810 r5811 r5812 (seg28_scp_node15_seg12 rho _ r5813 r5814 r5815 r5816 r5817 (seg28_scp_node15_seg13 rho _ r5818 r5819 r5820 r5821 r5822 (seg28_scp_node15_seg14 rho _ r5823 r5824 r5825 r5826 r5827 (seg28_scp_node15_seg15 rho _ r5828 r5829 r5830 r5831 r5832 (seg28_scp_node15_seg16 rho _ r5833 r5834 r5835 r5836 r5837 (seg28_scp_node15_seg17 rho _ r5838 r5839 r5840 r5841 r5842 (seg28_scp_node15_seg18 rho _ r5843 r5844 r5845 r5846 r5847 (seg28_scp_node15_seg19 rho _ r5848 r5849 r5850 r5851 r5852 (seg28_scp_node15_seg20 rho _ r5853 r5854 r5855 r5856 r5857 (seg28_scp_node15_seg21 rho _ r5858 r5859 r5860 r5861 r5862 (seg28_scp_node15_seg22 rho _ r5863 r5864 r5865 r5866 r5867 (seg28_scp_node15_seg23 rho _ r5868 r5869 r5870 r5871 r5872 (seg28_scp_node15_seg24 rho _ r5873 r5874 r5875 r5876 r5877 (seg28_scp_node15_seg25 rho _ r5878 r5879 r5880 r5881 r5882 (seg28_scp_node15_seg26 rho _ r5883 r5884 r5885 r5886 r5887 (seg28_scp_node15_seg27 rho _ r5888 r5889 r5890 r5891 r5892 (seg28_scp_node15_seg28 rho _ r5893 r5894 r5895 r5896 r5897 (seg28_scp_node15_seg29 rho _ r5898 r5899 r5900 r5901 r5902 (seg28_scp_node15_seg30 rho _ r5903 r5904 r5905 r5906 r5907 (seg28_scp_node15_seg31 rho _ r5908 r5909 r5910 r5911 r5912 (seg28_scp_node15_seg32 rho _ r5913 r5914 r5915 r5916 r5917 (seg28_scp_node15_seg33 rho _ r5918 r5919 r5920 r5921 r5922 (seg28_scp_node15_seg34 rho _ r5923 r5924 r5925 r5926 r5927 (seg28_scp_node15_seg35 rho _ r5928 r5929 r5930 r5931 r5932 (seg28_scp_node15_seg36 rho _ r5933 r5934 r5935 r5936 r5937 (seg28_scp_node15_seg37 rho _ r5938 r5939 r5940 r5941 r5942 (seg28_scp_node15_seg38 rho _ r5943 r5944 r5945 r5946 r5947 (seg28_scp_node15_seg39 rho _ r5948 r5949 r5950 r5951 r5952 (seg28_scp_node15_seg40 rho _ r5953 r5954 r5955 r5956 r5957 (seg28_scp_node15_seg41 rho _ r5958 r5959 r5960 r5961 r5962 (seg28_scp_node15_seg42 rho _ r5963 r5964 r5965 r5966 r5967 (seg28_scp_node15_seg43 rho _ r5968 r5969 r5970 r5971 r5972 (seg28_scp_node15_seg44 rho _ r5973 r5974 r5975 r5976 r5977 (seg28_scp_node15_seg45 rho _ r5978 r5979 r5980 r5981 r5982 (seg28_scp_node15_seg46 rho _ r5983 r5984 r5985 r5986 r5987 (seg28_scp_node15_seg47 rho _ r5988 r5989 r5990 r5991 r5992 (seg28_scp_node15_seg48 rho _ r5993 r5994 r5995 r5996 r5997 (seg28_scp_node15_seg49 rho _ r5998 r5999 r6000 r6001 r6002 (seg28_scp_node15_seg50 rho _ r6003 r6004 r6005 r6006 r6007 (seg28_scp_node15_seg51 rho _ r6008 r6009 r6010 r6011 r6012 (seg28_scp_node15_seg52 rho _ r6013 r6014 r6015 r6016 r6017 (seg28_scp_node15_seg53 rho _ r6018 r6019 r6020 r6021 r6022 (seg28_scp_node15_seg54 rho _ r6023 r6024 r6025 r6026 r6027 (seg28_scp_node15_seg55 rho _ r6028 r6029 r6030 r6031 r6032 (seg28_scp_node15_seg56 rho _ r6033 r6034 r6035 r6036 r6037 (seg28_scp_node15_seg57 rho _ r6038 r6039 r6040 r6041 r6042 (seg28_scp_node15_seg58 rho _ r6043 r6044 r6045 r6046 r6047 (seg28_scp_node15_seg59 rho _ r6048 r6049 r6050 r6051 r6052 (seg28_scp_node15_seg60 rho _ r6053 r6054 r6055 r6056 r6057 (seg28_scp_node15_seg61 rho _ r6058 r6059 r6060 r6061 r6062 (seg28_scp_node15_seg62 rho _ r6063 r6064 r6065 r6066 r6067 (seg28_scp_node15_seg63 rho _ r6068 r6069 r6070 r6071 r6072 (seg28_scp_node15_seg64 rho _ r6073 r6074 r6075 r6076 r6077 (seg28_scp_node15_seg65 rho _ r6078 r6079 r6080 r6081 r6082 (seg28_scp_node15_seg66 rho _ r6083 r6084 r6085 r6086 r6087 (seg28_scp_node15_seg67 rho _ r6088 r6089 r6090 r6091 r6092 (seg28_scp_node15_seg68 rho _ r6093 r6094 r6095 r6096 r6097 (seg28_scp_node15_seg69 rho _ r6098 r6099 r6100 r6101 r6102 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode15.relation_sound_permSpec (rho 139) (rho 140) (rho 141) (rho 25081) (rho 25082) (rho 25083) (rho 25084) (rho 25085) (rho 25086) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode15.tctNode16DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode15.F) + (16 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode15.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode15Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode15.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

