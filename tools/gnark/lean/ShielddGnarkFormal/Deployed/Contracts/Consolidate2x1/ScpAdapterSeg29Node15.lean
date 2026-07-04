import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg29Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode15.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg29_scp_node15_eq (rho : Nat -> Seg29.F) (h : Seg29.relation rho) :
    seg29ScpNode15Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg29.F) + (16 : Seg29.F))
        (rho 139 + rho 26035) (rho 140 + rho 26036 + rho 26037)
        (rho 140 + rho 26038 + rho 26039) (rho 141 + rho 26040) := by
  unfold Seg29.relation at h
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
  unfold Seg29.relationPart71 at p71
  rcases p71 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5753, r5754, r5755, r5756, r5757, r5758, r5759⟩
  unfold Seg29.relationPart72 at p72
  rcases p72 with ⟨r5760, r5761, r5762, r5763, r5764, r5765, r5766, r5767, r5768, r5769, r5770, r5771, r5772, r5773, r5774, r5775, r5776, r5777, r5778, r5779, r5780, r5781, r5782, r5783, r5784, r5785, r5786, r5787, r5788, r5789, r5790, r5791, r5792, r5793, r5794, r5795, r5796, r5797, r5798, r5799, r5800, r5801, r5802, r5803, r5804, r5805, r5806, r5807, r5808, r5809, r5810, r5811, r5812, r5813, r5814, r5815, r5816, r5817, r5818, r5819, r5820, r5821, r5822, r5823, r5824, r5825, r5826, r5827, r5828, r5829, r5830, r5831, r5832, r5833, r5834, r5835, r5836, r5837, r5838, r5839⟩
  unfold Seg29.relationPart73 at p73
  rcases p73 with ⟨r5840, r5841, r5842, r5843, r5844, r5845, r5846, r5847, r5848, r5849, r5850, r5851, r5852, r5853, r5854, r5855, r5856, r5857, r5858, r5859, r5860, r5861, r5862, r5863, r5864, r5865, r5866, r5867, r5868, r5869, r5870, r5871, r5872, r5873, r5874, r5875, r5876, r5877, r5878, r5879, r5880, r5881, r5882, r5883, r5884, r5885, r5886, r5887, r5888, r5889, r5890, r5891, r5892, r5893, r5894, r5895, r5896, r5897, r5898, r5899, r5900, r5901, r5902, r5903, r5904, r5905, r5906, r5907, r5908, r5909, r5910, r5911, r5912, r5913, r5914, r5915, r5916, r5917, r5918, r5919⟩
  unfold Seg29.relationPart74 at p74
  rcases p74 with ⟨r5920, r5921, r5922, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩
  unfold Seg29.relationPart75 at p75
  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, r6007, r6008, r6009, r6010, r6011, r6012, r6013, r6014, r6015, r6016, r6017, r6018, r6019, r6020, r6021, r6022, r6023, r6024, r6025, r6026, r6027, r6028, r6029, r6030, r6031, r6032, r6033, r6034, r6035, r6036, r6037, r6038, r6039, r6040, r6041, r6042, r6043, r6044, r6045, r6046, r6047, r6048, r6049, r6050, r6051, r6052, r6053, r6054, r6055, r6056, r6057, r6058, r6059, r6060, r6061, r6062, r6063, r6064, r6065, r6066, r6067, r6068, r6069, r6070, r6071, r6072, r6073, r6074, r6075, r6076, r6077, r6078, r6079⟩
  unfold Seg29.relationPart76 at p76
  rcases p76 with ⟨r6080, r6081, r6082, r6083, r6084, r6085, r6086, r6087, r6088, r6089, r6090, r6091, r6092, r6093, r6094, r6095, r6096, r6097, r6098, r6099, r6100, r6101, r6102, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.relation (rho 139) (rho 140) (rho 141) (rho 26035) (rho 26036) (rho 26037) (rho 26038) (rho 26039) (rho 26040)
      (fun o0 o1 o2 o3 o4 => o0 = rho 26370 ∧ o1 = rho 26375 ∧ o2 = rho 26380 ∧ o3 = rho 26385 ∧ o4 = rho 26390) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg0
    refine ⟨rho 26041, rho 26042, rho 26043, rho 26044, rho 26045,
      (by unfold Seg29.relationRow5753 at r5753; linear_combination r5753), (by unfold Seg29.relationRow5754 at r5754; linear_combination r5754), (by unfold Seg29.relationRow5755 at r5755; linear_combination r5755), (by unfold Seg29.relationRow5756 at r5756; linear_combination r5756), (by unfold Seg29.relationRow5757 at r5757; linear_combination r5757), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg1
    refine ⟨rho 26046, rho 26047, rho 26048, rho 26049, rho 26050,
      (by unfold Seg29.relationRow5758 at r5758; linear_combination r5758), (by unfold Seg29.relationRow5759 at r5759; linear_combination r5759), (by unfold Seg29.relationRow5760 at r5760; linear_combination r5760), (by unfold Seg29.relationRow5761 at r5761; linear_combination r5761), (by unfold Seg29.relationRow5762 at r5762; linear_combination r5762), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg2
    refine ⟨rho 26051, rho 26052, rho 26053, rho 26054, rho 26055,
      (by unfold Seg29.relationRow5763 at r5763; linear_combination r5763), (by unfold Seg29.relationRow5764 at r5764; linear_combination r5764), (by unfold Seg29.relationRow5765 at r5765; linear_combination r5765), (by unfold Seg29.relationRow5766 at r5766; linear_combination r5766), (by unfold Seg29.relationRow5767 at r5767; linear_combination r5767), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg3
    refine ⟨rho 26056, rho 26057, rho 26058, rho 26059, rho 26060,
      (by unfold Seg29.relationRow5768 at r5768; linear_combination r5768), (by unfold Seg29.relationRow5769 at r5769; linear_combination r5769), (by unfold Seg29.relationRow5770 at r5770; linear_combination r5770), (by unfold Seg29.relationRow5771 at r5771; linear_combination r5771), (by unfold Seg29.relationRow5772 at r5772; linear_combination r5772), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg4
    refine ⟨rho 26061, rho 26062, rho 26063, rho 26064, rho 26065,
      (by unfold Seg29.relationRow5773 at r5773; linear_combination r5773), (by unfold Seg29.relationRow5774 at r5774; linear_combination r5774), (by unfold Seg29.relationRow5775 at r5775; linear_combination r5775), (by unfold Seg29.relationRow5776 at r5776; linear_combination r5776), (by unfold Seg29.relationRow5777 at r5777; linear_combination r5777), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg5
    refine ⟨rho 26066, rho 26067, rho 26068, rho 26069, rho 26070,
      (by unfold Seg29.relationRow5778 at r5778; linear_combination r5778), (by unfold Seg29.relationRow5779 at r5779; linear_combination r5779), (by unfold Seg29.relationRow5780 at r5780; linear_combination r5780), (by unfold Seg29.relationRow5781 at r5781; linear_combination r5781), (by unfold Seg29.relationRow5782 at r5782; linear_combination r5782), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg6
    refine ⟨rho 26071, rho 26072, rho 26073, rho 26074, rho 26075,
      (by unfold Seg29.relationRow5783 at r5783; linear_combination r5783), (by unfold Seg29.relationRow5784 at r5784; linear_combination r5784), (by unfold Seg29.relationRow5785 at r5785; linear_combination r5785), (by unfold Seg29.relationRow5786 at r5786; linear_combination r5786), (by unfold Seg29.relationRow5787 at r5787; linear_combination r5787), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg7
    refine ⟨rho 26076, rho 26077, rho 26078, rho 26079, rho 26080,
      (by unfold Seg29.relationRow5788 at r5788; linear_combination r5788), (by unfold Seg29.relationRow5789 at r5789; linear_combination r5789), (by unfold Seg29.relationRow5790 at r5790; linear_combination r5790), (by unfold Seg29.relationRow5791 at r5791; linear_combination r5791), (by unfold Seg29.relationRow5792 at r5792; linear_combination r5792), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg8
    refine ⟨rho 26081, rho 26082, rho 26083, rho 26084, rho 26085,
      (by unfold Seg29.relationRow5793 at r5793; linear_combination r5793), (by unfold Seg29.relationRow5794 at r5794; linear_combination r5794), (by unfold Seg29.relationRow5795 at r5795; linear_combination r5795), (by unfold Seg29.relationRow5796 at r5796; linear_combination r5796), (by unfold Seg29.relationRow5797 at r5797; linear_combination r5797), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg9
    refine ⟨rho 26086, rho 26087, rho 26088, rho 26089, rho 26090,
      (by unfold Seg29.relationRow5798 at r5798; linear_combination r5798), (by unfold Seg29.relationRow5799 at r5799; linear_combination r5799), (by unfold Seg29.relationRow5800 at r5800; linear_combination r5800), (by unfold Seg29.relationRow5801 at r5801; linear_combination r5801), (by unfold Seg29.relationRow5802 at r5802; linear_combination r5802), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg10
    refine ⟨rho 26091, rho 26092, rho 26093, rho 26094, rho 26095,
      (by unfold Seg29.relationRow5803 at r5803; linear_combination r5803), (by unfold Seg29.relationRow5804 at r5804; linear_combination r5804), (by unfold Seg29.relationRow5805 at r5805; linear_combination r5805), (by unfold Seg29.relationRow5806 at r5806; linear_combination r5806), (by unfold Seg29.relationRow5807 at r5807; linear_combination r5807), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg11
    refine ⟨rho 26096, rho 26097, rho 26098, rho 26099, rho 26100,
      (by unfold Seg29.relationRow5808 at r5808; linear_combination r5808), (by unfold Seg29.relationRow5809 at r5809; linear_combination r5809), (by unfold Seg29.relationRow5810 at r5810; linear_combination r5810), (by unfold Seg29.relationRow5811 at r5811; linear_combination r5811), (by unfold Seg29.relationRow5812 at r5812; linear_combination r5812), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg12
    refine ⟨rho 26101, rho 26102, rho 26103, rho 26104, rho 26105,
      (by unfold Seg29.relationRow5813 at r5813; linear_combination r5813), (by unfold Seg29.relationRow5814 at r5814; linear_combination r5814), (by unfold Seg29.relationRow5815 at r5815; linear_combination r5815), (by unfold Seg29.relationRow5816 at r5816; linear_combination r5816), (by unfold Seg29.relationRow5817 at r5817; linear_combination r5817), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg13
    refine ⟨rho 26106, rho 26107, rho 26108, rho 26109, rho 26110,
      (by unfold Seg29.relationRow5818 at r5818; linear_combination r5818), (by unfold Seg29.relationRow5819 at r5819; linear_combination r5819), (by unfold Seg29.relationRow5820 at r5820; linear_combination r5820), (by unfold Seg29.relationRow5821 at r5821; linear_combination r5821), (by unfold Seg29.relationRow5822 at r5822; linear_combination r5822), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg14
    refine ⟨rho 26111, rho 26112, rho 26113, rho 26114, rho 26115,
      (by unfold Seg29.relationRow5823 at r5823; linear_combination r5823), (by unfold Seg29.relationRow5824 at r5824; linear_combination r5824), (by unfold Seg29.relationRow5825 at r5825; linear_combination r5825), (by unfold Seg29.relationRow5826 at r5826; linear_combination r5826), (by unfold Seg29.relationRow5827 at r5827; linear_combination r5827), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg15
    refine ⟨rho 26116, rho 26117, rho 26118, rho 26119, rho 26120,
      (by unfold Seg29.relationRow5828 at r5828; linear_combination r5828), (by unfold Seg29.relationRow5829 at r5829; linear_combination r5829), (by unfold Seg29.relationRow5830 at r5830; linear_combination r5830), (by unfold Seg29.relationRow5831 at r5831; linear_combination r5831), (by unfold Seg29.relationRow5832 at r5832; linear_combination r5832), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg16
    refine ⟨rho 26121, rho 26122, rho 26123, rho 26124, rho 26125,
      (by unfold Seg29.relationRow5833 at r5833; linear_combination r5833), (by unfold Seg29.relationRow5834 at r5834; linear_combination r5834), (by unfold Seg29.relationRow5835 at r5835; linear_combination r5835), (by unfold Seg29.relationRow5836 at r5836; linear_combination r5836), (by unfold Seg29.relationRow5837 at r5837; linear_combination r5837), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg17
    refine ⟨rho 26126, rho 26127, rho 26128, rho 26129, rho 26130,
      (by unfold Seg29.relationRow5838 at r5838; linear_combination r5838), (by unfold Seg29.relationRow5839 at r5839; linear_combination r5839), (by unfold Seg29.relationRow5840 at r5840; linear_combination r5840), (by unfold Seg29.relationRow5841 at r5841; linear_combination r5841), (by unfold Seg29.relationRow5842 at r5842; linear_combination r5842), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg18
    refine ⟨rho 26131, rho 26132, rho 26133, rho 26134, rho 26135,
      (by unfold Seg29.relationRow5843 at r5843; linear_combination r5843), (by unfold Seg29.relationRow5844 at r5844; linear_combination r5844), (by unfold Seg29.relationRow5845 at r5845; linear_combination r5845), (by unfold Seg29.relationRow5846 at r5846; linear_combination r5846), (by unfold Seg29.relationRow5847 at r5847; linear_combination r5847), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg19
    refine ⟨rho 26136, rho 26137, rho 26138, rho 26139, rho 26140,
      (by unfold Seg29.relationRow5848 at r5848; linear_combination r5848), (by unfold Seg29.relationRow5849 at r5849; linear_combination r5849), (by unfold Seg29.relationRow5850 at r5850; linear_combination r5850), (by unfold Seg29.relationRow5851 at r5851; linear_combination r5851), (by unfold Seg29.relationRow5852 at r5852; linear_combination r5852), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg20
    refine ⟨rho 26141, rho 26142, rho 26143, rho 26144, rho 26145,
      (by unfold Seg29.relationRow5853 at r5853; linear_combination r5853), (by unfold Seg29.relationRow5854 at r5854; linear_combination r5854), (by unfold Seg29.relationRow5855 at r5855; linear_combination r5855), (by unfold Seg29.relationRow5856 at r5856; linear_combination r5856), (by unfold Seg29.relationRow5857 at r5857; linear_combination r5857), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg21
    refine ⟨rho 26146, rho 26147, rho 26148, rho 26149, rho 26150,
      (by unfold Seg29.relationRow5858 at r5858; linear_combination r5858), (by unfold Seg29.relationRow5859 at r5859; linear_combination r5859), (by unfold Seg29.relationRow5860 at r5860; linear_combination r5860), (by unfold Seg29.relationRow5861 at r5861; linear_combination r5861), (by unfold Seg29.relationRow5862 at r5862; linear_combination r5862), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg22
    refine ⟨rho 26151, rho 26152, rho 26153, rho 26154, rho 26155,
      (by unfold Seg29.relationRow5863 at r5863; linear_combination r5863), (by unfold Seg29.relationRow5864 at r5864; linear_combination r5864), (by unfold Seg29.relationRow5865 at r5865; linear_combination r5865), (by unfold Seg29.relationRow5866 at r5866; linear_combination r5866), (by unfold Seg29.relationRow5867 at r5867; linear_combination r5867), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg23
    refine ⟨rho 26156, rho 26157, rho 26158, rho 26159, rho 26160,
      (by unfold Seg29.relationRow5868 at r5868; linear_combination r5868), (by unfold Seg29.relationRow5869 at r5869; linear_combination r5869), (by unfold Seg29.relationRow5870 at r5870; linear_combination r5870), (by unfold Seg29.relationRow5871 at r5871; linear_combination r5871), (by unfold Seg29.relationRow5872 at r5872; linear_combination r5872), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg24
    refine ⟨rho 26161, rho 26162, rho 26163, rho 26164, rho 26165,
      (by unfold Seg29.relationRow5873 at r5873; linear_combination r5873), (by unfold Seg29.relationRow5874 at r5874; linear_combination r5874), (by unfold Seg29.relationRow5875 at r5875; linear_combination r5875), (by unfold Seg29.relationRow5876 at r5876; linear_combination r5876), (by unfold Seg29.relationRow5877 at r5877; linear_combination r5877), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg25
    refine ⟨rho 26166, rho 26167, rho 26168, rho 26169, rho 26170,
      (by unfold Seg29.relationRow5878 at r5878; linear_combination r5878), (by unfold Seg29.relationRow5879 at r5879; linear_combination r5879), (by unfold Seg29.relationRow5880 at r5880; linear_combination r5880), (by unfold Seg29.relationRow5881 at r5881; linear_combination r5881), (by unfold Seg29.relationRow5882 at r5882; linear_combination r5882), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg26
    refine ⟨rho 26171, rho 26172, rho 26173, rho 26174, rho 26175,
      (by unfold Seg29.relationRow5883 at r5883; linear_combination r5883), (by unfold Seg29.relationRow5884 at r5884; linear_combination r5884), (by unfold Seg29.relationRow5885 at r5885; linear_combination r5885), (by unfold Seg29.relationRow5886 at r5886; linear_combination r5886), (by unfold Seg29.relationRow5887 at r5887; linear_combination r5887), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg27
    refine ⟨rho 26176, rho 26177, rho 26178, rho 26179, rho 26180,
      (by unfold Seg29.relationRow5888 at r5888; linear_combination r5888), (by unfold Seg29.relationRow5889 at r5889; linear_combination r5889), (by unfold Seg29.relationRow5890 at r5890; linear_combination r5890), (by unfold Seg29.relationRow5891 at r5891; linear_combination r5891), (by unfold Seg29.relationRow5892 at r5892; linear_combination r5892), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg28
    refine ⟨rho 26181, rho 26182, rho 26183, rho 26184, rho 26185,
      (by unfold Seg29.relationRow5893 at r5893; linear_combination r5893), (by unfold Seg29.relationRow5894 at r5894; linear_combination r5894), (by unfold Seg29.relationRow5895 at r5895; linear_combination r5895), (by unfold Seg29.relationRow5896 at r5896; linear_combination r5896), (by unfold Seg29.relationRow5897 at r5897; linear_combination r5897), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg29
    refine ⟨rho 26186, rho 26187, rho 26188, rho 26189, rho 26190,
      (by unfold Seg29.relationRow5898 at r5898; linear_combination r5898), (by unfold Seg29.relationRow5899 at r5899; linear_combination r5899), (by unfold Seg29.relationRow5900 at r5900; linear_combination r5900), (by unfold Seg29.relationRow5901 at r5901; linear_combination r5901), (by unfold Seg29.relationRow5902 at r5902; linear_combination r5902), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg30
    refine ⟨rho 26191, rho 26192, rho 26193, rho 26194, rho 26195,
      (by unfold Seg29.relationRow5903 at r5903; linear_combination r5903), (by unfold Seg29.relationRow5904 at r5904; linear_combination r5904), (by unfold Seg29.relationRow5905 at r5905; linear_combination r5905), (by unfold Seg29.relationRow5906 at r5906; linear_combination r5906), (by unfold Seg29.relationRow5907 at r5907; linear_combination r5907), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg31
    refine ⟨rho 26196, rho 26197, rho 26198, rho 26199, rho 26200,
      (by unfold Seg29.relationRow5908 at r5908; linear_combination r5908), (by unfold Seg29.relationRow5909 at r5909; linear_combination r5909), (by unfold Seg29.relationRow5910 at r5910; linear_combination r5910), (by unfold Seg29.relationRow5911 at r5911; linear_combination r5911), (by unfold Seg29.relationRow5912 at r5912; linear_combination r5912), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg32
    refine ⟨rho 26201, rho 26202, rho 26203, rho 26204, rho 26205,
      (by unfold Seg29.relationRow5913 at r5913; linear_combination r5913), (by unfold Seg29.relationRow5914 at r5914; linear_combination r5914), (by unfold Seg29.relationRow5915 at r5915; linear_combination r5915), (by unfold Seg29.relationRow5916 at r5916; linear_combination r5916), (by unfold Seg29.relationRow5917 at r5917; linear_combination r5917), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg33
    refine ⟨rho 26206, rho 26207, rho 26208, rho 26209, rho 26210,
      (by unfold Seg29.relationRow5918 at r5918; linear_combination r5918), (by unfold Seg29.relationRow5919 at r5919; linear_combination r5919), (by unfold Seg29.relationRow5920 at r5920; linear_combination r5920), (by unfold Seg29.relationRow5921 at r5921; linear_combination r5921), (by unfold Seg29.relationRow5922 at r5922; linear_combination r5922), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg34
    refine ⟨rho 26211, rho 26212, rho 26213, rho 26214, rho 26215,
      (by unfold Seg29.relationRow5923 at r5923; linear_combination r5923), (by unfold Seg29.relationRow5924 at r5924; linear_combination r5924), (by unfold Seg29.relationRow5925 at r5925; linear_combination r5925), (by unfold Seg29.relationRow5926 at r5926; linear_combination r5926), (by unfold Seg29.relationRow5927 at r5927; linear_combination r5927), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg35
    refine ⟨rho 26216, rho 26217, rho 26218, rho 26219, rho 26220,
      (by unfold Seg29.relationRow5928 at r5928; linear_combination r5928), (by unfold Seg29.relationRow5929 at r5929; linear_combination r5929), (by unfold Seg29.relationRow5930 at r5930; linear_combination r5930), (by unfold Seg29.relationRow5931 at r5931; linear_combination r5931), (by unfold Seg29.relationRow5932 at r5932; linear_combination r5932), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg36
    refine ⟨rho 26221, rho 26222, rho 26223, rho 26224, rho 26225,
      (by unfold Seg29.relationRow5933 at r5933; linear_combination r5933), (by unfold Seg29.relationRow5934 at r5934; linear_combination r5934), (by unfold Seg29.relationRow5935 at r5935; linear_combination r5935), (by unfold Seg29.relationRow5936 at r5936; linear_combination r5936), (by unfold Seg29.relationRow5937 at r5937; linear_combination r5937), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg37
    refine ⟨rho 26226, rho 26227, rho 26228, rho 26229, rho 26230,
      (by unfold Seg29.relationRow5938 at r5938; linear_combination r5938), (by unfold Seg29.relationRow5939 at r5939; linear_combination r5939), (by unfold Seg29.relationRow5940 at r5940; linear_combination r5940), (by unfold Seg29.relationRow5941 at r5941; linear_combination r5941), (by unfold Seg29.relationRow5942 at r5942; linear_combination r5942), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg38
    refine ⟨rho 26231, rho 26232, rho 26233, rho 26234, rho 26235,
      (by unfold Seg29.relationRow5943 at r5943; linear_combination r5943), (by unfold Seg29.relationRow5944 at r5944; linear_combination r5944), (by unfold Seg29.relationRow5945 at r5945; linear_combination r5945), (by unfold Seg29.relationRow5946 at r5946; linear_combination r5946), (by unfold Seg29.relationRow5947 at r5947; linear_combination r5947), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg39
    refine ⟨rho 26236, rho 26237, rho 26238, rho 26239, rho 26240,
      (by unfold Seg29.relationRow5948 at r5948; linear_combination r5948), (by unfold Seg29.relationRow5949 at r5949; linear_combination r5949), (by unfold Seg29.relationRow5950 at r5950; linear_combination r5950), (by unfold Seg29.relationRow5951 at r5951; linear_combination r5951), (by unfold Seg29.relationRow5952 at r5952; linear_combination r5952), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg40
    refine ⟨rho 26241, rho 26242, rho 26243, rho 26244, rho 26245,
      (by unfold Seg29.relationRow5953 at r5953; linear_combination r5953), (by unfold Seg29.relationRow5954 at r5954; linear_combination r5954), (by unfold Seg29.relationRow5955 at r5955; linear_combination r5955), (by unfold Seg29.relationRow5956 at r5956; linear_combination r5956), (by unfold Seg29.relationRow5957 at r5957; linear_combination r5957), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg41
    refine ⟨rho 26246, rho 26247, rho 26248, rho 26249, rho 26250,
      (by unfold Seg29.relationRow5958 at r5958; linear_combination r5958), (by unfold Seg29.relationRow5959 at r5959; linear_combination r5959), (by unfold Seg29.relationRow5960 at r5960; linear_combination r5960), (by unfold Seg29.relationRow5961 at r5961; linear_combination r5961), (by unfold Seg29.relationRow5962 at r5962; linear_combination r5962), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg42
    refine ⟨rho 26251, rho 26252, rho 26253, rho 26254, rho 26255,
      (by unfold Seg29.relationRow5963 at r5963; linear_combination r5963), (by unfold Seg29.relationRow5964 at r5964; linear_combination r5964), (by unfold Seg29.relationRow5965 at r5965; linear_combination r5965), (by unfold Seg29.relationRow5966 at r5966; linear_combination r5966), (by unfold Seg29.relationRow5967 at r5967; linear_combination r5967), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg43
    refine ⟨rho 26256, rho 26257, rho 26258, rho 26259, rho 26260,
      (by unfold Seg29.relationRow5968 at r5968; linear_combination r5968), (by unfold Seg29.relationRow5969 at r5969; linear_combination r5969), (by unfold Seg29.relationRow5970 at r5970; linear_combination r5970), (by unfold Seg29.relationRow5971 at r5971; linear_combination r5971), (by unfold Seg29.relationRow5972 at r5972; linear_combination r5972), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg44
    refine ⟨rho 26261, rho 26262, rho 26263, rho 26264, rho 26265,
      (by unfold Seg29.relationRow5973 at r5973; linear_combination r5973), (by unfold Seg29.relationRow5974 at r5974; linear_combination r5974), (by unfold Seg29.relationRow5975 at r5975; linear_combination r5975), (by unfold Seg29.relationRow5976 at r5976; linear_combination r5976), (by unfold Seg29.relationRow5977 at r5977; linear_combination r5977), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg45
    refine ⟨rho 26266, rho 26267, rho 26268, rho 26269, rho 26270,
      (by unfold Seg29.relationRow5978 at r5978; linear_combination r5978), (by unfold Seg29.relationRow5979 at r5979; linear_combination r5979), (by unfold Seg29.relationRow5980 at r5980; linear_combination r5980), (by unfold Seg29.relationRow5981 at r5981; linear_combination r5981), (by unfold Seg29.relationRow5982 at r5982; linear_combination r5982), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg46
    refine ⟨rho 26271, rho 26272, rho 26273, rho 26274, rho 26275,
      (by unfold Seg29.relationRow5983 at r5983; linear_combination r5983), (by unfold Seg29.relationRow5984 at r5984; linear_combination r5984), (by unfold Seg29.relationRow5985 at r5985; linear_combination r5985), (by unfold Seg29.relationRow5986 at r5986; linear_combination r5986), (by unfold Seg29.relationRow5987 at r5987; linear_combination r5987), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg47
    refine ⟨rho 26276, rho 26277, rho 26278, rho 26279, rho 26280,
      (by unfold Seg29.relationRow5988 at r5988; linear_combination r5988), (by unfold Seg29.relationRow5989 at r5989; linear_combination r5989), (by unfold Seg29.relationRow5990 at r5990; linear_combination r5990), (by unfold Seg29.relationRow5991 at r5991; linear_combination r5991), (by unfold Seg29.relationRow5992 at r5992; linear_combination r5992), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg48
    refine ⟨rho 26281, rho 26282, rho 26283, rho 26284, rho 26285,
      (by unfold Seg29.relationRow5993 at r5993; linear_combination r5993), (by unfold Seg29.relationRow5994 at r5994; linear_combination r5994), (by unfold Seg29.relationRow5995 at r5995; linear_combination r5995), (by unfold Seg29.relationRow5996 at r5996; linear_combination r5996), (by unfold Seg29.relationRow5997 at r5997; linear_combination r5997), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg49
    refine ⟨rho 26286, rho 26287, rho 26288, rho 26289, rho 26290,
      (by unfold Seg29.relationRow5998 at r5998; linear_combination r5998), (by unfold Seg29.relationRow5999 at r5999; linear_combination r5999), (by unfold Seg29.relationRow6000 at r6000; linear_combination r6000), (by unfold Seg29.relationRow6001 at r6001; linear_combination r6001), (by unfold Seg29.relationRow6002 at r6002; linear_combination r6002), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg50
    refine ⟨rho 26291, rho 26292, rho 26293, rho 26294, rho 26295,
      (by unfold Seg29.relationRow6003 at r6003; linear_combination r6003), (by unfold Seg29.relationRow6004 at r6004; linear_combination r6004), (by unfold Seg29.relationRow6005 at r6005; linear_combination r6005), (by unfold Seg29.relationRow6006 at r6006; linear_combination r6006), (by unfold Seg29.relationRow6007 at r6007; linear_combination r6007), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg51
    refine ⟨rho 26296, rho 26297, rho 26298, rho 26299, rho 26300,
      (by unfold Seg29.relationRow6008 at r6008; linear_combination r6008), (by unfold Seg29.relationRow6009 at r6009; linear_combination r6009), (by unfold Seg29.relationRow6010 at r6010; linear_combination r6010), (by unfold Seg29.relationRow6011 at r6011; linear_combination r6011), (by unfold Seg29.relationRow6012 at r6012; linear_combination r6012), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg52
    refine ⟨rho 26301, rho 26302, rho 26303, rho 26304, rho 26305,
      (by unfold Seg29.relationRow6013 at r6013; linear_combination r6013), (by unfold Seg29.relationRow6014 at r6014; linear_combination r6014), (by unfold Seg29.relationRow6015 at r6015; linear_combination r6015), (by unfold Seg29.relationRow6016 at r6016; linear_combination r6016), (by unfold Seg29.relationRow6017 at r6017; linear_combination r6017), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg53
    refine ⟨rho 26306, rho 26307, rho 26308, rho 26309, rho 26310,
      (by unfold Seg29.relationRow6018 at r6018; linear_combination r6018), (by unfold Seg29.relationRow6019 at r6019; linear_combination r6019), (by unfold Seg29.relationRow6020 at r6020; linear_combination r6020), (by unfold Seg29.relationRow6021 at r6021; linear_combination r6021), (by unfold Seg29.relationRow6022 at r6022; linear_combination r6022), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg54
    refine ⟨rho 26311, rho 26312, rho 26313, rho 26314, rho 26315,
      (by unfold Seg29.relationRow6023 at r6023; linear_combination r6023), (by unfold Seg29.relationRow6024 at r6024; linear_combination r6024), (by unfold Seg29.relationRow6025 at r6025; linear_combination r6025), (by unfold Seg29.relationRow6026 at r6026; linear_combination r6026), (by unfold Seg29.relationRow6027 at r6027; linear_combination r6027), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg55
    refine ⟨rho 26316, rho 26317, rho 26318, rho 26319, rho 26320,
      (by unfold Seg29.relationRow6028 at r6028; linear_combination r6028), (by unfold Seg29.relationRow6029 at r6029; linear_combination r6029), (by unfold Seg29.relationRow6030 at r6030; linear_combination r6030), (by unfold Seg29.relationRow6031 at r6031; linear_combination r6031), (by unfold Seg29.relationRow6032 at r6032; linear_combination r6032), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg56
    refine ⟨rho 26321, rho 26322, rho 26323, rho 26324, rho 26325,
      (by unfold Seg29.relationRow6033 at r6033; linear_combination r6033), (by unfold Seg29.relationRow6034 at r6034; linear_combination r6034), (by unfold Seg29.relationRow6035 at r6035; linear_combination r6035), (by unfold Seg29.relationRow6036 at r6036; linear_combination r6036), (by unfold Seg29.relationRow6037 at r6037; linear_combination r6037), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg57
    refine ⟨rho 26326, rho 26327, rho 26328, rho 26329, rho 26330,
      (by unfold Seg29.relationRow6038 at r6038; linear_combination r6038), (by unfold Seg29.relationRow6039 at r6039; linear_combination r6039), (by unfold Seg29.relationRow6040 at r6040; linear_combination r6040), (by unfold Seg29.relationRow6041 at r6041; linear_combination r6041), (by unfold Seg29.relationRow6042 at r6042; linear_combination r6042), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg58
    refine ⟨rho 26331, rho 26332, rho 26333, rho 26334, rho 26335,
      (by unfold Seg29.relationRow6043 at r6043; linear_combination r6043), (by unfold Seg29.relationRow6044 at r6044; linear_combination r6044), (by unfold Seg29.relationRow6045 at r6045; linear_combination r6045), (by unfold Seg29.relationRow6046 at r6046; linear_combination r6046), (by unfold Seg29.relationRow6047 at r6047; linear_combination r6047), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg59
    refine ⟨rho 26336, rho 26337, rho 26338, rho 26339, rho 26340,
      (by unfold Seg29.relationRow6048 at r6048; linear_combination r6048), (by unfold Seg29.relationRow6049 at r6049; linear_combination r6049), (by unfold Seg29.relationRow6050 at r6050; linear_combination r6050), (by unfold Seg29.relationRow6051 at r6051; linear_combination r6051), (by unfold Seg29.relationRow6052 at r6052; linear_combination r6052), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg60
    refine ⟨rho 26341, rho 26342, rho 26343, rho 26344, rho 26345,
      (by unfold Seg29.relationRow6053 at r6053; linear_combination r6053), (by unfold Seg29.relationRow6054 at r6054; linear_combination r6054), (by unfold Seg29.relationRow6055 at r6055; linear_combination r6055), (by unfold Seg29.relationRow6056 at r6056; linear_combination r6056), (by unfold Seg29.relationRow6057 at r6057; linear_combination r6057), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg61
    refine ⟨rho 26346, rho 26347, rho 26348, rho 26349, rho 26350,
      (by unfold Seg29.relationRow6058 at r6058; linear_combination r6058), (by unfold Seg29.relationRow6059 at r6059; linear_combination r6059), (by unfold Seg29.relationRow6060 at r6060; linear_combination r6060), (by unfold Seg29.relationRow6061 at r6061; linear_combination r6061), (by unfold Seg29.relationRow6062 at r6062; linear_combination r6062), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg62
    refine ⟨rho 26351, rho 26352, rho 26353, rho 26354, rho 26355,
      (by unfold Seg29.relationRow6063 at r6063; linear_combination r6063), (by unfold Seg29.relationRow6064 at r6064; linear_combination r6064), (by unfold Seg29.relationRow6065 at r6065; linear_combination r6065), (by unfold Seg29.relationRow6066 at r6066; linear_combination r6066), (by unfold Seg29.relationRow6067 at r6067; linear_combination r6067), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg63
    refine ⟨rho 26356, rho 26357, rho 26358, rho 26359, rho 26360,
      (by unfold Seg29.relationRow6068 at r6068; linear_combination r6068), (by unfold Seg29.relationRow6069 at r6069; linear_combination r6069), (by unfold Seg29.relationRow6070 at r6070; linear_combination r6070), (by unfold Seg29.relationRow6071 at r6071; linear_combination r6071), (by unfold Seg29.relationRow6072 at r6072; linear_combination r6072), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg64
    refine ⟨rho 26361, rho 26362, rho 26363, rho 26364, rho 26365,
      (by unfold Seg29.relationRow6073 at r6073; linear_combination r6073), (by unfold Seg29.relationRow6074 at r6074; linear_combination r6074), (by unfold Seg29.relationRow6075 at r6075; linear_combination r6075), (by unfold Seg29.relationRow6076 at r6076; linear_combination r6076), (by unfold Seg29.relationRow6077 at r6077; linear_combination r6077), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg65
    refine ⟨rho 26366, rho 26367, rho 26368, rho 26369, rho 26370,
      (by unfold Seg29.relationRow6078 at r6078; linear_combination r6078), (by unfold Seg29.relationRow6079 at r6079; linear_combination r6079), (by unfold Seg29.relationRow6080 at r6080; linear_combination r6080), (by unfold Seg29.relationRow6081 at r6081; linear_combination r6081), (by unfold Seg29.relationRow6082 at r6082; linear_combination r6082), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg66
    refine ⟨rho 26371, rho 26372, rho 26373, rho 26374, rho 26375,
      (by unfold Seg29.relationRow6083 at r6083; linear_combination r6083), (by unfold Seg29.relationRow6084 at r6084; linear_combination r6084), (by unfold Seg29.relationRow6085 at r6085; linear_combination r6085), (by unfold Seg29.relationRow6086 at r6086; linear_combination r6086), (by unfold Seg29.relationRow6087 at r6087; linear_combination r6087), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg67
    refine ⟨rho 26376, rho 26377, rho 26378, rho 26379, rho 26380,
      (by unfold Seg29.relationRow6088 at r6088; linear_combination r6088), (by unfold Seg29.relationRow6089 at r6089; linear_combination r6089), (by unfold Seg29.relationRow6090 at r6090; linear_combination r6090), (by unfold Seg29.relationRow6091 at r6091; linear_combination r6091), (by unfold Seg29.relationRow6092 at r6092; linear_combination r6092), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg68
    refine ⟨rho 26381, rho 26382, rho 26383, rho 26384, rho 26385,
      (by unfold Seg29.relationRow6093 at r6093; linear_combination r6093), (by unfold Seg29.relationRow6094 at r6094; linear_combination r6094), (by unfold Seg29.relationRow6095 at r6095; linear_combination r6095), (by unfold Seg29.relationRow6096 at r6096; linear_combination r6096), (by unfold Seg29.relationRow6097 at r6097; linear_combination r6097), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg69
    refine ⟨rho 26386, rho 26387, rho 26388, rho 26389, rho 26390,
      (by unfold Seg29.relationRow6098 at r6098; linear_combination r6098), (by unfold Seg29.relationRow6099 at r6099; linear_combination r6099), (by unfold Seg29.relationRow6100 at r6100; linear_combination r6100), (by unfold Seg29.relationRow6101 at r6101; linear_combination r6101), (by unfold Seg29.relationRow6102 at r6102; linear_combination r6102), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode15.relation_sound_permSpec (rho 139) (rho 140) (rho 141) (rho 26035) (rho 26036) (rho 26037) (rho 26038) (rho 26039) (rho 26040) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode15.tctNode16DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode15.F) + (16 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode15.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg29ScpNode15Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode15.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

