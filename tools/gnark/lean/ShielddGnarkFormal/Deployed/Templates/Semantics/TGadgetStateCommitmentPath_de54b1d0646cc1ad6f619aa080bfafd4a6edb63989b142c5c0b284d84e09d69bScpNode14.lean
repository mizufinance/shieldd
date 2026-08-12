import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode14Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode14Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode14Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode14Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode14Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode14Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpNode14Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode14.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node14_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation rho) :
    seg33ScpNode14Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (15 : F))
        (rho 5372 + rho 5373) (rho 5374 + rho 5375 + rho 5376)
        (rho 5374 + rho 5378 + rho 5379) (rho 5377 + rho 5380) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p67, p68, p69,
    p70, p71, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart67 at p67
  rcases p67 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5389, r5390, r5391, r5392, r5393, r5394, r5395, r5396, r5397, r5398, r5399, r5400, r5401, r5402, r5403, r5404, r5405, r5406, r5407, r5408, r5409, r5410, r5411, r5412, r5413, r5414, r5415, r5416, r5417, r5418, r5419, r5420, r5421, r5422, r5423, r5424, r5425, r5426, r5427, r5428, r5429, r5430, r5431, r5432, r5433, r5434, r5435, r5436, r5437, r5438, r5439⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart68 at p68
  rcases p68 with ⟨r5440, r5441, r5442, r5443, r5444, r5445, r5446, r5447, r5448, r5449, r5450, r5451, r5452, r5453, r5454, r5455, r5456, r5457, r5458, r5459, r5460, r5461, r5462, r5463, r5464, r5465, r5466, r5467, r5468, r5469, r5470, r5471, r5472, r5473, r5474, r5475, r5476, r5477, r5478, r5479, r5480, r5481, r5482, r5483, r5484, r5485, r5486, r5487, r5488, r5489, r5490, r5491, r5492, r5493, r5494, r5495, r5496, r5497, r5498, r5499, r5500, r5501, r5502, r5503, r5504, r5505, r5506, r5507, r5508, r5509, r5510, r5511, r5512, r5513, r5514, r5515, r5516, r5517, r5518, r5519⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart69 at p69
  rcases p69 with ⟨r5520, r5521, r5522, r5523, r5524, r5525, r5526, r5527, r5528, r5529, r5530, r5531, r5532, r5533, r5534, r5535, r5536, r5537, r5538, r5539, r5540, r5541, r5542, r5543, r5544, r5545, r5546, r5547, r5548, r5549, r5550, r5551, r5552, r5553, r5554, r5555, r5556, r5557, r5558, r5559, r5560, r5561, r5562, r5563, r5564, r5565, r5566, r5567, r5568, r5569, r5570, r5571, r5572, r5573, r5574, r5575, r5576, r5577, r5578, r5579, r5580, r5581, r5582, r5583, r5584, r5585, r5586, r5587, r5588, r5589, r5590, r5591, r5592, r5593, r5594, r5595, r5596, r5597, r5598, r5599⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart70 at p70
  rcases p70 with ⟨r5600, r5601, r5602, r5603, r5604, r5605, r5606, r5607, r5608, r5609, r5610, r5611, r5612, r5613, r5614, r5615, r5616, r5617, r5618, r5619, r5620, r5621, r5622, r5623, r5624, r5625, r5626, r5627, r5628, r5629, r5630, r5631, r5632, r5633, r5634, r5635, r5636, r5637, r5638, r5639, r5640, r5641, r5642, r5643, r5644, r5645, r5646, r5647, r5648, r5649, r5650, r5651, r5652, r5653, r5654, r5655, r5656, r5657, r5658, r5659, r5660, r5661, r5662, r5663, r5664, r5665, r5666, r5667, r5668, r5669, r5670, r5671, r5672, r5673, r5674, r5675, r5676, r5677, r5678, r5679⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationPart71 at p71
  rcases p71 with ⟨r5680, r5681, r5682, r5683, r5684, r5685, r5686, r5687, r5688, r5689, r5690, r5691, r5692, r5693, r5694, r5695, r5696, r5697, r5698, r5699, r5700, r5701, r5702, r5703, r5704, r5705, r5706, r5707, r5708, r5709, r5710, r5711, r5712, r5713, r5714, r5715, r5716, r5717, r5718, r5719, r5720, r5721, r5722, r5723, r5724, r5725, r5726, r5727, r5728, r5729, r5730, r5731, r5732, r5733, r5734, r5735, r5736, r5737, r5738, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.relation (rho 5372) (rho 5374) (rho 5377) (rho 5373) (rho 5375) (rho 5376) (rho 5378) (rho 5379) (rho 5380)
      (fun o0 o1 o2 o3 o4 => o0 = rho 5710 ∧ o1 = rho 5715 ∧ o2 = rho 5720 ∧ o3 = rho 5725 ∧ o4 = rho 5730) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.relation
    exact template_scp_node14_seg0 rho _ r5389 r5390 r5391 r5392 r5393 (template_scp_node14_seg1 rho _ r5394 r5395 r5396 r5397 r5398 (template_scp_node14_seg2 rho _ r5399 r5400 r5401 r5402 r5403 (template_scp_node14_seg3 rho _ r5404 r5405 r5406 r5407 r5408 (template_scp_node14_seg4 rho _ r5409 r5410 r5411 r5412 r5413 (template_scp_node14_seg5 rho _ r5414 r5415 r5416 r5417 r5418 (template_scp_node14_seg6 rho _ r5419 r5420 r5421 r5422 r5423 (template_scp_node14_seg7 rho _ r5424 r5425 r5426 r5427 r5428 (template_scp_node14_seg8 rho _ r5429 r5430 r5431 r5432 r5433 (template_scp_node14_seg9 rho _ r5434 r5435 r5436 r5437 r5438 (template_scp_node14_seg10 rho _ r5439 r5440 r5441 r5442 r5443 (template_scp_node14_seg11 rho _ r5444 r5445 r5446 r5447 r5448 (template_scp_node14_seg12 rho _ r5449 r5450 r5451 r5452 r5453 (template_scp_node14_seg13 rho _ r5454 r5455 r5456 r5457 r5458 (template_scp_node14_seg14 rho _ r5459 r5460 r5461 r5462 r5463 (template_scp_node14_seg15 rho _ r5464 r5465 r5466 r5467 r5468 (template_scp_node14_seg16 rho _ r5469 r5470 r5471 r5472 r5473 (template_scp_node14_seg17 rho _ r5474 r5475 r5476 r5477 r5478 (template_scp_node14_seg18 rho _ r5479 r5480 r5481 r5482 r5483 (template_scp_node14_seg19 rho _ r5484 r5485 r5486 r5487 r5488 (template_scp_node14_seg20 rho _ r5489 r5490 r5491 r5492 r5493 (template_scp_node14_seg21 rho _ r5494 r5495 r5496 r5497 r5498 (template_scp_node14_seg22 rho _ r5499 r5500 r5501 r5502 r5503 (template_scp_node14_seg23 rho _ r5504 r5505 r5506 r5507 r5508 (template_scp_node14_seg24 rho _ r5509 r5510 r5511 r5512 r5513 (template_scp_node14_seg25 rho _ r5514 r5515 r5516 r5517 r5518 (template_scp_node14_seg26 rho _ r5519 r5520 r5521 r5522 r5523 (template_scp_node14_seg27 rho _ r5524 r5525 r5526 r5527 r5528 (template_scp_node14_seg28 rho _ r5529 r5530 r5531 r5532 r5533 (template_scp_node14_seg29 rho _ r5534 r5535 r5536 r5537 r5538 (template_scp_node14_seg30 rho _ r5539 r5540 r5541 r5542 r5543 (template_scp_node14_seg31 rho _ r5544 r5545 r5546 r5547 r5548 (template_scp_node14_seg32 rho _ r5549 r5550 r5551 r5552 r5553 (template_scp_node14_template rho _ r5554 r5555 r5556 r5557 r5558 (template_scp_node14_seg34 rho _ r5559 r5560 r5561 r5562 r5563 (template_scp_node14_seg35 rho _ r5564 r5565 r5566 r5567 r5568 (template_scp_node14_seg36 rho _ r5569 r5570 r5571 r5572 r5573 (template_scp_node14_seg37 rho _ r5574 r5575 r5576 r5577 r5578 (template_scp_node14_seg38 rho _ r5579 r5580 r5581 r5582 r5583 (template_scp_node14_seg39 rho _ r5584 r5585 r5586 r5587 r5588 (template_scp_node14_seg40 rho _ r5589 r5590 r5591 r5592 r5593 (template_scp_node14_seg41 rho _ r5594 r5595 r5596 r5597 r5598 (template_scp_node14_seg42 rho _ r5599 r5600 r5601 r5602 r5603 (template_scp_node14_seg43 rho _ r5604 r5605 r5606 r5607 r5608 (template_scp_node14_seg44 rho _ r5609 r5610 r5611 r5612 r5613 (template_scp_node14_seg45 rho _ r5614 r5615 r5616 r5617 r5618 (template_scp_node14_seg46 rho _ r5619 r5620 r5621 r5622 r5623 (template_scp_node14_seg47 rho _ r5624 r5625 r5626 r5627 r5628 (template_scp_node14_seg48 rho _ r5629 r5630 r5631 r5632 r5633 (template_scp_node14_seg49 rho _ r5634 r5635 r5636 r5637 r5638 (template_scp_node14_seg50 rho _ r5639 r5640 r5641 r5642 r5643 (template_scp_node14_seg51 rho _ r5644 r5645 r5646 r5647 r5648 (template_scp_node14_seg52 rho _ r5649 r5650 r5651 r5652 r5653 (template_scp_node14_seg53 rho _ r5654 r5655 r5656 r5657 r5658 (template_scp_node14_seg54 rho _ r5659 r5660 r5661 r5662 r5663 (template_scp_node14_seg55 rho _ r5664 r5665 r5666 r5667 r5668 (template_scp_node14_seg56 rho _ r5669 r5670 r5671 r5672 r5673 (template_scp_node14_seg57 rho _ r5674 r5675 r5676 r5677 r5678 (template_scp_node14_seg58 rho _ r5679 r5680 r5681 r5682 r5683 (template_scp_node14_seg59 rho _ r5684 r5685 r5686 r5687 r5688 (template_scp_node14_seg60 rho _ r5689 r5690 r5691 r5692 r5693 (template_scp_node14_seg61 rho _ r5694 r5695 r5696 r5697 r5698 (template_scp_node14_seg62 rho _ r5699 r5700 r5701 r5702 r5703 (template_scp_node14_seg63 rho _ r5704 r5705 r5706 r5707 r5708 (template_scp_node14_seg64 rho _ r5709 r5710 r5711 r5712 r5713 (template_scp_node14_seg65 rho _ r5714 r5715 r5716 r5717 r5718 (template_scp_node14_seg66 rho _ r5719 r5720 r5721 r5722 r5723 (template_scp_node14_seg67 rho _ r5724 r5725 r5726 r5727 r5728 (template_scp_node14_seg68 rho _ r5729 r5730 r5731 r5732 r5733 (template_scp_node14_seg69 rho _ r5734 r5735 r5736 r5737 r5738 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.relation_sound_permSpec (rho 5372) (rho 5374) (rho 5377) (rho 5373) (rho 5375) (rho 5376) (rho 5378) (rho 5379) (rho 5380) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.tctNode15DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.F) + (15 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg33ScpNode14Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode14.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
