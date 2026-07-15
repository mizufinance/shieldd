import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node22_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8551 : Seg28.relationRow8551 rho)
    (r8552 : Seg28.relationRow8552 rho)
    (r8553 : Seg28.relationRow8553 rho)
    (r8554 : Seg28.relationRow8554 rho)
    (r8555 : Seg28.relationRow8555 rho)
    (tail : next (rho 27681) (rho 27686) (rho 27691) (rho 27696) (rho 27701) (rho 27706) (rho 27711) (rho 27716) (rho 27721) (rho 27726) (rho 27731) (rho 27736) (rho 27741) (rho 27746) (rho 27751) (rho 27756) (rho 27761) (rho 27766) (rho 27771) (rho 27776) (rho 27781) (rho 27786) (rho 27791) (rho 27796) (rho 27801) (rho 27806) (rho 27811) (rho 27816) (rho 27821) (rho 27826) (rho 27831) (rho 27836) (rho 27841) (rho 27846) (rho 27851) (rho 27856) (rho 27861)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg50 (rho 27681) (rho 27686) (rho 27691) (rho 27696) (rho 27701) (rho 27706) (rho 27711) (rho 27716) (rho 27721) (rho 27726) (rho 27731) (rho 27736) (rho 27741) (rho 27746) (rho 27751) (rho 27756) (rho 27761) (rho 27766) (rho 27771) (rho 27776) (rho 27781) (rho 27786) (rho 27791) (rho 27796) (rho 27801) (rho 27806) (rho 27811) (rho 27816) (rho 27821) (rho 27826) (rho 27831) (rho 27836) (rho 27841) (rho 27846) (rho 27851) (rho 27856) next := by
  exact ⟨rho 27857, rho 27858, rho 27859, rho 27860, rho 27861, r8551, r8552, r8553, r8554, r8555, tail⟩

theorem seg28_scp_node22_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8556 : Seg28.relationRow8556 rho)
    (r8557 : Seg28.relationRow8557 rho)
    (r8558 : Seg28.relationRow8558 rho)
    (r8559 : Seg28.relationRow8559 rho)
    (r8560 : Seg28.relationRow8560 rho)
    (tail : next (rho 27681) (rho 27686) (rho 27691) (rho 27696) (rho 27701) (rho 27706) (rho 27711) (rho 27716) (rho 27721) (rho 27726) (rho 27731) (rho 27736) (rho 27741) (rho 27746) (rho 27751) (rho 27756) (rho 27761) (rho 27766) (rho 27771) (rho 27776) (rho 27781) (rho 27786) (rho 27791) (rho 27796) (rho 27801) (rho 27806) (rho 27811) (rho 27816) (rho 27821) (rho 27826) (rho 27831) (rho 27836) (rho 27841) (rho 27846) (rho 27851) (rho 27856) (rho 27861) (rho 27866)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg51 (rho 27681) (rho 27686) (rho 27691) (rho 27696) (rho 27701) (rho 27706) (rho 27711) (rho 27716) (rho 27721) (rho 27726) (rho 27731) (rho 27736) (rho 27741) (rho 27746) (rho 27751) (rho 27756) (rho 27761) (rho 27766) (rho 27771) (rho 27776) (rho 27781) (rho 27786) (rho 27791) (rho 27796) (rho 27801) (rho 27806) (rho 27811) (rho 27816) (rho 27821) (rho 27826) (rho 27831) (rho 27836) (rho 27841) (rho 27846) (rho 27851) (rho 27856) (rho 27861) next := by
  exact ⟨rho 27862, rho 27863, rho 27864, rho 27865, rho 27866, r8556, r8557, r8558, r8559, r8560, tail⟩

theorem seg28_scp_node22_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8561 : Seg28.relationRow8561 rho)
    (r8562 : Seg28.relationRow8562 rho)
    (r8563 : Seg28.relationRow8563 rho)
    (r8564 : Seg28.relationRow8564 rho)
    (r8565 : Seg28.relationRow8565 rho)
    (tail : next (rho 27681) (rho 27686) (rho 27691) (rho 27696) (rho 27701) (rho 27706) (rho 27711) (rho 27716) (rho 27721) (rho 27726) (rho 27731) (rho 27736) (rho 27741) (rho 27746) (rho 27751) (rho 27756) (rho 27761) (rho 27766) (rho 27771) (rho 27776) (rho 27781) (rho 27786) (rho 27791) (rho 27796) (rho 27801) (rho 27806) (rho 27811) (rho 27816) (rho 27821) (rho 27826) (rho 27831) (rho 27836) (rho 27841) (rho 27846) (rho 27851) (rho 27856) (rho 27861) (rho 27866) (rho 27871)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg52 (rho 27681) (rho 27686) (rho 27691) (rho 27696) (rho 27701) (rho 27706) (rho 27711) (rho 27716) (rho 27721) (rho 27726) (rho 27731) (rho 27736) (rho 27741) (rho 27746) (rho 27751) (rho 27756) (rho 27761) (rho 27766) (rho 27771) (rho 27776) (rho 27781) (rho 27786) (rho 27791) (rho 27796) (rho 27801) (rho 27806) (rho 27811) (rho 27816) (rho 27821) (rho 27826) (rho 27831) (rho 27836) (rho 27841) (rho 27846) (rho 27851) (rho 27856) (rho 27861) (rho 27866) next := by
  exact ⟨rho 27867, rho 27868, rho 27869, rho 27870, rho 27871, r8561, r8562, r8563, r8564, r8565, tail⟩

theorem seg28_scp_node22_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8566 : Seg28.relationRow8566 rho)
    (r8567 : Seg28.relationRow8567 rho)
    (r8568 : Seg28.relationRow8568 rho)
    (r8569 : Seg28.relationRow8569 rho)
    (r8570 : Seg28.relationRow8570 rho)
    (tail : next (rho 27681) (rho 27686) (rho 27691) (rho 27696) (rho 27701) (rho 27706) (rho 27711) (rho 27716) (rho 27721) (rho 27726) (rho 27731) (rho 27736) (rho 27741) (rho 27746) (rho 27751) (rho 27756) (rho 27761) (rho 27766) (rho 27771) (rho 27776) (rho 27781) (rho 27786) (rho 27791) (rho 27796) (rho 27801) (rho 27806) (rho 27811) (rho 27816) (rho 27821) (rho 27826) (rho 27831) (rho 27836) (rho 27841) (rho 27846) (rho 27851) (rho 27856) (rho 27861) (rho 27866) (rho 27871) (rho 27876)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg53 (rho 27681) (rho 27686) (rho 27691) (rho 27696) (rho 27701) (rho 27706) (rho 27711) (rho 27716) (rho 27721) (rho 27726) (rho 27731) (rho 27736) (rho 27741) (rho 27746) (rho 27751) (rho 27756) (rho 27761) (rho 27766) (rho 27771) (rho 27776) (rho 27781) (rho 27786) (rho 27791) (rho 27796) (rho 27801) (rho 27806) (rho 27811) (rho 27816) (rho 27821) (rho 27826) (rho 27831) (rho 27836) (rho 27841) (rho 27846) (rho 27851) (rho 27856) (rho 27861) (rho 27866) (rho 27871) next := by
  exact ⟨rho 27872, rho 27873, rho 27874, rho 27875, rho 27876, r8566, r8567, r8568, r8569, r8570, tail⟩

theorem seg28_scp_node22_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8571 : Seg28.relationRow8571 rho)
    (r8572 : Seg28.relationRow8572 rho)
    (r8573 : Seg28.relationRow8573 rho)
    (r8574 : Seg28.relationRow8574 rho)
    (r8575 : Seg28.relationRow8575 rho)
    (tail : next (rho 27861) (rho 27866) (rho 27871) (rho 27876) (rho 27881)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg54 (rho 27681) (rho 27686) (rho 27691) (rho 27696) (rho 27701) (rho 27706) (rho 27711) (rho 27716) (rho 27721) (rho 27726) (rho 27731) (rho 27736) (rho 27741) (rho 27746) (rho 27751) (rho 27756) (rho 27761) (rho 27766) (rho 27771) (rho 27776) (rho 27781) (rho 27786) (rho 27791) (rho 27796) (rho 27801) (rho 27806) (rho 27811) (rho 27816) (rho 27821) (rho 27826) (rho 27831) (rho 27836) (rho 27841) (rho 27846) (rho 27851) (rho 27856) (rho 27861) (rho 27866) (rho 27871) (rho 27876) next := by
  exact ⟨rho 27877, rho 27878, rho 27879, rho 27880, rho 27881, r8571, r8572, r8573, r8574, r8575, tail⟩

theorem seg28_scp_node22_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8576 : Seg28.relationRow8576 rho)
    (r8577 : Seg28.relationRow8577 rho)
    (r8578 : Seg28.relationRow8578 rho)
    (r8579 : Seg28.relationRow8579 rho)
    (r8580 : Seg28.relationRow8580 rho)
    (tail : next (rho 27861) (rho 27866) (rho 27871) (rho 27876) (rho 27881) (rho 27886)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg55 (rho 27861) (rho 27866) (rho 27871) (rho 27876) (rho 27881) next := by
  exact ⟨rho 27882, rho 27883, rho 27884, rho 27885, rho 27886, r8576, r8577, r8578, r8579, r8580, tail⟩

theorem seg28_scp_node22_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8581 : Seg28.relationRow8581 rho)
    (r8582 : Seg28.relationRow8582 rho)
    (r8583 : Seg28.relationRow8583 rho)
    (r8584 : Seg28.relationRow8584 rho)
    (r8585 : Seg28.relationRow8585 rho)
    (tail : next (rho 27861) (rho 27866) (rho 27871) (rho 27876) (rho 27881) (rho 27886) (rho 27891)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg56 (rho 27861) (rho 27866) (rho 27871) (rho 27876) (rho 27881) (rho 27886) next := by
  exact ⟨rho 27887, rho 27888, rho 27889, rho 27890, rho 27891, r8581, r8582, r8583, r8584, r8585, tail⟩

theorem seg28_scp_node22_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8586 : Seg28.relationRow8586 rho)
    (r8587 : Seg28.relationRow8587 rho)
    (r8588 : Seg28.relationRow8588 rho)
    (r8589 : Seg28.relationRow8589 rho)
    (r8590 : Seg28.relationRow8590 rho)
    (tail : next (rho 27861) (rho 27866) (rho 27871) (rho 27876) (rho 27881) (rho 27886) (rho 27891) (rho 27896)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg57 (rho 27861) (rho 27866) (rho 27871) (rho 27876) (rho 27881) (rho 27886) (rho 27891) next := by
  exact ⟨rho 27892, rho 27893, rho 27894, rho 27895, rho 27896, r8586, r8587, r8588, r8589, r8590, tail⟩

theorem seg28_scp_node22_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8591 : Seg28.relationRow8591 rho)
    (r8592 : Seg28.relationRow8592 rho)
    (r8593 : Seg28.relationRow8593 rho)
    (r8594 : Seg28.relationRow8594 rho)
    (r8595 : Seg28.relationRow8595 rho)
    (tail : next (rho 27861) (rho 27866) (rho 27871) (rho 27876) (rho 27881) (rho 27886) (rho 27891) (rho 27896) (rho 27901)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg58 (rho 27861) (rho 27866) (rho 27871) (rho 27876) (rho 27881) (rho 27886) (rho 27891) (rho 27896) next := by
  exact ⟨rho 27897, rho 27898, rho 27899, rho 27900, rho 27901, r8591, r8592, r8593, r8594, r8595, tail⟩

theorem seg28_scp_node22_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8596 : Seg28.relationRow8596 rho)
    (r8597 : Seg28.relationRow8597 rho)
    (r8598 : Seg28.relationRow8598 rho)
    (r8599 : Seg28.relationRow8599 rho)
    (r8600 : Seg28.relationRow8600 rho)
    (tail : next (rho 27886) (rho 27891) (rho 27896) (rho 27901) (rho 27906)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg59 (rho 27861) (rho 27866) (rho 27871) (rho 27876) (rho 27881) (rho 27886) (rho 27891) (rho 27896) (rho 27901) next := by
  exact ⟨rho 27902, rho 27903, rho 27904, rho 27905, rho 27906, r8596, r8597, r8598, r8599, r8600, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

