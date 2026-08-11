import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode13Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode13Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode13Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode13Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode13Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode13Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode13Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node13_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation rho) :
    nodeOut13 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 4763 + rho 4764) (rho 4765 + rho 4766 + rho 4767) (rho 4765 + rho 4769 + rho 4770) (rho 4768 + rho 4771) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, p59, p60, p61, p62, p63,
    p64, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart59 at p59
  rcases p59 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875, r4876, r4877, r4878, r4879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, r4957, r4958, r4959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, r5011, r5012, r5013, r5014, r5015, r5016, r5017, r5018, r5019, r5020, r5021, r5022, r5023, r5024, r5025, r5026, r5027, r5028, r5029, r5030, r5031, r5032, r5033, r5034, r5035, r5036, r5037, r5038, r5039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart63 at p63
  rcases p63 with ⟨r5040, r5041, r5042, r5043, r5044, r5045, r5046, r5047, r5048, r5049, r5050, r5051, r5052, r5053, r5054, r5055, r5056, r5057, r5058, r5059, r5060, r5061, r5062, r5063, r5064, r5065, r5066, r5067, r5068, r5069, r5070, r5071, r5072, r5073, r5074, r5075, r5076, r5077, r5078, r5079, r5080, r5081, r5082, r5083, r5084, r5085, r5086, r5087, r5088, r5089, r5090, r5091, r5092, r5093, r5094, r5095, r5096, r5097, r5098, r5099, r5100, r5101, r5102, r5103, r5104, r5105, r5106, r5107, r5108, r5109, r5110, r5111, r5112, r5113, r5114, r5115, r5116, r5117, r5118, r5119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart64 at p64
  rcases p64 with ⟨r5120, r5121, r5122, r5123, r5124, r5125, r5126, r5127, r5128, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 4763 + rho 4764) (rho 4765 + rho 4766 + rho 4767) (rho 4765 + rho 4769 + rho 4770) (rho 4768 + rho 4771)
      (fun w334 w339 w344 w349 w354 => w334 = rho 5101 ∧ w339 = rho 5106 ∧ w344 = rho 5111 ∧ w349 = rho 5116 ∧ w354 = rho 5121) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node13_seg0 rho _ r4779 r4780 r4781 r4782 r4783 (node13_seg1 rho _ r4784 r4785 r4786 r4787 r4788 (node13_seg2 rho _ r4789 r4790 r4791 r4792 r4793 (node13_seg3 rho _ r4794 r4795 r4796 r4797 r4798 (node13_seg4 rho _ r4799 r4800 r4801 r4802 r4803 (node13_seg5 rho _ r4804 r4805 r4806 r4807 r4808 (node13_seg6 rho _ r4809 r4810 r4811 r4812 r4813 (node13_seg7 rho _ r4814 r4815 r4816 r4817 r4818 (node13_seg8 rho _ r4819 r4820 r4821 r4822 r4823 (node13_seg9 rho _ r4824 r4825 r4826 r4827 r4828 (node13_seg10 rho _ r4829 r4830 r4831 r4832 r4833 (node13_seg11 rho _ r4834 r4835 r4836 r4837 r4838 (node13_seg12 rho _ r4839 r4840 r4841 r4842 r4843 (node13_seg13 rho _ r4844 r4845 r4846 r4847 r4848 (node13_seg14 rho _ r4849 r4850 r4851 r4852 r4853 (node13_seg15 rho _ r4854 r4855 r4856 r4857 r4858 (node13_seg16 rho _ r4859 r4860 r4861 r4862 r4863 (node13_seg17 rho _ r4864 r4865 r4866 r4867 r4868 (node13_seg18 rho _ r4869 r4870 r4871 r4872 r4873 (node13_seg19 rho _ r4874 r4875 r4876 r4877 r4878 (node13_seg20 rho _ r4879 r4880 r4881 r4882 r4883 (node13_seg21 rho _ r4884 r4885 r4886 r4887 r4888 (node13_seg22 rho _ r4889 r4890 r4891 r4892 r4893 (node13_seg23 rho _ r4894 r4895 r4896 r4897 r4898 (node13_seg24 rho _ r4899 r4900 r4901 r4902 r4903 (node13_seg25 rho _ r4904 r4905 r4906 r4907 r4908 (node13_seg26 rho _ r4909 r4910 r4911 r4912 r4913 (node13_seg27 rho _ r4914 r4915 r4916 r4917 r4918 (node13_seg28 rho _ r4919 r4920 r4921 r4922 r4923 (node13_seg29 rho _ r4924 r4925 r4926 r4927 r4928 (node13_seg30 rho _ r4929 r4930 r4931 r4932 r4933 (node13_seg31 rho _ r4934 r4935 r4936 r4937 r4938 (node13_seg32 rho _ r4939 r4940 r4941 r4942 r4943 (node13_seg33 rho _ r4944 r4945 r4946 r4947 r4948 (node13_seg34 rho _ r4949 r4950 r4951 r4952 r4953 (node13_seg35 rho _ r4954 r4955 r4956 r4957 r4958 (node13_seg36 rho _ r4959 r4960 r4961 r4962 r4963 (node13_seg37 rho _ r4964 r4965 r4966 r4967 r4968 (node13_seg38 rho _ r4969 r4970 r4971 r4972 r4973 (node13_seg39 rho _ r4974 r4975 r4976 r4977 r4978 (node13_seg40 rho _ r4979 r4980 r4981 r4982 r4983 (node13_seg41 rho _ r4984 r4985 r4986 r4987 r4988 (node13_seg42 rho _ r4989 r4990 r4991 r4992 r4993 (node13_seg43 rho _ r4994 r4995 r4996 r4997 r4998 (node13_seg44 rho _ r4999 r5000 r5001 r5002 r5003 (node13_seg45 rho _ r5004 r5005 r5006 r5007 r5008 (node13_seg46 rho _ r5009 r5010 r5011 r5012 r5013 (node13_seg47 rho _ r5014 r5015 r5016 r5017 r5018 (node13_seg48 rho _ r5019 r5020 r5021 r5022 r5023 (node13_seg49 rho _ r5024 r5025 r5026 r5027 r5028 (node13_seg50 rho _ r5029 r5030 r5031 r5032 r5033 (node13_seg51 rho _ r5034 r5035 r5036 r5037 r5038 (node13_seg52 rho _ r5039 r5040 r5041 r5042 r5043 (node13_seg53 rho _ r5044 r5045 r5046 r5047 r5048 (node13_seg54 rho _ r5049 r5050 r5051 r5052 r5053 (node13_seg55 rho _ r5054 r5055 r5056 r5057 r5058 (node13_seg56 rho _ r5059 r5060 r5061 r5062 r5063 (node13_seg57 rho _ r5064 r5065 r5066 r5067 r5068 (node13_seg58 rho _ r5069 r5070 r5071 r5072 r5073 (node13_seg59 rho _ r5074 r5075 r5076 r5077 r5078 (node13_seg60 rho _ r5079 r5080 r5081 r5082 r5083 (node13_seg61 rho _ r5084 r5085 r5086 r5087 r5088 (node13_seg62 rho _ r5089 r5090 r5091 r5092 r5093 (node13_seg63 rho _ r5094 r5095 r5096 r5097 r5098 (node13_seg64 rho _ r5099 r5100 r5101 r5102 r5103 (node13_seg65 rho _ r5104 r5105 r5106 r5107 r5108 (node13_seg66 rho _ r5109 r5110 r5111 r5112 r5113 (node13_seg67 rho _ r5114 r5115 r5116 r5117 r5118 (node13_seg68 rho _ r5119 r5120 r5121 r5122 r5123 (node13_seg69 rho _ r5124 r5125 r5126 r5127 r5128 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 4763 + rho 4764) (rho 4765 + rho 4766 + rho 4767) (rho 4765 + rho 4769 + rho 4770) (rho 4768 + rho 4771) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut13, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
