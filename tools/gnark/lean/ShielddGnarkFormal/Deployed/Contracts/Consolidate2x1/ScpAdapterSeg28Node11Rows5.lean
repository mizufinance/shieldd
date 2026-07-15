import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node11_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4547 : Seg28.relationRow4547 rho)
    (r4548 : Seg28.relationRow4548 rho)
    (r4549 : Seg28.relationRow4549 rho)
    (r4550 : Seg28.relationRow4550 rho)
    (r4551 : Seg28.relationRow4551 rho)
    (tail : next (rho 23721) (rho 23726) (rho 23731) (rho 23736) (rho 23741) (rho 23746) (rho 23751) (rho 23756) (rho 23761) (rho 23766) (rho 23771) (rho 23776) (rho 23781) (rho 23786) (rho 23791) (rho 23796) (rho 23801) (rho 23806) (rho 23811) (rho 23816) (rho 23821) (rho 23826) (rho 23831) (rho 23836) (rho 23841) (rho 23846) (rho 23851) (rho 23856) (rho 23861) (rho 23866) (rho 23871) (rho 23876) (rho 23881) (rho 23886) (rho 23891) (rho 23896) (rho 23901)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg50 (rho 23721) (rho 23726) (rho 23731) (rho 23736) (rho 23741) (rho 23746) (rho 23751) (rho 23756) (rho 23761) (rho 23766) (rho 23771) (rho 23776) (rho 23781) (rho 23786) (rho 23791) (rho 23796) (rho 23801) (rho 23806) (rho 23811) (rho 23816) (rho 23821) (rho 23826) (rho 23831) (rho 23836) (rho 23841) (rho 23846) (rho 23851) (rho 23856) (rho 23861) (rho 23866) (rho 23871) (rho 23876) (rho 23881) (rho 23886) (rho 23891) (rho 23896) next := by
  exact ⟨rho 23897, rho 23898, rho 23899, rho 23900, rho 23901, r4547, r4548, r4549, r4550, r4551, tail⟩

theorem seg28_scp_node11_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4552 : Seg28.relationRow4552 rho)
    (r4553 : Seg28.relationRow4553 rho)
    (r4554 : Seg28.relationRow4554 rho)
    (r4555 : Seg28.relationRow4555 rho)
    (r4556 : Seg28.relationRow4556 rho)
    (tail : next (rho 23721) (rho 23726) (rho 23731) (rho 23736) (rho 23741) (rho 23746) (rho 23751) (rho 23756) (rho 23761) (rho 23766) (rho 23771) (rho 23776) (rho 23781) (rho 23786) (rho 23791) (rho 23796) (rho 23801) (rho 23806) (rho 23811) (rho 23816) (rho 23821) (rho 23826) (rho 23831) (rho 23836) (rho 23841) (rho 23846) (rho 23851) (rho 23856) (rho 23861) (rho 23866) (rho 23871) (rho 23876) (rho 23881) (rho 23886) (rho 23891) (rho 23896) (rho 23901) (rho 23906)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg51 (rho 23721) (rho 23726) (rho 23731) (rho 23736) (rho 23741) (rho 23746) (rho 23751) (rho 23756) (rho 23761) (rho 23766) (rho 23771) (rho 23776) (rho 23781) (rho 23786) (rho 23791) (rho 23796) (rho 23801) (rho 23806) (rho 23811) (rho 23816) (rho 23821) (rho 23826) (rho 23831) (rho 23836) (rho 23841) (rho 23846) (rho 23851) (rho 23856) (rho 23861) (rho 23866) (rho 23871) (rho 23876) (rho 23881) (rho 23886) (rho 23891) (rho 23896) (rho 23901) next := by
  exact ⟨rho 23902, rho 23903, rho 23904, rho 23905, rho 23906, r4552, r4553, r4554, r4555, r4556, tail⟩

theorem seg28_scp_node11_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4557 : Seg28.relationRow4557 rho)
    (r4558 : Seg28.relationRow4558 rho)
    (r4559 : Seg28.relationRow4559 rho)
    (r4560 : Seg28.relationRow4560 rho)
    (r4561 : Seg28.relationRow4561 rho)
    (tail : next (rho 23721) (rho 23726) (rho 23731) (rho 23736) (rho 23741) (rho 23746) (rho 23751) (rho 23756) (rho 23761) (rho 23766) (rho 23771) (rho 23776) (rho 23781) (rho 23786) (rho 23791) (rho 23796) (rho 23801) (rho 23806) (rho 23811) (rho 23816) (rho 23821) (rho 23826) (rho 23831) (rho 23836) (rho 23841) (rho 23846) (rho 23851) (rho 23856) (rho 23861) (rho 23866) (rho 23871) (rho 23876) (rho 23881) (rho 23886) (rho 23891) (rho 23896) (rho 23901) (rho 23906) (rho 23911)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg52 (rho 23721) (rho 23726) (rho 23731) (rho 23736) (rho 23741) (rho 23746) (rho 23751) (rho 23756) (rho 23761) (rho 23766) (rho 23771) (rho 23776) (rho 23781) (rho 23786) (rho 23791) (rho 23796) (rho 23801) (rho 23806) (rho 23811) (rho 23816) (rho 23821) (rho 23826) (rho 23831) (rho 23836) (rho 23841) (rho 23846) (rho 23851) (rho 23856) (rho 23861) (rho 23866) (rho 23871) (rho 23876) (rho 23881) (rho 23886) (rho 23891) (rho 23896) (rho 23901) (rho 23906) next := by
  exact ⟨rho 23907, rho 23908, rho 23909, rho 23910, rho 23911, r4557, r4558, r4559, r4560, r4561, tail⟩

theorem seg28_scp_node11_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4562 : Seg28.relationRow4562 rho)
    (r4563 : Seg28.relationRow4563 rho)
    (r4564 : Seg28.relationRow4564 rho)
    (r4565 : Seg28.relationRow4565 rho)
    (r4566 : Seg28.relationRow4566 rho)
    (tail : next (rho 23721) (rho 23726) (rho 23731) (rho 23736) (rho 23741) (rho 23746) (rho 23751) (rho 23756) (rho 23761) (rho 23766) (rho 23771) (rho 23776) (rho 23781) (rho 23786) (rho 23791) (rho 23796) (rho 23801) (rho 23806) (rho 23811) (rho 23816) (rho 23821) (rho 23826) (rho 23831) (rho 23836) (rho 23841) (rho 23846) (rho 23851) (rho 23856) (rho 23861) (rho 23866) (rho 23871) (rho 23876) (rho 23881) (rho 23886) (rho 23891) (rho 23896) (rho 23901) (rho 23906) (rho 23911) (rho 23916)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg53 (rho 23721) (rho 23726) (rho 23731) (rho 23736) (rho 23741) (rho 23746) (rho 23751) (rho 23756) (rho 23761) (rho 23766) (rho 23771) (rho 23776) (rho 23781) (rho 23786) (rho 23791) (rho 23796) (rho 23801) (rho 23806) (rho 23811) (rho 23816) (rho 23821) (rho 23826) (rho 23831) (rho 23836) (rho 23841) (rho 23846) (rho 23851) (rho 23856) (rho 23861) (rho 23866) (rho 23871) (rho 23876) (rho 23881) (rho 23886) (rho 23891) (rho 23896) (rho 23901) (rho 23906) (rho 23911) next := by
  exact ⟨rho 23912, rho 23913, rho 23914, rho 23915, rho 23916, r4562, r4563, r4564, r4565, r4566, tail⟩

theorem seg28_scp_node11_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4567 : Seg28.relationRow4567 rho)
    (r4568 : Seg28.relationRow4568 rho)
    (r4569 : Seg28.relationRow4569 rho)
    (r4570 : Seg28.relationRow4570 rho)
    (r4571 : Seg28.relationRow4571 rho)
    (tail : next (rho 23901) (rho 23906) (rho 23911) (rho 23916) (rho 23921)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg54 (rho 23721) (rho 23726) (rho 23731) (rho 23736) (rho 23741) (rho 23746) (rho 23751) (rho 23756) (rho 23761) (rho 23766) (rho 23771) (rho 23776) (rho 23781) (rho 23786) (rho 23791) (rho 23796) (rho 23801) (rho 23806) (rho 23811) (rho 23816) (rho 23821) (rho 23826) (rho 23831) (rho 23836) (rho 23841) (rho 23846) (rho 23851) (rho 23856) (rho 23861) (rho 23866) (rho 23871) (rho 23876) (rho 23881) (rho 23886) (rho 23891) (rho 23896) (rho 23901) (rho 23906) (rho 23911) (rho 23916) next := by
  exact ⟨rho 23917, rho 23918, rho 23919, rho 23920, rho 23921, r4567, r4568, r4569, r4570, r4571, tail⟩

theorem seg28_scp_node11_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4572 : Seg28.relationRow4572 rho)
    (r4573 : Seg28.relationRow4573 rho)
    (r4574 : Seg28.relationRow4574 rho)
    (r4575 : Seg28.relationRow4575 rho)
    (r4576 : Seg28.relationRow4576 rho)
    (tail : next (rho 23901) (rho 23906) (rho 23911) (rho 23916) (rho 23921) (rho 23926)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg55 (rho 23901) (rho 23906) (rho 23911) (rho 23916) (rho 23921) next := by
  exact ⟨rho 23922, rho 23923, rho 23924, rho 23925, rho 23926, r4572, r4573, r4574, r4575, r4576, tail⟩

theorem seg28_scp_node11_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4577 : Seg28.relationRow4577 rho)
    (r4578 : Seg28.relationRow4578 rho)
    (r4579 : Seg28.relationRow4579 rho)
    (r4580 : Seg28.relationRow4580 rho)
    (r4581 : Seg28.relationRow4581 rho)
    (tail : next (rho 23901) (rho 23906) (rho 23911) (rho 23916) (rho 23921) (rho 23926) (rho 23931)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg56 (rho 23901) (rho 23906) (rho 23911) (rho 23916) (rho 23921) (rho 23926) next := by
  exact ⟨rho 23927, rho 23928, rho 23929, rho 23930, rho 23931, r4577, r4578, r4579, r4580, r4581, tail⟩

theorem seg28_scp_node11_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4582 : Seg28.relationRow4582 rho)
    (r4583 : Seg28.relationRow4583 rho)
    (r4584 : Seg28.relationRow4584 rho)
    (r4585 : Seg28.relationRow4585 rho)
    (r4586 : Seg28.relationRow4586 rho)
    (tail : next (rho 23901) (rho 23906) (rho 23911) (rho 23916) (rho 23921) (rho 23926) (rho 23931) (rho 23936)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg57 (rho 23901) (rho 23906) (rho 23911) (rho 23916) (rho 23921) (rho 23926) (rho 23931) next := by
  exact ⟨rho 23932, rho 23933, rho 23934, rho 23935, rho 23936, r4582, r4583, r4584, r4585, r4586, tail⟩

theorem seg28_scp_node11_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4587 : Seg28.relationRow4587 rho)
    (r4588 : Seg28.relationRow4588 rho)
    (r4589 : Seg28.relationRow4589 rho)
    (r4590 : Seg28.relationRow4590 rho)
    (r4591 : Seg28.relationRow4591 rho)
    (tail : next (rho 23901) (rho 23906) (rho 23911) (rho 23916) (rho 23921) (rho 23926) (rho 23931) (rho 23936) (rho 23941)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg58 (rho 23901) (rho 23906) (rho 23911) (rho 23916) (rho 23921) (rho 23926) (rho 23931) (rho 23936) next := by
  exact ⟨rho 23937, rho 23938, rho 23939, rho 23940, rho 23941, r4587, r4588, r4589, r4590, r4591, tail⟩

theorem seg28_scp_node11_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4592 : Seg28.relationRow4592 rho)
    (r4593 : Seg28.relationRow4593 rho)
    (r4594 : Seg28.relationRow4594 rho)
    (r4595 : Seg28.relationRow4595 rho)
    (r4596 : Seg28.relationRow4596 rho)
    (tail : next (rho 23926) (rho 23931) (rho 23936) (rho 23941) (rho 23946)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg59 (rho 23901) (rho 23906) (rho 23911) (rho 23916) (rho 23921) (rho 23926) (rho 23931) (rho 23936) (rho 23941) next := by
  exact ⟨rho 23942, rho 23943, rho 23944, rho 23945, rho 23946, r4592, r4593, r4594, r4595, r4596, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

