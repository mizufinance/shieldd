import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode11.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node11_eq (rho : Nat -> Seg28.F) (h : Seg28.relation rho) :
    seg28ScpNode11Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg28.F) + (12 : Seg28.F))
        (rho 151 + rho 23641) (rho 152 + rho 23642 + rho 23643)
        (rho 152 + rho 23644 + rho 23645) (rho 153 + rho 23646) := by
  unfold Seg28.relation at h
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
  unfold Seg28.relationPart53 at p53
  rcases p53 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r4297, r4298, r4299, r4300, r4301, r4302, r4303, r4304, r4305, r4306, r4307, r4308, r4309, r4310, r4311, r4312, r4313, r4314, r4315, r4316, r4317, r4318, r4319⟩
  unfold Seg28.relationPart54 at p54
  rcases p54 with ⟨r4320, r4321, r4322, r4323, r4324, r4325, r4326, r4327, r4328, r4329, r4330, r4331, r4332, r4333, r4334, r4335, r4336, r4337, r4338, r4339, r4340, r4341, r4342, r4343, r4344, r4345, r4346, r4347, r4348, r4349, r4350, r4351, r4352, r4353, r4354, r4355, r4356, r4357, r4358, r4359, r4360, r4361, r4362, r4363, r4364, r4365, r4366, r4367, r4368, r4369, r4370, r4371, r4372, r4373, r4374, r4375, r4376, r4377, r4378, r4379, r4380, r4381, r4382, r4383, r4384, r4385, r4386, r4387, r4388, r4389, r4390, r4391, r4392, r4393, r4394, r4395, r4396, r4397, r4398, r4399⟩
  unfold Seg28.relationPart55 at p55
  rcases p55 with ⟨r4400, r4401, r4402, r4403, r4404, r4405, r4406, r4407, r4408, r4409, r4410, r4411, r4412, r4413, r4414, r4415, r4416, r4417, r4418, r4419, r4420, r4421, r4422, r4423, r4424, r4425, r4426, r4427, r4428, r4429, r4430, r4431, r4432, r4433, r4434, r4435, r4436, r4437, r4438, r4439, r4440, r4441, r4442, r4443, r4444, r4445, r4446, r4447, r4448, r4449, r4450, r4451, r4452, r4453, r4454, r4455, r4456, r4457, r4458, r4459, r4460, r4461, r4462, r4463, r4464, r4465, r4466, r4467, r4468, r4469, r4470, r4471, r4472, r4473, r4474, r4475, r4476, r4477, r4478, r4479⟩
  unfold Seg28.relationPart56 at p56
  rcases p56 with ⟨r4480, r4481, r4482, r4483, r4484, r4485, r4486, r4487, r4488, r4489, r4490, r4491, r4492, r4493, r4494, r4495, r4496, r4497, r4498, r4499, r4500, r4501, r4502, r4503, r4504, r4505, r4506, r4507, r4508, r4509, r4510, r4511, r4512, r4513, r4514, r4515, r4516, r4517, r4518, r4519, r4520, r4521, r4522, r4523, r4524, r4525, r4526, r4527, r4528, r4529, r4530, r4531, r4532, r4533, r4534, r4535, r4536, r4537, r4538, r4539, r4540, r4541, r4542, r4543, r4544, r4545, r4546, r4547, r4548, r4549, r4550, r4551, r4552, r4553, r4554, r4555, r4556, r4557, r4558, r4559⟩
  unfold Seg28.relationPart57 at p57
  rcases p57 with ⟨r4560, r4561, r4562, r4563, r4564, r4565, r4566, r4567, r4568, r4569, r4570, r4571, r4572, r4573, r4574, r4575, r4576, r4577, r4578, r4579, r4580, r4581, r4582, r4583, r4584, r4585, r4586, r4587, r4588, r4589, r4590, r4591, r4592, r4593, r4594, r4595, r4596, r4597, r4598, r4599, r4600, r4601, r4602, r4603, r4604, r4605, r4606, r4607, r4608, r4609, r4610, r4611, r4612, r4613, r4614, r4615, r4616, r4617, r4618, r4619, r4620, r4621, r4622, r4623, r4624, r4625, r4626, r4627, r4628, r4629, r4630, r4631, r4632, r4633, r4634, r4635, r4636, r4637, r4638, r4639⟩
  unfold Seg28.relationPart58 at p58
  rcases p58 with ⟨r4640, r4641, r4642, r4643, r4644, r4645, r4646, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.relation (rho 151) (rho 152) (rho 153) (rho 23641) (rho 23642) (rho 23643) (rho 23644) (rho 23645) (rho 23646)
      (fun o0 o1 o2 o3 o4 => o0 = rho 23976 ∧ o1 = rho 23981 ∧ o2 = rho 23986 ∧ o3 = rho 23991 ∧ o4 = rho 23996) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg0
    refine ⟨rho 23647, rho 23648, rho 23649, rho 23650, rho 23651,
      (by unfold Seg28.relationRow4297 at r4297; linear_combination r4297), (by unfold Seg28.relationRow4298 at r4298; linear_combination r4298), (by unfold Seg28.relationRow4299 at r4299; linear_combination r4299), (by unfold Seg28.relationRow4300 at r4300; linear_combination r4300), (by unfold Seg28.relationRow4301 at r4301; linear_combination r4301), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg1
    refine ⟨rho 23652, rho 23653, rho 23654, rho 23655, rho 23656,
      (by unfold Seg28.relationRow4302 at r4302; linear_combination r4302), (by unfold Seg28.relationRow4303 at r4303; linear_combination r4303), (by unfold Seg28.relationRow4304 at r4304; linear_combination r4304), (by unfold Seg28.relationRow4305 at r4305; linear_combination r4305), (by unfold Seg28.relationRow4306 at r4306; linear_combination r4306), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg2
    refine ⟨rho 23657, rho 23658, rho 23659, rho 23660, rho 23661,
      (by unfold Seg28.relationRow4307 at r4307; linear_combination r4307), (by unfold Seg28.relationRow4308 at r4308; linear_combination r4308), (by unfold Seg28.relationRow4309 at r4309; linear_combination r4309), (by unfold Seg28.relationRow4310 at r4310; linear_combination r4310), (by unfold Seg28.relationRow4311 at r4311; linear_combination r4311), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg3
    refine ⟨rho 23662, rho 23663, rho 23664, rho 23665, rho 23666,
      (by unfold Seg28.relationRow4312 at r4312; linear_combination r4312), (by unfold Seg28.relationRow4313 at r4313; linear_combination r4313), (by unfold Seg28.relationRow4314 at r4314; linear_combination r4314), (by unfold Seg28.relationRow4315 at r4315; linear_combination r4315), (by unfold Seg28.relationRow4316 at r4316; linear_combination r4316), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg4
    refine ⟨rho 23667, rho 23668, rho 23669, rho 23670, rho 23671,
      (by unfold Seg28.relationRow4317 at r4317; linear_combination r4317), (by unfold Seg28.relationRow4318 at r4318; linear_combination r4318), (by unfold Seg28.relationRow4319 at r4319; linear_combination r4319), (by unfold Seg28.relationRow4320 at r4320; linear_combination r4320), (by unfold Seg28.relationRow4321 at r4321; linear_combination r4321), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg5
    refine ⟨rho 23672, rho 23673, rho 23674, rho 23675, rho 23676,
      (by unfold Seg28.relationRow4322 at r4322; linear_combination r4322), (by unfold Seg28.relationRow4323 at r4323; linear_combination r4323), (by unfold Seg28.relationRow4324 at r4324; linear_combination r4324), (by unfold Seg28.relationRow4325 at r4325; linear_combination r4325), (by unfold Seg28.relationRow4326 at r4326; linear_combination r4326), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg6
    refine ⟨rho 23677, rho 23678, rho 23679, rho 23680, rho 23681,
      (by unfold Seg28.relationRow4327 at r4327; linear_combination r4327), (by unfold Seg28.relationRow4328 at r4328; linear_combination r4328), (by unfold Seg28.relationRow4329 at r4329; linear_combination r4329), (by unfold Seg28.relationRow4330 at r4330; linear_combination r4330), (by unfold Seg28.relationRow4331 at r4331; linear_combination r4331), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg7
    refine ⟨rho 23682, rho 23683, rho 23684, rho 23685, rho 23686,
      (by unfold Seg28.relationRow4332 at r4332; linear_combination r4332), (by unfold Seg28.relationRow4333 at r4333; linear_combination r4333), (by unfold Seg28.relationRow4334 at r4334; linear_combination r4334), (by unfold Seg28.relationRow4335 at r4335; linear_combination r4335), (by unfold Seg28.relationRow4336 at r4336; linear_combination r4336), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg8
    refine ⟨rho 23687, rho 23688, rho 23689, rho 23690, rho 23691,
      (by unfold Seg28.relationRow4337 at r4337; linear_combination r4337), (by unfold Seg28.relationRow4338 at r4338; linear_combination r4338), (by unfold Seg28.relationRow4339 at r4339; linear_combination r4339), (by unfold Seg28.relationRow4340 at r4340; linear_combination r4340), (by unfold Seg28.relationRow4341 at r4341; linear_combination r4341), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg9
    refine ⟨rho 23692, rho 23693, rho 23694, rho 23695, rho 23696,
      (by unfold Seg28.relationRow4342 at r4342; linear_combination r4342), (by unfold Seg28.relationRow4343 at r4343; linear_combination r4343), (by unfold Seg28.relationRow4344 at r4344; linear_combination r4344), (by unfold Seg28.relationRow4345 at r4345; linear_combination r4345), (by unfold Seg28.relationRow4346 at r4346; linear_combination r4346), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg10
    refine ⟨rho 23697, rho 23698, rho 23699, rho 23700, rho 23701,
      (by unfold Seg28.relationRow4347 at r4347; linear_combination r4347), (by unfold Seg28.relationRow4348 at r4348; linear_combination r4348), (by unfold Seg28.relationRow4349 at r4349; linear_combination r4349), (by unfold Seg28.relationRow4350 at r4350; linear_combination r4350), (by unfold Seg28.relationRow4351 at r4351; linear_combination r4351), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg11
    refine ⟨rho 23702, rho 23703, rho 23704, rho 23705, rho 23706,
      (by unfold Seg28.relationRow4352 at r4352; linear_combination r4352), (by unfold Seg28.relationRow4353 at r4353; linear_combination r4353), (by unfold Seg28.relationRow4354 at r4354; linear_combination r4354), (by unfold Seg28.relationRow4355 at r4355; linear_combination r4355), (by unfold Seg28.relationRow4356 at r4356; linear_combination r4356), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg12
    refine ⟨rho 23707, rho 23708, rho 23709, rho 23710, rho 23711,
      (by unfold Seg28.relationRow4357 at r4357; linear_combination r4357), (by unfold Seg28.relationRow4358 at r4358; linear_combination r4358), (by unfold Seg28.relationRow4359 at r4359; linear_combination r4359), (by unfold Seg28.relationRow4360 at r4360; linear_combination r4360), (by unfold Seg28.relationRow4361 at r4361; linear_combination r4361), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg13
    refine ⟨rho 23712, rho 23713, rho 23714, rho 23715, rho 23716,
      (by unfold Seg28.relationRow4362 at r4362; linear_combination r4362), (by unfold Seg28.relationRow4363 at r4363; linear_combination r4363), (by unfold Seg28.relationRow4364 at r4364; linear_combination r4364), (by unfold Seg28.relationRow4365 at r4365; linear_combination r4365), (by unfold Seg28.relationRow4366 at r4366; linear_combination r4366), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg14
    refine ⟨rho 23717, rho 23718, rho 23719, rho 23720, rho 23721,
      (by unfold Seg28.relationRow4367 at r4367; linear_combination r4367), (by unfold Seg28.relationRow4368 at r4368; linear_combination r4368), (by unfold Seg28.relationRow4369 at r4369; linear_combination r4369), (by unfold Seg28.relationRow4370 at r4370; linear_combination r4370), (by unfold Seg28.relationRow4371 at r4371; linear_combination r4371), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg15
    refine ⟨rho 23722, rho 23723, rho 23724, rho 23725, rho 23726,
      (by unfold Seg28.relationRow4372 at r4372; linear_combination r4372), (by unfold Seg28.relationRow4373 at r4373; linear_combination r4373), (by unfold Seg28.relationRow4374 at r4374; linear_combination r4374), (by unfold Seg28.relationRow4375 at r4375; linear_combination r4375), (by unfold Seg28.relationRow4376 at r4376; linear_combination r4376), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg16
    refine ⟨rho 23727, rho 23728, rho 23729, rho 23730, rho 23731,
      (by unfold Seg28.relationRow4377 at r4377; linear_combination r4377), (by unfold Seg28.relationRow4378 at r4378; linear_combination r4378), (by unfold Seg28.relationRow4379 at r4379; linear_combination r4379), (by unfold Seg28.relationRow4380 at r4380; linear_combination r4380), (by unfold Seg28.relationRow4381 at r4381; linear_combination r4381), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg17
    refine ⟨rho 23732, rho 23733, rho 23734, rho 23735, rho 23736,
      (by unfold Seg28.relationRow4382 at r4382; linear_combination r4382), (by unfold Seg28.relationRow4383 at r4383; linear_combination r4383), (by unfold Seg28.relationRow4384 at r4384; linear_combination r4384), (by unfold Seg28.relationRow4385 at r4385; linear_combination r4385), (by unfold Seg28.relationRow4386 at r4386; linear_combination r4386), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg18
    refine ⟨rho 23737, rho 23738, rho 23739, rho 23740, rho 23741,
      (by unfold Seg28.relationRow4387 at r4387; linear_combination r4387), (by unfold Seg28.relationRow4388 at r4388; linear_combination r4388), (by unfold Seg28.relationRow4389 at r4389; linear_combination r4389), (by unfold Seg28.relationRow4390 at r4390; linear_combination r4390), (by unfold Seg28.relationRow4391 at r4391; linear_combination r4391), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg19
    refine ⟨rho 23742, rho 23743, rho 23744, rho 23745, rho 23746,
      (by unfold Seg28.relationRow4392 at r4392; linear_combination r4392), (by unfold Seg28.relationRow4393 at r4393; linear_combination r4393), (by unfold Seg28.relationRow4394 at r4394; linear_combination r4394), (by unfold Seg28.relationRow4395 at r4395; linear_combination r4395), (by unfold Seg28.relationRow4396 at r4396; linear_combination r4396), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg20
    refine ⟨rho 23747, rho 23748, rho 23749, rho 23750, rho 23751,
      (by unfold Seg28.relationRow4397 at r4397; linear_combination r4397), (by unfold Seg28.relationRow4398 at r4398; linear_combination r4398), (by unfold Seg28.relationRow4399 at r4399; linear_combination r4399), (by unfold Seg28.relationRow4400 at r4400; linear_combination r4400), (by unfold Seg28.relationRow4401 at r4401; linear_combination r4401), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg21
    refine ⟨rho 23752, rho 23753, rho 23754, rho 23755, rho 23756,
      (by unfold Seg28.relationRow4402 at r4402; linear_combination r4402), (by unfold Seg28.relationRow4403 at r4403; linear_combination r4403), (by unfold Seg28.relationRow4404 at r4404; linear_combination r4404), (by unfold Seg28.relationRow4405 at r4405; linear_combination r4405), (by unfold Seg28.relationRow4406 at r4406; linear_combination r4406), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg22
    refine ⟨rho 23757, rho 23758, rho 23759, rho 23760, rho 23761,
      (by unfold Seg28.relationRow4407 at r4407; linear_combination r4407), (by unfold Seg28.relationRow4408 at r4408; linear_combination r4408), (by unfold Seg28.relationRow4409 at r4409; linear_combination r4409), (by unfold Seg28.relationRow4410 at r4410; linear_combination r4410), (by unfold Seg28.relationRow4411 at r4411; linear_combination r4411), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg23
    refine ⟨rho 23762, rho 23763, rho 23764, rho 23765, rho 23766,
      (by unfold Seg28.relationRow4412 at r4412; linear_combination r4412), (by unfold Seg28.relationRow4413 at r4413; linear_combination r4413), (by unfold Seg28.relationRow4414 at r4414; linear_combination r4414), (by unfold Seg28.relationRow4415 at r4415; linear_combination r4415), (by unfold Seg28.relationRow4416 at r4416; linear_combination r4416), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg24
    refine ⟨rho 23767, rho 23768, rho 23769, rho 23770, rho 23771,
      (by unfold Seg28.relationRow4417 at r4417; linear_combination r4417), (by unfold Seg28.relationRow4418 at r4418; linear_combination r4418), (by unfold Seg28.relationRow4419 at r4419; linear_combination r4419), (by unfold Seg28.relationRow4420 at r4420; linear_combination r4420), (by unfold Seg28.relationRow4421 at r4421; linear_combination r4421), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg25
    refine ⟨rho 23772, rho 23773, rho 23774, rho 23775, rho 23776,
      (by unfold Seg28.relationRow4422 at r4422; linear_combination r4422), (by unfold Seg28.relationRow4423 at r4423; linear_combination r4423), (by unfold Seg28.relationRow4424 at r4424; linear_combination r4424), (by unfold Seg28.relationRow4425 at r4425; linear_combination r4425), (by unfold Seg28.relationRow4426 at r4426; linear_combination r4426), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg26
    refine ⟨rho 23777, rho 23778, rho 23779, rho 23780, rho 23781,
      (by unfold Seg28.relationRow4427 at r4427; linear_combination r4427), (by unfold Seg28.relationRow4428 at r4428; linear_combination r4428), (by unfold Seg28.relationRow4429 at r4429; linear_combination r4429), (by unfold Seg28.relationRow4430 at r4430; linear_combination r4430), (by unfold Seg28.relationRow4431 at r4431; linear_combination r4431), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg27
    refine ⟨rho 23782, rho 23783, rho 23784, rho 23785, rho 23786,
      (by unfold Seg28.relationRow4432 at r4432; linear_combination r4432), (by unfold Seg28.relationRow4433 at r4433; linear_combination r4433), (by unfold Seg28.relationRow4434 at r4434; linear_combination r4434), (by unfold Seg28.relationRow4435 at r4435; linear_combination r4435), (by unfold Seg28.relationRow4436 at r4436; linear_combination r4436), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg28
    refine ⟨rho 23787, rho 23788, rho 23789, rho 23790, rho 23791,
      (by unfold Seg28.relationRow4437 at r4437; linear_combination r4437), (by unfold Seg28.relationRow4438 at r4438; linear_combination r4438), (by unfold Seg28.relationRow4439 at r4439; linear_combination r4439), (by unfold Seg28.relationRow4440 at r4440; linear_combination r4440), (by unfold Seg28.relationRow4441 at r4441; linear_combination r4441), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg29
    refine ⟨rho 23792, rho 23793, rho 23794, rho 23795, rho 23796,
      (by unfold Seg28.relationRow4442 at r4442; linear_combination r4442), (by unfold Seg28.relationRow4443 at r4443; linear_combination r4443), (by unfold Seg28.relationRow4444 at r4444; linear_combination r4444), (by unfold Seg28.relationRow4445 at r4445; linear_combination r4445), (by unfold Seg28.relationRow4446 at r4446; linear_combination r4446), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg30
    refine ⟨rho 23797, rho 23798, rho 23799, rho 23800, rho 23801,
      (by unfold Seg28.relationRow4447 at r4447; linear_combination r4447), (by unfold Seg28.relationRow4448 at r4448; linear_combination r4448), (by unfold Seg28.relationRow4449 at r4449; linear_combination r4449), (by unfold Seg28.relationRow4450 at r4450; linear_combination r4450), (by unfold Seg28.relationRow4451 at r4451; linear_combination r4451), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg31
    refine ⟨rho 23802, rho 23803, rho 23804, rho 23805, rho 23806,
      (by unfold Seg28.relationRow4452 at r4452; linear_combination r4452), (by unfold Seg28.relationRow4453 at r4453; linear_combination r4453), (by unfold Seg28.relationRow4454 at r4454; linear_combination r4454), (by unfold Seg28.relationRow4455 at r4455; linear_combination r4455), (by unfold Seg28.relationRow4456 at r4456; linear_combination r4456), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg32
    refine ⟨rho 23807, rho 23808, rho 23809, rho 23810, rho 23811,
      (by unfold Seg28.relationRow4457 at r4457; linear_combination r4457), (by unfold Seg28.relationRow4458 at r4458; linear_combination r4458), (by unfold Seg28.relationRow4459 at r4459; linear_combination r4459), (by unfold Seg28.relationRow4460 at r4460; linear_combination r4460), (by unfold Seg28.relationRow4461 at r4461; linear_combination r4461), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg33
    refine ⟨rho 23812, rho 23813, rho 23814, rho 23815, rho 23816,
      (by unfold Seg28.relationRow4462 at r4462; linear_combination r4462), (by unfold Seg28.relationRow4463 at r4463; linear_combination r4463), (by unfold Seg28.relationRow4464 at r4464; linear_combination r4464), (by unfold Seg28.relationRow4465 at r4465; linear_combination r4465), (by unfold Seg28.relationRow4466 at r4466; linear_combination r4466), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg34
    refine ⟨rho 23817, rho 23818, rho 23819, rho 23820, rho 23821,
      (by unfold Seg28.relationRow4467 at r4467; linear_combination r4467), (by unfold Seg28.relationRow4468 at r4468; linear_combination r4468), (by unfold Seg28.relationRow4469 at r4469; linear_combination r4469), (by unfold Seg28.relationRow4470 at r4470; linear_combination r4470), (by unfold Seg28.relationRow4471 at r4471; linear_combination r4471), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg35
    refine ⟨rho 23822, rho 23823, rho 23824, rho 23825, rho 23826,
      (by unfold Seg28.relationRow4472 at r4472; linear_combination r4472), (by unfold Seg28.relationRow4473 at r4473; linear_combination r4473), (by unfold Seg28.relationRow4474 at r4474; linear_combination r4474), (by unfold Seg28.relationRow4475 at r4475; linear_combination r4475), (by unfold Seg28.relationRow4476 at r4476; linear_combination r4476), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg36
    refine ⟨rho 23827, rho 23828, rho 23829, rho 23830, rho 23831,
      (by unfold Seg28.relationRow4477 at r4477; linear_combination r4477), (by unfold Seg28.relationRow4478 at r4478; linear_combination r4478), (by unfold Seg28.relationRow4479 at r4479; linear_combination r4479), (by unfold Seg28.relationRow4480 at r4480; linear_combination r4480), (by unfold Seg28.relationRow4481 at r4481; linear_combination r4481), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg37
    refine ⟨rho 23832, rho 23833, rho 23834, rho 23835, rho 23836,
      (by unfold Seg28.relationRow4482 at r4482; linear_combination r4482), (by unfold Seg28.relationRow4483 at r4483; linear_combination r4483), (by unfold Seg28.relationRow4484 at r4484; linear_combination r4484), (by unfold Seg28.relationRow4485 at r4485; linear_combination r4485), (by unfold Seg28.relationRow4486 at r4486; linear_combination r4486), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg38
    refine ⟨rho 23837, rho 23838, rho 23839, rho 23840, rho 23841,
      (by unfold Seg28.relationRow4487 at r4487; linear_combination r4487), (by unfold Seg28.relationRow4488 at r4488; linear_combination r4488), (by unfold Seg28.relationRow4489 at r4489; linear_combination r4489), (by unfold Seg28.relationRow4490 at r4490; linear_combination r4490), (by unfold Seg28.relationRow4491 at r4491; linear_combination r4491), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg39
    refine ⟨rho 23842, rho 23843, rho 23844, rho 23845, rho 23846,
      (by unfold Seg28.relationRow4492 at r4492; linear_combination r4492), (by unfold Seg28.relationRow4493 at r4493; linear_combination r4493), (by unfold Seg28.relationRow4494 at r4494; linear_combination r4494), (by unfold Seg28.relationRow4495 at r4495; linear_combination r4495), (by unfold Seg28.relationRow4496 at r4496; linear_combination r4496), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg40
    refine ⟨rho 23847, rho 23848, rho 23849, rho 23850, rho 23851,
      (by unfold Seg28.relationRow4497 at r4497; linear_combination r4497), (by unfold Seg28.relationRow4498 at r4498; linear_combination r4498), (by unfold Seg28.relationRow4499 at r4499; linear_combination r4499), (by unfold Seg28.relationRow4500 at r4500; linear_combination r4500), (by unfold Seg28.relationRow4501 at r4501; linear_combination r4501), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg41
    refine ⟨rho 23852, rho 23853, rho 23854, rho 23855, rho 23856,
      (by unfold Seg28.relationRow4502 at r4502; linear_combination r4502), (by unfold Seg28.relationRow4503 at r4503; linear_combination r4503), (by unfold Seg28.relationRow4504 at r4504; linear_combination r4504), (by unfold Seg28.relationRow4505 at r4505; linear_combination r4505), (by unfold Seg28.relationRow4506 at r4506; linear_combination r4506), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg42
    refine ⟨rho 23857, rho 23858, rho 23859, rho 23860, rho 23861,
      (by unfold Seg28.relationRow4507 at r4507; linear_combination r4507), (by unfold Seg28.relationRow4508 at r4508; linear_combination r4508), (by unfold Seg28.relationRow4509 at r4509; linear_combination r4509), (by unfold Seg28.relationRow4510 at r4510; linear_combination r4510), (by unfold Seg28.relationRow4511 at r4511; linear_combination r4511), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg43
    refine ⟨rho 23862, rho 23863, rho 23864, rho 23865, rho 23866,
      (by unfold Seg28.relationRow4512 at r4512; linear_combination r4512), (by unfold Seg28.relationRow4513 at r4513; linear_combination r4513), (by unfold Seg28.relationRow4514 at r4514; linear_combination r4514), (by unfold Seg28.relationRow4515 at r4515; linear_combination r4515), (by unfold Seg28.relationRow4516 at r4516; linear_combination r4516), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg44
    refine ⟨rho 23867, rho 23868, rho 23869, rho 23870, rho 23871,
      (by unfold Seg28.relationRow4517 at r4517; linear_combination r4517), (by unfold Seg28.relationRow4518 at r4518; linear_combination r4518), (by unfold Seg28.relationRow4519 at r4519; linear_combination r4519), (by unfold Seg28.relationRow4520 at r4520; linear_combination r4520), (by unfold Seg28.relationRow4521 at r4521; linear_combination r4521), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg45
    refine ⟨rho 23872, rho 23873, rho 23874, rho 23875, rho 23876,
      (by unfold Seg28.relationRow4522 at r4522; linear_combination r4522), (by unfold Seg28.relationRow4523 at r4523; linear_combination r4523), (by unfold Seg28.relationRow4524 at r4524; linear_combination r4524), (by unfold Seg28.relationRow4525 at r4525; linear_combination r4525), (by unfold Seg28.relationRow4526 at r4526; linear_combination r4526), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg46
    refine ⟨rho 23877, rho 23878, rho 23879, rho 23880, rho 23881,
      (by unfold Seg28.relationRow4527 at r4527; linear_combination r4527), (by unfold Seg28.relationRow4528 at r4528; linear_combination r4528), (by unfold Seg28.relationRow4529 at r4529; linear_combination r4529), (by unfold Seg28.relationRow4530 at r4530; linear_combination r4530), (by unfold Seg28.relationRow4531 at r4531; linear_combination r4531), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg47
    refine ⟨rho 23882, rho 23883, rho 23884, rho 23885, rho 23886,
      (by unfold Seg28.relationRow4532 at r4532; linear_combination r4532), (by unfold Seg28.relationRow4533 at r4533; linear_combination r4533), (by unfold Seg28.relationRow4534 at r4534; linear_combination r4534), (by unfold Seg28.relationRow4535 at r4535; linear_combination r4535), (by unfold Seg28.relationRow4536 at r4536; linear_combination r4536), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg48
    refine ⟨rho 23887, rho 23888, rho 23889, rho 23890, rho 23891,
      (by unfold Seg28.relationRow4537 at r4537; linear_combination r4537), (by unfold Seg28.relationRow4538 at r4538; linear_combination r4538), (by unfold Seg28.relationRow4539 at r4539; linear_combination r4539), (by unfold Seg28.relationRow4540 at r4540; linear_combination r4540), (by unfold Seg28.relationRow4541 at r4541; linear_combination r4541), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg49
    refine ⟨rho 23892, rho 23893, rho 23894, rho 23895, rho 23896,
      (by unfold Seg28.relationRow4542 at r4542; linear_combination r4542), (by unfold Seg28.relationRow4543 at r4543; linear_combination r4543), (by unfold Seg28.relationRow4544 at r4544; linear_combination r4544), (by unfold Seg28.relationRow4545 at r4545; linear_combination r4545), (by unfold Seg28.relationRow4546 at r4546; linear_combination r4546), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg50
    refine ⟨rho 23897, rho 23898, rho 23899, rho 23900, rho 23901,
      (by unfold Seg28.relationRow4547 at r4547; linear_combination r4547), (by unfold Seg28.relationRow4548 at r4548; linear_combination r4548), (by unfold Seg28.relationRow4549 at r4549; linear_combination r4549), (by unfold Seg28.relationRow4550 at r4550; linear_combination r4550), (by unfold Seg28.relationRow4551 at r4551; linear_combination r4551), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg51
    refine ⟨rho 23902, rho 23903, rho 23904, rho 23905, rho 23906,
      (by unfold Seg28.relationRow4552 at r4552; linear_combination r4552), (by unfold Seg28.relationRow4553 at r4553; linear_combination r4553), (by unfold Seg28.relationRow4554 at r4554; linear_combination r4554), (by unfold Seg28.relationRow4555 at r4555; linear_combination r4555), (by unfold Seg28.relationRow4556 at r4556; linear_combination r4556), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg52
    refine ⟨rho 23907, rho 23908, rho 23909, rho 23910, rho 23911,
      (by unfold Seg28.relationRow4557 at r4557; linear_combination r4557), (by unfold Seg28.relationRow4558 at r4558; linear_combination r4558), (by unfold Seg28.relationRow4559 at r4559; linear_combination r4559), (by unfold Seg28.relationRow4560 at r4560; linear_combination r4560), (by unfold Seg28.relationRow4561 at r4561; linear_combination r4561), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg53
    refine ⟨rho 23912, rho 23913, rho 23914, rho 23915, rho 23916,
      (by unfold Seg28.relationRow4562 at r4562; linear_combination r4562), (by unfold Seg28.relationRow4563 at r4563; linear_combination r4563), (by unfold Seg28.relationRow4564 at r4564; linear_combination r4564), (by unfold Seg28.relationRow4565 at r4565; linear_combination r4565), (by unfold Seg28.relationRow4566 at r4566; linear_combination r4566), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg54
    refine ⟨rho 23917, rho 23918, rho 23919, rho 23920, rho 23921,
      (by unfold Seg28.relationRow4567 at r4567; linear_combination r4567), (by unfold Seg28.relationRow4568 at r4568; linear_combination r4568), (by unfold Seg28.relationRow4569 at r4569; linear_combination r4569), (by unfold Seg28.relationRow4570 at r4570; linear_combination r4570), (by unfold Seg28.relationRow4571 at r4571; linear_combination r4571), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg55
    refine ⟨rho 23922, rho 23923, rho 23924, rho 23925, rho 23926,
      (by unfold Seg28.relationRow4572 at r4572; linear_combination r4572), (by unfold Seg28.relationRow4573 at r4573; linear_combination r4573), (by unfold Seg28.relationRow4574 at r4574; linear_combination r4574), (by unfold Seg28.relationRow4575 at r4575; linear_combination r4575), (by unfold Seg28.relationRow4576 at r4576; linear_combination r4576), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg56
    refine ⟨rho 23927, rho 23928, rho 23929, rho 23930, rho 23931,
      (by unfold Seg28.relationRow4577 at r4577; linear_combination r4577), (by unfold Seg28.relationRow4578 at r4578; linear_combination r4578), (by unfold Seg28.relationRow4579 at r4579; linear_combination r4579), (by unfold Seg28.relationRow4580 at r4580; linear_combination r4580), (by unfold Seg28.relationRow4581 at r4581; linear_combination r4581), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg57
    refine ⟨rho 23932, rho 23933, rho 23934, rho 23935, rho 23936,
      (by unfold Seg28.relationRow4582 at r4582; linear_combination r4582), (by unfold Seg28.relationRow4583 at r4583; linear_combination r4583), (by unfold Seg28.relationRow4584 at r4584; linear_combination r4584), (by unfold Seg28.relationRow4585 at r4585; linear_combination r4585), (by unfold Seg28.relationRow4586 at r4586; linear_combination r4586), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg58
    refine ⟨rho 23937, rho 23938, rho 23939, rho 23940, rho 23941,
      (by unfold Seg28.relationRow4587 at r4587; linear_combination r4587), (by unfold Seg28.relationRow4588 at r4588; linear_combination r4588), (by unfold Seg28.relationRow4589 at r4589; linear_combination r4589), (by unfold Seg28.relationRow4590 at r4590; linear_combination r4590), (by unfold Seg28.relationRow4591 at r4591; linear_combination r4591), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg59
    refine ⟨rho 23942, rho 23943, rho 23944, rho 23945, rho 23946,
      (by unfold Seg28.relationRow4592 at r4592; linear_combination r4592), (by unfold Seg28.relationRow4593 at r4593; linear_combination r4593), (by unfold Seg28.relationRow4594 at r4594; linear_combination r4594), (by unfold Seg28.relationRow4595 at r4595; linear_combination r4595), (by unfold Seg28.relationRow4596 at r4596; linear_combination r4596), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg60
    refine ⟨rho 23947, rho 23948, rho 23949, rho 23950, rho 23951,
      (by unfold Seg28.relationRow4597 at r4597; linear_combination r4597), (by unfold Seg28.relationRow4598 at r4598; linear_combination r4598), (by unfold Seg28.relationRow4599 at r4599; linear_combination r4599), (by unfold Seg28.relationRow4600 at r4600; linear_combination r4600), (by unfold Seg28.relationRow4601 at r4601; linear_combination r4601), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg61
    refine ⟨rho 23952, rho 23953, rho 23954, rho 23955, rho 23956,
      (by unfold Seg28.relationRow4602 at r4602; linear_combination r4602), (by unfold Seg28.relationRow4603 at r4603; linear_combination r4603), (by unfold Seg28.relationRow4604 at r4604; linear_combination r4604), (by unfold Seg28.relationRow4605 at r4605; linear_combination r4605), (by unfold Seg28.relationRow4606 at r4606; linear_combination r4606), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg62
    refine ⟨rho 23957, rho 23958, rho 23959, rho 23960, rho 23961,
      (by unfold Seg28.relationRow4607 at r4607; linear_combination r4607), (by unfold Seg28.relationRow4608 at r4608; linear_combination r4608), (by unfold Seg28.relationRow4609 at r4609; linear_combination r4609), (by unfold Seg28.relationRow4610 at r4610; linear_combination r4610), (by unfold Seg28.relationRow4611 at r4611; linear_combination r4611), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg63
    refine ⟨rho 23962, rho 23963, rho 23964, rho 23965, rho 23966,
      (by unfold Seg28.relationRow4612 at r4612; linear_combination r4612), (by unfold Seg28.relationRow4613 at r4613; linear_combination r4613), (by unfold Seg28.relationRow4614 at r4614; linear_combination r4614), (by unfold Seg28.relationRow4615 at r4615; linear_combination r4615), (by unfold Seg28.relationRow4616 at r4616; linear_combination r4616), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg64
    refine ⟨rho 23967, rho 23968, rho 23969, rho 23970, rho 23971,
      (by unfold Seg28.relationRow4617 at r4617; linear_combination r4617), (by unfold Seg28.relationRow4618 at r4618; linear_combination r4618), (by unfold Seg28.relationRow4619 at r4619; linear_combination r4619), (by unfold Seg28.relationRow4620 at r4620; linear_combination r4620), (by unfold Seg28.relationRow4621 at r4621; linear_combination r4621), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg65
    refine ⟨rho 23972, rho 23973, rho 23974, rho 23975, rho 23976,
      (by unfold Seg28.relationRow4622 at r4622; linear_combination r4622), (by unfold Seg28.relationRow4623 at r4623; linear_combination r4623), (by unfold Seg28.relationRow4624 at r4624; linear_combination r4624), (by unfold Seg28.relationRow4625 at r4625; linear_combination r4625), (by unfold Seg28.relationRow4626 at r4626; linear_combination r4626), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg66
    refine ⟨rho 23977, rho 23978, rho 23979, rho 23980, rho 23981,
      (by unfold Seg28.relationRow4627 at r4627; linear_combination r4627), (by unfold Seg28.relationRow4628 at r4628; linear_combination r4628), (by unfold Seg28.relationRow4629 at r4629; linear_combination r4629), (by unfold Seg28.relationRow4630 at r4630; linear_combination r4630), (by unfold Seg28.relationRow4631 at r4631; linear_combination r4631), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg67
    refine ⟨rho 23982, rho 23983, rho 23984, rho 23985, rho 23986,
      (by unfold Seg28.relationRow4632 at r4632; linear_combination r4632), (by unfold Seg28.relationRow4633 at r4633; linear_combination r4633), (by unfold Seg28.relationRow4634 at r4634; linear_combination r4634), (by unfold Seg28.relationRow4635 at r4635; linear_combination r4635), (by unfold Seg28.relationRow4636 at r4636; linear_combination r4636), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg68
    refine ⟨rho 23987, rho 23988, rho 23989, rho 23990, rho 23991,
      (by unfold Seg28.relationRow4637 at r4637; linear_combination r4637), (by unfold Seg28.relationRow4638 at r4638; linear_combination r4638), (by unfold Seg28.relationRow4639 at r4639; linear_combination r4639), (by unfold Seg28.relationRow4640 at r4640; linear_combination r4640), (by unfold Seg28.relationRow4641 at r4641; linear_combination r4641), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg69
    refine ⟨rho 23992, rho 23993, rho 23994, rho 23995, rho 23996,
      (by unfold Seg28.relationRow4642 at r4642; linear_combination r4642), (by unfold Seg28.relationRow4643 at r4643; linear_combination r4643), (by unfold Seg28.relationRow4644 at r4644; linear_combination r4644), (by unfold Seg28.relationRow4645 at r4645; linear_combination r4645), (by unfold Seg28.relationRow4646 at r4646; linear_combination r4646), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode11.relation_sound_permSpec (rho 151) (rho 152) (rho 153) (rho 23641) (rho 23642) (rho 23643) (rho 23644) (rho 23645) (rho 23646) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode11.tctNode12DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode11.F) + (12 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode11.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg28ScpNode11Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode11.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

