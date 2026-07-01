import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34Canon2Rec

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg34Canon2_binary (rho : Nat -> Seg34.F) (h : Seg34.relation rho) : is_vector_binary (seg34Canon2Bits rho) := by
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, p6, p7, p8, p9,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart6 at p6
  rcases p6 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r538, r539, r540, r541, r542, r543, r544, r545, r546, r547, r548, r549, r550, r551, r552, r553, r554, r555, r556, r557, r558, r559⟩
  unfold Seg34.relationPart7 at p7
  rcases p7 with ⟨r560, r561, r562, r563, r564, r565, r566, r567, r568, r569, r570, r571, r572, r573, r574, r575, r576, r577, r578, r579, r580, r581, r582, r583, r584, r585, r586, r587, r588, r589, r590, r591, r592, r593, r594, r595, r596, r597, r598, r599, r600, r601, r602, r603, r604, r605, r606, r607, r608, r609, r610, r611, r612, r613, r614, r615, r616, r617, r618, r619, r620, r621, r622, r623, r624, r625, r626, r627, r628, r629, r630, r631, r632, r633, r634, r635, r636, r637, r638, r639⟩
  unfold Seg34.relationPart8 at p8
  rcases p8 with ⟨r640, r641, r642, r643, r644, r645, r646, r647, r648, r649, r650, r651, r652, r653, r654, r655, r656, r657, r658, r659, r660, r661, r662, r663, r664, r665, r666, r667, r668, r669, r670, r671, r672, r673, r674, r675, r676, r677, r678, r679, r680, r681, r682, r683, r684, r685, r686, r687, r688, r689, r690, r691, r692, r693, r694, r695, r696, r697, r698, r699, r700, r701, r702, r703, r704, r705, r706, r707, r708, r709, r710, r711, r712, r713, r714, r715, r716, r717, r718, r719⟩
  unfold Seg34.relationPart9 at p9
  rcases p9 with ⟨r720, r721, r722, r723, r724, r725, r726, r727, r728, r729, r730, r731, r732, r733, r734, r735, r736, r737, r738, r739, r740, r741, r742, r743, r744, r745, r746, r747, r748, r749, r750, r751, r752, r753, r754, r755, r756, r757, r758, r759, r760, r761, r762, r763, r764, r765, r766, r767, r768, r769, r770, r771, r772, r773, r774, r775, r776, r777, r778, r779, r780, r781, r782, r783, r784, r785, r786, r787, r788, r789, r790, _, _, _, _, _, _, _, _, _⟩
  unfold Seg34.relationRow538 at r538
  unfold Seg34.relationRow539 at r539
  unfold Seg34.relationRow540 at r540
  unfold Seg34.relationRow541 at r541
  unfold Seg34.relationRow542 at r542
  unfold Seg34.relationRow543 at r543
  unfold Seg34.relationRow544 at r544
  unfold Seg34.relationRow545 at r545
  unfold Seg34.relationRow546 at r546
  unfold Seg34.relationRow547 at r547
  unfold Seg34.relationRow548 at r548
  unfold Seg34.relationRow549 at r549
  unfold Seg34.relationRow550 at r550
  unfold Seg34.relationRow551 at r551
  unfold Seg34.relationRow552 at r552
  unfold Seg34.relationRow553 at r553
  unfold Seg34.relationRow554 at r554
  unfold Seg34.relationRow555 at r555
  unfold Seg34.relationRow556 at r556
  unfold Seg34.relationRow557 at r557
  unfold Seg34.relationRow558 at r558
  unfold Seg34.relationRow559 at r559
  unfold Seg34.relationRow560 at r560
  unfold Seg34.relationRow561 at r561
  unfold Seg34.relationRow562 at r562
  unfold Seg34.relationRow563 at r563
  unfold Seg34.relationRow564 at r564
  unfold Seg34.relationRow565 at r565
  unfold Seg34.relationRow566 at r566
  unfold Seg34.relationRow567 at r567
  unfold Seg34.relationRow568 at r568
  unfold Seg34.relationRow569 at r569
  unfold Seg34.relationRow570 at r570
  unfold Seg34.relationRow571 at r571
  unfold Seg34.relationRow572 at r572
  unfold Seg34.relationRow573 at r573
  unfold Seg34.relationRow574 at r574
  unfold Seg34.relationRow575 at r575
  unfold Seg34.relationRow576 at r576
  unfold Seg34.relationRow577 at r577
  unfold Seg34.relationRow578 at r578
  unfold Seg34.relationRow579 at r579
  unfold Seg34.relationRow580 at r580
  unfold Seg34.relationRow581 at r581
  unfold Seg34.relationRow582 at r582
  unfold Seg34.relationRow583 at r583
  unfold Seg34.relationRow584 at r584
  unfold Seg34.relationRow585 at r585
  unfold Seg34.relationRow586 at r586
  unfold Seg34.relationRow587 at r587
  unfold Seg34.relationRow588 at r588
  unfold Seg34.relationRow589 at r589
  unfold Seg34.relationRow590 at r590
  unfold Seg34.relationRow591 at r591
  unfold Seg34.relationRow592 at r592
  unfold Seg34.relationRow593 at r593
  unfold Seg34.relationRow594 at r594
  unfold Seg34.relationRow595 at r595
  unfold Seg34.relationRow596 at r596
  unfold Seg34.relationRow597 at r597
  unfold Seg34.relationRow598 at r598
  unfold Seg34.relationRow599 at r599
  unfold Seg34.relationRow600 at r600
  unfold Seg34.relationRow601 at r601
  unfold Seg34.relationRow602 at r602
  unfold Seg34.relationRow603 at r603
  unfold Seg34.relationRow604 at r604
  unfold Seg34.relationRow605 at r605
  unfold Seg34.relationRow606 at r606
  unfold Seg34.relationRow607 at r607
  unfold Seg34.relationRow608 at r608
  unfold Seg34.relationRow609 at r609
  unfold Seg34.relationRow610 at r610
  unfold Seg34.relationRow611 at r611
  unfold Seg34.relationRow612 at r612
  unfold Seg34.relationRow613 at r613
  unfold Seg34.relationRow614 at r614
  unfold Seg34.relationRow615 at r615
  unfold Seg34.relationRow616 at r616
  unfold Seg34.relationRow617 at r617
  unfold Seg34.relationRow618 at r618
  unfold Seg34.relationRow619 at r619
  unfold Seg34.relationRow620 at r620
  unfold Seg34.relationRow621 at r621
  unfold Seg34.relationRow622 at r622
  unfold Seg34.relationRow623 at r623
  unfold Seg34.relationRow624 at r624
  unfold Seg34.relationRow625 at r625
  unfold Seg34.relationRow626 at r626
  unfold Seg34.relationRow627 at r627
  unfold Seg34.relationRow628 at r628
  unfold Seg34.relationRow629 at r629
  unfold Seg34.relationRow630 at r630
  unfold Seg34.relationRow631 at r631
  unfold Seg34.relationRow632 at r632
  unfold Seg34.relationRow633 at r633
  unfold Seg34.relationRow634 at r634
  unfold Seg34.relationRow635 at r635
  unfold Seg34.relationRow636 at r636
  unfold Seg34.relationRow637 at r637
  unfold Seg34.relationRow638 at r638
  unfold Seg34.relationRow639 at r639
  unfold Seg34.relationRow640 at r640
  unfold Seg34.relationRow641 at r641
  unfold Seg34.relationRow642 at r642
  unfold Seg34.relationRow643 at r643
  unfold Seg34.relationRow644 at r644
  unfold Seg34.relationRow645 at r645
  unfold Seg34.relationRow646 at r646
  unfold Seg34.relationRow647 at r647
  unfold Seg34.relationRow648 at r648
  unfold Seg34.relationRow649 at r649
  unfold Seg34.relationRow650 at r650
  unfold Seg34.relationRow651 at r651
  unfold Seg34.relationRow652 at r652
  unfold Seg34.relationRow653 at r653
  unfold Seg34.relationRow654 at r654
  unfold Seg34.relationRow655 at r655
  unfold Seg34.relationRow656 at r656
  unfold Seg34.relationRow657 at r657
  unfold Seg34.relationRow658 at r658
  unfold Seg34.relationRow659 at r659
  unfold Seg34.relationRow660 at r660
  unfold Seg34.relationRow661 at r661
  unfold Seg34.relationRow662 at r662
  unfold Seg34.relationRow663 at r663
  unfold Seg34.relationRow664 at r664
  unfold Seg34.relationRow665 at r665
  unfold Seg34.relationRow666 at r666
  unfold Seg34.relationRow667 at r667
  unfold Seg34.relationRow668 at r668
  unfold Seg34.relationRow669 at r669
  unfold Seg34.relationRow670 at r670
  unfold Seg34.relationRow671 at r671
  unfold Seg34.relationRow672 at r672
  unfold Seg34.relationRow673 at r673
  unfold Seg34.relationRow674 at r674
  unfold Seg34.relationRow675 at r675
  unfold Seg34.relationRow676 at r676
  unfold Seg34.relationRow677 at r677
  unfold Seg34.relationRow678 at r678
  unfold Seg34.relationRow679 at r679
  unfold Seg34.relationRow680 at r680
  unfold Seg34.relationRow681 at r681
  unfold Seg34.relationRow682 at r682
  unfold Seg34.relationRow683 at r683
  unfold Seg34.relationRow684 at r684
  unfold Seg34.relationRow685 at r685
  unfold Seg34.relationRow686 at r686
  unfold Seg34.relationRow687 at r687
  unfold Seg34.relationRow688 at r688
  unfold Seg34.relationRow689 at r689
  unfold Seg34.relationRow690 at r690
  unfold Seg34.relationRow691 at r691
  unfold Seg34.relationRow692 at r692
  unfold Seg34.relationRow693 at r693
  unfold Seg34.relationRow694 at r694
  unfold Seg34.relationRow695 at r695
  unfold Seg34.relationRow696 at r696
  unfold Seg34.relationRow697 at r697
  unfold Seg34.relationRow698 at r698
  unfold Seg34.relationRow699 at r699
  unfold Seg34.relationRow700 at r700
  unfold Seg34.relationRow701 at r701
  unfold Seg34.relationRow702 at r702
  unfold Seg34.relationRow703 at r703
  unfold Seg34.relationRow704 at r704
  unfold Seg34.relationRow705 at r705
  unfold Seg34.relationRow706 at r706
  unfold Seg34.relationRow707 at r707
  unfold Seg34.relationRow708 at r708
  unfold Seg34.relationRow709 at r709
  unfold Seg34.relationRow710 at r710
  unfold Seg34.relationRow711 at r711
  unfold Seg34.relationRow712 at r712
  unfold Seg34.relationRow713 at r713
  unfold Seg34.relationRow714 at r714
  unfold Seg34.relationRow715 at r715
  unfold Seg34.relationRow716 at r716
  unfold Seg34.relationRow717 at r717
  unfold Seg34.relationRow718 at r718
  unfold Seg34.relationRow719 at r719
  unfold Seg34.relationRow720 at r720
  unfold Seg34.relationRow721 at r721
  unfold Seg34.relationRow722 at r722
  unfold Seg34.relationRow723 at r723
  unfold Seg34.relationRow724 at r724
  unfold Seg34.relationRow725 at r725
  unfold Seg34.relationRow726 at r726
  unfold Seg34.relationRow727 at r727
  unfold Seg34.relationRow728 at r728
  unfold Seg34.relationRow729 at r729
  unfold Seg34.relationRow730 at r730
  unfold Seg34.relationRow731 at r731
  unfold Seg34.relationRow732 at r732
  unfold Seg34.relationRow733 at r733
  unfold Seg34.relationRow734 at r734
  unfold Seg34.relationRow735 at r735
  unfold Seg34.relationRow736 at r736
  unfold Seg34.relationRow737 at r737
  unfold Seg34.relationRow738 at r738
  unfold Seg34.relationRow739 at r739
  unfold Seg34.relationRow740 at r740
  unfold Seg34.relationRow741 at r741
  unfold Seg34.relationRow742 at r742
  unfold Seg34.relationRow743 at r743
  unfold Seg34.relationRow744 at r744
  unfold Seg34.relationRow745 at r745
  unfold Seg34.relationRow746 at r746
  unfold Seg34.relationRow747 at r747
  unfold Seg34.relationRow748 at r748
  unfold Seg34.relationRow749 at r749
  unfold Seg34.relationRow750 at r750
  unfold Seg34.relationRow751 at r751
  unfold Seg34.relationRow752 at r752
  unfold Seg34.relationRow753 at r753
  unfold Seg34.relationRow754 at r754
  unfold Seg34.relationRow755 at r755
  unfold Seg34.relationRow756 at r756
  unfold Seg34.relationRow757 at r757
  unfold Seg34.relationRow758 at r758
  unfold Seg34.relationRow759 at r759
  unfold Seg34.relationRow760 at r760
  unfold Seg34.relationRow761 at r761
  unfold Seg34.relationRow762 at r762
  unfold Seg34.relationRow763 at r763
  unfold Seg34.relationRow764 at r764
  unfold Seg34.relationRow765 at r765
  unfold Seg34.relationRow766 at r766
  unfold Seg34.relationRow767 at r767
  unfold Seg34.relationRow768 at r768
  unfold Seg34.relationRow769 at r769
  unfold Seg34.relationRow770 at r770
  unfold Seg34.relationRow771 at r771
  unfold Seg34.relationRow772 at r772
  unfold Seg34.relationRow773 at r773
  unfold Seg34.relationRow774 at r774
  unfold Seg34.relationRow775 at r775
  unfold Seg34.relationRow776 at r776
  unfold Seg34.relationRow777 at r777
  unfold Seg34.relationRow778 at r778
  unfold Seg34.relationRow779 at r779
  unfold Seg34.relationRow780 at r780
  unfold Seg34.relationRow781 at r781
  unfold Seg34.relationRow782 at r782
  unfold Seg34.relationRow783 at r783
  unfold Seg34.relationRow784 at r784
  unfold Seg34.relationRow785 at r785
  unfold Seg34.relationRow786 at r786
  unfold Seg34.relationRow787 at r787
  unfold Seg34.relationRow788 at r788
  unfold Seg34.relationRow789 at r789
  unfold Seg34.relationRow790 at r790
  apply Shieldd.GnarkFormal.Extracted.CanonicalFqBits.isVectorBinary_of_booleanity
  intro i hi
  have key := seg34Canon2Bits_get rho i hi
  have hgoal : rho (32150 + i) * (1 - rho (32150 + i)) = 0 := by
    interval_cases i
    · linear_combination r538
    · linear_combination r539
    · linear_combination r540
    · linear_combination r541
    · linear_combination r542
    · linear_combination r543
    · linear_combination r544
    · linear_combination r545
    · linear_combination r546
    · linear_combination r547
    · linear_combination r548
    · linear_combination r549
    · linear_combination r550
    · linear_combination r551
    · linear_combination r552
    · linear_combination r553
    · linear_combination r554
    · linear_combination r555
    · linear_combination r556
    · linear_combination r557
    · linear_combination r558
    · linear_combination r559
    · linear_combination r560
    · linear_combination r561
    · linear_combination r562
    · linear_combination r563
    · linear_combination r564
    · linear_combination r565
    · linear_combination r566
    · linear_combination r567
    · linear_combination r568
    · linear_combination r569
    · linear_combination r570
    · linear_combination r571
    · linear_combination r572
    · linear_combination r573
    · linear_combination r574
    · linear_combination r575
    · linear_combination r576
    · linear_combination r577
    · linear_combination r578
    · linear_combination r579
    · linear_combination r580
    · linear_combination r581
    · linear_combination r582
    · linear_combination r583
    · linear_combination r584
    · linear_combination r585
    · linear_combination r586
    · linear_combination r587
    · linear_combination r588
    · linear_combination r589
    · linear_combination r590
    · linear_combination r591
    · linear_combination r592
    · linear_combination r593
    · linear_combination r594
    · linear_combination r595
    · linear_combination r596
    · linear_combination r597
    · linear_combination r598
    · linear_combination r599
    · linear_combination r600
    · linear_combination r601
    · linear_combination r602
    · linear_combination r603
    · linear_combination r604
    · linear_combination r605
    · linear_combination r606
    · linear_combination r607
    · linear_combination r608
    · linear_combination r609
    · linear_combination r610
    · linear_combination r611
    · linear_combination r612
    · linear_combination r613
    · linear_combination r614
    · linear_combination r615
    · linear_combination r616
    · linear_combination r617
    · linear_combination r618
    · linear_combination r619
    · linear_combination r620
    · linear_combination r621
    · linear_combination r622
    · linear_combination r623
    · linear_combination r624
    · linear_combination r625
    · linear_combination r626
    · linear_combination r627
    · linear_combination r628
    · linear_combination r629
    · linear_combination r630
    · linear_combination r631
    · linear_combination r632
    · linear_combination r633
    · linear_combination r634
    · linear_combination r635
    · linear_combination r636
    · linear_combination r637
    · linear_combination r638
    · linear_combination r639
    · linear_combination r640
    · linear_combination r641
    · linear_combination r642
    · linear_combination r643
    · linear_combination r644
    · linear_combination r645
    · linear_combination r646
    · linear_combination r647
    · linear_combination r648
    · linear_combination r649
    · linear_combination r650
    · linear_combination r651
    · linear_combination r652
    · linear_combination r653
    · linear_combination r654
    · linear_combination r655
    · linear_combination r656
    · linear_combination r657
    · linear_combination r658
    · linear_combination r659
    · linear_combination r660
    · linear_combination r661
    · linear_combination r662
    · linear_combination r663
    · linear_combination r664
    · linear_combination r665
    · linear_combination r666
    · linear_combination r667
    · linear_combination r668
    · linear_combination r669
    · linear_combination r670
    · linear_combination r671
    · linear_combination r672
    · linear_combination r673
    · linear_combination r674
    · linear_combination r675
    · linear_combination r676
    · linear_combination r677
    · linear_combination r678
    · linear_combination r679
    · linear_combination r680
    · linear_combination r681
    · linear_combination r682
    · linear_combination r683
    · linear_combination r684
    · linear_combination r685
    · linear_combination r686
    · linear_combination r687
    · linear_combination r688
    · linear_combination r689
    · linear_combination r690
    · linear_combination r691
    · linear_combination r692
    · linear_combination r693
    · linear_combination r694
    · linear_combination r695
    · linear_combination r696
    · linear_combination r697
    · linear_combination r698
    · linear_combination r699
    · linear_combination r700
    · linear_combination r701
    · linear_combination r702
    · linear_combination r703
    · linear_combination r704
    · linear_combination r705
    · linear_combination r706
    · linear_combination r707
    · linear_combination r708
    · linear_combination r709
    · linear_combination r710
    · linear_combination r711
    · linear_combination r712
    · linear_combination r713
    · linear_combination r714
    · linear_combination r715
    · linear_combination r716
    · linear_combination r717
    · linear_combination r718
    · linear_combination r719
    · linear_combination r720
    · linear_combination r721
    · linear_combination r722
    · linear_combination r723
    · linear_combination r724
    · linear_combination r725
    · linear_combination r726
    · linear_combination r727
    · linear_combination r728
    · linear_combination r729
    · linear_combination r730
    · linear_combination r731
    · linear_combination r732
    · linear_combination r733
    · linear_combination r734
    · linear_combination r735
    · linear_combination r736
    · linear_combination r737
    · linear_combination r738
    · linear_combination r739
    · linear_combination r740
    · linear_combination r741
    · linear_combination r742
    · linear_combination r743
    · linear_combination r744
    · linear_combination r745
    · linear_combination r746
    · linear_combination r747
    · linear_combination r748
    · linear_combination r749
    · linear_combination r750
    · linear_combination r751
    · linear_combination r752
    · linear_combination r753
    · linear_combination r754
    · linear_combination r755
    · linear_combination r756
    · linear_combination r757
    · linear_combination r758
    · linear_combination r759
    · linear_combination r760
    · linear_combination r761
    · linear_combination r762
    · linear_combination r763
    · linear_combination r764
    · linear_combination r765
    · linear_combination r766
    · linear_combination r767
    · linear_combination r768
    · linear_combination r769
    · linear_combination r770
    · linear_combination r771
    · linear_combination r772
    · linear_combination r773
    · linear_combination r774
    · linear_combination r775
    · linear_combination r776
    · linear_combination r777
    · linear_combination r778
    · linear_combination r779
    · linear_combination r780
    · linear_combination r781
    · linear_combination r782
    · linear_combination r783
    · linear_combination r784
    · linear_combination r785
    · linear_combination r786
    · linear_combination r787
    · linear_combination r788
    · linear_combination r789
    · linear_combination r790
  exact key ▸ hgoal

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
