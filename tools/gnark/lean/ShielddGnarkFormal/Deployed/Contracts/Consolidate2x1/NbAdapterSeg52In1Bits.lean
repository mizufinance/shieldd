import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Base
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In1Bits_toBinary (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    GatesDef.to_binary (rho 105) 128 (seg52In1Bits rho) := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, p32, p33, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart32 at p32

  rcases p32 with ⟨_, _, _, r2563, r2564, r2565, r2566, r2567, r2568, r2569, r2570, r2571, r2572, r2573, r2574, r2575, r2576, r2577, r2578, r2579, r2580, r2581, r2582, r2583, r2584, r2585, r2586, r2587, r2588, r2589, r2590, r2591, r2592, r2593, r2594, r2595, r2596, r2597, r2598, r2599, r2600, r2601, r2602, r2603, r2604, r2605, r2606, r2607, r2608, r2609, r2610, r2611, r2612, r2613, r2614, r2615, r2616, r2617, r2618, r2619, r2620, r2621, r2622, r2623, r2624, r2625, r2626, r2627, r2628, r2629, r2630, r2631, r2632, r2633, r2634, r2635, r2636, r2637, r2638, r2639⟩

  unfold Seg52.relationPart33 at p33

  rcases p33 with ⟨r2640, r2641, r2642, r2643, r2644, r2645, r2646, r2647, r2648, r2649, r2650, r2651, r2652, r2653, r2654, r2655, r2656, r2657, r2658, r2659, r2660, r2661, r2662, r2663, r2664, r2665, r2666, r2667, r2668, r2669, r2670, r2671, r2672, r2673, r2674, r2675, r2676, r2677, r2678, r2679, r2680, r2681, r2682, r2683, r2684, r2685, r2686, r2687, r2688, r2689, r2690, r2691, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow2563 at r2563

  unfold Seg52.relationRow2564 at r2564

  unfold Seg52.relationRow2565 at r2565

  unfold Seg52.relationRow2566 at r2566

  unfold Seg52.relationRow2567 at r2567

  unfold Seg52.relationRow2568 at r2568

  unfold Seg52.relationRow2569 at r2569

  unfold Seg52.relationRow2570 at r2570

  unfold Seg52.relationRow2571 at r2571

  unfold Seg52.relationRow2572 at r2572

  unfold Seg52.relationRow2573 at r2573

  unfold Seg52.relationRow2574 at r2574

  unfold Seg52.relationRow2575 at r2575

  unfold Seg52.relationRow2576 at r2576

  unfold Seg52.relationRow2577 at r2577

  unfold Seg52.relationRow2578 at r2578

  unfold Seg52.relationRow2579 at r2579

  unfold Seg52.relationRow2580 at r2580

  unfold Seg52.relationRow2581 at r2581

  unfold Seg52.relationRow2582 at r2582

  unfold Seg52.relationRow2583 at r2583

  unfold Seg52.relationRow2584 at r2584

  unfold Seg52.relationRow2585 at r2585

  unfold Seg52.relationRow2586 at r2586

  unfold Seg52.relationRow2587 at r2587

  unfold Seg52.relationRow2588 at r2588

  unfold Seg52.relationRow2589 at r2589

  unfold Seg52.relationRow2590 at r2590

  unfold Seg52.relationRow2591 at r2591

  unfold Seg52.relationRow2592 at r2592

  unfold Seg52.relationRow2593 at r2593

  unfold Seg52.relationRow2594 at r2594

  unfold Seg52.relationRow2595 at r2595

  unfold Seg52.relationRow2596 at r2596

  unfold Seg52.relationRow2597 at r2597

  unfold Seg52.relationRow2598 at r2598

  unfold Seg52.relationRow2599 at r2599

  unfold Seg52.relationRow2600 at r2600

  unfold Seg52.relationRow2601 at r2601

  unfold Seg52.relationRow2602 at r2602

  unfold Seg52.relationRow2603 at r2603

  unfold Seg52.relationRow2604 at r2604

  unfold Seg52.relationRow2605 at r2605

  unfold Seg52.relationRow2606 at r2606

  unfold Seg52.relationRow2607 at r2607

  unfold Seg52.relationRow2608 at r2608

  unfold Seg52.relationRow2609 at r2609

  unfold Seg52.relationRow2610 at r2610

  unfold Seg52.relationRow2611 at r2611

  unfold Seg52.relationRow2612 at r2612

  unfold Seg52.relationRow2613 at r2613

  unfold Seg52.relationRow2614 at r2614

  unfold Seg52.relationRow2615 at r2615

  unfold Seg52.relationRow2616 at r2616

  unfold Seg52.relationRow2617 at r2617

  unfold Seg52.relationRow2618 at r2618

  unfold Seg52.relationRow2619 at r2619

  unfold Seg52.relationRow2620 at r2620

  unfold Seg52.relationRow2621 at r2621

  unfold Seg52.relationRow2622 at r2622

  unfold Seg52.relationRow2623 at r2623

  unfold Seg52.relationRow2624 at r2624

  unfold Seg52.relationRow2625 at r2625

  unfold Seg52.relationRow2626 at r2626

  unfold Seg52.relationRow2627 at r2627

  unfold Seg52.relationRow2628 at r2628

  unfold Seg52.relationRow2629 at r2629

  unfold Seg52.relationRow2630 at r2630

  unfold Seg52.relationRow2631 at r2631

  unfold Seg52.relationRow2632 at r2632

  unfold Seg52.relationRow2633 at r2633

  unfold Seg52.relationRow2634 at r2634

  unfold Seg52.relationRow2635 at r2635

  unfold Seg52.relationRow2636 at r2636

  unfold Seg52.relationRow2637 at r2637

  unfold Seg52.relationRow2638 at r2638

  unfold Seg52.relationRow2639 at r2639

  unfold Seg52.relationRow2640 at r2640

  unfold Seg52.relationRow2641 at r2641

  unfold Seg52.relationRow2642 at r2642

  unfold Seg52.relationRow2643 at r2643

  unfold Seg52.relationRow2644 at r2644

  unfold Seg52.relationRow2645 at r2645

  unfold Seg52.relationRow2646 at r2646

  unfold Seg52.relationRow2647 at r2647

  unfold Seg52.relationRow2648 at r2648

  unfold Seg52.relationRow2649 at r2649

  unfold Seg52.relationRow2650 at r2650

  unfold Seg52.relationRow2651 at r2651

  unfold Seg52.relationRow2652 at r2652

  unfold Seg52.relationRow2653 at r2653

  unfold Seg52.relationRow2654 at r2654

  unfold Seg52.relationRow2655 at r2655

  unfold Seg52.relationRow2656 at r2656

  unfold Seg52.relationRow2657 at r2657

  unfold Seg52.relationRow2658 at r2658

  unfold Seg52.relationRow2659 at r2659

  unfold Seg52.relationRow2660 at r2660

  unfold Seg52.relationRow2661 at r2661

  unfold Seg52.relationRow2662 at r2662

  unfold Seg52.relationRow2663 at r2663

  unfold Seg52.relationRow2664 at r2664

  unfold Seg52.relationRow2665 at r2665

  unfold Seg52.relationRow2666 at r2666

  unfold Seg52.relationRow2667 at r2667

  unfold Seg52.relationRow2668 at r2668

  unfold Seg52.relationRow2669 at r2669

  unfold Seg52.relationRow2670 at r2670

  unfold Seg52.relationRow2671 at r2671

  unfold Seg52.relationRow2672 at r2672

  unfold Seg52.relationRow2673 at r2673

  unfold Seg52.relationRow2674 at r2674

  unfold Seg52.relationRow2675 at r2675

  unfold Seg52.relationRow2676 at r2676

  unfold Seg52.relationRow2677 at r2677

  unfold Seg52.relationRow2678 at r2678

  unfold Seg52.relationRow2679 at r2679

  unfold Seg52.relationRow2680 at r2680

  unfold Seg52.relationRow2681 at r2681

  unfold Seg52.relationRow2682 at r2682

  unfold Seg52.relationRow2683 at r2683

  unfold Seg52.relationRow2684 at r2684

  unfold Seg52.relationRow2685 at r2685

  unfold Seg52.relationRow2686 at r2686

  unfold Seg52.relationRow2687 at r2687

  unfold Seg52.relationRow2688 at r2688

  unfold Seg52.relationRow2689 at r2689

  unfold Seg52.relationRow2690 at r2690

  have hrecover := recover_ofFn_eq_recBits rho 46954 128

  have hacc : powSumAcc rho 0 1 46954 128 = rho 105 := by

    unfold Seg52.relationRow2691 at r2691

    simp only [powSumAcc]

    linear_combination r2691

  have hrec : recover_binary_zmod' (seg52In1Bits rho) = rho 105 := by

    simp only [seg52In1Bits]

    rw [hrecover]

    rw [powSumAcc_eq] at hacc

    simpa using hacc

  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 105) (seg52In1Bits rho)
  · intro i hi
    have key := seg52In1Bits_get rho i hi
    have hgoal : rho (46954 + i) * (1 - rho (46954 + i)) = 0 := by
      interval_cases i
      · linear_combination r2563
      · linear_combination r2564
      · linear_combination r2565
      · linear_combination r2566
      · linear_combination r2567
      · linear_combination r2568
      · linear_combination r2569
      · linear_combination r2570
      · linear_combination r2571
      · linear_combination r2572
      · linear_combination r2573
      · linear_combination r2574
      · linear_combination r2575
      · linear_combination r2576
      · linear_combination r2577
      · linear_combination r2578
      · linear_combination r2579
      · linear_combination r2580
      · linear_combination r2581
      · linear_combination r2582
      · linear_combination r2583
      · linear_combination r2584
      · linear_combination r2585
      · linear_combination r2586
      · linear_combination r2587
      · linear_combination r2588
      · linear_combination r2589
      · linear_combination r2590
      · linear_combination r2591
      · linear_combination r2592
      · linear_combination r2593
      · linear_combination r2594
      · linear_combination r2595
      · linear_combination r2596
      · linear_combination r2597
      · linear_combination r2598
      · linear_combination r2599
      · linear_combination r2600
      · linear_combination r2601
      · linear_combination r2602
      · linear_combination r2603
      · linear_combination r2604
      · linear_combination r2605
      · linear_combination r2606
      · linear_combination r2607
      · linear_combination r2608
      · linear_combination r2609
      · linear_combination r2610
      · linear_combination r2611
      · linear_combination r2612
      · linear_combination r2613
      · linear_combination r2614
      · linear_combination r2615
      · linear_combination r2616
      · linear_combination r2617
      · linear_combination r2618
      · linear_combination r2619
      · linear_combination r2620
      · linear_combination r2621
      · linear_combination r2622
      · linear_combination r2623
      · linear_combination r2624
      · linear_combination r2625
      · linear_combination r2626
      · linear_combination r2627
      · linear_combination r2628
      · linear_combination r2629
      · linear_combination r2630
      · linear_combination r2631
      · linear_combination r2632
      · linear_combination r2633
      · linear_combination r2634
      · linear_combination r2635
      · linear_combination r2636
      · linear_combination r2637
      · linear_combination r2638
      · linear_combination r2639
      · linear_combination r2640
      · linear_combination r2641
      · linear_combination r2642
      · linear_combination r2643
      · linear_combination r2644
      · linear_combination r2645
      · linear_combination r2646
      · linear_combination r2647
      · linear_combination r2648
      · linear_combination r2649
      · linear_combination r2650
      · linear_combination r2651
      · linear_combination r2652
      · linear_combination r2653
      · linear_combination r2654
      · linear_combination r2655
      · linear_combination r2656
      · linear_combination r2657
      · linear_combination r2658
      · linear_combination r2659
      · linear_combination r2660
      · linear_combination r2661
      · linear_combination r2662
      · linear_combination r2663
      · linear_combination r2664
      · linear_combination r2665
      · linear_combination r2666
      · linear_combination r2667
      · linear_combination r2668
      · linear_combination r2669
      · linear_combination r2670
      · linear_combination r2671
      · linear_combination r2672
      · linear_combination r2673
      · linear_combination r2674
      · linear_combination r2675
      · linear_combination r2676
      · linear_combination r2677
      · linear_combination r2678
      · linear_combination r2679
      · linear_combination r2680
      · linear_combination r2681
      · linear_combination r2682
      · linear_combination r2683
      · linear_combination r2684
      · linear_combination r2685
      · linear_combination r2686
      · linear_combination r2687
      · linear_combination r2688
      · linear_combination r2689
      · linear_combination r2690
    have key' : (seg52In1Bits rho)[i] = rho (46954 + i) := by
      rw [← getElem!_pos (seg52In1Bits rho) i (by simpa using hi)]
      exact key
    exact key' ▸ hgoal
  · exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
