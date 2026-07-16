import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node11_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4347 : Seg28.relationRow4347 rho)
    (r4348 : Seg28.relationRow4348 rho)
    (r4349 : Seg28.relationRow4349 rho)
    (r4350 : Seg28.relationRow4350 rho)
    (r4351 : Seg28.relationRow4351 rho)
    (tail : next (rho 23671) (rho 23676) (rho 23681) (rho 23686) (rho 23691) (rho 23696) (rho 23701)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg10 (rho 23671) (rho 23676) (rho 23681) (rho 23686) (rho 23691) (rho 23696) next := by
  exact ⟨rho 23697, rho 23698, rho 23699, rho 23700, rho 23701, r4347, r4348, r4349, r4350, r4351, tail⟩

theorem seg28_scp_node11_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4352 : Seg28.relationRow4352 rho)
    (r4353 : Seg28.relationRow4353 rho)
    (r4354 : Seg28.relationRow4354 rho)
    (r4355 : Seg28.relationRow4355 rho)
    (r4356 : Seg28.relationRow4356 rho)
    (tail : next (rho 23671) (rho 23676) (rho 23681) (rho 23686) (rho 23691) (rho 23696) (rho 23701) (rho 23706)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg11 (rho 23671) (rho 23676) (rho 23681) (rho 23686) (rho 23691) (rho 23696) (rho 23701) next := by
  exact ⟨rho 23702, rho 23703, rho 23704, rho 23705, rho 23706, r4352, r4353, r4354, r4355, r4356, tail⟩

theorem seg28_scp_node11_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4357 : Seg28.relationRow4357 rho)
    (r4358 : Seg28.relationRow4358 rho)
    (r4359 : Seg28.relationRow4359 rho)
    (r4360 : Seg28.relationRow4360 rho)
    (r4361 : Seg28.relationRow4361 rho)
    (tail : next (rho 23671) (rho 23676) (rho 23681) (rho 23686) (rho 23691) (rho 23696) (rho 23701) (rho 23706) (rho 23711)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg12 (rho 23671) (rho 23676) (rho 23681) (rho 23686) (rho 23691) (rho 23696) (rho 23701) (rho 23706) next := by
  exact ⟨rho 23707, rho 23708, rho 23709, rho 23710, rho 23711, r4357, r4358, r4359, r4360, r4361, tail⟩

theorem seg28_scp_node11_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4362 : Seg28.relationRow4362 rho)
    (r4363 : Seg28.relationRow4363 rho)
    (r4364 : Seg28.relationRow4364 rho)
    (r4365 : Seg28.relationRow4365 rho)
    (r4366 : Seg28.relationRow4366 rho)
    (tail : next (rho 23696) (rho 23701) (rho 23706) (rho 23711) (rho 23716)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg13 (rho 23671) (rho 23676) (rho 23681) (rho 23686) (rho 23691) (rho 23696) (rho 23701) (rho 23706) (rho 23711) next := by
  exact ⟨rho 23712, rho 23713, rho 23714, rho 23715, rho 23716, r4362, r4363, r4364, r4365, r4366, tail⟩

theorem seg28_scp_node11_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4367 : Seg28.relationRow4367 rho)
    (r4368 : Seg28.relationRow4368 rho)
    (r4369 : Seg28.relationRow4369 rho)
    (r4370 : Seg28.relationRow4370 rho)
    (r4371 : Seg28.relationRow4371 rho)
    (tail : next (rho 23696) (rho 23701) (rho 23706) (rho 23711) (rho 23716) (rho 23721)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg14 (rho 23696) (rho 23701) (rho 23706) (rho 23711) (rho 23716) next := by
  exact ⟨rho 23717, rho 23718, rho 23719, rho 23720, rho 23721, r4367, r4368, r4369, r4370, r4371, tail⟩

theorem seg28_scp_node11_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4372 : Seg28.relationRow4372 rho)
    (r4373 : Seg28.relationRow4373 rho)
    (r4374 : Seg28.relationRow4374 rho)
    (r4375 : Seg28.relationRow4375 rho)
    (r4376 : Seg28.relationRow4376 rho)
    (tail : next (rho 23696) (rho 23701) (rho 23706) (rho 23711) (rho 23716) (rho 23721) (rho 23726)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg15 (rho 23696) (rho 23701) (rho 23706) (rho 23711) (rho 23716) (rho 23721) next := by
  exact ⟨rho 23722, rho 23723, rho 23724, rho 23725, rho 23726, r4372, r4373, r4374, r4375, r4376, tail⟩

theorem seg28_scp_node11_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4377 : Seg28.relationRow4377 rho)
    (r4378 : Seg28.relationRow4378 rho)
    (r4379 : Seg28.relationRow4379 rho)
    (r4380 : Seg28.relationRow4380 rho)
    (r4381 : Seg28.relationRow4381 rho)
    (tail : next (rho 23696) (rho 23701) (rho 23706) (rho 23711) (rho 23716) (rho 23721) (rho 23726) (rho 23731)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg16 (rho 23696) (rho 23701) (rho 23706) (rho 23711) (rho 23716) (rho 23721) (rho 23726) next := by
  exact ⟨rho 23727, rho 23728, rho 23729, rho 23730, rho 23731, r4377, r4378, r4379, r4380, r4381, tail⟩

theorem seg28_scp_node11_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4382 : Seg28.relationRow4382 rho)
    (r4383 : Seg28.relationRow4383 rho)
    (r4384 : Seg28.relationRow4384 rho)
    (r4385 : Seg28.relationRow4385 rho)
    (r4386 : Seg28.relationRow4386 rho)
    (tail : next (rho 23696) (rho 23701) (rho 23706) (rho 23711) (rho 23716) (rho 23721) (rho 23726) (rho 23731) (rho 23736)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg17 (rho 23696) (rho 23701) (rho 23706) (rho 23711) (rho 23716) (rho 23721) (rho 23726) (rho 23731) next := by
  exact ⟨rho 23732, rho 23733, rho 23734, rho 23735, rho 23736, r4382, r4383, r4384, r4385, r4386, tail⟩

theorem seg28_scp_node11_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4387 : Seg28.relationRow4387 rho)
    (r4388 : Seg28.relationRow4388 rho)
    (r4389 : Seg28.relationRow4389 rho)
    (r4390 : Seg28.relationRow4390 rho)
    (r4391 : Seg28.relationRow4391 rho)
    (tail : next (rho 23721) (rho 23726) (rho 23731) (rho 23736) (rho 23741)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg18 (rho 23696) (rho 23701) (rho 23706) (rho 23711) (rho 23716) (rho 23721) (rho 23726) (rho 23731) (rho 23736) next := by
  exact ⟨rho 23737, rho 23738, rho 23739, rho 23740, rho 23741, r4387, r4388, r4389, r4390, r4391, tail⟩

theorem seg28_scp_node11_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4392 : Seg28.relationRow4392 rho)
    (r4393 : Seg28.relationRow4393 rho)
    (r4394 : Seg28.relationRow4394 rho)
    (r4395 : Seg28.relationRow4395 rho)
    (r4396 : Seg28.relationRow4396 rho)
    (tail : next (rho 23721) (rho 23726) (rho 23731) (rho 23736) (rho 23741) (rho 23746)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg19 (rho 23721) (rho 23726) (rho 23731) (rho 23736) (rho 23741) next := by
  exact ⟨rho 23742, rho 23743, rho 23744, rho 23745, rho 23746, r4392, r4393, r4394, r4395, r4396, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

