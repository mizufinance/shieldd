import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode1Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode1Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode1Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode1Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode1Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode1Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode1Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node1_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation rho) :
    nodeOut1 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 407 + rho 408) (rho 409 + rho 410 + rho 411) (rho 409 + rho 413 + rho 414) (rho 412 + rho 415) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation at h
  rcases h with ⟨
    _, _, _, _, _, p5, p6, p7,
    p8, p9, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart5 at p5
  rcases p5 with ⟨_, _, _, _, _, _, _, _, _, _, _, r411, r412, r413, r414, r415, r416, r417, r418, r419, r420, r421, r422, r423, r424, r425, r426, r427, r428, r429, r430, r431, r432, r433, r434, r435, r436, r437, r438, r439, r440, r441, r442, r443, r444, r445, r446, r447, r448, r449, r450, r451, r452, r453, r454, r455, r456, r457, r458, r459, r460, r461, r462, r463, r464, r465, r466, r467, r468, r469, r470, r471, r472, r473, r474, r475, r476, r477, r478, r479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart6 at p6
  rcases p6 with ⟨r480, r481, r482, r483, r484, r485, r486, r487, r488, r489, r490, r491, r492, r493, r494, r495, r496, r497, r498, r499, r500, r501, r502, r503, r504, r505, r506, r507, r508, r509, r510, r511, r512, r513, r514, r515, r516, r517, r518, r519, r520, r521, r522, r523, r524, r525, r526, r527, r528, r529, r530, r531, r532, r533, r534, r535, r536, r537, r538, r539, r540, r541, r542, r543, r544, r545, r546, r547, r548, r549, r550, r551, r552, r553, r554, r555, r556, r557, r558, r559⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart7 at p7
  rcases p7 with ⟨r560, r561, r562, r563, r564, r565, r566, r567, r568, r569, r570, r571, r572, r573, r574, r575, r576, r577, r578, r579, r580, r581, r582, r583, r584, r585, r586, r587, r588, r589, r590, r591, r592, r593, r594, r595, r596, r597, r598, r599, r600, r601, r602, r603, r604, r605, r606, r607, r608, r609, r610, r611, r612, r613, r614, r615, r616, r617, r618, r619, r620, r621, r622, r623, r624, r625, r626, r627, r628, r629, r630, r631, r632, r633, r634, r635, r636, r637, r638, r639⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart8 at p8
  rcases p8 with ⟨r640, r641, r642, r643, r644, r645, r646, r647, r648, r649, r650, r651, r652, r653, r654, r655, r656, r657, r658, r659, r660, r661, r662, r663, r664, r665, r666, r667, r668, r669, r670, r671, r672, r673, r674, r675, r676, r677, r678, r679, r680, r681, r682, r683, r684, r685, r686, r687, r688, r689, r690, r691, r692, r693, r694, r695, r696, r697, r698, r699, r700, r701, r702, r703, r704, r705, r706, r707, r708, r709, r710, r711, r712, r713, r714, r715, r716, r717, r718, r719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart9 at p9
  rcases p9 with ⟨r720, r721, r722, r723, r724, r725, r726, r727, r728, r729, r730, r731, r732, r733, r734, r735, r736, r737, r738, r739, r740, r741, r742, r743, r744, r745, r746, r747, r748, r749, r750, r751, r752, r753, r754, r755, r756, r757, r758, r759, r760, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 407 + rho 408) (rho 409 + rho 410 + rho 411) (rho 409 + rho 413 + rho 414) (rho 412 + rho 415)
      (fun w334 w339 w344 w349 w354 => w334 = rho 745 ∧ w339 = rho 750 ∧ w344 = rho 755 ∧ w349 = rho 760 ∧ w354 = rho 765) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node1_seg0 rho _ r411 r412 r413 r414 r415 (node1_seg1 rho _ r416 r417 r418 r419 r420 (node1_seg2 rho _ r421 r422 r423 r424 r425 (node1_seg3 rho _ r426 r427 r428 r429 r430 (node1_seg4 rho _ r431 r432 r433 r434 r435 (node1_seg5 rho _ r436 r437 r438 r439 r440 (node1_seg6 rho _ r441 r442 r443 r444 r445 (node1_seg7 rho _ r446 r447 r448 r449 r450 (node1_seg8 rho _ r451 r452 r453 r454 r455 (node1_seg9 rho _ r456 r457 r458 r459 r460 (node1_seg10 rho _ r461 r462 r463 r464 r465 (node1_seg11 rho _ r466 r467 r468 r469 r470 (node1_seg12 rho _ r471 r472 r473 r474 r475 (node1_seg13 rho _ r476 r477 r478 r479 r480 (node1_seg14 rho _ r481 r482 r483 r484 r485 (node1_seg15 rho _ r486 r487 r488 r489 r490 (node1_seg16 rho _ r491 r492 r493 r494 r495 (node1_seg17 rho _ r496 r497 r498 r499 r500 (node1_seg18 rho _ r501 r502 r503 r504 r505 (node1_seg19 rho _ r506 r507 r508 r509 r510 (node1_seg20 rho _ r511 r512 r513 r514 r515 (node1_seg21 rho _ r516 r517 r518 r519 r520 (node1_seg22 rho _ r521 r522 r523 r524 r525 (node1_seg23 rho _ r526 r527 r528 r529 r530 (node1_seg24 rho _ r531 r532 r533 r534 r535 (node1_seg25 rho _ r536 r537 r538 r539 r540 (node1_seg26 rho _ r541 r542 r543 r544 r545 (node1_seg27 rho _ r546 r547 r548 r549 r550 (node1_seg28 rho _ r551 r552 r553 r554 r555 (node1_seg29 rho _ r556 r557 r558 r559 r560 (node1_seg30 rho _ r561 r562 r563 r564 r565 (node1_seg31 rho _ r566 r567 r568 r569 r570 (node1_seg32 rho _ r571 r572 r573 r574 r575 (node1_seg33 rho _ r576 r577 r578 r579 r580 (node1_seg34 rho _ r581 r582 r583 r584 r585 (node1_seg35 rho _ r586 r587 r588 r589 r590 (node1_seg36 rho _ r591 r592 r593 r594 r595 (node1_seg37 rho _ r596 r597 r598 r599 r600 (node1_seg38 rho _ r601 r602 r603 r604 r605 (node1_seg39 rho _ r606 r607 r608 r609 r610 (node1_seg40 rho _ r611 r612 r613 r614 r615 (node1_seg41 rho _ r616 r617 r618 r619 r620 (node1_seg42 rho _ r621 r622 r623 r624 r625 (node1_seg43 rho _ r626 r627 r628 r629 r630 (node1_seg44 rho _ r631 r632 r633 r634 r635 (node1_seg45 rho _ r636 r637 r638 r639 r640 (node1_seg46 rho _ r641 r642 r643 r644 r645 (node1_seg47 rho _ r646 r647 r648 r649 r650 (node1_seg48 rho _ r651 r652 r653 r654 r655 (node1_seg49 rho _ r656 r657 r658 r659 r660 (node1_seg50 rho _ r661 r662 r663 r664 r665 (node1_seg51 rho _ r666 r667 r668 r669 r670 (node1_seg52 rho _ r671 r672 r673 r674 r675 (node1_seg53 rho _ r676 r677 r678 r679 r680 (node1_seg54 rho _ r681 r682 r683 r684 r685 (node1_seg55 rho _ r686 r687 r688 r689 r690 (node1_seg56 rho _ r691 r692 r693 r694 r695 (node1_seg57 rho _ r696 r697 r698 r699 r700 (node1_seg58 rho _ r701 r702 r703 r704 r705 (node1_seg59 rho _ r706 r707 r708 r709 r710 (node1_seg60 rho _ r711 r712 r713 r714 r715 (node1_seg61 rho _ r716 r717 r718 r719 r720 (node1_seg62 rho _ r721 r722 r723 r724 r725 (node1_seg63 rho _ r726 r727 r728 r729 r730 (node1_seg64 rho _ r731 r732 r733 r734 r735 (node1_seg65 rho _ r736 r737 r738 r739 r740 (node1_seg66 rho _ r741 r742 r743 r744 r745 (node1_seg67 rho _ r746 r747 r748 r749 r750 (node1_seg68 rho _ r751 r752 r753 r754 r755 (node1_seg69 rho _ r756 r757 r758 r759 r760 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 407 + rho 408) (rho 409 + rho 410 + rho 411) (rho 409 + rho 413 + rho 414) (rho 412 + rho 415) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut1, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
