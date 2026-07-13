import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode20.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node20_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode20Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (21 : Seg13.F))
        (rho 34 + rho 14700) (rho 35 + rho 14701 + rho 14702)
        (rho 35 + rho 14703 + rho 14704) (rho 36 + rho 14705) := by
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
    _, _, _, _, p94, p95, p96, p97, p98, p99,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart94 at p94
  rcases p94 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7573, r7574, r7575, r7576, r7577, r7578, r7579, r7580, r7581, r7582, r7583, r7584, r7585, r7586, r7587, r7588, r7589, r7590, r7591, r7592, r7593, r7594, r7595, r7596, r7597, r7598, r7599⟩
  unfold Seg13.relationPart95 at p95
  rcases p95 with ⟨r7600, r7601, r7602, r7603, r7604, r7605, r7606, r7607, r7608, r7609, r7610, r7611, r7612, r7613, r7614, r7615, r7616, r7617, r7618, r7619, r7620, r7621, r7622, r7623, r7624, r7625, r7626, r7627, r7628, r7629, r7630, r7631, r7632, r7633, r7634, r7635, r7636, r7637, r7638, r7639, r7640, r7641, r7642, r7643, r7644, r7645, r7646, r7647, r7648, r7649, r7650, r7651, r7652, r7653, r7654, r7655, r7656, r7657, r7658, r7659, r7660, r7661, r7662, r7663, r7664, r7665, r7666, r7667, r7668, r7669, r7670, r7671, r7672, r7673, r7674, r7675, r7676, r7677, r7678, r7679⟩
  unfold Seg13.relationPart96 at p96
  rcases p96 with ⟨r7680, r7681, r7682, r7683, r7684, r7685, r7686, r7687, r7688, r7689, r7690, r7691, r7692, r7693, r7694, r7695, r7696, r7697, r7698, r7699, r7700, r7701, r7702, r7703, r7704, r7705, r7706, r7707, r7708, r7709, r7710, r7711, r7712, r7713, r7714, r7715, r7716, r7717, r7718, r7719, r7720, r7721, r7722, r7723, r7724, r7725, r7726, r7727, r7728, r7729, r7730, r7731, r7732, r7733, r7734, r7735, r7736, r7737, r7738, r7739, r7740, r7741, r7742, r7743, r7744, r7745, r7746, r7747, r7748, r7749, r7750, r7751, r7752, r7753, r7754, r7755, r7756, r7757, r7758, r7759⟩
  unfold Seg13.relationPart97 at p97
  rcases p97 with ⟨r7760, r7761, r7762, r7763, r7764, r7765, r7766, r7767, r7768, r7769, r7770, r7771, r7772, r7773, r7774, r7775, r7776, r7777, r7778, r7779, r7780, r7781, r7782, r7783, r7784, r7785, r7786, r7787, r7788, r7789, r7790, r7791, r7792, r7793, r7794, r7795, r7796, r7797, r7798, r7799, r7800, r7801, r7802, r7803, r7804, r7805, r7806, r7807, r7808, r7809, r7810, r7811, r7812, r7813, r7814, r7815, r7816, r7817, r7818, r7819, r7820, r7821, r7822, r7823, r7824, r7825, r7826, r7827, r7828, r7829, r7830, r7831, r7832, r7833, r7834, r7835, r7836, r7837, r7838, r7839⟩
  unfold Seg13.relationPart98 at p98
  rcases p98 with ⟨r7840, r7841, r7842, r7843, r7844, r7845, r7846, r7847, r7848, r7849, r7850, r7851, r7852, r7853, r7854, r7855, r7856, r7857, r7858, r7859, r7860, r7861, r7862, r7863, r7864, r7865, r7866, r7867, r7868, r7869, r7870, r7871, r7872, r7873, r7874, r7875, r7876, r7877, r7878, r7879, r7880, r7881, r7882, r7883, r7884, r7885, r7886, r7887, r7888, r7889, r7890, r7891, r7892, r7893, r7894, r7895, r7896, r7897, r7898, r7899, r7900, r7901, r7902, r7903, r7904, r7905, r7906, r7907, r7908, r7909, r7910, r7911, r7912, r7913, r7914, r7915, r7916, r7917, r7918, r7919⟩
  unfold Seg13.relationPart99 at p99
  rcases p99 with ⟨r7920, r7921, r7922, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.relation (rho 34) (rho 35) (rho 36) (rho 14700) (rho 14701) (rho 14702) (rho 14703) (rho 14704) (rho 14705)
      (fun o0 o1 o2 o3 o4 => o0 = rho 15035 ∧ o1 = rho 15040 ∧ o2 = rho 15045 ∧ o3 = rho 15050 ∧ o4 = rho 15055) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg0
    refine ⟨rho 14706, rho 14707, rho 14708, rho 14709, rho 14710,
      (by unfold Seg13.relationRow7573 at r7573; linear_combination r7573), (by unfold Seg13.relationRow7574 at r7574; linear_combination r7574), (by unfold Seg13.relationRow7575 at r7575; linear_combination r7575), (by unfold Seg13.relationRow7576 at r7576; linear_combination r7576), (by unfold Seg13.relationRow7577 at r7577; linear_combination r7577), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg1
    refine ⟨rho 14711, rho 14712, rho 14713, rho 14714, rho 14715,
      (by unfold Seg13.relationRow7578 at r7578; linear_combination r7578), (by unfold Seg13.relationRow7579 at r7579; linear_combination r7579), (by unfold Seg13.relationRow7580 at r7580; linear_combination r7580), (by unfold Seg13.relationRow7581 at r7581; linear_combination r7581), (by unfold Seg13.relationRow7582 at r7582; linear_combination r7582), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg2
    refine ⟨rho 14716, rho 14717, rho 14718, rho 14719, rho 14720,
      (by unfold Seg13.relationRow7583 at r7583; linear_combination r7583), (by unfold Seg13.relationRow7584 at r7584; linear_combination r7584), (by unfold Seg13.relationRow7585 at r7585; linear_combination r7585), (by unfold Seg13.relationRow7586 at r7586; linear_combination r7586), (by unfold Seg13.relationRow7587 at r7587; linear_combination r7587), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg3
    refine ⟨rho 14721, rho 14722, rho 14723, rho 14724, rho 14725,
      (by unfold Seg13.relationRow7588 at r7588; linear_combination r7588), (by unfold Seg13.relationRow7589 at r7589; linear_combination r7589), (by unfold Seg13.relationRow7590 at r7590; linear_combination r7590), (by unfold Seg13.relationRow7591 at r7591; linear_combination r7591), (by unfold Seg13.relationRow7592 at r7592; linear_combination r7592), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg4
    refine ⟨rho 14726, rho 14727, rho 14728, rho 14729, rho 14730,
      (by unfold Seg13.relationRow7593 at r7593; linear_combination r7593), (by unfold Seg13.relationRow7594 at r7594; linear_combination r7594), (by unfold Seg13.relationRow7595 at r7595; linear_combination r7595), (by unfold Seg13.relationRow7596 at r7596; linear_combination r7596), (by unfold Seg13.relationRow7597 at r7597; linear_combination r7597), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg5
    refine ⟨rho 14731, rho 14732, rho 14733, rho 14734, rho 14735,
      (by unfold Seg13.relationRow7598 at r7598; linear_combination r7598), (by unfold Seg13.relationRow7599 at r7599; linear_combination r7599), (by unfold Seg13.relationRow7600 at r7600; linear_combination r7600), (by unfold Seg13.relationRow7601 at r7601; linear_combination r7601), (by unfold Seg13.relationRow7602 at r7602; linear_combination r7602), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg6
    refine ⟨rho 14736, rho 14737, rho 14738, rho 14739, rho 14740,
      (by unfold Seg13.relationRow7603 at r7603; linear_combination r7603), (by unfold Seg13.relationRow7604 at r7604; linear_combination r7604), (by unfold Seg13.relationRow7605 at r7605; linear_combination r7605), (by unfold Seg13.relationRow7606 at r7606; linear_combination r7606), (by unfold Seg13.relationRow7607 at r7607; linear_combination r7607), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg7
    refine ⟨rho 14741, rho 14742, rho 14743, rho 14744, rho 14745,
      (by unfold Seg13.relationRow7608 at r7608; linear_combination r7608), (by unfold Seg13.relationRow7609 at r7609; linear_combination r7609), (by unfold Seg13.relationRow7610 at r7610; linear_combination r7610), (by unfold Seg13.relationRow7611 at r7611; linear_combination r7611), (by unfold Seg13.relationRow7612 at r7612; linear_combination r7612), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg8
    refine ⟨rho 14746, rho 14747, rho 14748, rho 14749, rho 14750,
      (by unfold Seg13.relationRow7613 at r7613; linear_combination r7613), (by unfold Seg13.relationRow7614 at r7614; linear_combination r7614), (by unfold Seg13.relationRow7615 at r7615; linear_combination r7615), (by unfold Seg13.relationRow7616 at r7616; linear_combination r7616), (by unfold Seg13.relationRow7617 at r7617; linear_combination r7617), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg9
    refine ⟨rho 14751, rho 14752, rho 14753, rho 14754, rho 14755,
      (by unfold Seg13.relationRow7618 at r7618; linear_combination r7618), (by unfold Seg13.relationRow7619 at r7619; linear_combination r7619), (by unfold Seg13.relationRow7620 at r7620; linear_combination r7620), (by unfold Seg13.relationRow7621 at r7621; linear_combination r7621), (by unfold Seg13.relationRow7622 at r7622; linear_combination r7622), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg10
    refine ⟨rho 14756, rho 14757, rho 14758, rho 14759, rho 14760,
      (by unfold Seg13.relationRow7623 at r7623; linear_combination r7623), (by unfold Seg13.relationRow7624 at r7624; linear_combination r7624), (by unfold Seg13.relationRow7625 at r7625; linear_combination r7625), (by unfold Seg13.relationRow7626 at r7626; linear_combination r7626), (by unfold Seg13.relationRow7627 at r7627; linear_combination r7627), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg11
    refine ⟨rho 14761, rho 14762, rho 14763, rho 14764, rho 14765,
      (by unfold Seg13.relationRow7628 at r7628; linear_combination r7628), (by unfold Seg13.relationRow7629 at r7629; linear_combination r7629), (by unfold Seg13.relationRow7630 at r7630; linear_combination r7630), (by unfold Seg13.relationRow7631 at r7631; linear_combination r7631), (by unfold Seg13.relationRow7632 at r7632; linear_combination r7632), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg12
    refine ⟨rho 14766, rho 14767, rho 14768, rho 14769, rho 14770,
      (by unfold Seg13.relationRow7633 at r7633; linear_combination r7633), (by unfold Seg13.relationRow7634 at r7634; linear_combination r7634), (by unfold Seg13.relationRow7635 at r7635; linear_combination r7635), (by unfold Seg13.relationRow7636 at r7636; linear_combination r7636), (by unfold Seg13.relationRow7637 at r7637; linear_combination r7637), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg13
    refine ⟨rho 14771, rho 14772, rho 14773, rho 14774, rho 14775,
      (by unfold Seg13.relationRow7638 at r7638; linear_combination r7638), (by unfold Seg13.relationRow7639 at r7639; linear_combination r7639), (by unfold Seg13.relationRow7640 at r7640; linear_combination r7640), (by unfold Seg13.relationRow7641 at r7641; linear_combination r7641), (by unfold Seg13.relationRow7642 at r7642; linear_combination r7642), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg14
    refine ⟨rho 14776, rho 14777, rho 14778, rho 14779, rho 14780,
      (by unfold Seg13.relationRow7643 at r7643; linear_combination r7643), (by unfold Seg13.relationRow7644 at r7644; linear_combination r7644), (by unfold Seg13.relationRow7645 at r7645; linear_combination r7645), (by unfold Seg13.relationRow7646 at r7646; linear_combination r7646), (by unfold Seg13.relationRow7647 at r7647; linear_combination r7647), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg15
    refine ⟨rho 14781, rho 14782, rho 14783, rho 14784, rho 14785,
      (by unfold Seg13.relationRow7648 at r7648; linear_combination r7648), (by unfold Seg13.relationRow7649 at r7649; linear_combination r7649), (by unfold Seg13.relationRow7650 at r7650; linear_combination r7650), (by unfold Seg13.relationRow7651 at r7651; linear_combination r7651), (by unfold Seg13.relationRow7652 at r7652; linear_combination r7652), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg16
    refine ⟨rho 14786, rho 14787, rho 14788, rho 14789, rho 14790,
      (by unfold Seg13.relationRow7653 at r7653; linear_combination r7653), (by unfold Seg13.relationRow7654 at r7654; linear_combination r7654), (by unfold Seg13.relationRow7655 at r7655; linear_combination r7655), (by unfold Seg13.relationRow7656 at r7656; linear_combination r7656), (by unfold Seg13.relationRow7657 at r7657; linear_combination r7657), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg17
    refine ⟨rho 14791, rho 14792, rho 14793, rho 14794, rho 14795,
      (by unfold Seg13.relationRow7658 at r7658; linear_combination r7658), (by unfold Seg13.relationRow7659 at r7659; linear_combination r7659), (by unfold Seg13.relationRow7660 at r7660; linear_combination r7660), (by unfold Seg13.relationRow7661 at r7661; linear_combination r7661), (by unfold Seg13.relationRow7662 at r7662; linear_combination r7662), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg18
    refine ⟨rho 14796, rho 14797, rho 14798, rho 14799, rho 14800,
      (by unfold Seg13.relationRow7663 at r7663; linear_combination r7663), (by unfold Seg13.relationRow7664 at r7664; linear_combination r7664), (by unfold Seg13.relationRow7665 at r7665; linear_combination r7665), (by unfold Seg13.relationRow7666 at r7666; linear_combination r7666), (by unfold Seg13.relationRow7667 at r7667; linear_combination r7667), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg19
    refine ⟨rho 14801, rho 14802, rho 14803, rho 14804, rho 14805,
      (by unfold Seg13.relationRow7668 at r7668; linear_combination r7668), (by unfold Seg13.relationRow7669 at r7669; linear_combination r7669), (by unfold Seg13.relationRow7670 at r7670; linear_combination r7670), (by unfold Seg13.relationRow7671 at r7671; linear_combination r7671), (by unfold Seg13.relationRow7672 at r7672; linear_combination r7672), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg20
    refine ⟨rho 14806, rho 14807, rho 14808, rho 14809, rho 14810,
      (by unfold Seg13.relationRow7673 at r7673; linear_combination r7673), (by unfold Seg13.relationRow7674 at r7674; linear_combination r7674), (by unfold Seg13.relationRow7675 at r7675; linear_combination r7675), (by unfold Seg13.relationRow7676 at r7676; linear_combination r7676), (by unfold Seg13.relationRow7677 at r7677; linear_combination r7677), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg21
    refine ⟨rho 14811, rho 14812, rho 14813, rho 14814, rho 14815,
      (by unfold Seg13.relationRow7678 at r7678; linear_combination r7678), (by unfold Seg13.relationRow7679 at r7679; linear_combination r7679), (by unfold Seg13.relationRow7680 at r7680; linear_combination r7680), (by unfold Seg13.relationRow7681 at r7681; linear_combination r7681), (by unfold Seg13.relationRow7682 at r7682; linear_combination r7682), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg22
    refine ⟨rho 14816, rho 14817, rho 14818, rho 14819, rho 14820,
      (by unfold Seg13.relationRow7683 at r7683; linear_combination r7683), (by unfold Seg13.relationRow7684 at r7684; linear_combination r7684), (by unfold Seg13.relationRow7685 at r7685; linear_combination r7685), (by unfold Seg13.relationRow7686 at r7686; linear_combination r7686), (by unfold Seg13.relationRow7687 at r7687; linear_combination r7687), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg23
    refine ⟨rho 14821, rho 14822, rho 14823, rho 14824, rho 14825,
      (by unfold Seg13.relationRow7688 at r7688; linear_combination r7688), (by unfold Seg13.relationRow7689 at r7689; linear_combination r7689), (by unfold Seg13.relationRow7690 at r7690; linear_combination r7690), (by unfold Seg13.relationRow7691 at r7691; linear_combination r7691), (by unfold Seg13.relationRow7692 at r7692; linear_combination r7692), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg24
    refine ⟨rho 14826, rho 14827, rho 14828, rho 14829, rho 14830,
      (by unfold Seg13.relationRow7693 at r7693; linear_combination r7693), (by unfold Seg13.relationRow7694 at r7694; linear_combination r7694), (by unfold Seg13.relationRow7695 at r7695; linear_combination r7695), (by unfold Seg13.relationRow7696 at r7696; linear_combination r7696), (by unfold Seg13.relationRow7697 at r7697; linear_combination r7697), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg25
    refine ⟨rho 14831, rho 14832, rho 14833, rho 14834, rho 14835,
      (by unfold Seg13.relationRow7698 at r7698; linear_combination r7698), (by unfold Seg13.relationRow7699 at r7699; linear_combination r7699), (by unfold Seg13.relationRow7700 at r7700; linear_combination r7700), (by unfold Seg13.relationRow7701 at r7701; linear_combination r7701), (by unfold Seg13.relationRow7702 at r7702; linear_combination r7702), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg26
    refine ⟨rho 14836, rho 14837, rho 14838, rho 14839, rho 14840,
      (by unfold Seg13.relationRow7703 at r7703; linear_combination r7703), (by unfold Seg13.relationRow7704 at r7704; linear_combination r7704), (by unfold Seg13.relationRow7705 at r7705; linear_combination r7705), (by unfold Seg13.relationRow7706 at r7706; linear_combination r7706), (by unfold Seg13.relationRow7707 at r7707; linear_combination r7707), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg27
    refine ⟨rho 14841, rho 14842, rho 14843, rho 14844, rho 14845,
      (by unfold Seg13.relationRow7708 at r7708; linear_combination r7708), (by unfold Seg13.relationRow7709 at r7709; linear_combination r7709), (by unfold Seg13.relationRow7710 at r7710; linear_combination r7710), (by unfold Seg13.relationRow7711 at r7711; linear_combination r7711), (by unfold Seg13.relationRow7712 at r7712; linear_combination r7712), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg28
    refine ⟨rho 14846, rho 14847, rho 14848, rho 14849, rho 14850,
      (by unfold Seg13.relationRow7713 at r7713; linear_combination r7713), (by unfold Seg13.relationRow7714 at r7714; linear_combination r7714), (by unfold Seg13.relationRow7715 at r7715; linear_combination r7715), (by unfold Seg13.relationRow7716 at r7716; linear_combination r7716), (by unfold Seg13.relationRow7717 at r7717; linear_combination r7717), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg29
    refine ⟨rho 14851, rho 14852, rho 14853, rho 14854, rho 14855,
      (by unfold Seg13.relationRow7718 at r7718; linear_combination r7718), (by unfold Seg13.relationRow7719 at r7719; linear_combination r7719), (by unfold Seg13.relationRow7720 at r7720; linear_combination r7720), (by unfold Seg13.relationRow7721 at r7721; linear_combination r7721), (by unfold Seg13.relationRow7722 at r7722; linear_combination r7722), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg30
    refine ⟨rho 14856, rho 14857, rho 14858, rho 14859, rho 14860,
      (by unfold Seg13.relationRow7723 at r7723; linear_combination r7723), (by unfold Seg13.relationRow7724 at r7724; linear_combination r7724), (by unfold Seg13.relationRow7725 at r7725; linear_combination r7725), (by unfold Seg13.relationRow7726 at r7726; linear_combination r7726), (by unfold Seg13.relationRow7727 at r7727; linear_combination r7727), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg31
    refine ⟨rho 14861, rho 14862, rho 14863, rho 14864, rho 14865,
      (by unfold Seg13.relationRow7728 at r7728; linear_combination r7728), (by unfold Seg13.relationRow7729 at r7729; linear_combination r7729), (by unfold Seg13.relationRow7730 at r7730; linear_combination r7730), (by unfold Seg13.relationRow7731 at r7731; linear_combination r7731), (by unfold Seg13.relationRow7732 at r7732; linear_combination r7732), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg32
    refine ⟨rho 14866, rho 14867, rho 14868, rho 14869, rho 14870,
      (by unfold Seg13.relationRow7733 at r7733; linear_combination r7733), (by unfold Seg13.relationRow7734 at r7734; linear_combination r7734), (by unfold Seg13.relationRow7735 at r7735; linear_combination r7735), (by unfold Seg13.relationRow7736 at r7736; linear_combination r7736), (by unfold Seg13.relationRow7737 at r7737; linear_combination r7737), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg33
    refine ⟨rho 14871, rho 14872, rho 14873, rho 14874, rho 14875,
      (by unfold Seg13.relationRow7738 at r7738; linear_combination r7738), (by unfold Seg13.relationRow7739 at r7739; linear_combination r7739), (by unfold Seg13.relationRow7740 at r7740; linear_combination r7740), (by unfold Seg13.relationRow7741 at r7741; linear_combination r7741), (by unfold Seg13.relationRow7742 at r7742; linear_combination r7742), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg34
    refine ⟨rho 14876, rho 14877, rho 14878, rho 14879, rho 14880,
      (by unfold Seg13.relationRow7743 at r7743; linear_combination r7743), (by unfold Seg13.relationRow7744 at r7744; linear_combination r7744), (by unfold Seg13.relationRow7745 at r7745; linear_combination r7745), (by unfold Seg13.relationRow7746 at r7746; linear_combination r7746), (by unfold Seg13.relationRow7747 at r7747; linear_combination r7747), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg35
    refine ⟨rho 14881, rho 14882, rho 14883, rho 14884, rho 14885,
      (by unfold Seg13.relationRow7748 at r7748; linear_combination r7748), (by unfold Seg13.relationRow7749 at r7749; linear_combination r7749), (by unfold Seg13.relationRow7750 at r7750; linear_combination r7750), (by unfold Seg13.relationRow7751 at r7751; linear_combination r7751), (by unfold Seg13.relationRow7752 at r7752; linear_combination r7752), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg36
    refine ⟨rho 14886, rho 14887, rho 14888, rho 14889, rho 14890,
      (by unfold Seg13.relationRow7753 at r7753; linear_combination r7753), (by unfold Seg13.relationRow7754 at r7754; linear_combination r7754), (by unfold Seg13.relationRow7755 at r7755; linear_combination r7755), (by unfold Seg13.relationRow7756 at r7756; linear_combination r7756), (by unfold Seg13.relationRow7757 at r7757; linear_combination r7757), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg37
    refine ⟨rho 14891, rho 14892, rho 14893, rho 14894, rho 14895,
      (by unfold Seg13.relationRow7758 at r7758; linear_combination r7758), (by unfold Seg13.relationRow7759 at r7759; linear_combination r7759), (by unfold Seg13.relationRow7760 at r7760; linear_combination r7760), (by unfold Seg13.relationRow7761 at r7761; linear_combination r7761), (by unfold Seg13.relationRow7762 at r7762; linear_combination r7762), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg38
    refine ⟨rho 14896, rho 14897, rho 14898, rho 14899, rho 14900,
      (by unfold Seg13.relationRow7763 at r7763; linear_combination r7763), (by unfold Seg13.relationRow7764 at r7764; linear_combination r7764), (by unfold Seg13.relationRow7765 at r7765; linear_combination r7765), (by unfold Seg13.relationRow7766 at r7766; linear_combination r7766), (by unfold Seg13.relationRow7767 at r7767; linear_combination r7767), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg39
    refine ⟨rho 14901, rho 14902, rho 14903, rho 14904, rho 14905,
      (by unfold Seg13.relationRow7768 at r7768; linear_combination r7768), (by unfold Seg13.relationRow7769 at r7769; linear_combination r7769), (by unfold Seg13.relationRow7770 at r7770; linear_combination r7770), (by unfold Seg13.relationRow7771 at r7771; linear_combination r7771), (by unfold Seg13.relationRow7772 at r7772; linear_combination r7772), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg40
    refine ⟨rho 14906, rho 14907, rho 14908, rho 14909, rho 14910,
      (by unfold Seg13.relationRow7773 at r7773; linear_combination r7773), (by unfold Seg13.relationRow7774 at r7774; linear_combination r7774), (by unfold Seg13.relationRow7775 at r7775; linear_combination r7775), (by unfold Seg13.relationRow7776 at r7776; linear_combination r7776), (by unfold Seg13.relationRow7777 at r7777; linear_combination r7777), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg41
    refine ⟨rho 14911, rho 14912, rho 14913, rho 14914, rho 14915,
      (by unfold Seg13.relationRow7778 at r7778; linear_combination r7778), (by unfold Seg13.relationRow7779 at r7779; linear_combination r7779), (by unfold Seg13.relationRow7780 at r7780; linear_combination r7780), (by unfold Seg13.relationRow7781 at r7781; linear_combination r7781), (by unfold Seg13.relationRow7782 at r7782; linear_combination r7782), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg42
    refine ⟨rho 14916, rho 14917, rho 14918, rho 14919, rho 14920,
      (by unfold Seg13.relationRow7783 at r7783; linear_combination r7783), (by unfold Seg13.relationRow7784 at r7784; linear_combination r7784), (by unfold Seg13.relationRow7785 at r7785; linear_combination r7785), (by unfold Seg13.relationRow7786 at r7786; linear_combination r7786), (by unfold Seg13.relationRow7787 at r7787; linear_combination r7787), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg43
    refine ⟨rho 14921, rho 14922, rho 14923, rho 14924, rho 14925,
      (by unfold Seg13.relationRow7788 at r7788; linear_combination r7788), (by unfold Seg13.relationRow7789 at r7789; linear_combination r7789), (by unfold Seg13.relationRow7790 at r7790; linear_combination r7790), (by unfold Seg13.relationRow7791 at r7791; linear_combination r7791), (by unfold Seg13.relationRow7792 at r7792; linear_combination r7792), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg44
    refine ⟨rho 14926, rho 14927, rho 14928, rho 14929, rho 14930,
      (by unfold Seg13.relationRow7793 at r7793; linear_combination r7793), (by unfold Seg13.relationRow7794 at r7794; linear_combination r7794), (by unfold Seg13.relationRow7795 at r7795; linear_combination r7795), (by unfold Seg13.relationRow7796 at r7796; linear_combination r7796), (by unfold Seg13.relationRow7797 at r7797; linear_combination r7797), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg45
    refine ⟨rho 14931, rho 14932, rho 14933, rho 14934, rho 14935,
      (by unfold Seg13.relationRow7798 at r7798; linear_combination r7798), (by unfold Seg13.relationRow7799 at r7799; linear_combination r7799), (by unfold Seg13.relationRow7800 at r7800; linear_combination r7800), (by unfold Seg13.relationRow7801 at r7801; linear_combination r7801), (by unfold Seg13.relationRow7802 at r7802; linear_combination r7802), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg46
    refine ⟨rho 14936, rho 14937, rho 14938, rho 14939, rho 14940,
      (by unfold Seg13.relationRow7803 at r7803; linear_combination r7803), (by unfold Seg13.relationRow7804 at r7804; linear_combination r7804), (by unfold Seg13.relationRow7805 at r7805; linear_combination r7805), (by unfold Seg13.relationRow7806 at r7806; linear_combination r7806), (by unfold Seg13.relationRow7807 at r7807; linear_combination r7807), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg47
    refine ⟨rho 14941, rho 14942, rho 14943, rho 14944, rho 14945,
      (by unfold Seg13.relationRow7808 at r7808; linear_combination r7808), (by unfold Seg13.relationRow7809 at r7809; linear_combination r7809), (by unfold Seg13.relationRow7810 at r7810; linear_combination r7810), (by unfold Seg13.relationRow7811 at r7811; linear_combination r7811), (by unfold Seg13.relationRow7812 at r7812; linear_combination r7812), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg48
    refine ⟨rho 14946, rho 14947, rho 14948, rho 14949, rho 14950,
      (by unfold Seg13.relationRow7813 at r7813; linear_combination r7813), (by unfold Seg13.relationRow7814 at r7814; linear_combination r7814), (by unfold Seg13.relationRow7815 at r7815; linear_combination r7815), (by unfold Seg13.relationRow7816 at r7816; linear_combination r7816), (by unfold Seg13.relationRow7817 at r7817; linear_combination r7817), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg49
    refine ⟨rho 14951, rho 14952, rho 14953, rho 14954, rho 14955,
      (by unfold Seg13.relationRow7818 at r7818; linear_combination r7818), (by unfold Seg13.relationRow7819 at r7819; linear_combination r7819), (by unfold Seg13.relationRow7820 at r7820; linear_combination r7820), (by unfold Seg13.relationRow7821 at r7821; linear_combination r7821), (by unfold Seg13.relationRow7822 at r7822; linear_combination r7822), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg50
    refine ⟨rho 14956, rho 14957, rho 14958, rho 14959, rho 14960,
      (by unfold Seg13.relationRow7823 at r7823; linear_combination r7823), (by unfold Seg13.relationRow7824 at r7824; linear_combination r7824), (by unfold Seg13.relationRow7825 at r7825; linear_combination r7825), (by unfold Seg13.relationRow7826 at r7826; linear_combination r7826), (by unfold Seg13.relationRow7827 at r7827; linear_combination r7827), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg51
    refine ⟨rho 14961, rho 14962, rho 14963, rho 14964, rho 14965,
      (by unfold Seg13.relationRow7828 at r7828; linear_combination r7828), (by unfold Seg13.relationRow7829 at r7829; linear_combination r7829), (by unfold Seg13.relationRow7830 at r7830; linear_combination r7830), (by unfold Seg13.relationRow7831 at r7831; linear_combination r7831), (by unfold Seg13.relationRow7832 at r7832; linear_combination r7832), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg52
    refine ⟨rho 14966, rho 14967, rho 14968, rho 14969, rho 14970,
      (by unfold Seg13.relationRow7833 at r7833; linear_combination r7833), (by unfold Seg13.relationRow7834 at r7834; linear_combination r7834), (by unfold Seg13.relationRow7835 at r7835; linear_combination r7835), (by unfold Seg13.relationRow7836 at r7836; linear_combination r7836), (by unfold Seg13.relationRow7837 at r7837; linear_combination r7837), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg53
    refine ⟨rho 14971, rho 14972, rho 14973, rho 14974, rho 14975,
      (by unfold Seg13.relationRow7838 at r7838; linear_combination r7838), (by unfold Seg13.relationRow7839 at r7839; linear_combination r7839), (by unfold Seg13.relationRow7840 at r7840; linear_combination r7840), (by unfold Seg13.relationRow7841 at r7841; linear_combination r7841), (by unfold Seg13.relationRow7842 at r7842; linear_combination r7842), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg54
    refine ⟨rho 14976, rho 14977, rho 14978, rho 14979, rho 14980,
      (by unfold Seg13.relationRow7843 at r7843; linear_combination r7843), (by unfold Seg13.relationRow7844 at r7844; linear_combination r7844), (by unfold Seg13.relationRow7845 at r7845; linear_combination r7845), (by unfold Seg13.relationRow7846 at r7846; linear_combination r7846), (by unfold Seg13.relationRow7847 at r7847; linear_combination r7847), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg55
    refine ⟨rho 14981, rho 14982, rho 14983, rho 14984, rho 14985,
      (by unfold Seg13.relationRow7848 at r7848; linear_combination r7848), (by unfold Seg13.relationRow7849 at r7849; linear_combination r7849), (by unfold Seg13.relationRow7850 at r7850; linear_combination r7850), (by unfold Seg13.relationRow7851 at r7851; linear_combination r7851), (by unfold Seg13.relationRow7852 at r7852; linear_combination r7852), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg56
    refine ⟨rho 14986, rho 14987, rho 14988, rho 14989, rho 14990,
      (by unfold Seg13.relationRow7853 at r7853; linear_combination r7853), (by unfold Seg13.relationRow7854 at r7854; linear_combination r7854), (by unfold Seg13.relationRow7855 at r7855; linear_combination r7855), (by unfold Seg13.relationRow7856 at r7856; linear_combination r7856), (by unfold Seg13.relationRow7857 at r7857; linear_combination r7857), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg57
    refine ⟨rho 14991, rho 14992, rho 14993, rho 14994, rho 14995,
      (by unfold Seg13.relationRow7858 at r7858; linear_combination r7858), (by unfold Seg13.relationRow7859 at r7859; linear_combination r7859), (by unfold Seg13.relationRow7860 at r7860; linear_combination r7860), (by unfold Seg13.relationRow7861 at r7861; linear_combination r7861), (by unfold Seg13.relationRow7862 at r7862; linear_combination r7862), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg58
    refine ⟨rho 14996, rho 14997, rho 14998, rho 14999, rho 15000,
      (by unfold Seg13.relationRow7863 at r7863; linear_combination r7863), (by unfold Seg13.relationRow7864 at r7864; linear_combination r7864), (by unfold Seg13.relationRow7865 at r7865; linear_combination r7865), (by unfold Seg13.relationRow7866 at r7866; linear_combination r7866), (by unfold Seg13.relationRow7867 at r7867; linear_combination r7867), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg59
    refine ⟨rho 15001, rho 15002, rho 15003, rho 15004, rho 15005,
      (by unfold Seg13.relationRow7868 at r7868; linear_combination r7868), (by unfold Seg13.relationRow7869 at r7869; linear_combination r7869), (by unfold Seg13.relationRow7870 at r7870; linear_combination r7870), (by unfold Seg13.relationRow7871 at r7871; linear_combination r7871), (by unfold Seg13.relationRow7872 at r7872; linear_combination r7872), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg60
    refine ⟨rho 15006, rho 15007, rho 15008, rho 15009, rho 15010,
      (by unfold Seg13.relationRow7873 at r7873; linear_combination r7873), (by unfold Seg13.relationRow7874 at r7874; linear_combination r7874), (by unfold Seg13.relationRow7875 at r7875; linear_combination r7875), (by unfold Seg13.relationRow7876 at r7876; linear_combination r7876), (by unfold Seg13.relationRow7877 at r7877; linear_combination r7877), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg61
    refine ⟨rho 15011, rho 15012, rho 15013, rho 15014, rho 15015,
      (by unfold Seg13.relationRow7878 at r7878; linear_combination r7878), (by unfold Seg13.relationRow7879 at r7879; linear_combination r7879), (by unfold Seg13.relationRow7880 at r7880; linear_combination r7880), (by unfold Seg13.relationRow7881 at r7881; linear_combination r7881), (by unfold Seg13.relationRow7882 at r7882; linear_combination r7882), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg62
    refine ⟨rho 15016, rho 15017, rho 15018, rho 15019, rho 15020,
      (by unfold Seg13.relationRow7883 at r7883; linear_combination r7883), (by unfold Seg13.relationRow7884 at r7884; linear_combination r7884), (by unfold Seg13.relationRow7885 at r7885; linear_combination r7885), (by unfold Seg13.relationRow7886 at r7886; linear_combination r7886), (by unfold Seg13.relationRow7887 at r7887; linear_combination r7887), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg63
    refine ⟨rho 15021, rho 15022, rho 15023, rho 15024, rho 15025,
      (by unfold Seg13.relationRow7888 at r7888; linear_combination r7888), (by unfold Seg13.relationRow7889 at r7889; linear_combination r7889), (by unfold Seg13.relationRow7890 at r7890; linear_combination r7890), (by unfold Seg13.relationRow7891 at r7891; linear_combination r7891), (by unfold Seg13.relationRow7892 at r7892; linear_combination r7892), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg64
    refine ⟨rho 15026, rho 15027, rho 15028, rho 15029, rho 15030,
      (by unfold Seg13.relationRow7893 at r7893; linear_combination r7893), (by unfold Seg13.relationRow7894 at r7894; linear_combination r7894), (by unfold Seg13.relationRow7895 at r7895; linear_combination r7895), (by unfold Seg13.relationRow7896 at r7896; linear_combination r7896), (by unfold Seg13.relationRow7897 at r7897; linear_combination r7897), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg65
    refine ⟨rho 15031, rho 15032, rho 15033, rho 15034, rho 15035,
      (by unfold Seg13.relationRow7898 at r7898; linear_combination r7898), (by unfold Seg13.relationRow7899 at r7899; linear_combination r7899), (by unfold Seg13.relationRow7900 at r7900; linear_combination r7900), (by unfold Seg13.relationRow7901 at r7901; linear_combination r7901), (by unfold Seg13.relationRow7902 at r7902; linear_combination r7902), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg66
    refine ⟨rho 15036, rho 15037, rho 15038, rho 15039, rho 15040,
      (by unfold Seg13.relationRow7903 at r7903; linear_combination r7903), (by unfold Seg13.relationRow7904 at r7904; linear_combination r7904), (by unfold Seg13.relationRow7905 at r7905; linear_combination r7905), (by unfold Seg13.relationRow7906 at r7906; linear_combination r7906), (by unfold Seg13.relationRow7907 at r7907; linear_combination r7907), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg67
    refine ⟨rho 15041, rho 15042, rho 15043, rho 15044, rho 15045,
      (by unfold Seg13.relationRow7908 at r7908; linear_combination r7908), (by unfold Seg13.relationRow7909 at r7909; linear_combination r7909), (by unfold Seg13.relationRow7910 at r7910; linear_combination r7910), (by unfold Seg13.relationRow7911 at r7911; linear_combination r7911), (by unfold Seg13.relationRow7912 at r7912; linear_combination r7912), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg68
    refine ⟨rho 15046, rho 15047, rho 15048, rho 15049, rho 15050,
      (by unfold Seg13.relationRow7913 at r7913; linear_combination r7913), (by unfold Seg13.relationRow7914 at r7914; linear_combination r7914), (by unfold Seg13.relationRow7915 at r7915; linear_combination r7915), (by unfold Seg13.relationRow7916 at r7916; linear_combination r7916), (by unfold Seg13.relationRow7917 at r7917; linear_combination r7917), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg69
    refine ⟨rho 15051, rho 15052, rho 15053, rho 15054, rho 15055,
      (by unfold Seg13.relationRow7918 at r7918; linear_combination r7918), (by unfold Seg13.relationRow7919 at r7919; linear_combination r7919), (by unfold Seg13.relationRow7920 at r7920; linear_combination r7920), (by unfold Seg13.relationRow7921 at r7921; linear_combination r7921), (by unfold Seg13.relationRow7922 at r7922; linear_combination r7922), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode20.relation_sound_permSpec (rho 34) (rho 35) (rho 36) (rho 14700) (rho 14701) (rho 14702) (rho 14703) (rho 14704) (rho 14705) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode20.tctNode21DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode20.F) + (21 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode20.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode20Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode20.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

