import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode23.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node23_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode23Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (24 : Seg13.F))
        (rho 25 + rho 15780) (rho 26 + rho 15781 + rho 15782)
        (rho 26 + rho 15783 + rho 15784) (rho 27 + rho 15785) := by
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p108, p109,
    p110, p111, p112
  ⟩
  unfold Seg13.relationPart108 at p108
  rcases p108 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r8665, r8666, r8667, r8668, r8669, r8670, r8671, r8672, r8673, r8674, r8675, r8676, r8677, r8678, r8679, r8680, r8681, r8682, r8683, r8684, r8685, r8686, r8687, r8688, r8689, r8690, r8691, r8692, r8693, r8694, r8695, r8696, r8697, r8698, r8699, r8700, r8701, r8702, r8703, r8704, r8705, r8706, r8707, r8708, r8709, r8710, r8711, r8712, r8713, r8714, r8715, r8716, r8717, r8718, r8719⟩
  unfold Seg13.relationPart109 at p109
  rcases p109 with ⟨r8720, r8721, r8722, r8723, r8724, r8725, r8726, r8727, r8728, r8729, r8730, r8731, r8732, r8733, r8734, r8735, r8736, r8737, r8738, r8739, r8740, r8741, r8742, r8743, r8744, r8745, r8746, r8747, r8748, r8749, r8750, r8751, r8752, r8753, r8754, r8755, r8756, r8757, r8758, r8759, r8760, r8761, r8762, r8763, r8764, r8765, r8766, r8767, r8768, r8769, r8770, r8771, r8772, r8773, r8774, r8775, r8776, r8777, r8778, r8779, r8780, r8781, r8782, r8783, r8784, r8785, r8786, r8787, r8788, r8789, r8790, r8791, r8792, r8793, r8794, r8795, r8796, r8797, r8798, r8799⟩
  unfold Seg13.relationPart110 at p110
  rcases p110 with ⟨r8800, r8801, r8802, r8803, r8804, r8805, r8806, r8807, r8808, r8809, r8810, r8811, r8812, r8813, r8814, r8815, r8816, r8817, r8818, r8819, r8820, r8821, r8822, r8823, r8824, r8825, r8826, r8827, r8828, r8829, r8830, r8831, r8832, r8833, r8834, r8835, r8836, r8837, r8838, r8839, r8840, r8841, r8842, r8843, r8844, r8845, r8846, r8847, r8848, r8849, r8850, r8851, r8852, r8853, r8854, r8855, r8856, r8857, r8858, r8859, r8860, r8861, r8862, r8863, r8864, r8865, r8866, r8867, r8868, r8869, r8870, r8871, r8872, r8873, r8874, r8875, r8876, r8877, r8878, r8879⟩
  unfold Seg13.relationPart111 at p111
  rcases p111 with ⟨r8880, r8881, r8882, r8883, r8884, r8885, r8886, r8887, r8888, r8889, r8890, r8891, r8892, r8893, r8894, r8895, r8896, r8897, r8898, r8899, r8900, r8901, r8902, r8903, r8904, r8905, r8906, r8907, r8908, r8909, r8910, r8911, r8912, r8913, r8914, r8915, r8916, r8917, r8918, r8919, r8920, r8921, r8922, r8923, r8924, r8925, r8926, r8927, r8928, r8929, r8930, r8931, r8932, r8933, r8934, r8935, r8936, r8937, r8938, r8939, r8940, r8941, r8942, r8943, r8944, r8945, r8946, r8947, r8948, r8949, r8950, r8951, r8952, r8953, r8954, r8955, r8956, r8957, r8958, r8959⟩
  unfold Seg13.relationPart112 at p112
  rcases p112 with ⟨r8960, r8961, r8962, r8963, r8964, r8965, r8966, r8967, r8968, r8969, r8970, r8971, r8972, r8973, r8974, r8975, r8976, r8977, r8978, r8979, r8980, r8981, r8982, r8983, r8984, r8985, r8986, r8987, r8988, r8989, r8990, r8991, r8992, r8993, r8994, r8995, r8996, r8997, r8998, r8999, r9000, r9001, r9002, r9003, r9004, r9005, r9006, r9007, r9008, r9009, r9010, r9011, r9012, r9013, r9014⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.relation (rho 25) (rho 26) (rho 27) (rho 15780) (rho 15781) (rho 15782) (rho 15783) (rho 15784) (rho 15785)
      (fun o0 o1 o2 o3 o4 => o0 = rho 16115 ∧ o1 = rho 16120 ∧ o2 = rho 16125 ∧ o3 = rho 16130 ∧ o4 = rho 16135) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg0
    refine ⟨rho 15786, rho 15787, rho 15788, rho 15789, rho 15790,
      (by unfold Seg13.relationRow8665 at r8665; linear_combination r8665), (by unfold Seg13.relationRow8666 at r8666; linear_combination r8666), (by unfold Seg13.relationRow8667 at r8667; linear_combination r8667), (by unfold Seg13.relationRow8668 at r8668; linear_combination r8668), (by unfold Seg13.relationRow8669 at r8669; linear_combination r8669), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg1
    refine ⟨rho 15791, rho 15792, rho 15793, rho 15794, rho 15795,
      (by unfold Seg13.relationRow8670 at r8670; linear_combination r8670), (by unfold Seg13.relationRow8671 at r8671; linear_combination r8671), (by unfold Seg13.relationRow8672 at r8672; linear_combination r8672), (by unfold Seg13.relationRow8673 at r8673; linear_combination r8673), (by unfold Seg13.relationRow8674 at r8674; linear_combination r8674), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg2
    refine ⟨rho 15796, rho 15797, rho 15798, rho 15799, rho 15800,
      (by unfold Seg13.relationRow8675 at r8675; linear_combination r8675), (by unfold Seg13.relationRow8676 at r8676; linear_combination r8676), (by unfold Seg13.relationRow8677 at r8677; linear_combination r8677), (by unfold Seg13.relationRow8678 at r8678; linear_combination r8678), (by unfold Seg13.relationRow8679 at r8679; linear_combination r8679), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg3
    refine ⟨rho 15801, rho 15802, rho 15803, rho 15804, rho 15805,
      (by unfold Seg13.relationRow8680 at r8680; linear_combination r8680), (by unfold Seg13.relationRow8681 at r8681; linear_combination r8681), (by unfold Seg13.relationRow8682 at r8682; linear_combination r8682), (by unfold Seg13.relationRow8683 at r8683; linear_combination r8683), (by unfold Seg13.relationRow8684 at r8684; linear_combination r8684), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg4
    refine ⟨rho 15806, rho 15807, rho 15808, rho 15809, rho 15810,
      (by unfold Seg13.relationRow8685 at r8685; linear_combination r8685), (by unfold Seg13.relationRow8686 at r8686; linear_combination r8686), (by unfold Seg13.relationRow8687 at r8687; linear_combination r8687), (by unfold Seg13.relationRow8688 at r8688; linear_combination r8688), (by unfold Seg13.relationRow8689 at r8689; linear_combination r8689), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg5
    refine ⟨rho 15811, rho 15812, rho 15813, rho 15814, rho 15815,
      (by unfold Seg13.relationRow8690 at r8690; linear_combination r8690), (by unfold Seg13.relationRow8691 at r8691; linear_combination r8691), (by unfold Seg13.relationRow8692 at r8692; linear_combination r8692), (by unfold Seg13.relationRow8693 at r8693; linear_combination r8693), (by unfold Seg13.relationRow8694 at r8694; linear_combination r8694), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg6
    refine ⟨rho 15816, rho 15817, rho 15818, rho 15819, rho 15820,
      (by unfold Seg13.relationRow8695 at r8695; linear_combination r8695), (by unfold Seg13.relationRow8696 at r8696; linear_combination r8696), (by unfold Seg13.relationRow8697 at r8697; linear_combination r8697), (by unfold Seg13.relationRow8698 at r8698; linear_combination r8698), (by unfold Seg13.relationRow8699 at r8699; linear_combination r8699), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg7
    refine ⟨rho 15821, rho 15822, rho 15823, rho 15824, rho 15825,
      (by unfold Seg13.relationRow8700 at r8700; linear_combination r8700), (by unfold Seg13.relationRow8701 at r8701; linear_combination r8701), (by unfold Seg13.relationRow8702 at r8702; linear_combination r8702), (by unfold Seg13.relationRow8703 at r8703; linear_combination r8703), (by unfold Seg13.relationRow8704 at r8704; linear_combination r8704), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg8
    refine ⟨rho 15826, rho 15827, rho 15828, rho 15829, rho 15830,
      (by unfold Seg13.relationRow8705 at r8705; linear_combination r8705), (by unfold Seg13.relationRow8706 at r8706; linear_combination r8706), (by unfold Seg13.relationRow8707 at r8707; linear_combination r8707), (by unfold Seg13.relationRow8708 at r8708; linear_combination r8708), (by unfold Seg13.relationRow8709 at r8709; linear_combination r8709), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg9
    refine ⟨rho 15831, rho 15832, rho 15833, rho 15834, rho 15835,
      (by unfold Seg13.relationRow8710 at r8710; linear_combination r8710), (by unfold Seg13.relationRow8711 at r8711; linear_combination r8711), (by unfold Seg13.relationRow8712 at r8712; linear_combination r8712), (by unfold Seg13.relationRow8713 at r8713; linear_combination r8713), (by unfold Seg13.relationRow8714 at r8714; linear_combination r8714), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg10
    refine ⟨rho 15836, rho 15837, rho 15838, rho 15839, rho 15840,
      (by unfold Seg13.relationRow8715 at r8715; linear_combination r8715), (by unfold Seg13.relationRow8716 at r8716; linear_combination r8716), (by unfold Seg13.relationRow8717 at r8717; linear_combination r8717), (by unfold Seg13.relationRow8718 at r8718; linear_combination r8718), (by unfold Seg13.relationRow8719 at r8719; linear_combination r8719), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg11
    refine ⟨rho 15841, rho 15842, rho 15843, rho 15844, rho 15845,
      (by unfold Seg13.relationRow8720 at r8720; linear_combination r8720), (by unfold Seg13.relationRow8721 at r8721; linear_combination r8721), (by unfold Seg13.relationRow8722 at r8722; linear_combination r8722), (by unfold Seg13.relationRow8723 at r8723; linear_combination r8723), (by unfold Seg13.relationRow8724 at r8724; linear_combination r8724), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg12
    refine ⟨rho 15846, rho 15847, rho 15848, rho 15849, rho 15850,
      (by unfold Seg13.relationRow8725 at r8725; linear_combination r8725), (by unfold Seg13.relationRow8726 at r8726; linear_combination r8726), (by unfold Seg13.relationRow8727 at r8727; linear_combination r8727), (by unfold Seg13.relationRow8728 at r8728; linear_combination r8728), (by unfold Seg13.relationRow8729 at r8729; linear_combination r8729), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg13
    refine ⟨rho 15851, rho 15852, rho 15853, rho 15854, rho 15855,
      (by unfold Seg13.relationRow8730 at r8730; linear_combination r8730), (by unfold Seg13.relationRow8731 at r8731; linear_combination r8731), (by unfold Seg13.relationRow8732 at r8732; linear_combination r8732), (by unfold Seg13.relationRow8733 at r8733; linear_combination r8733), (by unfold Seg13.relationRow8734 at r8734; linear_combination r8734), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg14
    refine ⟨rho 15856, rho 15857, rho 15858, rho 15859, rho 15860,
      (by unfold Seg13.relationRow8735 at r8735; linear_combination r8735), (by unfold Seg13.relationRow8736 at r8736; linear_combination r8736), (by unfold Seg13.relationRow8737 at r8737; linear_combination r8737), (by unfold Seg13.relationRow8738 at r8738; linear_combination r8738), (by unfold Seg13.relationRow8739 at r8739; linear_combination r8739), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg15
    refine ⟨rho 15861, rho 15862, rho 15863, rho 15864, rho 15865,
      (by unfold Seg13.relationRow8740 at r8740; linear_combination r8740), (by unfold Seg13.relationRow8741 at r8741; linear_combination r8741), (by unfold Seg13.relationRow8742 at r8742; linear_combination r8742), (by unfold Seg13.relationRow8743 at r8743; linear_combination r8743), (by unfold Seg13.relationRow8744 at r8744; linear_combination r8744), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg16
    refine ⟨rho 15866, rho 15867, rho 15868, rho 15869, rho 15870,
      (by unfold Seg13.relationRow8745 at r8745; linear_combination r8745), (by unfold Seg13.relationRow8746 at r8746; linear_combination r8746), (by unfold Seg13.relationRow8747 at r8747; linear_combination r8747), (by unfold Seg13.relationRow8748 at r8748; linear_combination r8748), (by unfold Seg13.relationRow8749 at r8749; linear_combination r8749), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg17
    refine ⟨rho 15871, rho 15872, rho 15873, rho 15874, rho 15875,
      (by unfold Seg13.relationRow8750 at r8750; linear_combination r8750), (by unfold Seg13.relationRow8751 at r8751; linear_combination r8751), (by unfold Seg13.relationRow8752 at r8752; linear_combination r8752), (by unfold Seg13.relationRow8753 at r8753; linear_combination r8753), (by unfold Seg13.relationRow8754 at r8754; linear_combination r8754), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg18
    refine ⟨rho 15876, rho 15877, rho 15878, rho 15879, rho 15880,
      (by unfold Seg13.relationRow8755 at r8755; linear_combination r8755), (by unfold Seg13.relationRow8756 at r8756; linear_combination r8756), (by unfold Seg13.relationRow8757 at r8757; linear_combination r8757), (by unfold Seg13.relationRow8758 at r8758; linear_combination r8758), (by unfold Seg13.relationRow8759 at r8759; linear_combination r8759), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg19
    refine ⟨rho 15881, rho 15882, rho 15883, rho 15884, rho 15885,
      (by unfold Seg13.relationRow8760 at r8760; linear_combination r8760), (by unfold Seg13.relationRow8761 at r8761; linear_combination r8761), (by unfold Seg13.relationRow8762 at r8762; linear_combination r8762), (by unfold Seg13.relationRow8763 at r8763; linear_combination r8763), (by unfold Seg13.relationRow8764 at r8764; linear_combination r8764), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg20
    refine ⟨rho 15886, rho 15887, rho 15888, rho 15889, rho 15890,
      (by unfold Seg13.relationRow8765 at r8765; linear_combination r8765), (by unfold Seg13.relationRow8766 at r8766; linear_combination r8766), (by unfold Seg13.relationRow8767 at r8767; linear_combination r8767), (by unfold Seg13.relationRow8768 at r8768; linear_combination r8768), (by unfold Seg13.relationRow8769 at r8769; linear_combination r8769), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg21
    refine ⟨rho 15891, rho 15892, rho 15893, rho 15894, rho 15895,
      (by unfold Seg13.relationRow8770 at r8770; linear_combination r8770), (by unfold Seg13.relationRow8771 at r8771; linear_combination r8771), (by unfold Seg13.relationRow8772 at r8772; linear_combination r8772), (by unfold Seg13.relationRow8773 at r8773; linear_combination r8773), (by unfold Seg13.relationRow8774 at r8774; linear_combination r8774), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg22
    refine ⟨rho 15896, rho 15897, rho 15898, rho 15899, rho 15900,
      (by unfold Seg13.relationRow8775 at r8775; linear_combination r8775), (by unfold Seg13.relationRow8776 at r8776; linear_combination r8776), (by unfold Seg13.relationRow8777 at r8777; linear_combination r8777), (by unfold Seg13.relationRow8778 at r8778; linear_combination r8778), (by unfold Seg13.relationRow8779 at r8779; linear_combination r8779), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg23
    refine ⟨rho 15901, rho 15902, rho 15903, rho 15904, rho 15905,
      (by unfold Seg13.relationRow8780 at r8780; linear_combination r8780), (by unfold Seg13.relationRow8781 at r8781; linear_combination r8781), (by unfold Seg13.relationRow8782 at r8782; linear_combination r8782), (by unfold Seg13.relationRow8783 at r8783; linear_combination r8783), (by unfold Seg13.relationRow8784 at r8784; linear_combination r8784), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg24
    refine ⟨rho 15906, rho 15907, rho 15908, rho 15909, rho 15910,
      (by unfold Seg13.relationRow8785 at r8785; linear_combination r8785), (by unfold Seg13.relationRow8786 at r8786; linear_combination r8786), (by unfold Seg13.relationRow8787 at r8787; linear_combination r8787), (by unfold Seg13.relationRow8788 at r8788; linear_combination r8788), (by unfold Seg13.relationRow8789 at r8789; linear_combination r8789), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg25
    refine ⟨rho 15911, rho 15912, rho 15913, rho 15914, rho 15915,
      (by unfold Seg13.relationRow8790 at r8790; linear_combination r8790), (by unfold Seg13.relationRow8791 at r8791; linear_combination r8791), (by unfold Seg13.relationRow8792 at r8792; linear_combination r8792), (by unfold Seg13.relationRow8793 at r8793; linear_combination r8793), (by unfold Seg13.relationRow8794 at r8794; linear_combination r8794), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg26
    refine ⟨rho 15916, rho 15917, rho 15918, rho 15919, rho 15920,
      (by unfold Seg13.relationRow8795 at r8795; linear_combination r8795), (by unfold Seg13.relationRow8796 at r8796; linear_combination r8796), (by unfold Seg13.relationRow8797 at r8797; linear_combination r8797), (by unfold Seg13.relationRow8798 at r8798; linear_combination r8798), (by unfold Seg13.relationRow8799 at r8799; linear_combination r8799), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg27
    refine ⟨rho 15921, rho 15922, rho 15923, rho 15924, rho 15925,
      (by unfold Seg13.relationRow8800 at r8800; linear_combination r8800), (by unfold Seg13.relationRow8801 at r8801; linear_combination r8801), (by unfold Seg13.relationRow8802 at r8802; linear_combination r8802), (by unfold Seg13.relationRow8803 at r8803; linear_combination r8803), (by unfold Seg13.relationRow8804 at r8804; linear_combination r8804), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg28
    refine ⟨rho 15926, rho 15927, rho 15928, rho 15929, rho 15930,
      (by unfold Seg13.relationRow8805 at r8805; linear_combination r8805), (by unfold Seg13.relationRow8806 at r8806; linear_combination r8806), (by unfold Seg13.relationRow8807 at r8807; linear_combination r8807), (by unfold Seg13.relationRow8808 at r8808; linear_combination r8808), (by unfold Seg13.relationRow8809 at r8809; linear_combination r8809), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg29
    refine ⟨rho 15931, rho 15932, rho 15933, rho 15934, rho 15935,
      (by unfold Seg13.relationRow8810 at r8810; linear_combination r8810), (by unfold Seg13.relationRow8811 at r8811; linear_combination r8811), (by unfold Seg13.relationRow8812 at r8812; linear_combination r8812), (by unfold Seg13.relationRow8813 at r8813; linear_combination r8813), (by unfold Seg13.relationRow8814 at r8814; linear_combination r8814), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg30
    refine ⟨rho 15936, rho 15937, rho 15938, rho 15939, rho 15940,
      (by unfold Seg13.relationRow8815 at r8815; linear_combination r8815), (by unfold Seg13.relationRow8816 at r8816; linear_combination r8816), (by unfold Seg13.relationRow8817 at r8817; linear_combination r8817), (by unfold Seg13.relationRow8818 at r8818; linear_combination r8818), (by unfold Seg13.relationRow8819 at r8819; linear_combination r8819), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg31
    refine ⟨rho 15941, rho 15942, rho 15943, rho 15944, rho 15945,
      (by unfold Seg13.relationRow8820 at r8820; linear_combination r8820), (by unfold Seg13.relationRow8821 at r8821; linear_combination r8821), (by unfold Seg13.relationRow8822 at r8822; linear_combination r8822), (by unfold Seg13.relationRow8823 at r8823; linear_combination r8823), (by unfold Seg13.relationRow8824 at r8824; linear_combination r8824), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg32
    refine ⟨rho 15946, rho 15947, rho 15948, rho 15949, rho 15950,
      (by unfold Seg13.relationRow8825 at r8825; linear_combination r8825), (by unfold Seg13.relationRow8826 at r8826; linear_combination r8826), (by unfold Seg13.relationRow8827 at r8827; linear_combination r8827), (by unfold Seg13.relationRow8828 at r8828; linear_combination r8828), (by unfold Seg13.relationRow8829 at r8829; linear_combination r8829), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg33
    refine ⟨rho 15951, rho 15952, rho 15953, rho 15954, rho 15955,
      (by unfold Seg13.relationRow8830 at r8830; linear_combination r8830), (by unfold Seg13.relationRow8831 at r8831; linear_combination r8831), (by unfold Seg13.relationRow8832 at r8832; linear_combination r8832), (by unfold Seg13.relationRow8833 at r8833; linear_combination r8833), (by unfold Seg13.relationRow8834 at r8834; linear_combination r8834), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg34
    refine ⟨rho 15956, rho 15957, rho 15958, rho 15959, rho 15960,
      (by unfold Seg13.relationRow8835 at r8835; linear_combination r8835), (by unfold Seg13.relationRow8836 at r8836; linear_combination r8836), (by unfold Seg13.relationRow8837 at r8837; linear_combination r8837), (by unfold Seg13.relationRow8838 at r8838; linear_combination r8838), (by unfold Seg13.relationRow8839 at r8839; linear_combination r8839), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg35
    refine ⟨rho 15961, rho 15962, rho 15963, rho 15964, rho 15965,
      (by unfold Seg13.relationRow8840 at r8840; linear_combination r8840), (by unfold Seg13.relationRow8841 at r8841; linear_combination r8841), (by unfold Seg13.relationRow8842 at r8842; linear_combination r8842), (by unfold Seg13.relationRow8843 at r8843; linear_combination r8843), (by unfold Seg13.relationRow8844 at r8844; linear_combination r8844), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg36
    refine ⟨rho 15966, rho 15967, rho 15968, rho 15969, rho 15970,
      (by unfold Seg13.relationRow8845 at r8845; linear_combination r8845), (by unfold Seg13.relationRow8846 at r8846; linear_combination r8846), (by unfold Seg13.relationRow8847 at r8847; linear_combination r8847), (by unfold Seg13.relationRow8848 at r8848; linear_combination r8848), (by unfold Seg13.relationRow8849 at r8849; linear_combination r8849), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg37
    refine ⟨rho 15971, rho 15972, rho 15973, rho 15974, rho 15975,
      (by unfold Seg13.relationRow8850 at r8850; linear_combination r8850), (by unfold Seg13.relationRow8851 at r8851; linear_combination r8851), (by unfold Seg13.relationRow8852 at r8852; linear_combination r8852), (by unfold Seg13.relationRow8853 at r8853; linear_combination r8853), (by unfold Seg13.relationRow8854 at r8854; linear_combination r8854), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg38
    refine ⟨rho 15976, rho 15977, rho 15978, rho 15979, rho 15980,
      (by unfold Seg13.relationRow8855 at r8855; linear_combination r8855), (by unfold Seg13.relationRow8856 at r8856; linear_combination r8856), (by unfold Seg13.relationRow8857 at r8857; linear_combination r8857), (by unfold Seg13.relationRow8858 at r8858; linear_combination r8858), (by unfold Seg13.relationRow8859 at r8859; linear_combination r8859), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg39
    refine ⟨rho 15981, rho 15982, rho 15983, rho 15984, rho 15985,
      (by unfold Seg13.relationRow8860 at r8860; linear_combination r8860), (by unfold Seg13.relationRow8861 at r8861; linear_combination r8861), (by unfold Seg13.relationRow8862 at r8862; linear_combination r8862), (by unfold Seg13.relationRow8863 at r8863; linear_combination r8863), (by unfold Seg13.relationRow8864 at r8864; linear_combination r8864), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg40
    refine ⟨rho 15986, rho 15987, rho 15988, rho 15989, rho 15990,
      (by unfold Seg13.relationRow8865 at r8865; linear_combination r8865), (by unfold Seg13.relationRow8866 at r8866; linear_combination r8866), (by unfold Seg13.relationRow8867 at r8867; linear_combination r8867), (by unfold Seg13.relationRow8868 at r8868; linear_combination r8868), (by unfold Seg13.relationRow8869 at r8869; linear_combination r8869), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg41
    refine ⟨rho 15991, rho 15992, rho 15993, rho 15994, rho 15995,
      (by unfold Seg13.relationRow8870 at r8870; linear_combination r8870), (by unfold Seg13.relationRow8871 at r8871; linear_combination r8871), (by unfold Seg13.relationRow8872 at r8872; linear_combination r8872), (by unfold Seg13.relationRow8873 at r8873; linear_combination r8873), (by unfold Seg13.relationRow8874 at r8874; linear_combination r8874), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg42
    refine ⟨rho 15996, rho 15997, rho 15998, rho 15999, rho 16000,
      (by unfold Seg13.relationRow8875 at r8875; linear_combination r8875), (by unfold Seg13.relationRow8876 at r8876; linear_combination r8876), (by unfold Seg13.relationRow8877 at r8877; linear_combination r8877), (by unfold Seg13.relationRow8878 at r8878; linear_combination r8878), (by unfold Seg13.relationRow8879 at r8879; linear_combination r8879), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg43
    refine ⟨rho 16001, rho 16002, rho 16003, rho 16004, rho 16005,
      (by unfold Seg13.relationRow8880 at r8880; linear_combination r8880), (by unfold Seg13.relationRow8881 at r8881; linear_combination r8881), (by unfold Seg13.relationRow8882 at r8882; linear_combination r8882), (by unfold Seg13.relationRow8883 at r8883; linear_combination r8883), (by unfold Seg13.relationRow8884 at r8884; linear_combination r8884), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg44
    refine ⟨rho 16006, rho 16007, rho 16008, rho 16009, rho 16010,
      (by unfold Seg13.relationRow8885 at r8885; linear_combination r8885), (by unfold Seg13.relationRow8886 at r8886; linear_combination r8886), (by unfold Seg13.relationRow8887 at r8887; linear_combination r8887), (by unfold Seg13.relationRow8888 at r8888; linear_combination r8888), (by unfold Seg13.relationRow8889 at r8889; linear_combination r8889), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg45
    refine ⟨rho 16011, rho 16012, rho 16013, rho 16014, rho 16015,
      (by unfold Seg13.relationRow8890 at r8890; linear_combination r8890), (by unfold Seg13.relationRow8891 at r8891; linear_combination r8891), (by unfold Seg13.relationRow8892 at r8892; linear_combination r8892), (by unfold Seg13.relationRow8893 at r8893; linear_combination r8893), (by unfold Seg13.relationRow8894 at r8894; linear_combination r8894), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg46
    refine ⟨rho 16016, rho 16017, rho 16018, rho 16019, rho 16020,
      (by unfold Seg13.relationRow8895 at r8895; linear_combination r8895), (by unfold Seg13.relationRow8896 at r8896; linear_combination r8896), (by unfold Seg13.relationRow8897 at r8897; linear_combination r8897), (by unfold Seg13.relationRow8898 at r8898; linear_combination r8898), (by unfold Seg13.relationRow8899 at r8899; linear_combination r8899), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg47
    refine ⟨rho 16021, rho 16022, rho 16023, rho 16024, rho 16025,
      (by unfold Seg13.relationRow8900 at r8900; linear_combination r8900), (by unfold Seg13.relationRow8901 at r8901; linear_combination r8901), (by unfold Seg13.relationRow8902 at r8902; linear_combination r8902), (by unfold Seg13.relationRow8903 at r8903; linear_combination r8903), (by unfold Seg13.relationRow8904 at r8904; linear_combination r8904), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg48
    refine ⟨rho 16026, rho 16027, rho 16028, rho 16029, rho 16030,
      (by unfold Seg13.relationRow8905 at r8905; linear_combination r8905), (by unfold Seg13.relationRow8906 at r8906; linear_combination r8906), (by unfold Seg13.relationRow8907 at r8907; linear_combination r8907), (by unfold Seg13.relationRow8908 at r8908; linear_combination r8908), (by unfold Seg13.relationRow8909 at r8909; linear_combination r8909), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg49
    refine ⟨rho 16031, rho 16032, rho 16033, rho 16034, rho 16035,
      (by unfold Seg13.relationRow8910 at r8910; linear_combination r8910), (by unfold Seg13.relationRow8911 at r8911; linear_combination r8911), (by unfold Seg13.relationRow8912 at r8912; linear_combination r8912), (by unfold Seg13.relationRow8913 at r8913; linear_combination r8913), (by unfold Seg13.relationRow8914 at r8914; linear_combination r8914), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg50
    refine ⟨rho 16036, rho 16037, rho 16038, rho 16039, rho 16040,
      (by unfold Seg13.relationRow8915 at r8915; linear_combination r8915), (by unfold Seg13.relationRow8916 at r8916; linear_combination r8916), (by unfold Seg13.relationRow8917 at r8917; linear_combination r8917), (by unfold Seg13.relationRow8918 at r8918; linear_combination r8918), (by unfold Seg13.relationRow8919 at r8919; linear_combination r8919), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg51
    refine ⟨rho 16041, rho 16042, rho 16043, rho 16044, rho 16045,
      (by unfold Seg13.relationRow8920 at r8920; linear_combination r8920), (by unfold Seg13.relationRow8921 at r8921; linear_combination r8921), (by unfold Seg13.relationRow8922 at r8922; linear_combination r8922), (by unfold Seg13.relationRow8923 at r8923; linear_combination r8923), (by unfold Seg13.relationRow8924 at r8924; linear_combination r8924), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg52
    refine ⟨rho 16046, rho 16047, rho 16048, rho 16049, rho 16050,
      (by unfold Seg13.relationRow8925 at r8925; linear_combination r8925), (by unfold Seg13.relationRow8926 at r8926; linear_combination r8926), (by unfold Seg13.relationRow8927 at r8927; linear_combination r8927), (by unfold Seg13.relationRow8928 at r8928; linear_combination r8928), (by unfold Seg13.relationRow8929 at r8929; linear_combination r8929), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg53
    refine ⟨rho 16051, rho 16052, rho 16053, rho 16054, rho 16055,
      (by unfold Seg13.relationRow8930 at r8930; linear_combination r8930), (by unfold Seg13.relationRow8931 at r8931; linear_combination r8931), (by unfold Seg13.relationRow8932 at r8932; linear_combination r8932), (by unfold Seg13.relationRow8933 at r8933; linear_combination r8933), (by unfold Seg13.relationRow8934 at r8934; linear_combination r8934), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg54
    refine ⟨rho 16056, rho 16057, rho 16058, rho 16059, rho 16060,
      (by unfold Seg13.relationRow8935 at r8935; linear_combination r8935), (by unfold Seg13.relationRow8936 at r8936; linear_combination r8936), (by unfold Seg13.relationRow8937 at r8937; linear_combination r8937), (by unfold Seg13.relationRow8938 at r8938; linear_combination r8938), (by unfold Seg13.relationRow8939 at r8939; linear_combination r8939), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg55
    refine ⟨rho 16061, rho 16062, rho 16063, rho 16064, rho 16065,
      (by unfold Seg13.relationRow8940 at r8940; linear_combination r8940), (by unfold Seg13.relationRow8941 at r8941; linear_combination r8941), (by unfold Seg13.relationRow8942 at r8942; linear_combination r8942), (by unfold Seg13.relationRow8943 at r8943; linear_combination r8943), (by unfold Seg13.relationRow8944 at r8944; linear_combination r8944), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg56
    refine ⟨rho 16066, rho 16067, rho 16068, rho 16069, rho 16070,
      (by unfold Seg13.relationRow8945 at r8945; linear_combination r8945), (by unfold Seg13.relationRow8946 at r8946; linear_combination r8946), (by unfold Seg13.relationRow8947 at r8947; linear_combination r8947), (by unfold Seg13.relationRow8948 at r8948; linear_combination r8948), (by unfold Seg13.relationRow8949 at r8949; linear_combination r8949), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg57
    refine ⟨rho 16071, rho 16072, rho 16073, rho 16074, rho 16075,
      (by unfold Seg13.relationRow8950 at r8950; linear_combination r8950), (by unfold Seg13.relationRow8951 at r8951; linear_combination r8951), (by unfold Seg13.relationRow8952 at r8952; linear_combination r8952), (by unfold Seg13.relationRow8953 at r8953; linear_combination r8953), (by unfold Seg13.relationRow8954 at r8954; linear_combination r8954), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg58
    refine ⟨rho 16076, rho 16077, rho 16078, rho 16079, rho 16080,
      (by unfold Seg13.relationRow8955 at r8955; linear_combination r8955), (by unfold Seg13.relationRow8956 at r8956; linear_combination r8956), (by unfold Seg13.relationRow8957 at r8957; linear_combination r8957), (by unfold Seg13.relationRow8958 at r8958; linear_combination r8958), (by unfold Seg13.relationRow8959 at r8959; linear_combination r8959), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg59
    refine ⟨rho 16081, rho 16082, rho 16083, rho 16084, rho 16085,
      (by unfold Seg13.relationRow8960 at r8960; linear_combination r8960), (by unfold Seg13.relationRow8961 at r8961; linear_combination r8961), (by unfold Seg13.relationRow8962 at r8962; linear_combination r8962), (by unfold Seg13.relationRow8963 at r8963; linear_combination r8963), (by unfold Seg13.relationRow8964 at r8964; linear_combination r8964), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg60
    refine ⟨rho 16086, rho 16087, rho 16088, rho 16089, rho 16090,
      (by unfold Seg13.relationRow8965 at r8965; linear_combination r8965), (by unfold Seg13.relationRow8966 at r8966; linear_combination r8966), (by unfold Seg13.relationRow8967 at r8967; linear_combination r8967), (by unfold Seg13.relationRow8968 at r8968; linear_combination r8968), (by unfold Seg13.relationRow8969 at r8969; linear_combination r8969), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg61
    refine ⟨rho 16091, rho 16092, rho 16093, rho 16094, rho 16095,
      (by unfold Seg13.relationRow8970 at r8970; linear_combination r8970), (by unfold Seg13.relationRow8971 at r8971; linear_combination r8971), (by unfold Seg13.relationRow8972 at r8972; linear_combination r8972), (by unfold Seg13.relationRow8973 at r8973; linear_combination r8973), (by unfold Seg13.relationRow8974 at r8974; linear_combination r8974), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg62
    refine ⟨rho 16096, rho 16097, rho 16098, rho 16099, rho 16100,
      (by unfold Seg13.relationRow8975 at r8975; linear_combination r8975), (by unfold Seg13.relationRow8976 at r8976; linear_combination r8976), (by unfold Seg13.relationRow8977 at r8977; linear_combination r8977), (by unfold Seg13.relationRow8978 at r8978; linear_combination r8978), (by unfold Seg13.relationRow8979 at r8979; linear_combination r8979), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg63
    refine ⟨rho 16101, rho 16102, rho 16103, rho 16104, rho 16105,
      (by unfold Seg13.relationRow8980 at r8980; linear_combination r8980), (by unfold Seg13.relationRow8981 at r8981; linear_combination r8981), (by unfold Seg13.relationRow8982 at r8982; linear_combination r8982), (by unfold Seg13.relationRow8983 at r8983; linear_combination r8983), (by unfold Seg13.relationRow8984 at r8984; linear_combination r8984), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg64
    refine ⟨rho 16106, rho 16107, rho 16108, rho 16109, rho 16110,
      (by unfold Seg13.relationRow8985 at r8985; linear_combination r8985), (by unfold Seg13.relationRow8986 at r8986; linear_combination r8986), (by unfold Seg13.relationRow8987 at r8987; linear_combination r8987), (by unfold Seg13.relationRow8988 at r8988; linear_combination r8988), (by unfold Seg13.relationRow8989 at r8989; linear_combination r8989), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg65
    refine ⟨rho 16111, rho 16112, rho 16113, rho 16114, rho 16115,
      (by unfold Seg13.relationRow8990 at r8990; linear_combination r8990), (by unfold Seg13.relationRow8991 at r8991; linear_combination r8991), (by unfold Seg13.relationRow8992 at r8992; linear_combination r8992), (by unfold Seg13.relationRow8993 at r8993; linear_combination r8993), (by unfold Seg13.relationRow8994 at r8994; linear_combination r8994), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg66
    refine ⟨rho 16116, rho 16117, rho 16118, rho 16119, rho 16120,
      (by unfold Seg13.relationRow8995 at r8995; linear_combination r8995), (by unfold Seg13.relationRow8996 at r8996; linear_combination r8996), (by unfold Seg13.relationRow8997 at r8997; linear_combination r8997), (by unfold Seg13.relationRow8998 at r8998; linear_combination r8998), (by unfold Seg13.relationRow8999 at r8999; linear_combination r8999), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg67
    refine ⟨rho 16121, rho 16122, rho 16123, rho 16124, rho 16125,
      (by unfold Seg13.relationRow9000 at r9000; linear_combination r9000), (by unfold Seg13.relationRow9001 at r9001; linear_combination r9001), (by unfold Seg13.relationRow9002 at r9002; linear_combination r9002), (by unfold Seg13.relationRow9003 at r9003; linear_combination r9003), (by unfold Seg13.relationRow9004 at r9004; linear_combination r9004), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg68
    refine ⟨rho 16126, rho 16127, rho 16128, rho 16129, rho 16130,
      (by unfold Seg13.relationRow9005 at r9005; linear_combination r9005), (by unfold Seg13.relationRow9006 at r9006; linear_combination r9006), (by unfold Seg13.relationRow9007 at r9007; linear_combination r9007), (by unfold Seg13.relationRow9008 at r9008; linear_combination r9008), (by unfold Seg13.relationRow9009 at r9009; linear_combination r9009), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode23350_463b6e.seg69
    refine ⟨rho 16131, rho 16132, rho 16133, rho 16134, rho 16135,
      (by unfold Seg13.relationRow9010 at r9010; linear_combination r9010), (by unfold Seg13.relationRow9011 at r9011; linear_combination r9011), (by unfold Seg13.relationRow9012 at r9012; linear_combination r9012), (by unfold Seg13.relationRow9013 at r9013; linear_combination r9013), (by unfold Seg13.relationRow9014 at r9014; linear_combination r9014), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode23.relation_sound_permSpec (rho 25) (rho 26) (rho 27) (rho 15780) (rho 15781) (rho 15782) (rho 15783) (rho 15784) (rho 15785) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode23.tctNode24DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode23.F) + (24 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode23.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode23Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode23.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

