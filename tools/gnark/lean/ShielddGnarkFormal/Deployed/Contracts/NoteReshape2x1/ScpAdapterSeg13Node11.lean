import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node11Rows0
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node11Rows1
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node11Rows2
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node11Rows3
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node11Rows4
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node11Rows5
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Node11Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode11.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node11_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode11Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (12 : Seg13.F))
        (rho 61 + rho 11460) (rho 62 + rho 11461 + rho 11462)
        (rho 62 + rho 11463 + rho 11464) (rho 63 + rho 11465) := by
  unfold Seg13.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p53, p54, p55, p56, p57, p58, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg13.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4297, r4298, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319⟩
  unfold Seg13.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399⟩
  unfold Seg13.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Seg13.relationPart56 at p56
  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559⟩
  unfold Seg13.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639⟩
  unfold Seg13.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, r4642, r4643, r4644, r4645, r4646, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.relation (rho 61) (rho 62) (rho 63) (rho 11460) (rho 11461) (rho 11462) (rho 11463) (rho 11464) (rho 11465)
      (fun o0 o1 o2 o3 o4 => o0 = rho 11795 ∧ o1 = rho 11800 ∧ o2 = rho 11805 ∧ o3 = rho 11810 ∧ o4 = rho 11815) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.relation
    exact seg13_scp_node11_seg0 rho _ r4297 r4298 r4299 r4300 r4301 (seg13_scp_node11_seg1 rho _ r4302 r4303 r4304 r4305 r4306 (seg13_scp_node11_seg2 rho _ r4307 r4308 r4309 r4310 r4311 (seg13_scp_node11_seg3 rho _ r4312 r4313 r4314 r4315 r4316 (seg13_scp_node11_seg4 rho _ r4317 r4318 r4319 r4320 r4321 (seg13_scp_node11_seg5 rho _ r4322 r4323 r4324 r4325 r4326 (seg13_scp_node11_seg6 rho _ r4327 r4328 r4329 r4330 r4331 (seg13_scp_node11_seg7 rho _ r4332 r4333 r4334 r4335 r4336 (seg13_scp_node11_seg8 rho _ r4337 r4338 r4339 r4340 r4341 (seg13_scp_node11_seg9 rho _ r4342 r4343 r4344 r4345 r4346 (seg13_scp_node11_seg10 rho _ r4347 r4348 r4349 r4350 r4351 (seg13_scp_node11_seg11 rho _ r4352 r4353 r4354 r4355 r4356 (seg13_scp_node11_seg12 rho _ r4357 r4358 r4359 r4360 r4361 (seg13_scp_node11_seg13 rho _ r4362 r4363 r4364 r4365 r4366 (seg13_scp_node11_seg14 rho _ r4367 r4368 r4369 r4370 r4371 (seg13_scp_node11_seg15 rho _ r4372 r4373 r4374 r4375 r4376 (seg13_scp_node11_seg16 rho _ r4377 r4378 r4379 r4380 r4381 (seg13_scp_node11_seg17 rho _ r4382 r4383 r4384 r4385 r4386 (seg13_scp_node11_seg18 rho _ r4387 r4388 r4389 r4390 r4391 (seg13_scp_node11_seg19 rho _ r4392 r4393 r4394 r4395 r4396 (seg13_scp_node11_seg20 rho _ r4397 r4398 r4399 r4400 r4401 (seg13_scp_node11_seg21 rho _ r4402 r4403 r4404 r4405 r4406 (seg13_scp_node11_seg22 rho _ r4407 r4408 r4409 r4410 r4411 (seg13_scp_node11_seg23 rho _ r4412 r4413 r4414 r4415 r4416 (seg13_scp_node11_seg24 rho _ r4417 r4418 r4419 r4420 r4421 (seg13_scp_node11_seg25 rho _ r4422 r4423 r4424 r4425 r4426 (seg13_scp_node11_seg26 rho _ r4427 r4428 r4429 r4430 r4431 (seg13_scp_node11_seg27 rho _ r4432 r4433 r4434 r4435 r4436 (seg13_scp_node11_seg28 rho _ r4437 r4438 r4439 r4440 r4441 (seg13_scp_node11_seg29 rho _ r4442 r4443 r4444 r4445 r4446 (seg13_scp_node11_seg30 rho _ r4447 r4448 r4449 r4450 r4451 (seg13_scp_node11_seg31 rho _ r4452 r4453 r4454 r4455 r4456 (seg13_scp_node11_seg32 rho _ r4457 r4458 r4459 r4460 r4461 (seg13_scp_node11_seg33 rho _ r4462 r4463 r4464 r4465 r4466 (seg13_scp_node11_seg34 rho _ r4467 r4468 r4469 r4470 r4471 (seg13_scp_node11_seg35 rho _ r4472 r4473 r4474 r4475 r4476 (seg13_scp_node11_seg36 rho _ r4477 r4478 r4479 r4480 r4481 (seg13_scp_node11_seg37 rho _ r4482 r4483 r4484 r4485 r4486 (seg13_scp_node11_seg38 rho _ r4487 r4488 r4489 r4490 r4491 (seg13_scp_node11_seg39 rho _ r4492 r4493 r4494 r4495 r4496 (seg13_scp_node11_seg40 rho _ r4497 r4498 r4499 r4500 r4501 (seg13_scp_node11_seg41 rho _ r4502 r4503 r4504 r4505 r4506 (seg13_scp_node11_seg42 rho _ r4507 r4508 r4509 r4510 r4511 (seg13_scp_node11_seg43 rho _ r4512 r4513 r4514 r4515 r4516 (seg13_scp_node11_seg44 rho _ r4517 r4518 r4519 r4520 r4521 (seg13_scp_node11_seg45 rho _ r4522 r4523 r4524 r4525 r4526 (seg13_scp_node11_seg46 rho _ r4527 r4528 r4529 r4530 r4531 (seg13_scp_node11_seg47 rho _ r4532 r4533 r4534 r4535 r4536 (seg13_scp_node11_seg48 rho _ r4537 r4538 r4539 r4540 r4541 (seg13_scp_node11_seg49 rho _ r4542 r4543 r4544 r4545 r4546 (seg13_scp_node11_seg50 rho _ r4547 r4548 r4549 r4550 r4551 (seg13_scp_node11_seg51 rho _ r4552 r4553 r4554 r4555 r4556 (seg13_scp_node11_seg52 rho _ r4557 r4558 r4559 r4560 r4561 (seg13_scp_node11_seg53 rho _ r4562 r4563 r4564 r4565 r4566 (seg13_scp_node11_seg54 rho _ r4567 r4568 r4569 r4570 r4571 (seg13_scp_node11_seg55 rho _ r4572 r4573 r4574 r4575 r4576 (seg13_scp_node11_seg56 rho _ r4577 r4578 r4579 r4580 r4581 (seg13_scp_node11_seg57 rho _ r4582 r4583 r4584 r4585 r4586 (seg13_scp_node11_seg58 rho _ r4587 r4588 r4589 r4590 r4591 (seg13_scp_node11_seg59 rho _ r4592 r4593 r4594 r4595 r4596 (seg13_scp_node11_seg60 rho _ r4597 r4598 r4599 r4600 r4601 (seg13_scp_node11_seg61 rho _ r4602 r4603 r4604 r4605 r4606 (seg13_scp_node11_seg62 rho _ r4607 r4608 r4609 r4610 r4611 (seg13_scp_node11_seg63 rho _ r4612 r4613 r4614 r4615 r4616 (seg13_scp_node11_seg64 rho _ r4617 r4618 r4619 r4620 r4621 (seg13_scp_node11_seg65 rho _ r4622 r4623 r4624 r4625 r4626 (seg13_scp_node11_seg66 rho _ r4627 r4628 r4629 r4630 r4631 (seg13_scp_node11_seg67 rho _ r4632 r4633 r4634 r4635 r4636 (seg13_scp_node11_seg68 rho _ r4637 r4638 r4639 r4640 r4641 (seg13_scp_node11_seg69 rho _ r4642 r4643 r4644 r4645 r4646 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode11.relation_sound_permSpec (rho 61) (rho 62) (rho 63) (rho 11460) (rho 11461) (rho 11462) (rho 11463) (rho 11464) (rho 11465) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode11.tctNode12DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode11.F) + (12 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode11.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode11Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode11.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

