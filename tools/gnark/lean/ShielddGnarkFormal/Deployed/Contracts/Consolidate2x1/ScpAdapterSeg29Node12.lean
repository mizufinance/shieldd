import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg29Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode12.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg29_scp_node12_eq (rho : Nat -> Seg29.F) (h : Seg29.relation rho) :
    seg29ScpNode12Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg29.F) + (13 : Seg29.F))
        (rho 148 + rho 24955) (rho 149 + rho 24956 + rho 24957)
        (rho 149 + rho 24958 + rho 24959) (rho 150 + rho 24960) := by
  unfold Seg29.relation at h
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
  unfold Seg29.relationPart58 at p58
  rcases p58 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4661, r4662, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩
  unfold Seg29.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760, r4761, r4762, r4763, r4764, r4765, r4766, r4767, r4768, r4769, r4770, r4771, r4772, r4773, r4774, r4775, r4776, r4777, r4778, r4779, r4780, r4781, r4782, r4783, r4784, r4785, r4786, r4787, r4788, r4789, r4790, r4791, r4792, r4793, r4794, r4795, r4796, r4797, r4798, r4799⟩
  unfold Seg29.relationPart60 at p60
  rcases p60 with ⟨r4800, r4801, r4802, r4803, r4804, r4805, r4806, r4807, r4808, r4809, r4810, r4811, r4812, r4813, r4814, r4815, r4816, r4817, r4818, r4819, r4820, r4821, r4822, r4823, r4824, r4825, r4826, r4827, r4828, r4829, r4830, r4831, r4832, r4833, r4834, r4835, r4836, r4837, r4838, r4839, r4840, r4841, r4842, r4843, r4844, r4845, r4846, r4847, r4848, r4849, r4850, r4851, r4852, r4853, r4854, r4855, r4856, r4857, r4858, r4859, r4860, r4861, r4862, r4863, r4864, r4865, r4866, r4867, r4868, r4869, r4870, r4871, r4872, r4873, r4874, r4875, r4876, r4877, r4878, r4879⟩
  unfold Seg29.relationPart61 at p61
  rcases p61 with ⟨r4880, r4881, r4882, r4883, r4884, r4885, r4886, r4887, r4888, r4889, r4890, r4891, r4892, r4893, r4894, r4895, r4896, r4897, r4898, r4899, r4900, r4901, r4902, r4903, r4904, r4905, r4906, r4907, r4908, r4909, r4910, r4911, r4912, r4913, r4914, r4915, r4916, r4917, r4918, r4919, r4920, r4921, r4922, r4923, r4924, r4925, r4926, r4927, r4928, r4929, r4930, r4931, r4932, r4933, r4934, r4935, r4936, r4937, r4938, r4939, r4940, r4941, r4942, r4943, r4944, r4945, r4946, r4947, r4948, r4949, r4950, r4951, r4952, r4953, r4954, r4955, r4956, r4957, r4958, r4959⟩
  unfold Seg29.relationPart62 at p62
  rcases p62 with ⟨r4960, r4961, r4962, r4963, r4964, r4965, r4966, r4967, r4968, r4969, r4970, r4971, r4972, r4973, r4974, r4975, r4976, r4977, r4978, r4979, r4980, r4981, r4982, r4983, r4984, r4985, r4986, r4987, r4988, r4989, r4990, r4991, r4992, r4993, r4994, r4995, r4996, r4997, r4998, r4999, r5000, r5001, r5002, r5003, r5004, r5005, r5006, r5007, r5008, r5009, r5010, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.relation (rho 148) (rho 149) (rho 150) (rho 24955) (rho 24956) (rho 24957) (rho 24958) (rho 24959) (rho 24960)
      (fun o0 o1 o2 o3 o4 => o0 = rho 25290 ∧ o1 = rho 25295 ∧ o2 = rho 25300 ∧ o3 = rho 25305 ∧ o4 = rho 25310) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg0
    refine ⟨rho 24961, rho 24962, rho 24963, rho 24964, rho 24965,
      (by unfold Seg29.relationRow4661 at r4661; linear_combination r4661), (by unfold Seg29.relationRow4662 at r4662; linear_combination r4662), (by unfold Seg29.relationRow4663 at r4663; linear_combination r4663), (by unfold Seg29.relationRow4664 at r4664; linear_combination r4664), (by unfold Seg29.relationRow4665 at r4665; linear_combination r4665), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg1
    refine ⟨rho 24966, rho 24967, rho 24968, rho 24969, rho 24970,
      (by unfold Seg29.relationRow4666 at r4666; linear_combination r4666), (by unfold Seg29.relationRow4667 at r4667; linear_combination r4667), (by unfold Seg29.relationRow4668 at r4668; linear_combination r4668), (by unfold Seg29.relationRow4669 at r4669; linear_combination r4669), (by unfold Seg29.relationRow4670 at r4670; linear_combination r4670), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg2
    refine ⟨rho 24971, rho 24972, rho 24973, rho 24974, rho 24975,
      (by unfold Seg29.relationRow4671 at r4671; linear_combination r4671), (by unfold Seg29.relationRow4672 at r4672; linear_combination r4672), (by unfold Seg29.relationRow4673 at r4673; linear_combination r4673), (by unfold Seg29.relationRow4674 at r4674; linear_combination r4674), (by unfold Seg29.relationRow4675 at r4675; linear_combination r4675), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg3
    refine ⟨rho 24976, rho 24977, rho 24978, rho 24979, rho 24980,
      (by unfold Seg29.relationRow4676 at r4676; linear_combination r4676), (by unfold Seg29.relationRow4677 at r4677; linear_combination r4677), (by unfold Seg29.relationRow4678 at r4678; linear_combination r4678), (by unfold Seg29.relationRow4679 at r4679; linear_combination r4679), (by unfold Seg29.relationRow4680 at r4680; linear_combination r4680), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg4
    refine ⟨rho 24981, rho 24982, rho 24983, rho 24984, rho 24985,
      (by unfold Seg29.relationRow4681 at r4681; linear_combination r4681), (by unfold Seg29.relationRow4682 at r4682; linear_combination r4682), (by unfold Seg29.relationRow4683 at r4683; linear_combination r4683), (by unfold Seg29.relationRow4684 at r4684; linear_combination r4684), (by unfold Seg29.relationRow4685 at r4685; linear_combination r4685), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg5
    refine ⟨rho 24986, rho 24987, rho 24988, rho 24989, rho 24990,
      (by unfold Seg29.relationRow4686 at r4686; linear_combination r4686), (by unfold Seg29.relationRow4687 at r4687; linear_combination r4687), (by unfold Seg29.relationRow4688 at r4688; linear_combination r4688), (by unfold Seg29.relationRow4689 at r4689; linear_combination r4689), (by unfold Seg29.relationRow4690 at r4690; linear_combination r4690), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg6
    refine ⟨rho 24991, rho 24992, rho 24993, rho 24994, rho 24995,
      (by unfold Seg29.relationRow4691 at r4691; linear_combination r4691), (by unfold Seg29.relationRow4692 at r4692; linear_combination r4692), (by unfold Seg29.relationRow4693 at r4693; linear_combination r4693), (by unfold Seg29.relationRow4694 at r4694; linear_combination r4694), (by unfold Seg29.relationRow4695 at r4695; linear_combination r4695), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg7
    refine ⟨rho 24996, rho 24997, rho 24998, rho 24999, rho 25000,
      (by unfold Seg29.relationRow4696 at r4696; linear_combination r4696), (by unfold Seg29.relationRow4697 at r4697; linear_combination r4697), (by unfold Seg29.relationRow4698 at r4698; linear_combination r4698), (by unfold Seg29.relationRow4699 at r4699; linear_combination r4699), (by unfold Seg29.relationRow4700 at r4700; linear_combination r4700), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg8
    refine ⟨rho 25001, rho 25002, rho 25003, rho 25004, rho 25005,
      (by unfold Seg29.relationRow4701 at r4701; linear_combination r4701), (by unfold Seg29.relationRow4702 at r4702; linear_combination r4702), (by unfold Seg29.relationRow4703 at r4703; linear_combination r4703), (by unfold Seg29.relationRow4704 at r4704; linear_combination r4704), (by unfold Seg29.relationRow4705 at r4705; linear_combination r4705), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg9
    refine ⟨rho 25006, rho 25007, rho 25008, rho 25009, rho 25010,
      (by unfold Seg29.relationRow4706 at r4706; linear_combination r4706), (by unfold Seg29.relationRow4707 at r4707; linear_combination r4707), (by unfold Seg29.relationRow4708 at r4708; linear_combination r4708), (by unfold Seg29.relationRow4709 at r4709; linear_combination r4709), (by unfold Seg29.relationRow4710 at r4710; linear_combination r4710), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg10
    refine ⟨rho 25011, rho 25012, rho 25013, rho 25014, rho 25015,
      (by unfold Seg29.relationRow4711 at r4711; linear_combination r4711), (by unfold Seg29.relationRow4712 at r4712; linear_combination r4712), (by unfold Seg29.relationRow4713 at r4713; linear_combination r4713), (by unfold Seg29.relationRow4714 at r4714; linear_combination r4714), (by unfold Seg29.relationRow4715 at r4715; linear_combination r4715), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg11
    refine ⟨rho 25016, rho 25017, rho 25018, rho 25019, rho 25020,
      (by unfold Seg29.relationRow4716 at r4716; linear_combination r4716), (by unfold Seg29.relationRow4717 at r4717; linear_combination r4717), (by unfold Seg29.relationRow4718 at r4718; linear_combination r4718), (by unfold Seg29.relationRow4719 at r4719; linear_combination r4719), (by unfold Seg29.relationRow4720 at r4720; linear_combination r4720), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg12
    refine ⟨rho 25021, rho 25022, rho 25023, rho 25024, rho 25025,
      (by unfold Seg29.relationRow4721 at r4721; linear_combination r4721), (by unfold Seg29.relationRow4722 at r4722; linear_combination r4722), (by unfold Seg29.relationRow4723 at r4723; linear_combination r4723), (by unfold Seg29.relationRow4724 at r4724; linear_combination r4724), (by unfold Seg29.relationRow4725 at r4725; linear_combination r4725), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg13
    refine ⟨rho 25026, rho 25027, rho 25028, rho 25029, rho 25030,
      (by unfold Seg29.relationRow4726 at r4726; linear_combination r4726), (by unfold Seg29.relationRow4727 at r4727; linear_combination r4727), (by unfold Seg29.relationRow4728 at r4728; linear_combination r4728), (by unfold Seg29.relationRow4729 at r4729; linear_combination r4729), (by unfold Seg29.relationRow4730 at r4730; linear_combination r4730), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg14
    refine ⟨rho 25031, rho 25032, rho 25033, rho 25034, rho 25035,
      (by unfold Seg29.relationRow4731 at r4731; linear_combination r4731), (by unfold Seg29.relationRow4732 at r4732; linear_combination r4732), (by unfold Seg29.relationRow4733 at r4733; linear_combination r4733), (by unfold Seg29.relationRow4734 at r4734; linear_combination r4734), (by unfold Seg29.relationRow4735 at r4735; linear_combination r4735), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg15
    refine ⟨rho 25036, rho 25037, rho 25038, rho 25039, rho 25040,
      (by unfold Seg29.relationRow4736 at r4736; linear_combination r4736), (by unfold Seg29.relationRow4737 at r4737; linear_combination r4737), (by unfold Seg29.relationRow4738 at r4738; linear_combination r4738), (by unfold Seg29.relationRow4739 at r4739; linear_combination r4739), (by unfold Seg29.relationRow4740 at r4740; linear_combination r4740), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg16
    refine ⟨rho 25041, rho 25042, rho 25043, rho 25044, rho 25045,
      (by unfold Seg29.relationRow4741 at r4741; linear_combination r4741), (by unfold Seg29.relationRow4742 at r4742; linear_combination r4742), (by unfold Seg29.relationRow4743 at r4743; linear_combination r4743), (by unfold Seg29.relationRow4744 at r4744; linear_combination r4744), (by unfold Seg29.relationRow4745 at r4745; linear_combination r4745), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg17
    refine ⟨rho 25046, rho 25047, rho 25048, rho 25049, rho 25050,
      (by unfold Seg29.relationRow4746 at r4746; linear_combination r4746), (by unfold Seg29.relationRow4747 at r4747; linear_combination r4747), (by unfold Seg29.relationRow4748 at r4748; linear_combination r4748), (by unfold Seg29.relationRow4749 at r4749; linear_combination r4749), (by unfold Seg29.relationRow4750 at r4750; linear_combination r4750), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg18
    refine ⟨rho 25051, rho 25052, rho 25053, rho 25054, rho 25055,
      (by unfold Seg29.relationRow4751 at r4751; linear_combination r4751), (by unfold Seg29.relationRow4752 at r4752; linear_combination r4752), (by unfold Seg29.relationRow4753 at r4753; linear_combination r4753), (by unfold Seg29.relationRow4754 at r4754; linear_combination r4754), (by unfold Seg29.relationRow4755 at r4755; linear_combination r4755), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg19
    refine ⟨rho 25056, rho 25057, rho 25058, rho 25059, rho 25060,
      (by unfold Seg29.relationRow4756 at r4756; linear_combination r4756), (by unfold Seg29.relationRow4757 at r4757; linear_combination r4757), (by unfold Seg29.relationRow4758 at r4758; linear_combination r4758), (by unfold Seg29.relationRow4759 at r4759; linear_combination r4759), (by unfold Seg29.relationRow4760 at r4760; linear_combination r4760), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg20
    refine ⟨rho 25061, rho 25062, rho 25063, rho 25064, rho 25065,
      (by unfold Seg29.relationRow4761 at r4761; linear_combination r4761), (by unfold Seg29.relationRow4762 at r4762; linear_combination r4762), (by unfold Seg29.relationRow4763 at r4763; linear_combination r4763), (by unfold Seg29.relationRow4764 at r4764; linear_combination r4764), (by unfold Seg29.relationRow4765 at r4765; linear_combination r4765), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg21
    refine ⟨rho 25066, rho 25067, rho 25068, rho 25069, rho 25070,
      (by unfold Seg29.relationRow4766 at r4766; linear_combination r4766), (by unfold Seg29.relationRow4767 at r4767; linear_combination r4767), (by unfold Seg29.relationRow4768 at r4768; linear_combination r4768), (by unfold Seg29.relationRow4769 at r4769; linear_combination r4769), (by unfold Seg29.relationRow4770 at r4770; linear_combination r4770), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg22
    refine ⟨rho 25071, rho 25072, rho 25073, rho 25074, rho 25075,
      (by unfold Seg29.relationRow4771 at r4771; linear_combination r4771), (by unfold Seg29.relationRow4772 at r4772; linear_combination r4772), (by unfold Seg29.relationRow4773 at r4773; linear_combination r4773), (by unfold Seg29.relationRow4774 at r4774; linear_combination r4774), (by unfold Seg29.relationRow4775 at r4775; linear_combination r4775), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg23
    refine ⟨rho 25076, rho 25077, rho 25078, rho 25079, rho 25080,
      (by unfold Seg29.relationRow4776 at r4776; linear_combination r4776), (by unfold Seg29.relationRow4777 at r4777; linear_combination r4777), (by unfold Seg29.relationRow4778 at r4778; linear_combination r4778), (by unfold Seg29.relationRow4779 at r4779; linear_combination r4779), (by unfold Seg29.relationRow4780 at r4780; linear_combination r4780), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg24
    refine ⟨rho 25081, rho 25082, rho 25083, rho 25084, rho 25085,
      (by unfold Seg29.relationRow4781 at r4781; linear_combination r4781), (by unfold Seg29.relationRow4782 at r4782; linear_combination r4782), (by unfold Seg29.relationRow4783 at r4783; linear_combination r4783), (by unfold Seg29.relationRow4784 at r4784; linear_combination r4784), (by unfold Seg29.relationRow4785 at r4785; linear_combination r4785), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg25
    refine ⟨rho 25086, rho 25087, rho 25088, rho 25089, rho 25090,
      (by unfold Seg29.relationRow4786 at r4786; linear_combination r4786), (by unfold Seg29.relationRow4787 at r4787; linear_combination r4787), (by unfold Seg29.relationRow4788 at r4788; linear_combination r4788), (by unfold Seg29.relationRow4789 at r4789; linear_combination r4789), (by unfold Seg29.relationRow4790 at r4790; linear_combination r4790), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg26
    refine ⟨rho 25091, rho 25092, rho 25093, rho 25094, rho 25095,
      (by unfold Seg29.relationRow4791 at r4791; linear_combination r4791), (by unfold Seg29.relationRow4792 at r4792; linear_combination r4792), (by unfold Seg29.relationRow4793 at r4793; linear_combination r4793), (by unfold Seg29.relationRow4794 at r4794; linear_combination r4794), (by unfold Seg29.relationRow4795 at r4795; linear_combination r4795), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg27
    refine ⟨rho 25096, rho 25097, rho 25098, rho 25099, rho 25100,
      (by unfold Seg29.relationRow4796 at r4796; linear_combination r4796), (by unfold Seg29.relationRow4797 at r4797; linear_combination r4797), (by unfold Seg29.relationRow4798 at r4798; linear_combination r4798), (by unfold Seg29.relationRow4799 at r4799; linear_combination r4799), (by unfold Seg29.relationRow4800 at r4800; linear_combination r4800), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg28
    refine ⟨rho 25101, rho 25102, rho 25103, rho 25104, rho 25105,
      (by unfold Seg29.relationRow4801 at r4801; linear_combination r4801), (by unfold Seg29.relationRow4802 at r4802; linear_combination r4802), (by unfold Seg29.relationRow4803 at r4803; linear_combination r4803), (by unfold Seg29.relationRow4804 at r4804; linear_combination r4804), (by unfold Seg29.relationRow4805 at r4805; linear_combination r4805), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg29
    refine ⟨rho 25106, rho 25107, rho 25108, rho 25109, rho 25110,
      (by unfold Seg29.relationRow4806 at r4806; linear_combination r4806), (by unfold Seg29.relationRow4807 at r4807; linear_combination r4807), (by unfold Seg29.relationRow4808 at r4808; linear_combination r4808), (by unfold Seg29.relationRow4809 at r4809; linear_combination r4809), (by unfold Seg29.relationRow4810 at r4810; linear_combination r4810), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg30
    refine ⟨rho 25111, rho 25112, rho 25113, rho 25114, rho 25115,
      (by unfold Seg29.relationRow4811 at r4811; linear_combination r4811), (by unfold Seg29.relationRow4812 at r4812; linear_combination r4812), (by unfold Seg29.relationRow4813 at r4813; linear_combination r4813), (by unfold Seg29.relationRow4814 at r4814; linear_combination r4814), (by unfold Seg29.relationRow4815 at r4815; linear_combination r4815), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg31
    refine ⟨rho 25116, rho 25117, rho 25118, rho 25119, rho 25120,
      (by unfold Seg29.relationRow4816 at r4816; linear_combination r4816), (by unfold Seg29.relationRow4817 at r4817; linear_combination r4817), (by unfold Seg29.relationRow4818 at r4818; linear_combination r4818), (by unfold Seg29.relationRow4819 at r4819; linear_combination r4819), (by unfold Seg29.relationRow4820 at r4820; linear_combination r4820), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg32
    refine ⟨rho 25121, rho 25122, rho 25123, rho 25124, rho 25125,
      (by unfold Seg29.relationRow4821 at r4821; linear_combination r4821), (by unfold Seg29.relationRow4822 at r4822; linear_combination r4822), (by unfold Seg29.relationRow4823 at r4823; linear_combination r4823), (by unfold Seg29.relationRow4824 at r4824; linear_combination r4824), (by unfold Seg29.relationRow4825 at r4825; linear_combination r4825), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg33
    refine ⟨rho 25126, rho 25127, rho 25128, rho 25129, rho 25130,
      (by unfold Seg29.relationRow4826 at r4826; linear_combination r4826), (by unfold Seg29.relationRow4827 at r4827; linear_combination r4827), (by unfold Seg29.relationRow4828 at r4828; linear_combination r4828), (by unfold Seg29.relationRow4829 at r4829; linear_combination r4829), (by unfold Seg29.relationRow4830 at r4830; linear_combination r4830), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg34
    refine ⟨rho 25131, rho 25132, rho 25133, rho 25134, rho 25135,
      (by unfold Seg29.relationRow4831 at r4831; linear_combination r4831), (by unfold Seg29.relationRow4832 at r4832; linear_combination r4832), (by unfold Seg29.relationRow4833 at r4833; linear_combination r4833), (by unfold Seg29.relationRow4834 at r4834; linear_combination r4834), (by unfold Seg29.relationRow4835 at r4835; linear_combination r4835), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg35
    refine ⟨rho 25136, rho 25137, rho 25138, rho 25139, rho 25140,
      (by unfold Seg29.relationRow4836 at r4836; linear_combination r4836), (by unfold Seg29.relationRow4837 at r4837; linear_combination r4837), (by unfold Seg29.relationRow4838 at r4838; linear_combination r4838), (by unfold Seg29.relationRow4839 at r4839; linear_combination r4839), (by unfold Seg29.relationRow4840 at r4840; linear_combination r4840), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg36
    refine ⟨rho 25141, rho 25142, rho 25143, rho 25144, rho 25145,
      (by unfold Seg29.relationRow4841 at r4841; linear_combination r4841), (by unfold Seg29.relationRow4842 at r4842; linear_combination r4842), (by unfold Seg29.relationRow4843 at r4843; linear_combination r4843), (by unfold Seg29.relationRow4844 at r4844; linear_combination r4844), (by unfold Seg29.relationRow4845 at r4845; linear_combination r4845), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg37
    refine ⟨rho 25146, rho 25147, rho 25148, rho 25149, rho 25150,
      (by unfold Seg29.relationRow4846 at r4846; linear_combination r4846), (by unfold Seg29.relationRow4847 at r4847; linear_combination r4847), (by unfold Seg29.relationRow4848 at r4848; linear_combination r4848), (by unfold Seg29.relationRow4849 at r4849; linear_combination r4849), (by unfold Seg29.relationRow4850 at r4850; linear_combination r4850), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg38
    refine ⟨rho 25151, rho 25152, rho 25153, rho 25154, rho 25155,
      (by unfold Seg29.relationRow4851 at r4851; linear_combination r4851), (by unfold Seg29.relationRow4852 at r4852; linear_combination r4852), (by unfold Seg29.relationRow4853 at r4853; linear_combination r4853), (by unfold Seg29.relationRow4854 at r4854; linear_combination r4854), (by unfold Seg29.relationRow4855 at r4855; linear_combination r4855), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg39
    refine ⟨rho 25156, rho 25157, rho 25158, rho 25159, rho 25160,
      (by unfold Seg29.relationRow4856 at r4856; linear_combination r4856), (by unfold Seg29.relationRow4857 at r4857; linear_combination r4857), (by unfold Seg29.relationRow4858 at r4858; linear_combination r4858), (by unfold Seg29.relationRow4859 at r4859; linear_combination r4859), (by unfold Seg29.relationRow4860 at r4860; linear_combination r4860), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg40
    refine ⟨rho 25161, rho 25162, rho 25163, rho 25164, rho 25165,
      (by unfold Seg29.relationRow4861 at r4861; linear_combination r4861), (by unfold Seg29.relationRow4862 at r4862; linear_combination r4862), (by unfold Seg29.relationRow4863 at r4863; linear_combination r4863), (by unfold Seg29.relationRow4864 at r4864; linear_combination r4864), (by unfold Seg29.relationRow4865 at r4865; linear_combination r4865), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg41
    refine ⟨rho 25166, rho 25167, rho 25168, rho 25169, rho 25170,
      (by unfold Seg29.relationRow4866 at r4866; linear_combination r4866), (by unfold Seg29.relationRow4867 at r4867; linear_combination r4867), (by unfold Seg29.relationRow4868 at r4868; linear_combination r4868), (by unfold Seg29.relationRow4869 at r4869; linear_combination r4869), (by unfold Seg29.relationRow4870 at r4870; linear_combination r4870), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg42
    refine ⟨rho 25171, rho 25172, rho 25173, rho 25174, rho 25175,
      (by unfold Seg29.relationRow4871 at r4871; linear_combination r4871), (by unfold Seg29.relationRow4872 at r4872; linear_combination r4872), (by unfold Seg29.relationRow4873 at r4873; linear_combination r4873), (by unfold Seg29.relationRow4874 at r4874; linear_combination r4874), (by unfold Seg29.relationRow4875 at r4875; linear_combination r4875), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg43
    refine ⟨rho 25176, rho 25177, rho 25178, rho 25179, rho 25180,
      (by unfold Seg29.relationRow4876 at r4876; linear_combination r4876), (by unfold Seg29.relationRow4877 at r4877; linear_combination r4877), (by unfold Seg29.relationRow4878 at r4878; linear_combination r4878), (by unfold Seg29.relationRow4879 at r4879; linear_combination r4879), (by unfold Seg29.relationRow4880 at r4880; linear_combination r4880), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg44
    refine ⟨rho 25181, rho 25182, rho 25183, rho 25184, rho 25185,
      (by unfold Seg29.relationRow4881 at r4881; linear_combination r4881), (by unfold Seg29.relationRow4882 at r4882; linear_combination r4882), (by unfold Seg29.relationRow4883 at r4883; linear_combination r4883), (by unfold Seg29.relationRow4884 at r4884; linear_combination r4884), (by unfold Seg29.relationRow4885 at r4885; linear_combination r4885), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg45
    refine ⟨rho 25186, rho 25187, rho 25188, rho 25189, rho 25190,
      (by unfold Seg29.relationRow4886 at r4886; linear_combination r4886), (by unfold Seg29.relationRow4887 at r4887; linear_combination r4887), (by unfold Seg29.relationRow4888 at r4888; linear_combination r4888), (by unfold Seg29.relationRow4889 at r4889; linear_combination r4889), (by unfold Seg29.relationRow4890 at r4890; linear_combination r4890), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg46
    refine ⟨rho 25191, rho 25192, rho 25193, rho 25194, rho 25195,
      (by unfold Seg29.relationRow4891 at r4891; linear_combination r4891), (by unfold Seg29.relationRow4892 at r4892; linear_combination r4892), (by unfold Seg29.relationRow4893 at r4893; linear_combination r4893), (by unfold Seg29.relationRow4894 at r4894; linear_combination r4894), (by unfold Seg29.relationRow4895 at r4895; linear_combination r4895), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg47
    refine ⟨rho 25196, rho 25197, rho 25198, rho 25199, rho 25200,
      (by unfold Seg29.relationRow4896 at r4896; linear_combination r4896), (by unfold Seg29.relationRow4897 at r4897; linear_combination r4897), (by unfold Seg29.relationRow4898 at r4898; linear_combination r4898), (by unfold Seg29.relationRow4899 at r4899; linear_combination r4899), (by unfold Seg29.relationRow4900 at r4900; linear_combination r4900), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg48
    refine ⟨rho 25201, rho 25202, rho 25203, rho 25204, rho 25205,
      (by unfold Seg29.relationRow4901 at r4901; linear_combination r4901), (by unfold Seg29.relationRow4902 at r4902; linear_combination r4902), (by unfold Seg29.relationRow4903 at r4903; linear_combination r4903), (by unfold Seg29.relationRow4904 at r4904; linear_combination r4904), (by unfold Seg29.relationRow4905 at r4905; linear_combination r4905), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg49
    refine ⟨rho 25206, rho 25207, rho 25208, rho 25209, rho 25210,
      (by unfold Seg29.relationRow4906 at r4906; linear_combination r4906), (by unfold Seg29.relationRow4907 at r4907; linear_combination r4907), (by unfold Seg29.relationRow4908 at r4908; linear_combination r4908), (by unfold Seg29.relationRow4909 at r4909; linear_combination r4909), (by unfold Seg29.relationRow4910 at r4910; linear_combination r4910), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg50
    refine ⟨rho 25211, rho 25212, rho 25213, rho 25214, rho 25215,
      (by unfold Seg29.relationRow4911 at r4911; linear_combination r4911), (by unfold Seg29.relationRow4912 at r4912; linear_combination r4912), (by unfold Seg29.relationRow4913 at r4913; linear_combination r4913), (by unfold Seg29.relationRow4914 at r4914; linear_combination r4914), (by unfold Seg29.relationRow4915 at r4915; linear_combination r4915), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg51
    refine ⟨rho 25216, rho 25217, rho 25218, rho 25219, rho 25220,
      (by unfold Seg29.relationRow4916 at r4916; linear_combination r4916), (by unfold Seg29.relationRow4917 at r4917; linear_combination r4917), (by unfold Seg29.relationRow4918 at r4918; linear_combination r4918), (by unfold Seg29.relationRow4919 at r4919; linear_combination r4919), (by unfold Seg29.relationRow4920 at r4920; linear_combination r4920), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg52
    refine ⟨rho 25221, rho 25222, rho 25223, rho 25224, rho 25225,
      (by unfold Seg29.relationRow4921 at r4921; linear_combination r4921), (by unfold Seg29.relationRow4922 at r4922; linear_combination r4922), (by unfold Seg29.relationRow4923 at r4923; linear_combination r4923), (by unfold Seg29.relationRow4924 at r4924; linear_combination r4924), (by unfold Seg29.relationRow4925 at r4925; linear_combination r4925), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg53
    refine ⟨rho 25226, rho 25227, rho 25228, rho 25229, rho 25230,
      (by unfold Seg29.relationRow4926 at r4926; linear_combination r4926), (by unfold Seg29.relationRow4927 at r4927; linear_combination r4927), (by unfold Seg29.relationRow4928 at r4928; linear_combination r4928), (by unfold Seg29.relationRow4929 at r4929; linear_combination r4929), (by unfold Seg29.relationRow4930 at r4930; linear_combination r4930), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg54
    refine ⟨rho 25231, rho 25232, rho 25233, rho 25234, rho 25235,
      (by unfold Seg29.relationRow4931 at r4931; linear_combination r4931), (by unfold Seg29.relationRow4932 at r4932; linear_combination r4932), (by unfold Seg29.relationRow4933 at r4933; linear_combination r4933), (by unfold Seg29.relationRow4934 at r4934; linear_combination r4934), (by unfold Seg29.relationRow4935 at r4935; linear_combination r4935), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg55
    refine ⟨rho 25236, rho 25237, rho 25238, rho 25239, rho 25240,
      (by unfold Seg29.relationRow4936 at r4936; linear_combination r4936), (by unfold Seg29.relationRow4937 at r4937; linear_combination r4937), (by unfold Seg29.relationRow4938 at r4938; linear_combination r4938), (by unfold Seg29.relationRow4939 at r4939; linear_combination r4939), (by unfold Seg29.relationRow4940 at r4940; linear_combination r4940), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg56
    refine ⟨rho 25241, rho 25242, rho 25243, rho 25244, rho 25245,
      (by unfold Seg29.relationRow4941 at r4941; linear_combination r4941), (by unfold Seg29.relationRow4942 at r4942; linear_combination r4942), (by unfold Seg29.relationRow4943 at r4943; linear_combination r4943), (by unfold Seg29.relationRow4944 at r4944; linear_combination r4944), (by unfold Seg29.relationRow4945 at r4945; linear_combination r4945), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg57
    refine ⟨rho 25246, rho 25247, rho 25248, rho 25249, rho 25250,
      (by unfold Seg29.relationRow4946 at r4946; linear_combination r4946), (by unfold Seg29.relationRow4947 at r4947; linear_combination r4947), (by unfold Seg29.relationRow4948 at r4948; linear_combination r4948), (by unfold Seg29.relationRow4949 at r4949; linear_combination r4949), (by unfold Seg29.relationRow4950 at r4950; linear_combination r4950), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg58
    refine ⟨rho 25251, rho 25252, rho 25253, rho 25254, rho 25255,
      (by unfold Seg29.relationRow4951 at r4951; linear_combination r4951), (by unfold Seg29.relationRow4952 at r4952; linear_combination r4952), (by unfold Seg29.relationRow4953 at r4953; linear_combination r4953), (by unfold Seg29.relationRow4954 at r4954; linear_combination r4954), (by unfold Seg29.relationRow4955 at r4955; linear_combination r4955), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg59
    refine ⟨rho 25256, rho 25257, rho 25258, rho 25259, rho 25260,
      (by unfold Seg29.relationRow4956 at r4956; linear_combination r4956), (by unfold Seg29.relationRow4957 at r4957; linear_combination r4957), (by unfold Seg29.relationRow4958 at r4958; linear_combination r4958), (by unfold Seg29.relationRow4959 at r4959; linear_combination r4959), (by unfold Seg29.relationRow4960 at r4960; linear_combination r4960), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg60
    refine ⟨rho 25261, rho 25262, rho 25263, rho 25264, rho 25265,
      (by unfold Seg29.relationRow4961 at r4961; linear_combination r4961), (by unfold Seg29.relationRow4962 at r4962; linear_combination r4962), (by unfold Seg29.relationRow4963 at r4963; linear_combination r4963), (by unfold Seg29.relationRow4964 at r4964; linear_combination r4964), (by unfold Seg29.relationRow4965 at r4965; linear_combination r4965), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg61
    refine ⟨rho 25266, rho 25267, rho 25268, rho 25269, rho 25270,
      (by unfold Seg29.relationRow4966 at r4966; linear_combination r4966), (by unfold Seg29.relationRow4967 at r4967; linear_combination r4967), (by unfold Seg29.relationRow4968 at r4968; linear_combination r4968), (by unfold Seg29.relationRow4969 at r4969; linear_combination r4969), (by unfold Seg29.relationRow4970 at r4970; linear_combination r4970), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg62
    refine ⟨rho 25271, rho 25272, rho 25273, rho 25274, rho 25275,
      (by unfold Seg29.relationRow4971 at r4971; linear_combination r4971), (by unfold Seg29.relationRow4972 at r4972; linear_combination r4972), (by unfold Seg29.relationRow4973 at r4973; linear_combination r4973), (by unfold Seg29.relationRow4974 at r4974; linear_combination r4974), (by unfold Seg29.relationRow4975 at r4975; linear_combination r4975), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg63
    refine ⟨rho 25276, rho 25277, rho 25278, rho 25279, rho 25280,
      (by unfold Seg29.relationRow4976 at r4976; linear_combination r4976), (by unfold Seg29.relationRow4977 at r4977; linear_combination r4977), (by unfold Seg29.relationRow4978 at r4978; linear_combination r4978), (by unfold Seg29.relationRow4979 at r4979; linear_combination r4979), (by unfold Seg29.relationRow4980 at r4980; linear_combination r4980), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg64
    refine ⟨rho 25281, rho 25282, rho 25283, rho 25284, rho 25285,
      (by unfold Seg29.relationRow4981 at r4981; linear_combination r4981), (by unfold Seg29.relationRow4982 at r4982; linear_combination r4982), (by unfold Seg29.relationRow4983 at r4983; linear_combination r4983), (by unfold Seg29.relationRow4984 at r4984; linear_combination r4984), (by unfold Seg29.relationRow4985 at r4985; linear_combination r4985), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg65
    refine ⟨rho 25286, rho 25287, rho 25288, rho 25289, rho 25290,
      (by unfold Seg29.relationRow4986 at r4986; linear_combination r4986), (by unfold Seg29.relationRow4987 at r4987; linear_combination r4987), (by unfold Seg29.relationRow4988 at r4988; linear_combination r4988), (by unfold Seg29.relationRow4989 at r4989; linear_combination r4989), (by unfold Seg29.relationRow4990 at r4990; linear_combination r4990), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg66
    refine ⟨rho 25291, rho 25292, rho 25293, rho 25294, rho 25295,
      (by unfold Seg29.relationRow4991 at r4991; linear_combination r4991), (by unfold Seg29.relationRow4992 at r4992; linear_combination r4992), (by unfold Seg29.relationRow4993 at r4993; linear_combination r4993), (by unfold Seg29.relationRow4994 at r4994; linear_combination r4994), (by unfold Seg29.relationRow4995 at r4995; linear_combination r4995), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg67
    refine ⟨rho 25296, rho 25297, rho 25298, rho 25299, rho 25300,
      (by unfold Seg29.relationRow4996 at r4996; linear_combination r4996), (by unfold Seg29.relationRow4997 at r4997; linear_combination r4997), (by unfold Seg29.relationRow4998 at r4998; linear_combination r4998), (by unfold Seg29.relationRow4999 at r4999; linear_combination r4999), (by unfold Seg29.relationRow5000 at r5000; linear_combination r5000), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg68
    refine ⟨rho 25301, rho 25302, rho 25303, rho 25304, rho 25305,
      (by unfold Seg29.relationRow5001 at r5001; linear_combination r5001), (by unfold Seg29.relationRow5002 at r5002; linear_combination r5002), (by unfold Seg29.relationRow5003 at r5003; linear_combination r5003), (by unfold Seg29.relationRow5004 at r5004; linear_combination r5004), (by unfold Seg29.relationRow5005 at r5005; linear_combination r5005), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode12350_12dc18.seg69
    refine ⟨rho 25306, rho 25307, rho 25308, rho 25309, rho 25310,
      (by unfold Seg29.relationRow5006 at r5006; linear_combination r5006), (by unfold Seg29.relationRow5007 at r5007; linear_combination r5007), (by unfold Seg29.relationRow5008 at r5008; linear_combination r5008), (by unfold Seg29.relationRow5009 at r5009; linear_combination r5009), (by unfold Seg29.relationRow5010 at r5010; linear_combination r5010), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.relation_sound_permSpec (rho 148) (rho 149) (rho 150) (rho 24955) (rho 24956) (rho 24957) (rho 24958) (rho 24959) (rho 24960) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.tctNode13DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.F) + (13 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg29ScpNode12Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode12.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

