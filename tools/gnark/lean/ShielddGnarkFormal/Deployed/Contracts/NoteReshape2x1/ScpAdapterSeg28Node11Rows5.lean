import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node11_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4547 : Seg28.relationRow4547 rho)
    (r4548 : Seg28.relationRow4548 rho)
    (r4549 : Seg28.relationRow4549 rho)
    (r4550 : Seg28.relationRow4550 rho)
    (r4551 : Seg28.relationRow4551 rho)
    (tail : next (rho 23715) (rho 23720) (rho 23725) (rho 23730) (rho 23735) (rho 23740) (rho 23745) (rho 23750) (rho 23755) (rho 23760) (rho 23765) (rho 23770) (rho 23775) (rho 23780) (rho 23785) (rho 23790) (rho 23795) (rho 23800) (rho 23805) (rho 23810) (rho 23815) (rho 23820) (rho 23825) (rho 23830) (rho 23835) (rho 23840) (rho 23845) (rho 23850) (rho 23855) (rho 23860) (rho 23865) (rho 23870) (rho 23875) (rho 23880) (rho 23885) (rho 23890) (rho 23895)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg50 (rho 23715) (rho 23720) (rho 23725) (rho 23730) (rho 23735) (rho 23740) (rho 23745) (rho 23750) (rho 23755) (rho 23760) (rho 23765) (rho 23770) (rho 23775) (rho 23780) (rho 23785) (rho 23790) (rho 23795) (rho 23800) (rho 23805) (rho 23810) (rho 23815) (rho 23820) (rho 23825) (rho 23830) (rho 23835) (rho 23840) (rho 23845) (rho 23850) (rho 23855) (rho 23860) (rho 23865) (rho 23870) (rho 23875) (rho 23880) (rho 23885) (rho 23890) next := by
  exact ⟨rho 23891, rho 23892, rho 23893, rho 23894, rho 23895, r4547, r4548, r4549, r4550, r4551, tail⟩

theorem seg28_scp_node11_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4552 : Seg28.relationRow4552 rho)
    (r4553 : Seg28.relationRow4553 rho)
    (r4554 : Seg28.relationRow4554 rho)
    (r4555 : Seg28.relationRow4555 rho)
    (r4556 : Seg28.relationRow4556 rho)
    (tail : next (rho 23715) (rho 23720) (rho 23725) (rho 23730) (rho 23735) (rho 23740) (rho 23745) (rho 23750) (rho 23755) (rho 23760) (rho 23765) (rho 23770) (rho 23775) (rho 23780) (rho 23785) (rho 23790) (rho 23795) (rho 23800) (rho 23805) (rho 23810) (rho 23815) (rho 23820) (rho 23825) (rho 23830) (rho 23835) (rho 23840) (rho 23845) (rho 23850) (rho 23855) (rho 23860) (rho 23865) (rho 23870) (rho 23875) (rho 23880) (rho 23885) (rho 23890) (rho 23895) (rho 23900)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg51 (rho 23715) (rho 23720) (rho 23725) (rho 23730) (rho 23735) (rho 23740) (rho 23745) (rho 23750) (rho 23755) (rho 23760) (rho 23765) (rho 23770) (rho 23775) (rho 23780) (rho 23785) (rho 23790) (rho 23795) (rho 23800) (rho 23805) (rho 23810) (rho 23815) (rho 23820) (rho 23825) (rho 23830) (rho 23835) (rho 23840) (rho 23845) (rho 23850) (rho 23855) (rho 23860) (rho 23865) (rho 23870) (rho 23875) (rho 23880) (rho 23885) (rho 23890) (rho 23895) next := by
  exact ⟨rho 23896, rho 23897, rho 23898, rho 23899, rho 23900, r4552, r4553, r4554, r4555, r4556, tail⟩

theorem seg28_scp_node11_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4557 : Seg28.relationRow4557 rho)
    (r4558 : Seg28.relationRow4558 rho)
    (r4559 : Seg28.relationRow4559 rho)
    (r4560 : Seg28.relationRow4560 rho)
    (r4561 : Seg28.relationRow4561 rho)
    (tail : next (rho 23715) (rho 23720) (rho 23725) (rho 23730) (rho 23735) (rho 23740) (rho 23745) (rho 23750) (rho 23755) (rho 23760) (rho 23765) (rho 23770) (rho 23775) (rho 23780) (rho 23785) (rho 23790) (rho 23795) (rho 23800) (rho 23805) (rho 23810) (rho 23815) (rho 23820) (rho 23825) (rho 23830) (rho 23835) (rho 23840) (rho 23845) (rho 23850) (rho 23855) (rho 23860) (rho 23865) (rho 23870) (rho 23875) (rho 23880) (rho 23885) (rho 23890) (rho 23895) (rho 23900) (rho 23905)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg52 (rho 23715) (rho 23720) (rho 23725) (rho 23730) (rho 23735) (rho 23740) (rho 23745) (rho 23750) (rho 23755) (rho 23760) (rho 23765) (rho 23770) (rho 23775) (rho 23780) (rho 23785) (rho 23790) (rho 23795) (rho 23800) (rho 23805) (rho 23810) (rho 23815) (rho 23820) (rho 23825) (rho 23830) (rho 23835) (rho 23840) (rho 23845) (rho 23850) (rho 23855) (rho 23860) (rho 23865) (rho 23870) (rho 23875) (rho 23880) (rho 23885) (rho 23890) (rho 23895) (rho 23900) next := by
  exact ⟨rho 23901, rho 23902, rho 23903, rho 23904, rho 23905, r4557, r4558, r4559, r4560, r4561, tail⟩

theorem seg28_scp_node11_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4562 : Seg28.relationRow4562 rho)
    (r4563 : Seg28.relationRow4563 rho)
    (r4564 : Seg28.relationRow4564 rho)
    (r4565 : Seg28.relationRow4565 rho)
    (r4566 : Seg28.relationRow4566 rho)
    (tail : next (rho 23715) (rho 23720) (rho 23725) (rho 23730) (rho 23735) (rho 23740) (rho 23745) (rho 23750) (rho 23755) (rho 23760) (rho 23765) (rho 23770) (rho 23775) (rho 23780) (rho 23785) (rho 23790) (rho 23795) (rho 23800) (rho 23805) (rho 23810) (rho 23815) (rho 23820) (rho 23825) (rho 23830) (rho 23835) (rho 23840) (rho 23845) (rho 23850) (rho 23855) (rho 23860) (rho 23865) (rho 23870) (rho 23875) (rho 23880) (rho 23885) (rho 23890) (rho 23895) (rho 23900) (rho 23905) (rho 23910)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg53 (rho 23715) (rho 23720) (rho 23725) (rho 23730) (rho 23735) (rho 23740) (rho 23745) (rho 23750) (rho 23755) (rho 23760) (rho 23765) (rho 23770) (rho 23775) (rho 23780) (rho 23785) (rho 23790) (rho 23795) (rho 23800) (rho 23805) (rho 23810) (rho 23815) (rho 23820) (rho 23825) (rho 23830) (rho 23835) (rho 23840) (rho 23845) (rho 23850) (rho 23855) (rho 23860) (rho 23865) (rho 23870) (rho 23875) (rho 23880) (rho 23885) (rho 23890) (rho 23895) (rho 23900) (rho 23905) next := by
  exact ⟨rho 23906, rho 23907, rho 23908, rho 23909, rho 23910, r4562, r4563, r4564, r4565, r4566, tail⟩

theorem seg28_scp_node11_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4567 : Seg28.relationRow4567 rho)
    (r4568 : Seg28.relationRow4568 rho)
    (r4569 : Seg28.relationRow4569 rho)
    (r4570 : Seg28.relationRow4570 rho)
    (r4571 : Seg28.relationRow4571 rho)
    (tail : next (rho 23895) (rho 23900) (rho 23905) (rho 23910) (rho 23915)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg54 (rho 23715) (rho 23720) (rho 23725) (rho 23730) (rho 23735) (rho 23740) (rho 23745) (rho 23750) (rho 23755) (rho 23760) (rho 23765) (rho 23770) (rho 23775) (rho 23780) (rho 23785) (rho 23790) (rho 23795) (rho 23800) (rho 23805) (rho 23810) (rho 23815) (rho 23820) (rho 23825) (rho 23830) (rho 23835) (rho 23840) (rho 23845) (rho 23850) (rho 23855) (rho 23860) (rho 23865) (rho 23870) (rho 23875) (rho 23880) (rho 23885) (rho 23890) (rho 23895) (rho 23900) (rho 23905) (rho 23910) next := by
  exact ⟨rho 23911, rho 23912, rho 23913, rho 23914, rho 23915, r4567, r4568, r4569, r4570, r4571, tail⟩

theorem seg28_scp_node11_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4572 : Seg28.relationRow4572 rho)
    (r4573 : Seg28.relationRow4573 rho)
    (r4574 : Seg28.relationRow4574 rho)
    (r4575 : Seg28.relationRow4575 rho)
    (r4576 : Seg28.relationRow4576 rho)
    (tail : next (rho 23895) (rho 23900) (rho 23905) (rho 23910) (rho 23915) (rho 23920)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg55 (rho 23895) (rho 23900) (rho 23905) (rho 23910) (rho 23915) next := by
  exact ⟨rho 23916, rho 23917, rho 23918, rho 23919, rho 23920, r4572, r4573, r4574, r4575, r4576, tail⟩

theorem seg28_scp_node11_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4577 : Seg28.relationRow4577 rho)
    (r4578 : Seg28.relationRow4578 rho)
    (r4579 : Seg28.relationRow4579 rho)
    (r4580 : Seg28.relationRow4580 rho)
    (r4581 : Seg28.relationRow4581 rho)
    (tail : next (rho 23895) (rho 23900) (rho 23905) (rho 23910) (rho 23915) (rho 23920) (rho 23925)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg56 (rho 23895) (rho 23900) (rho 23905) (rho 23910) (rho 23915) (rho 23920) next := by
  exact ⟨rho 23921, rho 23922, rho 23923, rho 23924, rho 23925, r4577, r4578, r4579, r4580, r4581, tail⟩

theorem seg28_scp_node11_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4582 : Seg28.relationRow4582 rho)
    (r4583 : Seg28.relationRow4583 rho)
    (r4584 : Seg28.relationRow4584 rho)
    (r4585 : Seg28.relationRow4585 rho)
    (r4586 : Seg28.relationRow4586 rho)
    (tail : next (rho 23895) (rho 23900) (rho 23905) (rho 23910) (rho 23915) (rho 23920) (rho 23925) (rho 23930)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg57 (rho 23895) (rho 23900) (rho 23905) (rho 23910) (rho 23915) (rho 23920) (rho 23925) next := by
  exact ⟨rho 23926, rho 23927, rho 23928, rho 23929, rho 23930, r4582, r4583, r4584, r4585, r4586, tail⟩

theorem seg28_scp_node11_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4587 : Seg28.relationRow4587 rho)
    (r4588 : Seg28.relationRow4588 rho)
    (r4589 : Seg28.relationRow4589 rho)
    (r4590 : Seg28.relationRow4590 rho)
    (r4591 : Seg28.relationRow4591 rho)
    (tail : next (rho 23895) (rho 23900) (rho 23905) (rho 23910) (rho 23915) (rho 23920) (rho 23925) (rho 23930) (rho 23935)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg58 (rho 23895) (rho 23900) (rho 23905) (rho 23910) (rho 23915) (rho 23920) (rho 23925) (rho 23930) next := by
  exact ⟨rho 23931, rho 23932, rho 23933, rho 23934, rho 23935, r4587, r4588, r4589, r4590, r4591, tail⟩

theorem seg28_scp_node11_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r4592 : Seg28.relationRow4592 rho)
    (r4593 : Seg28.relationRow4593 rho)
    (r4594 : Seg28.relationRow4594 rho)
    (r4595 : Seg28.relationRow4595 rho)
    (r4596 : Seg28.relationRow4596 rho)
    (tail : next (rho 23920) (rho 23925) (rho 23930) (rho 23935) (rho 23940)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_95da0e.seg59 (rho 23895) (rho 23900) (rho 23905) (rho 23910) (rho 23915) (rho 23920) (rho 23925) (rho 23930) (rho 23935) next := by
  exact ⟨rho 23936, rho 23937, rho 23938, rho 23939, rho 23940, r4592, r4593, r4594, r4595, r4596, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

