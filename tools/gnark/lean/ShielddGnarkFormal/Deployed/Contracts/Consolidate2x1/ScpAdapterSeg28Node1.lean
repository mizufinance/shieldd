import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode1.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node1_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode1Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (2 : Seg28.F))
        (rho 181 + rho 20041) (rho 182 + rho 20042 + rho 20043)
        (rho 182 + rho 20044 + rho 20045) (rho 183 + rho 20046) := by
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, p8, p9,
    p10, p11, p12, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart8 at p8
  rcases p8 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r657, r658, r659, r660, r661, r662, r663, r664, r665, r666, r667, r668, r669, r670, r671, r672, r673, r674, r675, r676, r677, r678, r679, r680, r681, r682, r683, r684, r685, r686, r687, r688, r689, r690, r691, r692, r693, r694, r695, r696, r697, r698, r699, r700, r701, r702, r703, r704, r705, r706, r707, r708, r709, r710, r711, r712, r713, r714, r715, r716, r717, r718, r719⟩
  unfold Seg28.relationPart9 at p9
  rcases p9 with ⟨r720, r721, r722, r723, r724, r725, r726, r727, r728, r729, r730, r731, r732, r733, r734, r735, r736, r737, r738, r739, r740, r741, r742, r743, r744, r745, r746, r747, r748, r749, r750, r751, r752, r753, r754, r755, r756, r757, r758, r759, r760, r761, r762, r763, r764, r765, r766, r767, r768, r769, r770, r771, r772, r773, r774, r775, r776, r777, r778, r779, r780, r781, r782, r783, r784, r785, r786, r787, r788, r789, r790, r791, r792, r793, r794, r795, r796, r797, r798, r799⟩
  unfold Seg28.relationPart10 at p10
  rcases p10 with ⟨r800, r801, r802, r803, r804, r805, r806, r807, r808, r809, r810, r811, r812, r813, r814, r815, r816, r817, r818, r819, r820, r821, r822, r823, r824, r825, r826, r827, r828, r829, r830, r831, r832, r833, r834, r835, r836, r837, r838, r839, r840, r841, r842, r843, r844, r845, r846, r847, r848, r849, r850, r851, r852, r853, r854, r855, r856, r857, r858, r859, r860, r861, r862, r863, r864, r865, r866, r867, r868, r869, r870, r871, r872, r873, r874, r875, r876, r877, r878, r879⟩
  unfold Seg28.relationPart11 at p11
  rcases p11 with ⟨r880, r881, r882, r883, r884, r885, r886, r887, r888, r889, r890, r891, r892, r893, r894, r895, r896, r897, r898, r899, r900, r901, r902, r903, r904, r905, r906, r907, r908, r909, r910, r911, r912, r913, r914, r915, r916, r917, r918, r919, r920, r921, r922, r923, r924, r925, r926, r927, r928, r929, r930, r931, r932, r933, r934, r935, r936, r937, r938, r939, r940, r941, r942, r943, r944, r945, r946, r947, r948, r949, r950, r951, r952, r953, r954, r955, r956, r957, r958, r959⟩
  unfold Seg28.relationPart12 at p12
  rcases p12 with ⟨r960, r961, r962, r963, r964, r965, r966, r967, r968, r969, r970, r971, r972, r973, r974, r975, r976, r977, r978, r979, r980, r981, r982, r983, r984, r985, r986, r987, r988, r989, r990, r991, r992, r993, r994, r995, r996, r997, r998, r999, r1000, r1001, r1002, r1003, r1004, r1005, r1006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.relation (rho 181) (rho 182) (rho 183) (rho 20041) (rho 20042) (rho 20043) (rho 20044) (rho 20045) (rho 20046)
      (fun o0 o1 o2 o3 o4 => o0 = rho 20376 ∧ o1 = rho 20381 ∧ o2 = rho 20386 ∧ o3 = rho 20391 ∧ o4 = rho 20396) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg0
    refine ⟨rho 20047, rho 20048, rho 20049, rho 20050, rho 20051,
      (by unfold Seg28.relationRow657 at r657; linear_combination r657), (by unfold Seg28.relationRow658 at r658; linear_combination r658), (by unfold Seg28.relationRow659 at r659; linear_combination r659), (by unfold Seg28.relationRow660 at r660; linear_combination r660), (by unfold Seg28.relationRow661 at r661; linear_combination r661), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg1
    refine ⟨rho 20052, rho 20053, rho 20054, rho 20055, rho 20056,
      (by unfold Seg28.relationRow662 at r662; linear_combination r662), (by unfold Seg28.relationRow663 at r663; linear_combination r663), (by unfold Seg28.relationRow664 at r664; linear_combination r664), (by unfold Seg28.relationRow665 at r665; linear_combination r665), (by unfold Seg28.relationRow666 at r666; linear_combination r666), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg2
    refine ⟨rho 20057, rho 20058, rho 20059, rho 20060, rho 20061,
      (by unfold Seg28.relationRow667 at r667; linear_combination r667), (by unfold Seg28.relationRow668 at r668; linear_combination r668), (by unfold Seg28.relationRow669 at r669; linear_combination r669), (by unfold Seg28.relationRow670 at r670; linear_combination r670), (by unfold Seg28.relationRow671 at r671; linear_combination r671), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg3
    refine ⟨rho 20062, rho 20063, rho 20064, rho 20065, rho 20066,
      (by unfold Seg28.relationRow672 at r672; linear_combination r672), (by unfold Seg28.relationRow673 at r673; linear_combination r673), (by unfold Seg28.relationRow674 at r674; linear_combination r674), (by unfold Seg28.relationRow675 at r675; linear_combination r675), (by unfold Seg28.relationRow676 at r676; linear_combination r676), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg4
    refine ⟨rho 20067, rho 20068, rho 20069, rho 20070, rho 20071,
      (by unfold Seg28.relationRow677 at r677; linear_combination r677), (by unfold Seg28.relationRow678 at r678; linear_combination r678), (by unfold Seg28.relationRow679 at r679; linear_combination r679), (by unfold Seg28.relationRow680 at r680; linear_combination r680), (by unfold Seg28.relationRow681 at r681; linear_combination r681), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg5
    refine ⟨rho 20072, rho 20073, rho 20074, rho 20075, rho 20076,
      (by unfold Seg28.relationRow682 at r682; linear_combination r682), (by unfold Seg28.relationRow683 at r683; linear_combination r683), (by unfold Seg28.relationRow684 at r684; linear_combination r684), (by unfold Seg28.relationRow685 at r685; linear_combination r685), (by unfold Seg28.relationRow686 at r686; linear_combination r686), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg6
    refine ⟨rho 20077, rho 20078, rho 20079, rho 20080, rho 20081,
      (by unfold Seg28.relationRow687 at r687; linear_combination r687), (by unfold Seg28.relationRow688 at r688; linear_combination r688), (by unfold Seg28.relationRow689 at r689; linear_combination r689), (by unfold Seg28.relationRow690 at r690; linear_combination r690), (by unfold Seg28.relationRow691 at r691; linear_combination r691), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg7
    refine ⟨rho 20082, rho 20083, rho 20084, rho 20085, rho 20086,
      (by unfold Seg28.relationRow692 at r692; linear_combination r692), (by unfold Seg28.relationRow693 at r693; linear_combination r693), (by unfold Seg28.relationRow694 at r694; linear_combination r694), (by unfold Seg28.relationRow695 at r695; linear_combination r695), (by unfold Seg28.relationRow696 at r696; linear_combination r696), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg8
    refine ⟨rho 20087, rho 20088, rho 20089, rho 20090, rho 20091,
      (by unfold Seg28.relationRow697 at r697; linear_combination r697), (by unfold Seg28.relationRow698 at r698; linear_combination r698), (by unfold Seg28.relationRow699 at r699; linear_combination r699), (by unfold Seg28.relationRow700 at r700; linear_combination r700), (by unfold Seg28.relationRow701 at r701; linear_combination r701), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg9
    refine ⟨rho 20092, rho 20093, rho 20094, rho 20095, rho 20096,
      (by unfold Seg28.relationRow702 at r702; linear_combination r702), (by unfold Seg28.relationRow703 at r703; linear_combination r703), (by unfold Seg28.relationRow704 at r704; linear_combination r704), (by unfold Seg28.relationRow705 at r705; linear_combination r705), (by unfold Seg28.relationRow706 at r706; linear_combination r706), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg10
    refine ⟨rho 20097, rho 20098, rho 20099, rho 20100, rho 20101,
      (by unfold Seg28.relationRow707 at r707; linear_combination r707), (by unfold Seg28.relationRow708 at r708; linear_combination r708), (by unfold Seg28.relationRow709 at r709; linear_combination r709), (by unfold Seg28.relationRow710 at r710; linear_combination r710), (by unfold Seg28.relationRow711 at r711; linear_combination r711), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg11
    refine ⟨rho 20102, rho 20103, rho 20104, rho 20105, rho 20106,
      (by unfold Seg28.relationRow712 at r712; linear_combination r712), (by unfold Seg28.relationRow713 at r713; linear_combination r713), (by unfold Seg28.relationRow714 at r714; linear_combination r714), (by unfold Seg28.relationRow715 at r715; linear_combination r715), (by unfold Seg28.relationRow716 at r716; linear_combination r716), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg12
    refine ⟨rho 20107, rho 20108, rho 20109, rho 20110, rho 20111,
      (by unfold Seg28.relationRow717 at r717; linear_combination r717), (by unfold Seg28.relationRow718 at r718; linear_combination r718), (by unfold Seg28.relationRow719 at r719; linear_combination r719), (by unfold Seg28.relationRow720 at r720; linear_combination r720), (by unfold Seg28.relationRow721 at r721; linear_combination r721), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg13
    refine ⟨rho 20112, rho 20113, rho 20114, rho 20115, rho 20116,
      (by unfold Seg28.relationRow722 at r722; linear_combination r722), (by unfold Seg28.relationRow723 at r723; linear_combination r723), (by unfold Seg28.relationRow724 at r724; linear_combination r724), (by unfold Seg28.relationRow725 at r725; linear_combination r725), (by unfold Seg28.relationRow726 at r726; linear_combination r726), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg14
    refine ⟨rho 20117, rho 20118, rho 20119, rho 20120, rho 20121,
      (by unfold Seg28.relationRow727 at r727; linear_combination r727), (by unfold Seg28.relationRow728 at r728; linear_combination r728), (by unfold Seg28.relationRow729 at r729; linear_combination r729), (by unfold Seg28.relationRow730 at r730; linear_combination r730), (by unfold Seg28.relationRow731 at r731; linear_combination r731), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg15
    refine ⟨rho 20122, rho 20123, rho 20124, rho 20125, rho 20126,
      (by unfold Seg28.relationRow732 at r732; linear_combination r732), (by unfold Seg28.relationRow733 at r733; linear_combination r733), (by unfold Seg28.relationRow734 at r734; linear_combination r734), (by unfold Seg28.relationRow735 at r735; linear_combination r735), (by unfold Seg28.relationRow736 at r736; linear_combination r736), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg16
    refine ⟨rho 20127, rho 20128, rho 20129, rho 20130, rho 20131,
      (by unfold Seg28.relationRow737 at r737; linear_combination r737), (by unfold Seg28.relationRow738 at r738; linear_combination r738), (by unfold Seg28.relationRow739 at r739; linear_combination r739), (by unfold Seg28.relationRow740 at r740; linear_combination r740), (by unfold Seg28.relationRow741 at r741; linear_combination r741), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg17
    refine ⟨rho 20132, rho 20133, rho 20134, rho 20135, rho 20136,
      (by unfold Seg28.relationRow742 at r742; linear_combination r742), (by unfold Seg28.relationRow743 at r743; linear_combination r743), (by unfold Seg28.relationRow744 at r744; linear_combination r744), (by unfold Seg28.relationRow745 at r745; linear_combination r745), (by unfold Seg28.relationRow746 at r746; linear_combination r746), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg18
    refine ⟨rho 20137, rho 20138, rho 20139, rho 20140, rho 20141,
      (by unfold Seg28.relationRow747 at r747; linear_combination r747), (by unfold Seg28.relationRow748 at r748; linear_combination r748), (by unfold Seg28.relationRow749 at r749; linear_combination r749), (by unfold Seg28.relationRow750 at r750; linear_combination r750), (by unfold Seg28.relationRow751 at r751; linear_combination r751), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg19
    refine ⟨rho 20142, rho 20143, rho 20144, rho 20145, rho 20146,
      (by unfold Seg28.relationRow752 at r752; linear_combination r752), (by unfold Seg28.relationRow753 at r753; linear_combination r753), (by unfold Seg28.relationRow754 at r754; linear_combination r754), (by unfold Seg28.relationRow755 at r755; linear_combination r755), (by unfold Seg28.relationRow756 at r756; linear_combination r756), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg20
    refine ⟨rho 20147, rho 20148, rho 20149, rho 20150, rho 20151,
      (by unfold Seg28.relationRow757 at r757; linear_combination r757), (by unfold Seg28.relationRow758 at r758; linear_combination r758), (by unfold Seg28.relationRow759 at r759; linear_combination r759), (by unfold Seg28.relationRow760 at r760; linear_combination r760), (by unfold Seg28.relationRow761 at r761; linear_combination r761), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg21
    refine ⟨rho 20152, rho 20153, rho 20154, rho 20155, rho 20156,
      (by unfold Seg28.relationRow762 at r762; linear_combination r762), (by unfold Seg28.relationRow763 at r763; linear_combination r763), (by unfold Seg28.relationRow764 at r764; linear_combination r764), (by unfold Seg28.relationRow765 at r765; linear_combination r765), (by unfold Seg28.relationRow766 at r766; linear_combination r766), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg22
    refine ⟨rho 20157, rho 20158, rho 20159, rho 20160, rho 20161,
      (by unfold Seg28.relationRow767 at r767; linear_combination r767), (by unfold Seg28.relationRow768 at r768; linear_combination r768), (by unfold Seg28.relationRow769 at r769; linear_combination r769), (by unfold Seg28.relationRow770 at r770; linear_combination r770), (by unfold Seg28.relationRow771 at r771; linear_combination r771), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg23
    refine ⟨rho 20162, rho 20163, rho 20164, rho 20165, rho 20166,
      (by unfold Seg28.relationRow772 at r772; linear_combination r772), (by unfold Seg28.relationRow773 at r773; linear_combination r773), (by unfold Seg28.relationRow774 at r774; linear_combination r774), (by unfold Seg28.relationRow775 at r775; linear_combination r775), (by unfold Seg28.relationRow776 at r776; linear_combination r776), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg24
    refine ⟨rho 20167, rho 20168, rho 20169, rho 20170, rho 20171,
      (by unfold Seg28.relationRow777 at r777; linear_combination r777), (by unfold Seg28.relationRow778 at r778; linear_combination r778), (by unfold Seg28.relationRow779 at r779; linear_combination r779), (by unfold Seg28.relationRow780 at r780; linear_combination r780), (by unfold Seg28.relationRow781 at r781; linear_combination r781), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg25
    refine ⟨rho 20172, rho 20173, rho 20174, rho 20175, rho 20176,
      (by unfold Seg28.relationRow782 at r782; linear_combination r782), (by unfold Seg28.relationRow783 at r783; linear_combination r783), (by unfold Seg28.relationRow784 at r784; linear_combination r784), (by unfold Seg28.relationRow785 at r785; linear_combination r785), (by unfold Seg28.relationRow786 at r786; linear_combination r786), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg26
    refine ⟨rho 20177, rho 20178, rho 20179, rho 20180, rho 20181,
      (by unfold Seg28.relationRow787 at r787; linear_combination r787), (by unfold Seg28.relationRow788 at r788; linear_combination r788), (by unfold Seg28.relationRow789 at r789; linear_combination r789), (by unfold Seg28.relationRow790 at r790; linear_combination r790), (by unfold Seg28.relationRow791 at r791; linear_combination r791), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg27
    refine ⟨rho 20182, rho 20183, rho 20184, rho 20185, rho 20186,
      (by unfold Seg28.relationRow792 at r792; linear_combination r792), (by unfold Seg28.relationRow793 at r793; linear_combination r793), (by unfold Seg28.relationRow794 at r794; linear_combination r794), (by unfold Seg28.relationRow795 at r795; linear_combination r795), (by unfold Seg28.relationRow796 at r796; linear_combination r796), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg28
    refine ⟨rho 20187, rho 20188, rho 20189, rho 20190, rho 20191,
      (by unfold Seg28.relationRow797 at r797; linear_combination r797), (by unfold Seg28.relationRow798 at r798; linear_combination r798), (by unfold Seg28.relationRow799 at r799; linear_combination r799), (by unfold Seg28.relationRow800 at r800; linear_combination r800), (by unfold Seg28.relationRow801 at r801; linear_combination r801), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg29
    refine ⟨rho 20192, rho 20193, rho 20194, rho 20195, rho 20196,
      (by unfold Seg28.relationRow802 at r802; linear_combination r802), (by unfold Seg28.relationRow803 at r803; linear_combination r803), (by unfold Seg28.relationRow804 at r804; linear_combination r804), (by unfold Seg28.relationRow805 at r805; linear_combination r805), (by unfold Seg28.relationRow806 at r806; linear_combination r806), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg30
    refine ⟨rho 20197, rho 20198, rho 20199, rho 20200, rho 20201,
      (by unfold Seg28.relationRow807 at r807; linear_combination r807), (by unfold Seg28.relationRow808 at r808; linear_combination r808), (by unfold Seg28.relationRow809 at r809; linear_combination r809), (by unfold Seg28.relationRow810 at r810; linear_combination r810), (by unfold Seg28.relationRow811 at r811; linear_combination r811), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg31
    refine ⟨rho 20202, rho 20203, rho 20204, rho 20205, rho 20206,
      (by unfold Seg28.relationRow812 at r812; linear_combination r812), (by unfold Seg28.relationRow813 at r813; linear_combination r813), (by unfold Seg28.relationRow814 at r814; linear_combination r814), (by unfold Seg28.relationRow815 at r815; linear_combination r815), (by unfold Seg28.relationRow816 at r816; linear_combination r816), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg32
    refine ⟨rho 20207, rho 20208, rho 20209, rho 20210, rho 20211,
      (by unfold Seg28.relationRow817 at r817; linear_combination r817), (by unfold Seg28.relationRow818 at r818; linear_combination r818), (by unfold Seg28.relationRow819 at r819; linear_combination r819), (by unfold Seg28.relationRow820 at r820; linear_combination r820), (by unfold Seg28.relationRow821 at r821; linear_combination r821), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg33
    refine ⟨rho 20212, rho 20213, rho 20214, rho 20215, rho 20216,
      (by unfold Seg28.relationRow822 at r822; linear_combination r822), (by unfold Seg28.relationRow823 at r823; linear_combination r823), (by unfold Seg28.relationRow824 at r824; linear_combination r824), (by unfold Seg28.relationRow825 at r825; linear_combination r825), (by unfold Seg28.relationRow826 at r826; linear_combination r826), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg34
    refine ⟨rho 20217, rho 20218, rho 20219, rho 20220, rho 20221,
      (by unfold Seg28.relationRow827 at r827; linear_combination r827), (by unfold Seg28.relationRow828 at r828; linear_combination r828), (by unfold Seg28.relationRow829 at r829; linear_combination r829), (by unfold Seg28.relationRow830 at r830; linear_combination r830), (by unfold Seg28.relationRow831 at r831; linear_combination r831), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg35
    refine ⟨rho 20222, rho 20223, rho 20224, rho 20225, rho 20226,
      (by unfold Seg28.relationRow832 at r832; linear_combination r832), (by unfold Seg28.relationRow833 at r833; linear_combination r833), (by unfold Seg28.relationRow834 at r834; linear_combination r834), (by unfold Seg28.relationRow835 at r835; linear_combination r835), (by unfold Seg28.relationRow836 at r836; linear_combination r836), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg36
    refine ⟨rho 20227, rho 20228, rho 20229, rho 20230, rho 20231,
      (by unfold Seg28.relationRow837 at r837; linear_combination r837), (by unfold Seg28.relationRow838 at r838; linear_combination r838), (by unfold Seg28.relationRow839 at r839; linear_combination r839), (by unfold Seg28.relationRow840 at r840; linear_combination r840), (by unfold Seg28.relationRow841 at r841; linear_combination r841), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg37
    refine ⟨rho 20232, rho 20233, rho 20234, rho 20235, rho 20236,
      (by unfold Seg28.relationRow842 at r842; linear_combination r842), (by unfold Seg28.relationRow843 at r843; linear_combination r843), (by unfold Seg28.relationRow844 at r844; linear_combination r844), (by unfold Seg28.relationRow845 at r845; linear_combination r845), (by unfold Seg28.relationRow846 at r846; linear_combination r846), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg38
    refine ⟨rho 20237, rho 20238, rho 20239, rho 20240, rho 20241,
      (by unfold Seg28.relationRow847 at r847; linear_combination r847), (by unfold Seg28.relationRow848 at r848; linear_combination r848), (by unfold Seg28.relationRow849 at r849; linear_combination r849), (by unfold Seg28.relationRow850 at r850; linear_combination r850), (by unfold Seg28.relationRow851 at r851; linear_combination r851), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg39
    refine ⟨rho 20242, rho 20243, rho 20244, rho 20245, rho 20246,
      (by unfold Seg28.relationRow852 at r852; linear_combination r852), (by unfold Seg28.relationRow853 at r853; linear_combination r853), (by unfold Seg28.relationRow854 at r854; linear_combination r854), (by unfold Seg28.relationRow855 at r855; linear_combination r855), (by unfold Seg28.relationRow856 at r856; linear_combination r856), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg40
    refine ⟨rho 20247, rho 20248, rho 20249, rho 20250, rho 20251,
      (by unfold Seg28.relationRow857 at r857; linear_combination r857), (by unfold Seg28.relationRow858 at r858; linear_combination r858), (by unfold Seg28.relationRow859 at r859; linear_combination r859), (by unfold Seg28.relationRow860 at r860; linear_combination r860), (by unfold Seg28.relationRow861 at r861; linear_combination r861), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg41
    refine ⟨rho 20252, rho 20253, rho 20254, rho 20255, rho 20256,
      (by unfold Seg28.relationRow862 at r862; linear_combination r862), (by unfold Seg28.relationRow863 at r863; linear_combination r863), (by unfold Seg28.relationRow864 at r864; linear_combination r864), (by unfold Seg28.relationRow865 at r865; linear_combination r865), (by unfold Seg28.relationRow866 at r866; linear_combination r866), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg42
    refine ⟨rho 20257, rho 20258, rho 20259, rho 20260, rho 20261,
      (by unfold Seg28.relationRow867 at r867; linear_combination r867), (by unfold Seg28.relationRow868 at r868; linear_combination r868), (by unfold Seg28.relationRow869 at r869; linear_combination r869), (by unfold Seg28.relationRow870 at r870; linear_combination r870), (by unfold Seg28.relationRow871 at r871; linear_combination r871), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg43
    refine ⟨rho 20262, rho 20263, rho 20264, rho 20265, rho 20266,
      (by unfold Seg28.relationRow872 at r872; linear_combination r872), (by unfold Seg28.relationRow873 at r873; linear_combination r873), (by unfold Seg28.relationRow874 at r874; linear_combination r874), (by unfold Seg28.relationRow875 at r875; linear_combination r875), (by unfold Seg28.relationRow876 at r876; linear_combination r876), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg44
    refine ⟨rho 20267, rho 20268, rho 20269, rho 20270, rho 20271,
      (by unfold Seg28.relationRow877 at r877; linear_combination r877), (by unfold Seg28.relationRow878 at r878; linear_combination r878), (by unfold Seg28.relationRow879 at r879; linear_combination r879), (by unfold Seg28.relationRow880 at r880; linear_combination r880), (by unfold Seg28.relationRow881 at r881; linear_combination r881), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg45
    refine ⟨rho 20272, rho 20273, rho 20274, rho 20275, rho 20276,
      (by unfold Seg28.relationRow882 at r882; linear_combination r882), (by unfold Seg28.relationRow883 at r883; linear_combination r883), (by unfold Seg28.relationRow884 at r884; linear_combination r884), (by unfold Seg28.relationRow885 at r885; linear_combination r885), (by unfold Seg28.relationRow886 at r886; linear_combination r886), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg46
    refine ⟨rho 20277, rho 20278, rho 20279, rho 20280, rho 20281,
      (by unfold Seg28.relationRow887 at r887; linear_combination r887), (by unfold Seg28.relationRow888 at r888; linear_combination r888), (by unfold Seg28.relationRow889 at r889; linear_combination r889), (by unfold Seg28.relationRow890 at r890; linear_combination r890), (by unfold Seg28.relationRow891 at r891; linear_combination r891), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg47
    refine ⟨rho 20282, rho 20283, rho 20284, rho 20285, rho 20286,
      (by unfold Seg28.relationRow892 at r892; linear_combination r892), (by unfold Seg28.relationRow893 at r893; linear_combination r893), (by unfold Seg28.relationRow894 at r894; linear_combination r894), (by unfold Seg28.relationRow895 at r895; linear_combination r895), (by unfold Seg28.relationRow896 at r896; linear_combination r896), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg48
    refine ⟨rho 20287, rho 20288, rho 20289, rho 20290, rho 20291,
      (by unfold Seg28.relationRow897 at r897; linear_combination r897), (by unfold Seg28.relationRow898 at r898; linear_combination r898), (by unfold Seg28.relationRow899 at r899; linear_combination r899), (by unfold Seg28.relationRow900 at r900; linear_combination r900), (by unfold Seg28.relationRow901 at r901; linear_combination r901), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg49
    refine ⟨rho 20292, rho 20293, rho 20294, rho 20295, rho 20296,
      (by unfold Seg28.relationRow902 at r902; linear_combination r902), (by unfold Seg28.relationRow903 at r903; linear_combination r903), (by unfold Seg28.relationRow904 at r904; linear_combination r904), (by unfold Seg28.relationRow905 at r905; linear_combination r905), (by unfold Seg28.relationRow906 at r906; linear_combination r906), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg50
    refine ⟨rho 20297, rho 20298, rho 20299, rho 20300, rho 20301,
      (by unfold Seg28.relationRow907 at r907; linear_combination r907), (by unfold Seg28.relationRow908 at r908; linear_combination r908), (by unfold Seg28.relationRow909 at r909; linear_combination r909), (by unfold Seg28.relationRow910 at r910; linear_combination r910), (by unfold Seg28.relationRow911 at r911; linear_combination r911), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg51
    refine ⟨rho 20302, rho 20303, rho 20304, rho 20305, rho 20306,
      (by unfold Seg28.relationRow912 at r912; linear_combination r912), (by unfold Seg28.relationRow913 at r913; linear_combination r913), (by unfold Seg28.relationRow914 at r914; linear_combination r914), (by unfold Seg28.relationRow915 at r915; linear_combination r915), (by unfold Seg28.relationRow916 at r916; linear_combination r916), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg52
    refine ⟨rho 20307, rho 20308, rho 20309, rho 20310, rho 20311,
      (by unfold Seg28.relationRow917 at r917; linear_combination r917), (by unfold Seg28.relationRow918 at r918; linear_combination r918), (by unfold Seg28.relationRow919 at r919; linear_combination r919), (by unfold Seg28.relationRow920 at r920; linear_combination r920), (by unfold Seg28.relationRow921 at r921; linear_combination r921), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg53
    refine ⟨rho 20312, rho 20313, rho 20314, rho 20315, rho 20316,
      (by unfold Seg28.relationRow922 at r922; linear_combination r922), (by unfold Seg28.relationRow923 at r923; linear_combination r923), (by unfold Seg28.relationRow924 at r924; linear_combination r924), (by unfold Seg28.relationRow925 at r925; linear_combination r925), (by unfold Seg28.relationRow926 at r926; linear_combination r926), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg54
    refine ⟨rho 20317, rho 20318, rho 20319, rho 20320, rho 20321,
      (by unfold Seg28.relationRow927 at r927; linear_combination r927), (by unfold Seg28.relationRow928 at r928; linear_combination r928), (by unfold Seg28.relationRow929 at r929; linear_combination r929), (by unfold Seg28.relationRow930 at r930; linear_combination r930), (by unfold Seg28.relationRow931 at r931; linear_combination r931), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg55
    refine ⟨rho 20322, rho 20323, rho 20324, rho 20325, rho 20326,
      (by unfold Seg28.relationRow932 at r932; linear_combination r932), (by unfold Seg28.relationRow933 at r933; linear_combination r933), (by unfold Seg28.relationRow934 at r934; linear_combination r934), (by unfold Seg28.relationRow935 at r935; linear_combination r935), (by unfold Seg28.relationRow936 at r936; linear_combination r936), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg56
    refine ⟨rho 20327, rho 20328, rho 20329, rho 20330, rho 20331,
      (by unfold Seg28.relationRow937 at r937; linear_combination r937), (by unfold Seg28.relationRow938 at r938; linear_combination r938), (by unfold Seg28.relationRow939 at r939; linear_combination r939), (by unfold Seg28.relationRow940 at r940; linear_combination r940), (by unfold Seg28.relationRow941 at r941; linear_combination r941), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg57
    refine ⟨rho 20332, rho 20333, rho 20334, rho 20335, rho 20336,
      (by unfold Seg28.relationRow942 at r942; linear_combination r942), (by unfold Seg28.relationRow943 at r943; linear_combination r943), (by unfold Seg28.relationRow944 at r944; linear_combination r944), (by unfold Seg28.relationRow945 at r945; linear_combination r945), (by unfold Seg28.relationRow946 at r946; linear_combination r946), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg58
    refine ⟨rho 20337, rho 20338, rho 20339, rho 20340, rho 20341,
      (by unfold Seg28.relationRow947 at r947; linear_combination r947), (by unfold Seg28.relationRow948 at r948; linear_combination r948), (by unfold Seg28.relationRow949 at r949; linear_combination r949), (by unfold Seg28.relationRow950 at r950; linear_combination r950), (by unfold Seg28.relationRow951 at r951; linear_combination r951), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg59
    refine ⟨rho 20342, rho 20343, rho 20344, rho 20345, rho 20346,
      (by unfold Seg28.relationRow952 at r952; linear_combination r952), (by unfold Seg28.relationRow953 at r953; linear_combination r953), (by unfold Seg28.relationRow954 at r954; linear_combination r954), (by unfold Seg28.relationRow955 at r955; linear_combination r955), (by unfold Seg28.relationRow956 at r956; linear_combination r956), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg60
    refine ⟨rho 20347, rho 20348, rho 20349, rho 20350, rho 20351,
      (by unfold Seg28.relationRow957 at r957; linear_combination r957), (by unfold Seg28.relationRow958 at r958; linear_combination r958), (by unfold Seg28.relationRow959 at r959; linear_combination r959), (by unfold Seg28.relationRow960 at r960; linear_combination r960), (by unfold Seg28.relationRow961 at r961; linear_combination r961), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg61
    refine ⟨rho 20352, rho 20353, rho 20354, rho 20355, rho 20356,
      (by unfold Seg28.relationRow962 at r962; linear_combination r962), (by unfold Seg28.relationRow963 at r963; linear_combination r963), (by unfold Seg28.relationRow964 at r964; linear_combination r964), (by unfold Seg28.relationRow965 at r965; linear_combination r965), (by unfold Seg28.relationRow966 at r966; linear_combination r966), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg62
    refine ⟨rho 20357, rho 20358, rho 20359, rho 20360, rho 20361,
      (by unfold Seg28.relationRow967 at r967; linear_combination r967), (by unfold Seg28.relationRow968 at r968; linear_combination r968), (by unfold Seg28.relationRow969 at r969; linear_combination r969), (by unfold Seg28.relationRow970 at r970; linear_combination r970), (by unfold Seg28.relationRow971 at r971; linear_combination r971), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg63
    refine ⟨rho 20362, rho 20363, rho 20364, rho 20365, rho 20366,
      (by unfold Seg28.relationRow972 at r972; linear_combination r972), (by unfold Seg28.relationRow973 at r973; linear_combination r973), (by unfold Seg28.relationRow974 at r974; linear_combination r974), (by unfold Seg28.relationRow975 at r975; linear_combination r975), (by unfold Seg28.relationRow976 at r976; linear_combination r976), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg64
    refine ⟨rho 20367, rho 20368, rho 20369, rho 20370, rho 20371,
      (by unfold Seg28.relationRow977 at r977; linear_combination r977), (by unfold Seg28.relationRow978 at r978; linear_combination r978), (by unfold Seg28.relationRow979 at r979; linear_combination r979), (by unfold Seg28.relationRow980 at r980; linear_combination r980), (by unfold Seg28.relationRow981 at r981; linear_combination r981), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg65
    refine ⟨rho 20372, rho 20373, rho 20374, rho 20375, rho 20376,
      (by unfold Seg28.relationRow982 at r982; linear_combination r982), (by unfold Seg28.relationRow983 at r983; linear_combination r983), (by unfold Seg28.relationRow984 at r984; linear_combination r984), (by unfold Seg28.relationRow985 at r985; linear_combination r985), (by unfold Seg28.relationRow986 at r986; linear_combination r986), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg66
    refine ⟨rho 20377, rho 20378, rho 20379, rho 20380, rho 20381,
      (by unfold Seg28.relationRow987 at r987; linear_combination r987), (by unfold Seg28.relationRow988 at r988; linear_combination r988), (by unfold Seg28.relationRow989 at r989; linear_combination r989), (by unfold Seg28.relationRow990 at r990; linear_combination r990), (by unfold Seg28.relationRow991 at r991; linear_combination r991), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg67
    refine ⟨rho 20382, rho 20383, rho 20384, rho 20385, rho 20386,
      (by unfold Seg28.relationRow992 at r992; linear_combination r992), (by unfold Seg28.relationRow993 at r993; linear_combination r993), (by unfold Seg28.relationRow994 at r994; linear_combination r994), (by unfold Seg28.relationRow995 at r995; linear_combination r995), (by unfold Seg28.relationRow996 at r996; linear_combination r996), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg68
    refine ⟨rho 20387, rho 20388, rho 20389, rho 20390, rho 20391,
      (by unfold Seg28.relationRow997 at r997; linear_combination r997), (by unfold Seg28.relationRow998 at r998; linear_combination r998), (by unfold Seg28.relationRow999 at r999; linear_combination r999), (by unfold Seg28.relationRow1000 at r1000; linear_combination r1000), (by unfold Seg28.relationRow1001 at r1001; linear_combination r1001), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode1350_b55fb3.seg69
    refine ⟨rho 20392, rho 20393, rho 20394, rho 20395, rho 20396,
      (by unfold Seg28.relationRow1002 at r1002; linear_combination r1002), (by unfold Seg28.relationRow1003 at r1003; linear_combination r1003), (by unfold Seg28.relationRow1004 at r1004; linear_combination r1004), (by unfold Seg28.relationRow1005 at r1005; linear_combination r1005), (by unfold Seg28.relationRow1006 at r1006; linear_combination r1006), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode1.relation_sound_permSpec (rho 181) (rho 182) (rho 183) (rho 20041) (rho 20042) (rho 20043) (rho 20044) (rho 20045) (rho 20046) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode1.tctNode2DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode1.F) + (2 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode1.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode1Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode1.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

