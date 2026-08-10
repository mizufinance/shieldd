import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode12Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode12Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode12Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode12Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode12Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode12Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67QuadPathNode12Rows6
import ShielddGnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.SemanticBridge
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node12_eq (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation rho) :
    nodeOut12 rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 (0 : F)
        (rho 4400 + rho 4401) (rho 4402 + rho 4403 + rho 4404) (rho 4402 + rho 4406 + rho 4407) (rho 4405 + rho 4408) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p55,
    p56, p57, p58, p59, _, _, _, _,
    _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart55 at p55
  rcases p55 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4415, r4416, r4417, r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart56 at p56
  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, r4642, r4643, r4644, r4645, r4646, r4647, r4648, r4649, r4650, r4651, r4652, r4653, r4654, r4655, r4656, r4657, r4658, r4659, r4660, r4661, r4662, r4663, r4664, r4665, r4666, r4667, r4668, r4669, r4670, r4671, r4672, r4673, r4674, r4675, r4676, r4677, r4678, r4679, r4680, r4681, r4682, r4683, r4684, r4685, r4686, r4687, r4688, r4689, r4690, r4691, r4692, r4693, r4694, r4695, r4696, r4697, r4698, r4699, r4700, r4701, r4702, r4703, r4704, r4705, r4706, r4707, r4708, r4709, r4710, r4711, r4712, r4713, r4714, r4715, r4716, r4717, r4718, r4719⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67.relationPart59 at p59
  rcases p59 with ⟨r4720, r4721, r4722, r4723, r4724, r4725, r4726, r4727, r4728, r4729, r4730, r4731, r4732, r4733, r4734, r4735, r4736, r4737, r4738, r4739, r4740, r4741, r4742, r4743, r4744, r4745, r4746, r4747, r4748, r4749, r4750, r4751, r4752, r4753, r4754, r4755, r4756, r4757, r4758, r4759, r4760, r4761, r4762, r4763, r4764, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
      (rho 4400 + rho 4401) (rho 4402 + rho 4403 + rho 4404) (rho 4402 + rho 4406 + rho 4407) (rho 4405 + rho 4408)
      (fun w334 w339 w344 w349 w354 => w334 = rho 4738 ∧ w339 = rho 4743 ∧ w344 = rho 4748 ∧ w349 = rho 4753 ∧ w354 = rho 4758) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.relation
    exact node12_seg0 rho _ r4415 r4416 r4417 r4418 r4419 (node12_seg1 rho _ r4420 r4421 r4422 r4423 r4424 (node12_seg2 rho _ r4425 r4426 r4427 r4428 r4429 (node12_seg3 rho _ r4430 r4431 r4432 r4433 r4434 (node12_seg4 rho _ r4435 r4436 r4437 r4438 r4439 (node12_seg5 rho _ r4440 r4441 r4442 r4443 r4444 (node12_seg6 rho _ r4445 r4446 r4447 r4448 r4449 (node12_seg7 rho _ r4450 r4451 r4452 r4453 r4454 (node12_seg8 rho _ r4455 r4456 r4457 r4458 r4459 (node12_seg9 rho _ r4460 r4461 r4462 r4463 r4464 (node12_seg10 rho _ r4465 r4466 r4467 r4468 r4469 (node12_seg11 rho _ r4470 r4471 r4472 r4473 r4474 (node12_seg12 rho _ r4475 r4476 r4477 r4478 r4479 (node12_seg13 rho _ r4480 r4481 r4482 r4483 r4484 (node12_seg14 rho _ r4485 r4486 r4487 r4488 r4489 (node12_seg15 rho _ r4490 r4491 r4492 r4493 r4494 (node12_seg16 rho _ r4495 r4496 r4497 r4498 r4499 (node12_seg17 rho _ r4500 r4501 r4502 r4503 r4504 (node12_seg18 rho _ r4505 r4506 r4507 r4508 r4509 (node12_seg19 rho _ r4510 r4511 r4512 r4513 r4514 (node12_seg20 rho _ r4515 r4516 r4517 r4518 r4519 (node12_seg21 rho _ r4520 r4521 r4522 r4523 r4524 (node12_seg22 rho _ r4525 r4526 r4527 r4528 r4529 (node12_seg23 rho _ r4530 r4531 r4532 r4533 r4534 (node12_seg24 rho _ r4535 r4536 r4537 r4538 r4539 (node12_seg25 rho _ r4540 r4541 r4542 r4543 r4544 (node12_seg26 rho _ r4545 r4546 r4547 r4548 r4549 (node12_seg27 rho _ r4550 r4551 r4552 r4553 r4554 (node12_seg28 rho _ r4555 r4556 r4557 r4558 r4559 (node12_seg29 rho _ r4560 r4561 r4562 r4563 r4564 (node12_seg30 rho _ r4565 r4566 r4567 r4568 r4569 (node12_seg31 rho _ r4570 r4571 r4572 r4573 r4574 (node12_seg32 rho _ r4575 r4576 r4577 r4578 r4579 (node12_seg33 rho _ r4580 r4581 r4582 r4583 r4584 (node12_seg34 rho _ r4585 r4586 r4587 r4588 r4589 (node12_seg35 rho _ r4590 r4591 r4592 r4593 r4594 (node12_seg36 rho _ r4595 r4596 r4597 r4598 r4599 (node12_seg37 rho _ r4600 r4601 r4602 r4603 r4604 (node12_seg38 rho _ r4605 r4606 r4607 r4608 r4609 (node12_seg39 rho _ r4610 r4611 r4612 r4613 r4614 (node12_seg40 rho _ r4615 r4616 r4617 r4618 r4619 (node12_seg41 rho _ r4620 r4621 r4622 r4623 r4624 (node12_seg42 rho _ r4625 r4626 r4627 r4628 r4629 (node12_seg43 rho _ r4630 r4631 r4632 r4633 r4634 (node12_seg44 rho _ r4635 r4636 r4637 r4638 r4639 (node12_seg45 rho _ r4640 r4641 r4642 r4643 r4644 (node12_seg46 rho _ r4645 r4646 r4647 r4648 r4649 (node12_seg47 rho _ r4650 r4651 r4652 r4653 r4654 (node12_seg48 rho _ r4655 r4656 r4657 r4658 r4659 (node12_seg49 rho _ r4660 r4661 r4662 r4663 r4664 (node12_seg50 rho _ r4665 r4666 r4667 r4668 r4669 (node12_seg51 rho _ r4670 r4671 r4672 r4673 r4674 (node12_seg52 rho _ r4675 r4676 r4677 r4678 r4679 (node12_seg53 rho _ r4680 r4681 r4682 r4683 r4684 (node12_seg54 rho _ r4685 r4686 r4687 r4688 r4689 (node12_seg55 rho _ r4690 r4691 r4692 r4693 r4694 (node12_seg56 rho _ r4695 r4696 r4697 r4698 r4699 (node12_seg57 rho _ r4700 r4701 r4702 r4703 r4704 (node12_seg58 rho _ r4705 r4706 r4707 r4708 r4709 (node12_seg59 rho _ r4710 r4711 r4712 r4713 r4714 (node12_seg60 rho _ r4715 r4716 r4717 r4718 r4719 (node12_seg61 rho _ r4720 r4721 r4722 r4723 r4724 (node12_seg62 rho _ r4725 r4726 r4727 r4728 r4729 (node12_seg63 rho _ r4730 r4731 r4732 r4733 r4734 (node12_seg64 rho _ r4735 r4736 r4737 r4738 r4739 (node12_seg65 rho _ r4740 r4741 r4742 r4743 r4744 (node12_seg66 rho _ r4745 r4746 r4747 r4748 r4749 (node12_seg67 rho _ r4750 r4751 r4752 r4753 r4754 (node12_seg68 rho _ r4755 r4756 r4757 r4758 r4759 (node12_seg69 rho _ r4760 r4761 r4762 r4763 r4764 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  rcases Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.relation_sound_permSpec
      (rho 4400 + rho 4401) (rho 4402 + rho 4403 + rho 4404) (rho 4402 + rho 4406 + rho 4407) (rho 4405 + rho 4408) _ hrel with
    ⟨w334, w339, w344, w349, w354, hk, hperm⟩
  rcases hk with ⟨hw334, hw339, hw344, hw349, hw354⟩
  unfold Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.s38_1
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5 at hperm
  rw [nodeCoeff0, nodeCoeff1, nodeCoeff2, nodeCoeff3, nodeCoeff4] at hperm
  simpa [nodeOut12, Shieldd.GnarkFormal.Deployed.CertifiedQuadPathNodePoseidon.domainLit,
    hw334, hw339, hw344, hw349, hw354] using hperm

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetAssetRegistryPath_15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67
