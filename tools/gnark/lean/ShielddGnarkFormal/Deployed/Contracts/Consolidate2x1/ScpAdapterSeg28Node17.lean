import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode17.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node17_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode17Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (18 : Seg28.F))
        (rho 133 + rho 25801) (rho 134 + rho 25802 + rho 25803)
        (rho 134 + rho 25804 + rho 25805) (rho 135 + rho 25806) := by
  unfold Seg28.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p81, p82, p83, p84, p85, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg28.relationPart81 at p81
  rcases p81 with ⟨_, r6481, r6482, r6483, r6484, r6485, r6486, r6487, r6488, r6489, r6490, r6491, r6492, r6493, r6494, r6495, r6496, r6497, r6498, r6499, r6500, r6501, r6502, r6503, r6504, r6505, r6506, r6507, r6508, r6509, r6510, r6511, r6512, r6513, r6514, r6515, r6516, r6517, r6518, r6519, r6520, r6521, r6522, r6523, r6524, r6525, r6526, r6527, r6528, r6529, r6530, r6531, r6532, r6533, r6534, r6535, r6536, r6537, r6538, r6539, r6540, r6541, r6542, r6543, r6544, r6545, r6546, r6547, r6548, r6549, r6550, r6551, r6552, r6553, r6554, r6555, r6556, r6557, r6558, r6559⟩
  unfold Seg28.relationPart82 at p82
  rcases p82 with ⟨r6560, r6561, r6562, r6563, r6564, r6565, r6566, r6567, r6568, r6569, r6570, r6571, r6572, r6573, r6574, r6575, r6576, r6577, r6578, r6579, r6580, r6581, r6582, r6583, r6584, r6585, r6586, r6587, r6588, r6589, r6590, r6591, r6592, r6593, r6594, r6595, r6596, r6597, r6598, r6599, r6600, r6601, r6602, r6603, r6604, r6605, r6606, r6607, r6608, r6609, r6610, r6611, r6612, r6613, r6614, r6615, r6616, r6617, r6618, r6619, r6620, r6621, r6622, r6623, r6624, r6625, r6626, r6627, r6628, r6629, r6630, r6631, r6632, r6633, r6634, r6635, r6636, r6637, r6638, r6639⟩
  unfold Seg28.relationPart83 at p83
  rcases p83 with ⟨r6640, r6641, r6642, r6643, r6644, r6645, r6646, r6647, r6648, r6649, r6650, r6651, r6652, r6653, r6654, r6655, r6656, r6657, r6658, r6659, r6660, r6661, r6662, r6663, r6664, r6665, r6666, r6667, r6668, r6669, r6670, r6671, r6672, r6673, r6674, r6675, r6676, r6677, r6678, r6679, r6680, r6681, r6682, r6683, r6684, r6685, r6686, r6687, r6688, r6689, r6690, r6691, r6692, r6693, r6694, r6695, r6696, r6697, r6698, r6699, r6700, r6701, r6702, r6703, r6704, r6705, r6706, r6707, r6708, r6709, r6710, r6711, r6712, r6713, r6714, r6715, r6716, r6717, r6718, r6719⟩
  unfold Seg28.relationPart84 at p84
  rcases p84 with ⟨r6720, r6721, r6722, r6723, r6724, r6725, r6726, r6727, r6728, r6729, r6730, r6731, r6732, r6733, r6734, r6735, r6736, r6737, r6738, r6739, r6740, r6741, r6742, r6743, r6744, r6745, r6746, r6747, r6748, r6749, r6750, r6751, r6752, r6753, r6754, r6755, r6756, r6757, r6758, r6759, r6760, r6761, r6762, r6763, r6764, r6765, r6766, r6767, r6768, r6769, r6770, r6771, r6772, r6773, r6774, r6775, r6776, r6777, r6778, r6779, r6780, r6781, r6782, r6783, r6784, r6785, r6786, r6787, r6788, r6789, r6790, r6791, r6792, r6793, r6794, r6795, r6796, r6797, r6798, r6799⟩
  unfold Seg28.relationPart85 at p85
  rcases p85 with ⟨r6800, r6801, r6802, r6803, r6804, r6805, r6806, r6807, r6808, r6809, r6810, r6811, r6812, r6813, r6814, r6815, r6816, r6817, r6818, r6819, r6820, r6821, r6822, r6823, r6824, r6825, r6826, r6827, r6828, r6829, r6830, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.relation (rho 133) (rho 134) (rho 135) (rho 25801) (rho 25802) (rho 25803) (rho 25804) (rho 25805) (rho 25806)
      (fun o0 o1 o2 o3 o4 => o0 = rho 26136 ∧ o1 = rho 26141 ∧ o2 = rho 26146 ∧ o3 = rho 26151 ∧ o4 = rho 26156) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg0
    refine ⟨rho 25807, rho 25808, rho 25809, rho 25810, rho 25811,
      (by unfold Seg28.relationRow6481 at r6481; linear_combination r6481), (by unfold Seg28.relationRow6482 at r6482; linear_combination r6482), (by unfold Seg28.relationRow6483 at r6483; linear_combination r6483), (by unfold Seg28.relationRow6484 at r6484; linear_combination r6484), (by unfold Seg28.relationRow6485 at r6485; linear_combination r6485), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg1
    refine ⟨rho 25812, rho 25813, rho 25814, rho 25815, rho 25816,
      (by unfold Seg28.relationRow6486 at r6486; linear_combination r6486), (by unfold Seg28.relationRow6487 at r6487; linear_combination r6487), (by unfold Seg28.relationRow6488 at r6488; linear_combination r6488), (by unfold Seg28.relationRow6489 at r6489; linear_combination r6489), (by unfold Seg28.relationRow6490 at r6490; linear_combination r6490), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg2
    refine ⟨rho 25817, rho 25818, rho 25819, rho 25820, rho 25821,
      (by unfold Seg28.relationRow6491 at r6491; linear_combination r6491), (by unfold Seg28.relationRow6492 at r6492; linear_combination r6492), (by unfold Seg28.relationRow6493 at r6493; linear_combination r6493), (by unfold Seg28.relationRow6494 at r6494; linear_combination r6494), (by unfold Seg28.relationRow6495 at r6495; linear_combination r6495), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg3
    refine ⟨rho 25822, rho 25823, rho 25824, rho 25825, rho 25826,
      (by unfold Seg28.relationRow6496 at r6496; linear_combination r6496), (by unfold Seg28.relationRow6497 at r6497; linear_combination r6497), (by unfold Seg28.relationRow6498 at r6498; linear_combination r6498), (by unfold Seg28.relationRow6499 at r6499; linear_combination r6499), (by unfold Seg28.relationRow6500 at r6500; linear_combination r6500), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg4
    refine ⟨rho 25827, rho 25828, rho 25829, rho 25830, rho 25831,
      (by unfold Seg28.relationRow6501 at r6501; linear_combination r6501), (by unfold Seg28.relationRow6502 at r6502; linear_combination r6502), (by unfold Seg28.relationRow6503 at r6503; linear_combination r6503), (by unfold Seg28.relationRow6504 at r6504; linear_combination r6504), (by unfold Seg28.relationRow6505 at r6505; linear_combination r6505), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg5
    refine ⟨rho 25832, rho 25833, rho 25834, rho 25835, rho 25836,
      (by unfold Seg28.relationRow6506 at r6506; linear_combination r6506), (by unfold Seg28.relationRow6507 at r6507; linear_combination r6507), (by unfold Seg28.relationRow6508 at r6508; linear_combination r6508), (by unfold Seg28.relationRow6509 at r6509; linear_combination r6509), (by unfold Seg28.relationRow6510 at r6510; linear_combination r6510), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg6
    refine ⟨rho 25837, rho 25838, rho 25839, rho 25840, rho 25841,
      (by unfold Seg28.relationRow6511 at r6511; linear_combination r6511), (by unfold Seg28.relationRow6512 at r6512; linear_combination r6512), (by unfold Seg28.relationRow6513 at r6513; linear_combination r6513), (by unfold Seg28.relationRow6514 at r6514; linear_combination r6514), (by unfold Seg28.relationRow6515 at r6515; linear_combination r6515), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg7
    refine ⟨rho 25842, rho 25843, rho 25844, rho 25845, rho 25846,
      (by unfold Seg28.relationRow6516 at r6516; linear_combination r6516), (by unfold Seg28.relationRow6517 at r6517; linear_combination r6517), (by unfold Seg28.relationRow6518 at r6518; linear_combination r6518), (by unfold Seg28.relationRow6519 at r6519; linear_combination r6519), (by unfold Seg28.relationRow6520 at r6520; linear_combination r6520), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg8
    refine ⟨rho 25847, rho 25848, rho 25849, rho 25850, rho 25851,
      (by unfold Seg28.relationRow6521 at r6521; linear_combination r6521), (by unfold Seg28.relationRow6522 at r6522; linear_combination r6522), (by unfold Seg28.relationRow6523 at r6523; linear_combination r6523), (by unfold Seg28.relationRow6524 at r6524; linear_combination r6524), (by unfold Seg28.relationRow6525 at r6525; linear_combination r6525), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg9
    refine ⟨rho 25852, rho 25853, rho 25854, rho 25855, rho 25856,
      (by unfold Seg28.relationRow6526 at r6526; linear_combination r6526), (by unfold Seg28.relationRow6527 at r6527; linear_combination r6527), (by unfold Seg28.relationRow6528 at r6528; linear_combination r6528), (by unfold Seg28.relationRow6529 at r6529; linear_combination r6529), (by unfold Seg28.relationRow6530 at r6530; linear_combination r6530), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg10
    refine ⟨rho 25857, rho 25858, rho 25859, rho 25860, rho 25861,
      (by unfold Seg28.relationRow6531 at r6531; linear_combination r6531), (by unfold Seg28.relationRow6532 at r6532; linear_combination r6532), (by unfold Seg28.relationRow6533 at r6533; linear_combination r6533), (by unfold Seg28.relationRow6534 at r6534; linear_combination r6534), (by unfold Seg28.relationRow6535 at r6535; linear_combination r6535), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg11
    refine ⟨rho 25862, rho 25863, rho 25864, rho 25865, rho 25866,
      (by unfold Seg28.relationRow6536 at r6536; linear_combination r6536), (by unfold Seg28.relationRow6537 at r6537; linear_combination r6537), (by unfold Seg28.relationRow6538 at r6538; linear_combination r6538), (by unfold Seg28.relationRow6539 at r6539; linear_combination r6539), (by unfold Seg28.relationRow6540 at r6540; linear_combination r6540), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg12
    refine ⟨rho 25867, rho 25868, rho 25869, rho 25870, rho 25871,
      (by unfold Seg28.relationRow6541 at r6541; linear_combination r6541), (by unfold Seg28.relationRow6542 at r6542; linear_combination r6542), (by unfold Seg28.relationRow6543 at r6543; linear_combination r6543), (by unfold Seg28.relationRow6544 at r6544; linear_combination r6544), (by unfold Seg28.relationRow6545 at r6545; linear_combination r6545), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg13
    refine ⟨rho 25872, rho 25873, rho 25874, rho 25875, rho 25876,
      (by unfold Seg28.relationRow6546 at r6546; linear_combination r6546), (by unfold Seg28.relationRow6547 at r6547; linear_combination r6547), (by unfold Seg28.relationRow6548 at r6548; linear_combination r6548), (by unfold Seg28.relationRow6549 at r6549; linear_combination r6549), (by unfold Seg28.relationRow6550 at r6550; linear_combination r6550), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg14
    refine ⟨rho 25877, rho 25878, rho 25879, rho 25880, rho 25881,
      (by unfold Seg28.relationRow6551 at r6551; linear_combination r6551), (by unfold Seg28.relationRow6552 at r6552; linear_combination r6552), (by unfold Seg28.relationRow6553 at r6553; linear_combination r6553), (by unfold Seg28.relationRow6554 at r6554; linear_combination r6554), (by unfold Seg28.relationRow6555 at r6555; linear_combination r6555), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg15
    refine ⟨rho 25882, rho 25883, rho 25884, rho 25885, rho 25886,
      (by unfold Seg28.relationRow6556 at r6556; linear_combination r6556), (by unfold Seg28.relationRow6557 at r6557; linear_combination r6557), (by unfold Seg28.relationRow6558 at r6558; linear_combination r6558), (by unfold Seg28.relationRow6559 at r6559; linear_combination r6559), (by unfold Seg28.relationRow6560 at r6560; linear_combination r6560), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg16
    refine ⟨rho 25887, rho 25888, rho 25889, rho 25890, rho 25891,
      (by unfold Seg28.relationRow6561 at r6561; linear_combination r6561), (by unfold Seg28.relationRow6562 at r6562; linear_combination r6562), (by unfold Seg28.relationRow6563 at r6563; linear_combination r6563), (by unfold Seg28.relationRow6564 at r6564; linear_combination r6564), (by unfold Seg28.relationRow6565 at r6565; linear_combination r6565), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg17
    refine ⟨rho 25892, rho 25893, rho 25894, rho 25895, rho 25896,
      (by unfold Seg28.relationRow6566 at r6566; linear_combination r6566), (by unfold Seg28.relationRow6567 at r6567; linear_combination r6567), (by unfold Seg28.relationRow6568 at r6568; linear_combination r6568), (by unfold Seg28.relationRow6569 at r6569; linear_combination r6569), (by unfold Seg28.relationRow6570 at r6570; linear_combination r6570), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg18
    refine ⟨rho 25897, rho 25898, rho 25899, rho 25900, rho 25901,
      (by unfold Seg28.relationRow6571 at r6571; linear_combination r6571), (by unfold Seg28.relationRow6572 at r6572; linear_combination r6572), (by unfold Seg28.relationRow6573 at r6573; linear_combination r6573), (by unfold Seg28.relationRow6574 at r6574; linear_combination r6574), (by unfold Seg28.relationRow6575 at r6575; linear_combination r6575), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg19
    refine ⟨rho 25902, rho 25903, rho 25904, rho 25905, rho 25906,
      (by unfold Seg28.relationRow6576 at r6576; linear_combination r6576), (by unfold Seg28.relationRow6577 at r6577; linear_combination r6577), (by unfold Seg28.relationRow6578 at r6578; linear_combination r6578), (by unfold Seg28.relationRow6579 at r6579; linear_combination r6579), (by unfold Seg28.relationRow6580 at r6580; linear_combination r6580), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg20
    refine ⟨rho 25907, rho 25908, rho 25909, rho 25910, rho 25911,
      (by unfold Seg28.relationRow6581 at r6581; linear_combination r6581), (by unfold Seg28.relationRow6582 at r6582; linear_combination r6582), (by unfold Seg28.relationRow6583 at r6583; linear_combination r6583), (by unfold Seg28.relationRow6584 at r6584; linear_combination r6584), (by unfold Seg28.relationRow6585 at r6585; linear_combination r6585), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg21
    refine ⟨rho 25912, rho 25913, rho 25914, rho 25915, rho 25916,
      (by unfold Seg28.relationRow6586 at r6586; linear_combination r6586), (by unfold Seg28.relationRow6587 at r6587; linear_combination r6587), (by unfold Seg28.relationRow6588 at r6588; linear_combination r6588), (by unfold Seg28.relationRow6589 at r6589; linear_combination r6589), (by unfold Seg28.relationRow6590 at r6590; linear_combination r6590), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg22
    refine ⟨rho 25917, rho 25918, rho 25919, rho 25920, rho 25921,
      (by unfold Seg28.relationRow6591 at r6591; linear_combination r6591), (by unfold Seg28.relationRow6592 at r6592; linear_combination r6592), (by unfold Seg28.relationRow6593 at r6593; linear_combination r6593), (by unfold Seg28.relationRow6594 at r6594; linear_combination r6594), (by unfold Seg28.relationRow6595 at r6595; linear_combination r6595), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg23
    refine ⟨rho 25922, rho 25923, rho 25924, rho 25925, rho 25926,
      (by unfold Seg28.relationRow6596 at r6596; linear_combination r6596), (by unfold Seg28.relationRow6597 at r6597; linear_combination r6597), (by unfold Seg28.relationRow6598 at r6598; linear_combination r6598), (by unfold Seg28.relationRow6599 at r6599; linear_combination r6599), (by unfold Seg28.relationRow6600 at r6600; linear_combination r6600), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg24
    refine ⟨rho 25927, rho 25928, rho 25929, rho 25930, rho 25931,
      (by unfold Seg28.relationRow6601 at r6601; linear_combination r6601), (by unfold Seg28.relationRow6602 at r6602; linear_combination r6602), (by unfold Seg28.relationRow6603 at r6603; linear_combination r6603), (by unfold Seg28.relationRow6604 at r6604; linear_combination r6604), (by unfold Seg28.relationRow6605 at r6605; linear_combination r6605), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg25
    refine ⟨rho 25932, rho 25933, rho 25934, rho 25935, rho 25936,
      (by unfold Seg28.relationRow6606 at r6606; linear_combination r6606), (by unfold Seg28.relationRow6607 at r6607; linear_combination r6607), (by unfold Seg28.relationRow6608 at r6608; linear_combination r6608), (by unfold Seg28.relationRow6609 at r6609; linear_combination r6609), (by unfold Seg28.relationRow6610 at r6610; linear_combination r6610), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg26
    refine ⟨rho 25937, rho 25938, rho 25939, rho 25940, rho 25941,
      (by unfold Seg28.relationRow6611 at r6611; linear_combination r6611), (by unfold Seg28.relationRow6612 at r6612; linear_combination r6612), (by unfold Seg28.relationRow6613 at r6613; linear_combination r6613), (by unfold Seg28.relationRow6614 at r6614; linear_combination r6614), (by unfold Seg28.relationRow6615 at r6615; linear_combination r6615), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg27
    refine ⟨rho 25942, rho 25943, rho 25944, rho 25945, rho 25946,
      (by unfold Seg28.relationRow6616 at r6616; linear_combination r6616), (by unfold Seg28.relationRow6617 at r6617; linear_combination r6617), (by unfold Seg28.relationRow6618 at r6618; linear_combination r6618), (by unfold Seg28.relationRow6619 at r6619; linear_combination r6619), (by unfold Seg28.relationRow6620 at r6620; linear_combination r6620), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg28
    refine ⟨rho 25947, rho 25948, rho 25949, rho 25950, rho 25951,
      (by unfold Seg28.relationRow6621 at r6621; linear_combination r6621), (by unfold Seg28.relationRow6622 at r6622; linear_combination r6622), (by unfold Seg28.relationRow6623 at r6623; linear_combination r6623), (by unfold Seg28.relationRow6624 at r6624; linear_combination r6624), (by unfold Seg28.relationRow6625 at r6625; linear_combination r6625), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg29
    refine ⟨rho 25952, rho 25953, rho 25954, rho 25955, rho 25956,
      (by unfold Seg28.relationRow6626 at r6626; linear_combination r6626), (by unfold Seg28.relationRow6627 at r6627; linear_combination r6627), (by unfold Seg28.relationRow6628 at r6628; linear_combination r6628), (by unfold Seg28.relationRow6629 at r6629; linear_combination r6629), (by unfold Seg28.relationRow6630 at r6630; linear_combination r6630), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg30
    refine ⟨rho 25957, rho 25958, rho 25959, rho 25960, rho 25961,
      (by unfold Seg28.relationRow6631 at r6631; linear_combination r6631), (by unfold Seg28.relationRow6632 at r6632; linear_combination r6632), (by unfold Seg28.relationRow6633 at r6633; linear_combination r6633), (by unfold Seg28.relationRow6634 at r6634; linear_combination r6634), (by unfold Seg28.relationRow6635 at r6635; linear_combination r6635), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg31
    refine ⟨rho 25962, rho 25963, rho 25964, rho 25965, rho 25966,
      (by unfold Seg28.relationRow6636 at r6636; linear_combination r6636), (by unfold Seg28.relationRow6637 at r6637; linear_combination r6637), (by unfold Seg28.relationRow6638 at r6638; linear_combination r6638), (by unfold Seg28.relationRow6639 at r6639; linear_combination r6639), (by unfold Seg28.relationRow6640 at r6640; linear_combination r6640), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg32
    refine ⟨rho 25967, rho 25968, rho 25969, rho 25970, rho 25971,
      (by unfold Seg28.relationRow6641 at r6641; linear_combination r6641), (by unfold Seg28.relationRow6642 at r6642; linear_combination r6642), (by unfold Seg28.relationRow6643 at r6643; linear_combination r6643), (by unfold Seg28.relationRow6644 at r6644; linear_combination r6644), (by unfold Seg28.relationRow6645 at r6645; linear_combination r6645), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg33
    refine ⟨rho 25972, rho 25973, rho 25974, rho 25975, rho 25976,
      (by unfold Seg28.relationRow6646 at r6646; linear_combination r6646), (by unfold Seg28.relationRow6647 at r6647; linear_combination r6647), (by unfold Seg28.relationRow6648 at r6648; linear_combination r6648), (by unfold Seg28.relationRow6649 at r6649; linear_combination r6649), (by unfold Seg28.relationRow6650 at r6650; linear_combination r6650), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg34
    refine ⟨rho 25977, rho 25978, rho 25979, rho 25980, rho 25981,
      (by unfold Seg28.relationRow6651 at r6651; linear_combination r6651), (by unfold Seg28.relationRow6652 at r6652; linear_combination r6652), (by unfold Seg28.relationRow6653 at r6653; linear_combination r6653), (by unfold Seg28.relationRow6654 at r6654; linear_combination r6654), (by unfold Seg28.relationRow6655 at r6655; linear_combination r6655), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg35
    refine ⟨rho 25982, rho 25983, rho 25984, rho 25985, rho 25986,
      (by unfold Seg28.relationRow6656 at r6656; linear_combination r6656), (by unfold Seg28.relationRow6657 at r6657; linear_combination r6657), (by unfold Seg28.relationRow6658 at r6658; linear_combination r6658), (by unfold Seg28.relationRow6659 at r6659; linear_combination r6659), (by unfold Seg28.relationRow6660 at r6660; linear_combination r6660), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg36
    refine ⟨rho 25987, rho 25988, rho 25989, rho 25990, rho 25991,
      (by unfold Seg28.relationRow6661 at r6661; linear_combination r6661), (by unfold Seg28.relationRow6662 at r6662; linear_combination r6662), (by unfold Seg28.relationRow6663 at r6663; linear_combination r6663), (by unfold Seg28.relationRow6664 at r6664; linear_combination r6664), (by unfold Seg28.relationRow6665 at r6665; linear_combination r6665), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg37
    refine ⟨rho 25992, rho 25993, rho 25994, rho 25995, rho 25996,
      (by unfold Seg28.relationRow6666 at r6666; linear_combination r6666), (by unfold Seg28.relationRow6667 at r6667; linear_combination r6667), (by unfold Seg28.relationRow6668 at r6668; linear_combination r6668), (by unfold Seg28.relationRow6669 at r6669; linear_combination r6669), (by unfold Seg28.relationRow6670 at r6670; linear_combination r6670), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg38
    refine ⟨rho 25997, rho 25998, rho 25999, rho 26000, rho 26001,
      (by unfold Seg28.relationRow6671 at r6671; linear_combination r6671), (by unfold Seg28.relationRow6672 at r6672; linear_combination r6672), (by unfold Seg28.relationRow6673 at r6673; linear_combination r6673), (by unfold Seg28.relationRow6674 at r6674; linear_combination r6674), (by unfold Seg28.relationRow6675 at r6675; linear_combination r6675), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg39
    refine ⟨rho 26002, rho 26003, rho 26004, rho 26005, rho 26006,
      (by unfold Seg28.relationRow6676 at r6676; linear_combination r6676), (by unfold Seg28.relationRow6677 at r6677; linear_combination r6677), (by unfold Seg28.relationRow6678 at r6678; linear_combination r6678), (by unfold Seg28.relationRow6679 at r6679; linear_combination r6679), (by unfold Seg28.relationRow6680 at r6680; linear_combination r6680), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg40
    refine ⟨rho 26007, rho 26008, rho 26009, rho 26010, rho 26011,
      (by unfold Seg28.relationRow6681 at r6681; linear_combination r6681), (by unfold Seg28.relationRow6682 at r6682; linear_combination r6682), (by unfold Seg28.relationRow6683 at r6683; linear_combination r6683), (by unfold Seg28.relationRow6684 at r6684; linear_combination r6684), (by unfold Seg28.relationRow6685 at r6685; linear_combination r6685), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg41
    refine ⟨rho 26012, rho 26013, rho 26014, rho 26015, rho 26016,
      (by unfold Seg28.relationRow6686 at r6686; linear_combination r6686), (by unfold Seg28.relationRow6687 at r6687; linear_combination r6687), (by unfold Seg28.relationRow6688 at r6688; linear_combination r6688), (by unfold Seg28.relationRow6689 at r6689; linear_combination r6689), (by unfold Seg28.relationRow6690 at r6690; linear_combination r6690), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg42
    refine ⟨rho 26017, rho 26018, rho 26019, rho 26020, rho 26021,
      (by unfold Seg28.relationRow6691 at r6691; linear_combination r6691), (by unfold Seg28.relationRow6692 at r6692; linear_combination r6692), (by unfold Seg28.relationRow6693 at r6693; linear_combination r6693), (by unfold Seg28.relationRow6694 at r6694; linear_combination r6694), (by unfold Seg28.relationRow6695 at r6695; linear_combination r6695), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg43
    refine ⟨rho 26022, rho 26023, rho 26024, rho 26025, rho 26026,
      (by unfold Seg28.relationRow6696 at r6696; linear_combination r6696), (by unfold Seg28.relationRow6697 at r6697; linear_combination r6697), (by unfold Seg28.relationRow6698 at r6698; linear_combination r6698), (by unfold Seg28.relationRow6699 at r6699; linear_combination r6699), (by unfold Seg28.relationRow6700 at r6700; linear_combination r6700), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg44
    refine ⟨rho 26027, rho 26028, rho 26029, rho 26030, rho 26031,
      (by unfold Seg28.relationRow6701 at r6701; linear_combination r6701), (by unfold Seg28.relationRow6702 at r6702; linear_combination r6702), (by unfold Seg28.relationRow6703 at r6703; linear_combination r6703), (by unfold Seg28.relationRow6704 at r6704; linear_combination r6704), (by unfold Seg28.relationRow6705 at r6705; linear_combination r6705), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg45
    refine ⟨rho 26032, rho 26033, rho 26034, rho 26035, rho 26036,
      (by unfold Seg28.relationRow6706 at r6706; linear_combination r6706), (by unfold Seg28.relationRow6707 at r6707; linear_combination r6707), (by unfold Seg28.relationRow6708 at r6708; linear_combination r6708), (by unfold Seg28.relationRow6709 at r6709; linear_combination r6709), (by unfold Seg28.relationRow6710 at r6710; linear_combination r6710), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg46
    refine ⟨rho 26037, rho 26038, rho 26039, rho 26040, rho 26041,
      (by unfold Seg28.relationRow6711 at r6711; linear_combination r6711), (by unfold Seg28.relationRow6712 at r6712; linear_combination r6712), (by unfold Seg28.relationRow6713 at r6713; linear_combination r6713), (by unfold Seg28.relationRow6714 at r6714; linear_combination r6714), (by unfold Seg28.relationRow6715 at r6715; linear_combination r6715), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg47
    refine ⟨rho 26042, rho 26043, rho 26044, rho 26045, rho 26046,
      (by unfold Seg28.relationRow6716 at r6716; linear_combination r6716), (by unfold Seg28.relationRow6717 at r6717; linear_combination r6717), (by unfold Seg28.relationRow6718 at r6718; linear_combination r6718), (by unfold Seg28.relationRow6719 at r6719; linear_combination r6719), (by unfold Seg28.relationRow6720 at r6720; linear_combination r6720), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg48
    refine ⟨rho 26047, rho 26048, rho 26049, rho 26050, rho 26051,
      (by unfold Seg28.relationRow6721 at r6721; linear_combination r6721), (by unfold Seg28.relationRow6722 at r6722; linear_combination r6722), (by unfold Seg28.relationRow6723 at r6723; linear_combination r6723), (by unfold Seg28.relationRow6724 at r6724; linear_combination r6724), (by unfold Seg28.relationRow6725 at r6725; linear_combination r6725), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg49
    refine ⟨rho 26052, rho 26053, rho 26054, rho 26055, rho 26056,
      (by unfold Seg28.relationRow6726 at r6726; linear_combination r6726), (by unfold Seg28.relationRow6727 at r6727; linear_combination r6727), (by unfold Seg28.relationRow6728 at r6728; linear_combination r6728), (by unfold Seg28.relationRow6729 at r6729; linear_combination r6729), (by unfold Seg28.relationRow6730 at r6730; linear_combination r6730), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg50
    refine ⟨rho 26057, rho 26058, rho 26059, rho 26060, rho 26061,
      (by unfold Seg28.relationRow6731 at r6731; linear_combination r6731), (by unfold Seg28.relationRow6732 at r6732; linear_combination r6732), (by unfold Seg28.relationRow6733 at r6733; linear_combination r6733), (by unfold Seg28.relationRow6734 at r6734; linear_combination r6734), (by unfold Seg28.relationRow6735 at r6735; linear_combination r6735), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg51
    refine ⟨rho 26062, rho 26063, rho 26064, rho 26065, rho 26066,
      (by unfold Seg28.relationRow6736 at r6736; linear_combination r6736), (by unfold Seg28.relationRow6737 at r6737; linear_combination r6737), (by unfold Seg28.relationRow6738 at r6738; linear_combination r6738), (by unfold Seg28.relationRow6739 at r6739; linear_combination r6739), (by unfold Seg28.relationRow6740 at r6740; linear_combination r6740), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg52
    refine ⟨rho 26067, rho 26068, rho 26069, rho 26070, rho 26071,
      (by unfold Seg28.relationRow6741 at r6741; linear_combination r6741), (by unfold Seg28.relationRow6742 at r6742; linear_combination r6742), (by unfold Seg28.relationRow6743 at r6743; linear_combination r6743), (by unfold Seg28.relationRow6744 at r6744; linear_combination r6744), (by unfold Seg28.relationRow6745 at r6745; linear_combination r6745), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg53
    refine ⟨rho 26072, rho 26073, rho 26074, rho 26075, rho 26076,
      (by unfold Seg28.relationRow6746 at r6746; linear_combination r6746), (by unfold Seg28.relationRow6747 at r6747; linear_combination r6747), (by unfold Seg28.relationRow6748 at r6748; linear_combination r6748), (by unfold Seg28.relationRow6749 at r6749; linear_combination r6749), (by unfold Seg28.relationRow6750 at r6750; linear_combination r6750), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg54
    refine ⟨rho 26077, rho 26078, rho 26079, rho 26080, rho 26081,
      (by unfold Seg28.relationRow6751 at r6751; linear_combination r6751), (by unfold Seg28.relationRow6752 at r6752; linear_combination r6752), (by unfold Seg28.relationRow6753 at r6753; linear_combination r6753), (by unfold Seg28.relationRow6754 at r6754; linear_combination r6754), (by unfold Seg28.relationRow6755 at r6755; linear_combination r6755), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg55
    refine ⟨rho 26082, rho 26083, rho 26084, rho 26085, rho 26086,
      (by unfold Seg28.relationRow6756 at r6756; linear_combination r6756), (by unfold Seg28.relationRow6757 at r6757; linear_combination r6757), (by unfold Seg28.relationRow6758 at r6758; linear_combination r6758), (by unfold Seg28.relationRow6759 at r6759; linear_combination r6759), (by unfold Seg28.relationRow6760 at r6760; linear_combination r6760), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg56
    refine ⟨rho 26087, rho 26088, rho 26089, rho 26090, rho 26091,
      (by unfold Seg28.relationRow6761 at r6761; linear_combination r6761), (by unfold Seg28.relationRow6762 at r6762; linear_combination r6762), (by unfold Seg28.relationRow6763 at r6763; linear_combination r6763), (by unfold Seg28.relationRow6764 at r6764; linear_combination r6764), (by unfold Seg28.relationRow6765 at r6765; linear_combination r6765), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg57
    refine ⟨rho 26092, rho 26093, rho 26094, rho 26095, rho 26096,
      (by unfold Seg28.relationRow6766 at r6766; linear_combination r6766), (by unfold Seg28.relationRow6767 at r6767; linear_combination r6767), (by unfold Seg28.relationRow6768 at r6768; linear_combination r6768), (by unfold Seg28.relationRow6769 at r6769; linear_combination r6769), (by unfold Seg28.relationRow6770 at r6770; linear_combination r6770), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg58
    refine ⟨rho 26097, rho 26098, rho 26099, rho 26100, rho 26101,
      (by unfold Seg28.relationRow6771 at r6771; linear_combination r6771), (by unfold Seg28.relationRow6772 at r6772; linear_combination r6772), (by unfold Seg28.relationRow6773 at r6773; linear_combination r6773), (by unfold Seg28.relationRow6774 at r6774; linear_combination r6774), (by unfold Seg28.relationRow6775 at r6775; linear_combination r6775), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg59
    refine ⟨rho 26102, rho 26103, rho 26104, rho 26105, rho 26106,
      (by unfold Seg28.relationRow6776 at r6776; linear_combination r6776), (by unfold Seg28.relationRow6777 at r6777; linear_combination r6777), (by unfold Seg28.relationRow6778 at r6778; linear_combination r6778), (by unfold Seg28.relationRow6779 at r6779; linear_combination r6779), (by unfold Seg28.relationRow6780 at r6780; linear_combination r6780), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg60
    refine ⟨rho 26107, rho 26108, rho 26109, rho 26110, rho 26111,
      (by unfold Seg28.relationRow6781 at r6781; linear_combination r6781), (by unfold Seg28.relationRow6782 at r6782; linear_combination r6782), (by unfold Seg28.relationRow6783 at r6783; linear_combination r6783), (by unfold Seg28.relationRow6784 at r6784; linear_combination r6784), (by unfold Seg28.relationRow6785 at r6785; linear_combination r6785), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg61
    refine ⟨rho 26112, rho 26113, rho 26114, rho 26115, rho 26116,
      (by unfold Seg28.relationRow6786 at r6786; linear_combination r6786), (by unfold Seg28.relationRow6787 at r6787; linear_combination r6787), (by unfold Seg28.relationRow6788 at r6788; linear_combination r6788), (by unfold Seg28.relationRow6789 at r6789; linear_combination r6789), (by unfold Seg28.relationRow6790 at r6790; linear_combination r6790), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg62
    refine ⟨rho 26117, rho 26118, rho 26119, rho 26120, rho 26121,
      (by unfold Seg28.relationRow6791 at r6791; linear_combination r6791), (by unfold Seg28.relationRow6792 at r6792; linear_combination r6792), (by unfold Seg28.relationRow6793 at r6793; linear_combination r6793), (by unfold Seg28.relationRow6794 at r6794; linear_combination r6794), (by unfold Seg28.relationRow6795 at r6795; linear_combination r6795), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg63
    refine ⟨rho 26122, rho 26123, rho 26124, rho 26125, rho 26126,
      (by unfold Seg28.relationRow6796 at r6796; linear_combination r6796), (by unfold Seg28.relationRow6797 at r6797; linear_combination r6797), (by unfold Seg28.relationRow6798 at r6798; linear_combination r6798), (by unfold Seg28.relationRow6799 at r6799; linear_combination r6799), (by unfold Seg28.relationRow6800 at r6800; linear_combination r6800), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg64
    refine ⟨rho 26127, rho 26128, rho 26129, rho 26130, rho 26131,
      (by unfold Seg28.relationRow6801 at r6801; linear_combination r6801), (by unfold Seg28.relationRow6802 at r6802; linear_combination r6802), (by unfold Seg28.relationRow6803 at r6803; linear_combination r6803), (by unfold Seg28.relationRow6804 at r6804; linear_combination r6804), (by unfold Seg28.relationRow6805 at r6805; linear_combination r6805), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg65
    refine ⟨rho 26132, rho 26133, rho 26134, rho 26135, rho 26136,
      (by unfold Seg28.relationRow6806 at r6806; linear_combination r6806), (by unfold Seg28.relationRow6807 at r6807; linear_combination r6807), (by unfold Seg28.relationRow6808 at r6808; linear_combination r6808), (by unfold Seg28.relationRow6809 at r6809; linear_combination r6809), (by unfold Seg28.relationRow6810 at r6810; linear_combination r6810), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg66
    refine ⟨rho 26137, rho 26138, rho 26139, rho 26140, rho 26141,
      (by unfold Seg28.relationRow6811 at r6811; linear_combination r6811), (by unfold Seg28.relationRow6812 at r6812; linear_combination r6812), (by unfold Seg28.relationRow6813 at r6813; linear_combination r6813), (by unfold Seg28.relationRow6814 at r6814; linear_combination r6814), (by unfold Seg28.relationRow6815 at r6815; linear_combination r6815), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg67
    refine ⟨rho 26142, rho 26143, rho 26144, rho 26145, rho 26146,
      (by unfold Seg28.relationRow6816 at r6816; linear_combination r6816), (by unfold Seg28.relationRow6817 at r6817; linear_combination r6817), (by unfold Seg28.relationRow6818 at r6818; linear_combination r6818), (by unfold Seg28.relationRow6819 at r6819; linear_combination r6819), (by unfold Seg28.relationRow6820 at r6820; linear_combination r6820), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg68
    refine ⟨rho 26147, rho 26148, rho 26149, rho 26150, rho 26151,
      (by unfold Seg28.relationRow6821 at r6821; linear_combination r6821), (by unfold Seg28.relationRow6822 at r6822; linear_combination r6822), (by unfold Seg28.relationRow6823 at r6823; linear_combination r6823), (by unfold Seg28.relationRow6824 at r6824; linear_combination r6824), (by unfold Seg28.relationRow6825 at r6825; linear_combination r6825), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_f407d5.seg69
    refine ⟨rho 26152, rho 26153, rho 26154, rho 26155, rho 26156,
      (by unfold Seg28.relationRow6826 at r6826; linear_combination r6826), (by unfold Seg28.relationRow6827 at r6827; linear_combination r6827), (by unfold Seg28.relationRow6828 at r6828; linear_combination r6828), (by unfold Seg28.relationRow6829 at r6829; linear_combination r6829), (by unfold Seg28.relationRow6830 at r6830; linear_combination r6830), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode17.relation_sound_permSpec (rho 133) (rho 134) (rho 135) (rho 25801) (rho 25802) (rho 25803) (rho 25804) (rho 25805) (rho 25806) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode17.tctNode18DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode17.F) + (18 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode17.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode17Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode17.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

