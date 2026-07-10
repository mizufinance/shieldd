import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode12.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node12_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode12Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (13 : Seg13.F))
        (rho 58 + rho 12071) (rho 59 + rho 12072 + rho 12073)
        (rho 59 + rho 12074 + rho 12075) (rho 60 + rho 12076) := by
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
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.relation (rho 58) (rho 59) (rho 60) (rho 12071) (rho 12072) (rho 12073) (rho 12074) (rho 12075) (rho 12076)
      (fun o0 o1 o2 o3 o4 => o0 = rho 12406 ∧ o1 = rho 12411 ∧ o2 = rho 12416 ∧ o3 = rho 12421 ∧ o4 = rho 12426) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg0
    refine ⟨rho 12077, rho 12078, rho 12079, rho 12080, rho 12081,
      (by unfold Seg13.relationRow4661 at r4661; linear_combination r4661), (by unfold Seg13.relationRow4662 at r4662; linear_combination r4662), (by unfold Seg13.relationRow4663 at r4663; linear_combination r4663), (by unfold Seg13.relationRow4664 at r4664; linear_combination r4664), (by unfold Seg13.relationRow4665 at r4665; linear_combination r4665), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg1
    refine ⟨rho 12082, rho 12083, rho 12084, rho 12085, rho 12086,
      (by unfold Seg13.relationRow4666 at r4666; linear_combination r4666), (by unfold Seg13.relationRow4667 at r4667; linear_combination r4667), (by unfold Seg13.relationRow4668 at r4668; linear_combination r4668), (by unfold Seg13.relationRow4669 at r4669; linear_combination r4669), (by unfold Seg13.relationRow4670 at r4670; linear_combination r4670), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg2
    refine ⟨rho 12087, rho 12088, rho 12089, rho 12090, rho 12091,
      (by unfold Seg13.relationRow4671 at r4671; linear_combination r4671), (by unfold Seg13.relationRow4672 at r4672; linear_combination r4672), (by unfold Seg13.relationRow4673 at r4673; linear_combination r4673), (by unfold Seg13.relationRow4674 at r4674; linear_combination r4674), (by unfold Seg13.relationRow4675 at r4675; linear_combination r4675), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg3
    refine ⟨rho 12092, rho 12093, rho 12094, rho 12095, rho 12096,
      (by unfold Seg13.relationRow4676 at r4676; linear_combination r4676), (by unfold Seg13.relationRow4677 at r4677; linear_combination r4677), (by unfold Seg13.relationRow4678 at r4678; linear_combination r4678), (by unfold Seg13.relationRow4679 at r4679; linear_combination r4679), (by unfold Seg13.relationRow4680 at r4680; linear_combination r4680), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg4
    refine ⟨rho 12097, rho 12098, rho 12099, rho 12100, rho 12101,
      (by unfold Seg13.relationRow4681 at r4681; linear_combination r4681), (by unfold Seg13.relationRow4682 at r4682; linear_combination r4682), (by unfold Seg13.relationRow4683 at r4683; linear_combination r4683), (by unfold Seg13.relationRow4684 at r4684; linear_combination r4684), (by unfold Seg13.relationRow4685 at r4685; linear_combination r4685), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg5
    refine ⟨rho 12102, rho 12103, rho 12104, rho 12105, rho 12106,
      (by unfold Seg13.relationRow4686 at r4686; linear_combination r4686), (by unfold Seg13.relationRow4687 at r4687; linear_combination r4687), (by unfold Seg13.relationRow4688 at r4688; linear_combination r4688), (by unfold Seg13.relationRow4689 at r4689; linear_combination r4689), (by unfold Seg13.relationRow4690 at r4690; linear_combination r4690), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg6
    refine ⟨rho 12107, rho 12108, rho 12109, rho 12110, rho 12111,
      (by unfold Seg13.relationRow4691 at r4691; linear_combination r4691), (by unfold Seg13.relationRow4692 at r4692; linear_combination r4692), (by unfold Seg13.relationRow4693 at r4693; linear_combination r4693), (by unfold Seg13.relationRow4694 at r4694; linear_combination r4694), (by unfold Seg13.relationRow4695 at r4695; linear_combination r4695), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg7
    refine ⟨rho 12112, rho 12113, rho 12114, rho 12115, rho 12116,
      (by unfold Seg13.relationRow4696 at r4696; linear_combination r4696), (by unfold Seg13.relationRow4697 at r4697; linear_combination r4697), (by unfold Seg13.relationRow4698 at r4698; linear_combination r4698), (by unfold Seg13.relationRow4699 at r4699; linear_combination r4699), (by unfold Seg13.relationRow4700 at r4700; linear_combination r4700), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg8
    refine ⟨rho 12117, rho 12118, rho 12119, rho 12120, rho 12121,
      (by unfold Seg13.relationRow4701 at r4701; linear_combination r4701), (by unfold Seg13.relationRow4702 at r4702; linear_combination r4702), (by unfold Seg13.relationRow4703 at r4703; linear_combination r4703), (by unfold Seg13.relationRow4704 at r4704; linear_combination r4704), (by unfold Seg13.relationRow4705 at r4705; linear_combination r4705), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg9
    refine ⟨rho 12122, rho 12123, rho 12124, rho 12125, rho 12126,
      (by unfold Seg13.relationRow4706 at r4706; linear_combination r4706), (by unfold Seg13.relationRow4707 at r4707; linear_combination r4707), (by unfold Seg13.relationRow4708 at r4708; linear_combination r4708), (by unfold Seg13.relationRow4709 at r4709; linear_combination r4709), (by unfold Seg13.relationRow4710 at r4710; linear_combination r4710), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg10
    refine ⟨rho 12127, rho 12128, rho 12129, rho 12130, rho 12131,
      (by unfold Seg13.relationRow4711 at r4711; linear_combination r4711), (by unfold Seg13.relationRow4712 at r4712; linear_combination r4712), (by unfold Seg13.relationRow4713 at r4713; linear_combination r4713), (by unfold Seg13.relationRow4714 at r4714; linear_combination r4714), (by unfold Seg13.relationRow4715 at r4715; linear_combination r4715), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg11
    refine ⟨rho 12132, rho 12133, rho 12134, rho 12135, rho 12136,
      (by unfold Seg13.relationRow4716 at r4716; linear_combination r4716), (by unfold Seg13.relationRow4717 at r4717; linear_combination r4717), (by unfold Seg13.relationRow4718 at r4718; linear_combination r4718), (by unfold Seg13.relationRow4719 at r4719; linear_combination r4719), (by unfold Seg13.relationRow4720 at r4720; linear_combination r4720), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg12
    refine ⟨rho 12137, rho 12138, rho 12139, rho 12140, rho 12141,
      (by unfold Seg13.relationRow4721 at r4721; linear_combination r4721), (by unfold Seg13.relationRow4722 at r4722; linear_combination r4722), (by unfold Seg13.relationRow4723 at r4723; linear_combination r4723), (by unfold Seg13.relationRow4724 at r4724; linear_combination r4724), (by unfold Seg13.relationRow4725 at r4725; linear_combination r4725), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg13
    refine ⟨rho 12142, rho 12143, rho 12144, rho 12145, rho 12146,
      (by unfold Seg13.relationRow4726 at r4726; linear_combination r4726), (by unfold Seg13.relationRow4727 at r4727; linear_combination r4727), (by unfold Seg13.relationRow4728 at r4728; linear_combination r4728), (by unfold Seg13.relationRow4729 at r4729; linear_combination r4729), (by unfold Seg13.relationRow4730 at r4730; linear_combination r4730), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg14
    refine ⟨rho 12147, rho 12148, rho 12149, rho 12150, rho 12151,
      (by unfold Seg13.relationRow4731 at r4731; linear_combination r4731), (by unfold Seg13.relationRow4732 at r4732; linear_combination r4732), (by unfold Seg13.relationRow4733 at r4733; linear_combination r4733), (by unfold Seg13.relationRow4734 at r4734; linear_combination r4734), (by unfold Seg13.relationRow4735 at r4735; linear_combination r4735), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg15
    refine ⟨rho 12152, rho 12153, rho 12154, rho 12155, rho 12156,
      (by unfold Seg13.relationRow4736 at r4736; linear_combination r4736), (by unfold Seg13.relationRow4737 at r4737; linear_combination r4737), (by unfold Seg13.relationRow4738 at r4738; linear_combination r4738), (by unfold Seg13.relationRow4739 at r4739; linear_combination r4739), (by unfold Seg13.relationRow4740 at r4740; linear_combination r4740), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg16
    refine ⟨rho 12157, rho 12158, rho 12159, rho 12160, rho 12161,
      (by unfold Seg13.relationRow4741 at r4741; linear_combination r4741), (by unfold Seg13.relationRow4742 at r4742; linear_combination r4742), (by unfold Seg13.relationRow4743 at r4743; linear_combination r4743), (by unfold Seg13.relationRow4744 at r4744; linear_combination r4744), (by unfold Seg13.relationRow4745 at r4745; linear_combination r4745), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg17
    refine ⟨rho 12162, rho 12163, rho 12164, rho 12165, rho 12166,
      (by unfold Seg13.relationRow4746 at r4746; linear_combination r4746), (by unfold Seg13.relationRow4747 at r4747; linear_combination r4747), (by unfold Seg13.relationRow4748 at r4748; linear_combination r4748), (by unfold Seg13.relationRow4749 at r4749; linear_combination r4749), (by unfold Seg13.relationRow4750 at r4750; linear_combination r4750), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg18
    refine ⟨rho 12167, rho 12168, rho 12169, rho 12170, rho 12171,
      (by unfold Seg13.relationRow4751 at r4751; linear_combination r4751), (by unfold Seg13.relationRow4752 at r4752; linear_combination r4752), (by unfold Seg13.relationRow4753 at r4753; linear_combination r4753), (by unfold Seg13.relationRow4754 at r4754; linear_combination r4754), (by unfold Seg13.relationRow4755 at r4755; linear_combination r4755), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg19
    refine ⟨rho 12172, rho 12173, rho 12174, rho 12175, rho 12176,
      (by unfold Seg13.relationRow4756 at r4756; linear_combination r4756), (by unfold Seg13.relationRow4757 at r4757; linear_combination r4757), (by unfold Seg13.relationRow4758 at r4758; linear_combination r4758), (by unfold Seg13.relationRow4759 at r4759; linear_combination r4759), (by unfold Seg13.relationRow4760 at r4760; linear_combination r4760), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg20
    refine ⟨rho 12177, rho 12178, rho 12179, rho 12180, rho 12181,
      (by unfold Seg13.relationRow4761 at r4761; linear_combination r4761), (by unfold Seg13.relationRow4762 at r4762; linear_combination r4762), (by unfold Seg13.relationRow4763 at r4763; linear_combination r4763), (by unfold Seg13.relationRow4764 at r4764; linear_combination r4764), (by unfold Seg13.relationRow4765 at r4765; linear_combination r4765), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg21
    refine ⟨rho 12182, rho 12183, rho 12184, rho 12185, rho 12186,
      (by unfold Seg13.relationRow4766 at r4766; linear_combination r4766), (by unfold Seg13.relationRow4767 at r4767; linear_combination r4767), (by unfold Seg13.relationRow4768 at r4768; linear_combination r4768), (by unfold Seg13.relationRow4769 at r4769; linear_combination r4769), (by unfold Seg13.relationRow4770 at r4770; linear_combination r4770), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg22
    refine ⟨rho 12187, rho 12188, rho 12189, rho 12190, rho 12191,
      (by unfold Seg13.relationRow4771 at r4771; linear_combination r4771), (by unfold Seg13.relationRow4772 at r4772; linear_combination r4772), (by unfold Seg13.relationRow4773 at r4773; linear_combination r4773), (by unfold Seg13.relationRow4774 at r4774; linear_combination r4774), (by unfold Seg13.relationRow4775 at r4775; linear_combination r4775), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg23
    refine ⟨rho 12192, rho 12193, rho 12194, rho 12195, rho 12196,
      (by unfold Seg13.relationRow4776 at r4776; linear_combination r4776), (by unfold Seg13.relationRow4777 at r4777; linear_combination r4777), (by unfold Seg13.relationRow4778 at r4778; linear_combination r4778), (by unfold Seg13.relationRow4779 at r4779; linear_combination r4779), (by unfold Seg13.relationRow4780 at r4780; linear_combination r4780), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg24
    refine ⟨rho 12197, rho 12198, rho 12199, rho 12200, rho 12201,
      (by unfold Seg13.relationRow4781 at r4781; linear_combination r4781), (by unfold Seg13.relationRow4782 at r4782; linear_combination r4782), (by unfold Seg13.relationRow4783 at r4783; linear_combination r4783), (by unfold Seg13.relationRow4784 at r4784; linear_combination r4784), (by unfold Seg13.relationRow4785 at r4785; linear_combination r4785), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg25
    refine ⟨rho 12202, rho 12203, rho 12204, rho 12205, rho 12206,
      (by unfold Seg13.relationRow4786 at r4786; linear_combination r4786), (by unfold Seg13.relationRow4787 at r4787; linear_combination r4787), (by unfold Seg13.relationRow4788 at r4788; linear_combination r4788), (by unfold Seg13.relationRow4789 at r4789; linear_combination r4789), (by unfold Seg13.relationRow4790 at r4790; linear_combination r4790), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg26
    refine ⟨rho 12207, rho 12208, rho 12209, rho 12210, rho 12211,
      (by unfold Seg13.relationRow4791 at r4791; linear_combination r4791), (by unfold Seg13.relationRow4792 at r4792; linear_combination r4792), (by unfold Seg13.relationRow4793 at r4793; linear_combination r4793), (by unfold Seg13.relationRow4794 at r4794; linear_combination r4794), (by unfold Seg13.relationRow4795 at r4795; linear_combination r4795), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg27
    refine ⟨rho 12212, rho 12213, rho 12214, rho 12215, rho 12216,
      (by unfold Seg13.relationRow4796 at r4796; linear_combination r4796), (by unfold Seg13.relationRow4797 at r4797; linear_combination r4797), (by unfold Seg13.relationRow4798 at r4798; linear_combination r4798), (by unfold Seg13.relationRow4799 at r4799; linear_combination r4799), (by unfold Seg13.relationRow4800 at r4800; linear_combination r4800), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg28
    refine ⟨rho 12217, rho 12218, rho 12219, rho 12220, rho 12221,
      (by unfold Seg13.relationRow4801 at r4801; linear_combination r4801), (by unfold Seg13.relationRow4802 at r4802; linear_combination r4802), (by unfold Seg13.relationRow4803 at r4803; linear_combination r4803), (by unfold Seg13.relationRow4804 at r4804; linear_combination r4804), (by unfold Seg13.relationRow4805 at r4805; linear_combination r4805), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg29
    refine ⟨rho 12222, rho 12223, rho 12224, rho 12225, rho 12226,
      (by unfold Seg13.relationRow4806 at r4806; linear_combination r4806), (by unfold Seg13.relationRow4807 at r4807; linear_combination r4807), (by unfold Seg13.relationRow4808 at r4808; linear_combination r4808), (by unfold Seg13.relationRow4809 at r4809; linear_combination r4809), (by unfold Seg13.relationRow4810 at r4810; linear_combination r4810), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg30
    refine ⟨rho 12227, rho 12228, rho 12229, rho 12230, rho 12231,
      (by unfold Seg13.relationRow4811 at r4811; linear_combination r4811), (by unfold Seg13.relationRow4812 at r4812; linear_combination r4812), (by unfold Seg13.relationRow4813 at r4813; linear_combination r4813), (by unfold Seg13.relationRow4814 at r4814; linear_combination r4814), (by unfold Seg13.relationRow4815 at r4815; linear_combination r4815), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg31
    refine ⟨rho 12232, rho 12233, rho 12234, rho 12235, rho 12236,
      (by unfold Seg13.relationRow4816 at r4816; linear_combination r4816), (by unfold Seg13.relationRow4817 at r4817; linear_combination r4817), (by unfold Seg13.relationRow4818 at r4818; linear_combination r4818), (by unfold Seg13.relationRow4819 at r4819; linear_combination r4819), (by unfold Seg13.relationRow4820 at r4820; linear_combination r4820), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg32
    refine ⟨rho 12237, rho 12238, rho 12239, rho 12240, rho 12241,
      (by unfold Seg13.relationRow4821 at r4821; linear_combination r4821), (by unfold Seg13.relationRow4822 at r4822; linear_combination r4822), (by unfold Seg13.relationRow4823 at r4823; linear_combination r4823), (by unfold Seg13.relationRow4824 at r4824; linear_combination r4824), (by unfold Seg13.relationRow4825 at r4825; linear_combination r4825), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg33
    refine ⟨rho 12242, rho 12243, rho 12244, rho 12245, rho 12246,
      (by unfold Seg13.relationRow4826 at r4826; linear_combination r4826), (by unfold Seg13.relationRow4827 at r4827; linear_combination r4827), (by unfold Seg13.relationRow4828 at r4828; linear_combination r4828), (by unfold Seg13.relationRow4829 at r4829; linear_combination r4829), (by unfold Seg13.relationRow4830 at r4830; linear_combination r4830), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg34
    refine ⟨rho 12247, rho 12248, rho 12249, rho 12250, rho 12251,
      (by unfold Seg13.relationRow4831 at r4831; linear_combination r4831), (by unfold Seg13.relationRow4832 at r4832; linear_combination r4832), (by unfold Seg13.relationRow4833 at r4833; linear_combination r4833), (by unfold Seg13.relationRow4834 at r4834; linear_combination r4834), (by unfold Seg13.relationRow4835 at r4835; linear_combination r4835), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg35
    refine ⟨rho 12252, rho 12253, rho 12254, rho 12255, rho 12256,
      (by unfold Seg13.relationRow4836 at r4836; linear_combination r4836), (by unfold Seg13.relationRow4837 at r4837; linear_combination r4837), (by unfold Seg13.relationRow4838 at r4838; linear_combination r4838), (by unfold Seg13.relationRow4839 at r4839; linear_combination r4839), (by unfold Seg13.relationRow4840 at r4840; linear_combination r4840), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg36
    refine ⟨rho 12257, rho 12258, rho 12259, rho 12260, rho 12261,
      (by unfold Seg13.relationRow4841 at r4841; linear_combination r4841), (by unfold Seg13.relationRow4842 at r4842; linear_combination r4842), (by unfold Seg13.relationRow4843 at r4843; linear_combination r4843), (by unfold Seg13.relationRow4844 at r4844; linear_combination r4844), (by unfold Seg13.relationRow4845 at r4845; linear_combination r4845), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg37
    refine ⟨rho 12262, rho 12263, rho 12264, rho 12265, rho 12266,
      (by unfold Seg13.relationRow4846 at r4846; linear_combination r4846), (by unfold Seg13.relationRow4847 at r4847; linear_combination r4847), (by unfold Seg13.relationRow4848 at r4848; linear_combination r4848), (by unfold Seg13.relationRow4849 at r4849; linear_combination r4849), (by unfold Seg13.relationRow4850 at r4850; linear_combination r4850), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg38
    refine ⟨rho 12267, rho 12268, rho 12269, rho 12270, rho 12271,
      (by unfold Seg13.relationRow4851 at r4851; linear_combination r4851), (by unfold Seg13.relationRow4852 at r4852; linear_combination r4852), (by unfold Seg13.relationRow4853 at r4853; linear_combination r4853), (by unfold Seg13.relationRow4854 at r4854; linear_combination r4854), (by unfold Seg13.relationRow4855 at r4855; linear_combination r4855), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg39
    refine ⟨rho 12272, rho 12273, rho 12274, rho 12275, rho 12276,
      (by unfold Seg13.relationRow4856 at r4856; linear_combination r4856), (by unfold Seg13.relationRow4857 at r4857; linear_combination r4857), (by unfold Seg13.relationRow4858 at r4858; linear_combination r4858), (by unfold Seg13.relationRow4859 at r4859; linear_combination r4859), (by unfold Seg13.relationRow4860 at r4860; linear_combination r4860), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg40
    refine ⟨rho 12277, rho 12278, rho 12279, rho 12280, rho 12281,
      (by unfold Seg13.relationRow4861 at r4861; linear_combination r4861), (by unfold Seg13.relationRow4862 at r4862; linear_combination r4862), (by unfold Seg13.relationRow4863 at r4863; linear_combination r4863), (by unfold Seg13.relationRow4864 at r4864; linear_combination r4864), (by unfold Seg13.relationRow4865 at r4865; linear_combination r4865), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg41
    refine ⟨rho 12282, rho 12283, rho 12284, rho 12285, rho 12286,
      (by unfold Seg13.relationRow4866 at r4866; linear_combination r4866), (by unfold Seg13.relationRow4867 at r4867; linear_combination r4867), (by unfold Seg13.relationRow4868 at r4868; linear_combination r4868), (by unfold Seg13.relationRow4869 at r4869; linear_combination r4869), (by unfold Seg13.relationRow4870 at r4870; linear_combination r4870), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg42
    refine ⟨rho 12287, rho 12288, rho 12289, rho 12290, rho 12291,
      (by unfold Seg13.relationRow4871 at r4871; linear_combination r4871), (by unfold Seg13.relationRow4872 at r4872; linear_combination r4872), (by unfold Seg13.relationRow4873 at r4873; linear_combination r4873), (by unfold Seg13.relationRow4874 at r4874; linear_combination r4874), (by unfold Seg13.relationRow4875 at r4875; linear_combination r4875), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg43
    refine ⟨rho 12292, rho 12293, rho 12294, rho 12295, rho 12296,
      (by unfold Seg13.relationRow4876 at r4876; linear_combination r4876), (by unfold Seg13.relationRow4877 at r4877; linear_combination r4877), (by unfold Seg13.relationRow4878 at r4878; linear_combination r4878), (by unfold Seg13.relationRow4879 at r4879; linear_combination r4879), (by unfold Seg13.relationRow4880 at r4880; linear_combination r4880), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg44
    refine ⟨rho 12297, rho 12298, rho 12299, rho 12300, rho 12301,
      (by unfold Seg13.relationRow4881 at r4881; linear_combination r4881), (by unfold Seg13.relationRow4882 at r4882; linear_combination r4882), (by unfold Seg13.relationRow4883 at r4883; linear_combination r4883), (by unfold Seg13.relationRow4884 at r4884; linear_combination r4884), (by unfold Seg13.relationRow4885 at r4885; linear_combination r4885), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg45
    refine ⟨rho 12302, rho 12303, rho 12304, rho 12305, rho 12306,
      (by unfold Seg13.relationRow4886 at r4886; linear_combination r4886), (by unfold Seg13.relationRow4887 at r4887; linear_combination r4887), (by unfold Seg13.relationRow4888 at r4888; linear_combination r4888), (by unfold Seg13.relationRow4889 at r4889; linear_combination r4889), (by unfold Seg13.relationRow4890 at r4890; linear_combination r4890), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg46
    refine ⟨rho 12307, rho 12308, rho 12309, rho 12310, rho 12311,
      (by unfold Seg13.relationRow4891 at r4891; linear_combination r4891), (by unfold Seg13.relationRow4892 at r4892; linear_combination r4892), (by unfold Seg13.relationRow4893 at r4893; linear_combination r4893), (by unfold Seg13.relationRow4894 at r4894; linear_combination r4894), (by unfold Seg13.relationRow4895 at r4895; linear_combination r4895), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg47
    refine ⟨rho 12312, rho 12313, rho 12314, rho 12315, rho 12316,
      (by unfold Seg13.relationRow4896 at r4896; linear_combination r4896), (by unfold Seg13.relationRow4897 at r4897; linear_combination r4897), (by unfold Seg13.relationRow4898 at r4898; linear_combination r4898), (by unfold Seg13.relationRow4899 at r4899; linear_combination r4899), (by unfold Seg13.relationRow4900 at r4900; linear_combination r4900), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg48
    refine ⟨rho 12317, rho 12318, rho 12319, rho 12320, rho 12321,
      (by unfold Seg13.relationRow4901 at r4901; linear_combination r4901), (by unfold Seg13.relationRow4902 at r4902; linear_combination r4902), (by unfold Seg13.relationRow4903 at r4903; linear_combination r4903), (by unfold Seg13.relationRow4904 at r4904; linear_combination r4904), (by unfold Seg13.relationRow4905 at r4905; linear_combination r4905), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg49
    refine ⟨rho 12322, rho 12323, rho 12324, rho 12325, rho 12326,
      (by unfold Seg13.relationRow4906 at r4906; linear_combination r4906), (by unfold Seg13.relationRow4907 at r4907; linear_combination r4907), (by unfold Seg13.relationRow4908 at r4908; linear_combination r4908), (by unfold Seg13.relationRow4909 at r4909; linear_combination r4909), (by unfold Seg13.relationRow4910 at r4910; linear_combination r4910), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg50
    refine ⟨rho 12327, rho 12328, rho 12329, rho 12330, rho 12331,
      (by unfold Seg13.relationRow4911 at r4911; linear_combination r4911), (by unfold Seg13.relationRow4912 at r4912; linear_combination r4912), (by unfold Seg13.relationRow4913 at r4913; linear_combination r4913), (by unfold Seg13.relationRow4914 at r4914; linear_combination r4914), (by unfold Seg13.relationRow4915 at r4915; linear_combination r4915), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg51
    refine ⟨rho 12332, rho 12333, rho 12334, rho 12335, rho 12336,
      (by unfold Seg13.relationRow4916 at r4916; linear_combination r4916), (by unfold Seg13.relationRow4917 at r4917; linear_combination r4917), (by unfold Seg13.relationRow4918 at r4918; linear_combination r4918), (by unfold Seg13.relationRow4919 at r4919; linear_combination r4919), (by unfold Seg13.relationRow4920 at r4920; linear_combination r4920), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg52
    refine ⟨rho 12337, rho 12338, rho 12339, rho 12340, rho 12341,
      (by unfold Seg13.relationRow4921 at r4921; linear_combination r4921), (by unfold Seg13.relationRow4922 at r4922; linear_combination r4922), (by unfold Seg13.relationRow4923 at r4923; linear_combination r4923), (by unfold Seg13.relationRow4924 at r4924; linear_combination r4924), (by unfold Seg13.relationRow4925 at r4925; linear_combination r4925), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg53
    refine ⟨rho 12342, rho 12343, rho 12344, rho 12345, rho 12346,
      (by unfold Seg13.relationRow4926 at r4926; linear_combination r4926), (by unfold Seg13.relationRow4927 at r4927; linear_combination r4927), (by unfold Seg13.relationRow4928 at r4928; linear_combination r4928), (by unfold Seg13.relationRow4929 at r4929; linear_combination r4929), (by unfold Seg13.relationRow4930 at r4930; linear_combination r4930), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg54
    refine ⟨rho 12347, rho 12348, rho 12349, rho 12350, rho 12351,
      (by unfold Seg13.relationRow4931 at r4931; linear_combination r4931), (by unfold Seg13.relationRow4932 at r4932; linear_combination r4932), (by unfold Seg13.relationRow4933 at r4933; linear_combination r4933), (by unfold Seg13.relationRow4934 at r4934; linear_combination r4934), (by unfold Seg13.relationRow4935 at r4935; linear_combination r4935), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg55
    refine ⟨rho 12352, rho 12353, rho 12354, rho 12355, rho 12356,
      (by unfold Seg13.relationRow4936 at r4936; linear_combination r4936), (by unfold Seg13.relationRow4937 at r4937; linear_combination r4937), (by unfold Seg13.relationRow4938 at r4938; linear_combination r4938), (by unfold Seg13.relationRow4939 at r4939; linear_combination r4939), (by unfold Seg13.relationRow4940 at r4940; linear_combination r4940), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg56
    refine ⟨rho 12357, rho 12358, rho 12359, rho 12360, rho 12361,
      (by unfold Seg13.relationRow4941 at r4941; linear_combination r4941), (by unfold Seg13.relationRow4942 at r4942; linear_combination r4942), (by unfold Seg13.relationRow4943 at r4943; linear_combination r4943), (by unfold Seg13.relationRow4944 at r4944; linear_combination r4944), (by unfold Seg13.relationRow4945 at r4945; linear_combination r4945), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg57
    refine ⟨rho 12362, rho 12363, rho 12364, rho 12365, rho 12366,
      (by unfold Seg13.relationRow4946 at r4946; linear_combination r4946), (by unfold Seg13.relationRow4947 at r4947; linear_combination r4947), (by unfold Seg13.relationRow4948 at r4948; linear_combination r4948), (by unfold Seg13.relationRow4949 at r4949; linear_combination r4949), (by unfold Seg13.relationRow4950 at r4950; linear_combination r4950), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg58
    refine ⟨rho 12367, rho 12368, rho 12369, rho 12370, rho 12371,
      (by unfold Seg13.relationRow4951 at r4951; linear_combination r4951), (by unfold Seg13.relationRow4952 at r4952; linear_combination r4952), (by unfold Seg13.relationRow4953 at r4953; linear_combination r4953), (by unfold Seg13.relationRow4954 at r4954; linear_combination r4954), (by unfold Seg13.relationRow4955 at r4955; linear_combination r4955), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg59
    refine ⟨rho 12372, rho 12373, rho 12374, rho 12375, rho 12376,
      (by unfold Seg13.relationRow4956 at r4956; linear_combination r4956), (by unfold Seg13.relationRow4957 at r4957; linear_combination r4957), (by unfold Seg13.relationRow4958 at r4958; linear_combination r4958), (by unfold Seg13.relationRow4959 at r4959; linear_combination r4959), (by unfold Seg13.relationRow4960 at r4960; linear_combination r4960), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg60
    refine ⟨rho 12377, rho 12378, rho 12379, rho 12380, rho 12381,
      (by unfold Seg13.relationRow4961 at r4961; linear_combination r4961), (by unfold Seg13.relationRow4962 at r4962; linear_combination r4962), (by unfold Seg13.relationRow4963 at r4963; linear_combination r4963), (by unfold Seg13.relationRow4964 at r4964; linear_combination r4964), (by unfold Seg13.relationRow4965 at r4965; linear_combination r4965), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg61
    refine ⟨rho 12382, rho 12383, rho 12384, rho 12385, rho 12386,
      (by unfold Seg13.relationRow4966 at r4966; linear_combination r4966), (by unfold Seg13.relationRow4967 at r4967; linear_combination r4967), (by unfold Seg13.relationRow4968 at r4968; linear_combination r4968), (by unfold Seg13.relationRow4969 at r4969; linear_combination r4969), (by unfold Seg13.relationRow4970 at r4970; linear_combination r4970), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg62
    refine ⟨rho 12387, rho 12388, rho 12389, rho 12390, rho 12391,
      (by unfold Seg13.relationRow4971 at r4971; linear_combination r4971), (by unfold Seg13.relationRow4972 at r4972; linear_combination r4972), (by unfold Seg13.relationRow4973 at r4973; linear_combination r4973), (by unfold Seg13.relationRow4974 at r4974; linear_combination r4974), (by unfold Seg13.relationRow4975 at r4975; linear_combination r4975), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg63
    refine ⟨rho 12392, rho 12393, rho 12394, rho 12395, rho 12396,
      (by unfold Seg13.relationRow4976 at r4976; linear_combination r4976), (by unfold Seg13.relationRow4977 at r4977; linear_combination r4977), (by unfold Seg13.relationRow4978 at r4978; linear_combination r4978), (by unfold Seg13.relationRow4979 at r4979; linear_combination r4979), (by unfold Seg13.relationRow4980 at r4980; linear_combination r4980), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg64
    refine ⟨rho 12397, rho 12398, rho 12399, rho 12400, rho 12401,
      (by unfold Seg13.relationRow4981 at r4981; linear_combination r4981), (by unfold Seg13.relationRow4982 at r4982; linear_combination r4982), (by unfold Seg13.relationRow4983 at r4983; linear_combination r4983), (by unfold Seg13.relationRow4984 at r4984; linear_combination r4984), (by unfold Seg13.relationRow4985 at r4985; linear_combination r4985), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg65
    refine ⟨rho 12402, rho 12403, rho 12404, rho 12405, rho 12406,
      (by unfold Seg13.relationRow4986 at r4986; linear_combination r4986), (by unfold Seg13.relationRow4987 at r4987; linear_combination r4987), (by unfold Seg13.relationRow4988 at r4988; linear_combination r4988), (by unfold Seg13.relationRow4989 at r4989; linear_combination r4989), (by unfold Seg13.relationRow4990 at r4990; linear_combination r4990), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg66
    refine ⟨rho 12407, rho 12408, rho 12409, rho 12410, rho 12411,
      (by unfold Seg13.relationRow4991 at r4991; linear_combination r4991), (by unfold Seg13.relationRow4992 at r4992; linear_combination r4992), (by unfold Seg13.relationRow4993 at r4993; linear_combination r4993), (by unfold Seg13.relationRow4994 at r4994; linear_combination r4994), (by unfold Seg13.relationRow4995 at r4995; linear_combination r4995), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg67
    refine ⟨rho 12412, rho 12413, rho 12414, rho 12415, rho 12416,
      (by unfold Seg13.relationRow4996 at r4996; linear_combination r4996), (by unfold Seg13.relationRow4997 at r4997; linear_combination r4997), (by unfold Seg13.relationRow4998 at r4998; linear_combination r4998), (by unfold Seg13.relationRow4999 at r4999; linear_combination r4999), (by unfold Seg13.relationRow5000 at r5000; linear_combination r5000), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg68
    refine ⟨rho 12417, rho 12418, rho 12419, rho 12420, rho 12421,
      (by unfold Seg13.relationRow5001 at r5001; linear_combination r5001), (by unfold Seg13.relationRow5002 at r5002; linear_combination r5002), (by unfold Seg13.relationRow5003 at r5003; linear_combination r5003), (by unfold Seg13.relationRow5004 at r5004; linear_combination r5004), (by unfold Seg13.relationRow5005 at r5005; linear_combination r5005), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg69
    refine ⟨rho 12422, rho 12423, rho 12424, rho 12425, rho 12426,
      (by unfold Seg13.relationRow5006 at r5006; linear_combination r5006), (by unfold Seg13.relationRow5007 at r5007; linear_combination r5007), (by unfold Seg13.relationRow5008 at r5008; linear_combination r5008), (by unfold Seg13.relationRow5009 at r5009; linear_combination r5009), (by unfold Seg13.relationRow5010 at r5010; linear_combination r5010), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.relation_sound_permSpec (rho 58) (rho 59) (rho 60) (rho 12071) (rho 12072) (rho 12073) (rho 12074) (rho 12075) (rho 12076) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.tctNode13DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.F) + (13 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode12Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

