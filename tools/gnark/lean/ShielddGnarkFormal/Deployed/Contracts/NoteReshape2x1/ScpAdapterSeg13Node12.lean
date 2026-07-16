import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node12Rows0
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node12Rows1
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node12Rows2
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node12Rows3
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node12Rows4
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node12Rows5
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node12Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode12.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node12_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode12Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (13 : Seg13.F))
        (rho 58 + rho 11820) (rho 59 + rho 11821 + rho 11822)
        (rho 59 + rho 11823 + rho 11824) (rho 60 + rho 11825) := by
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p58, p59,
    p60, p61, p62, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4661, r4662, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩
  unfold Seg13.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799⟩
  unfold Seg13.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875, r4876, r4877, r4878, r4879⟩
  unfold Seg13.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, r4957, r4958, r4959⟩
  unfold Seg13.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.relation (rho 58) (rho 59) (rho 60) (rho 11820) (rho 11821) (rho 11822) (rho 11823) (rho 11824) (rho 11825)
      (fun o0 o1 o2 o3 o4 => o0 = rho 12155 ∧ o1 = rho 12160 ∧ o2 = rho 12165 ∧ o3 = rho 12170 ∧ o4 = rho 12175) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.relation
    exact seg13_scp_node12_seg0 rho _ r4661 r4662 r4663 r4664 r4665 (seg13_scp_node12_seg1 rho _ r4666 r4667 r4668 r4669 r4670 (seg13_scp_node12_seg2 rho _ r4671 r4672 r4673 r4674 r4675 (seg13_scp_node12_seg3 rho _ r4676 r4677 r4678 r4679 r4680 (seg13_scp_node12_seg4 rho _ r4681 r4682 r4683 r4684 r4685 (seg13_scp_node12_seg5 rho _ r4686 r4687 r4688 r4689 r4690 (seg13_scp_node12_seg6 rho _ r4691 r4692 r4693 r4694 r4695 (seg13_scp_node12_seg7 rho _ r4696 r4697 r4698 r4699 r4700 (seg13_scp_node12_seg8 rho _ r4701 r4702 r4703 r4704 r4705 (seg13_scp_node12_seg9 rho _ r4706 r4707 r4708 r4709 r4710 (seg13_scp_node12_seg10 rho _ r4711 r4712 r4713 r4714 r4715 (seg13_scp_node12_seg11 rho _ r4716 r4717 r4718 r4719 r4720 (seg13_scp_node12_seg12 rho _ r4721 r4722 r4723 r4724 r4725 (seg13_scp_node12_seg13 rho _ r4726 r4727 r4728 r4729 r4730 (seg13_scp_node12_seg14 rho _ r4731 r4732 r4733 r4734 r4735 (seg13_scp_node12_seg15 rho _ r4736 r4737 r4738 r4739 r4740 (seg13_scp_node12_seg16 rho _ r4741 r4742 r4743 r4744 r4745 (seg13_scp_node12_seg17 rho _ r4746 r4747 r4748 r4749 r4750 (seg13_scp_node12_seg18 rho _ r4751 r4752 r4753 r4754 r4755 (seg13_scp_node12_seg19 rho _ r4756 r4757 r4758 r4759 r4760 (seg13_scp_node12_seg20 rho _ r4761 r4762 r4763 r4764 r4765 (seg13_scp_node12_seg21 rho _ r4766 r4767 r4768 r4769 r4770 (seg13_scp_node12_seg22 rho _ r4771 r4772 r4773 r4774 r4775 (seg13_scp_node12_seg23 rho _ r4776 r4777 r4778 r4779 r4780 (seg13_scp_node12_seg24 rho _ r4781 r4782 r4783 r4784 r4785 (seg13_scp_node12_seg25 rho _ r4786 r4787 r4788 r4789 r4790 (seg13_scp_node12_seg26 rho _ r4791 r4792 r4793 r4794 r4795 (seg13_scp_node12_seg27 rho _ r4796 r4797 r4798 r4799 r4800 (seg13_scp_node12_seg28 rho _ r4801 r4802 r4803 r4804 r4805 (seg13_scp_node12_seg29 rho _ r4806 r4807 r4808 r4809 r4810 (seg13_scp_node12_seg30 rho _ r4811 r4812 r4813 r4814 r4815 (seg13_scp_node12_seg31 rho _ r4816 r4817 r4818 r4819 r4820 (seg13_scp_node12_seg32 rho _ r4821 r4822 r4823 r4824 r4825 (seg13_scp_node12_seg33 rho _ r4826 r4827 r4828 r4829 r4830 (seg13_scp_node12_seg34 rho _ r4831 r4832 r4833 r4834 r4835 (seg13_scp_node12_seg35 rho _ r4836 r4837 r4838 r4839 r4840 (seg13_scp_node12_seg36 rho _ r4841 r4842 r4843 r4844 r4845 (seg13_scp_node12_seg37 rho _ r4846 r4847 r4848 r4849 r4850 (seg13_scp_node12_seg38 rho _ r4851 r4852 r4853 r4854 r4855 (seg13_scp_node12_seg39 rho _ r4856 r4857 r4858 r4859 r4860 (seg13_scp_node12_seg40 rho _ r4861 r4862 r4863 r4864 r4865 (seg13_scp_node12_seg41 rho _ r4866 r4867 r4868 r4869 r4870 (seg13_scp_node12_seg42 rho _ r4871 r4872 r4873 r4874 r4875 (seg13_scp_node12_seg43 rho _ r4876 r4877 r4878 r4879 r4880 (seg13_scp_node12_seg44 rho _ r4881 r4882 r4883 r4884 r4885 (seg13_scp_node12_seg45 rho _ r4886 r4887 r4888 r4889 r4890 (seg13_scp_node12_seg46 rho _ r4891 r4892 r4893 r4894 r4895 (seg13_scp_node12_seg47 rho _ r4896 r4897 r4898 r4899 r4900 (seg13_scp_node12_seg48 rho _ r4901 r4902 r4903 r4904 r4905 (seg13_scp_node12_seg49 rho _ r4906 r4907 r4908 r4909 r4910 (seg13_scp_node12_seg50 rho _ r4911 r4912 r4913 r4914 r4915 (seg13_scp_node12_seg51 rho _ r4916 r4917 r4918 r4919 r4920 (seg13_scp_node12_seg52 rho _ r4921 r4922 r4923 r4924 r4925 (seg13_scp_node12_seg53 rho _ r4926 r4927 r4928 r4929 r4930 (seg13_scp_node12_seg54 rho _ r4931 r4932 r4933 r4934 r4935 (seg13_scp_node12_seg55 rho _ r4936 r4937 r4938 r4939 r4940 (seg13_scp_node12_seg56 rho _ r4941 r4942 r4943 r4944 r4945 (seg13_scp_node12_seg57 rho _ r4946 r4947 r4948 r4949 r4950 (seg13_scp_node12_seg58 rho _ r4951 r4952 r4953 r4954 r4955 (seg13_scp_node12_seg59 rho _ r4956 r4957 r4958 r4959 r4960 (seg13_scp_node12_seg60 rho _ r4961 r4962 r4963 r4964 r4965 (seg13_scp_node12_seg61 rho _ r4966 r4967 r4968 r4969 r4970 (seg13_scp_node12_seg62 rho _ r4971 r4972 r4973 r4974 r4975 (seg13_scp_node12_seg63 rho _ r4976 r4977 r4978 r4979 r4980 (seg13_scp_node12_seg64 rho _ r4981 r4982 r4983 r4984 r4985 (seg13_scp_node12_seg65 rho _ r4986 r4987 r4988 r4989 r4990 (seg13_scp_node12_seg66 rho _ r4991 r4992 r4993 r4994 r4995 (seg13_scp_node12_seg67 rho _ r4996 r4997 r4998 r4999 r5000 (seg13_scp_node12_seg68 rho _ r5001 r5002 r5003 r5004 r5005 (seg13_scp_node12_seg69 rho _ r5006 r5007 r5008 r5009 r5010 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.relation_sound_permSpec (rho 58) (rho 59) (rho 60) (rho 11820) (rho 11821) (rho 11822) (rho 11823) (rho 11824) (rho 11825) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.tctNode13DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.F) + (13 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode12Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

