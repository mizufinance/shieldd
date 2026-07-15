import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node11_seg60 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4597 : Seg13.relationRow4597 rho)
    (r4598 : Seg13.relationRow4598 rho)
    (r4599 : Seg13.relationRow4599 rho)
    (r4600 : Seg13.relationRow4600 rho)
    (r4601 : Seg13.relationRow4601 rho)
    (tail : next (rho 11745) (rho 11750) (rho 11755) (rho 11760) (rho 11765) (rho 11770)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg60 (rho 11745) (rho 11750) (rho 11755) (rho 11760) (rho 11765) next := by
  exact ⟨rho 11766, rho 11767, rho 11768, rho 11769, rho 11770, r4597, r4598, r4599, r4600, r4601, tail⟩

theorem seg13_scp_node11_seg61 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4602 : Seg13.relationRow4602 rho)
    (r4603 : Seg13.relationRow4603 rho)
    (r4604 : Seg13.relationRow4604 rho)
    (r4605 : Seg13.relationRow4605 rho)
    (r4606 : Seg13.relationRow4606 rho)
    (tail : next (rho 11745) (rho 11750) (rho 11755) (rho 11760) (rho 11765) (rho 11770) (rho 11775)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg61 (rho 11745) (rho 11750) (rho 11755) (rho 11760) (rho 11765) (rho 11770) next := by
  exact ⟨rho 11771, rho 11772, rho 11773, rho 11774, rho 11775, r4602, r4603, r4604, r4605, r4606, tail⟩

theorem seg13_scp_node11_seg62 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4607 : Seg13.relationRow4607 rho)
    (r4608 : Seg13.relationRow4608 rho)
    (r4609 : Seg13.relationRow4609 rho)
    (r4610 : Seg13.relationRow4610 rho)
    (r4611 : Seg13.relationRow4611 rho)
    (tail : next (rho 11745) (rho 11750) (rho 11755) (rho 11760) (rho 11765) (rho 11770) (rho 11775) (rho 11780)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg62 (rho 11745) (rho 11750) (rho 11755) (rho 11760) (rho 11765) (rho 11770) (rho 11775) next := by
  exact ⟨rho 11776, rho 11777, rho 11778, rho 11779, rho 11780, r4607, r4608, r4609, r4610, r4611, tail⟩

theorem seg13_scp_node11_seg63 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4612 : Seg13.relationRow4612 rho)
    (r4613 : Seg13.relationRow4613 rho)
    (r4614 : Seg13.relationRow4614 rho)
    (r4615 : Seg13.relationRow4615 rho)
    (r4616 : Seg13.relationRow4616 rho)
    (tail : next (rho 11745) (rho 11750) (rho 11755) (rho 11760) (rho 11765) (rho 11770) (rho 11775) (rho 11780) (rho 11785)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg63 (rho 11745) (rho 11750) (rho 11755) (rho 11760) (rho 11765) (rho 11770) (rho 11775) (rho 11780) next := by
  exact ⟨rho 11781, rho 11782, rho 11783, rho 11784, rho 11785, r4612, r4613, r4614, r4615, r4616, tail⟩

theorem seg13_scp_node11_seg64 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4617 : Seg13.relationRow4617 rho)
    (r4618 : Seg13.relationRow4618 rho)
    (r4619 : Seg13.relationRow4619 rho)
    (r4620 : Seg13.relationRow4620 rho)
    (r4621 : Seg13.relationRow4621 rho)
    (tail : next (rho 11770) (rho 11775) (rho 11780) (rho 11785) (rho 11790)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg64 (rho 11745) (rho 11750) (rho 11755) (rho 11760) (rho 11765) (rho 11770) (rho 11775) (rho 11780) (rho 11785) next := by
  exact ⟨rho 11786, rho 11787, rho 11788, rho 11789, rho 11790, r4617, r4618, r4619, r4620, r4621, tail⟩

theorem seg13_scp_node11_seg65 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4622 : Seg13.relationRow4622 rho)
    (r4623 : Seg13.relationRow4623 rho)
    (r4624 : Seg13.relationRow4624 rho)
    (r4625 : Seg13.relationRow4625 rho)
    (r4626 : Seg13.relationRow4626 rho)
    (tail : next (rho 11770) (rho 11775) (rho 11780) (rho 11785) (rho 11790) (rho 11795)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg65 (rho 11770) (rho 11775) (rho 11780) (rho 11785) (rho 11790) next := by
  exact ⟨rho 11791, rho 11792, rho 11793, rho 11794, rho 11795, r4622, r4623, r4624, r4625, r4626, tail⟩

theorem seg13_scp_node11_seg66 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4627 : Seg13.relationRow4627 rho)
    (r4628 : Seg13.relationRow4628 rho)
    (r4629 : Seg13.relationRow4629 rho)
    (r4630 : Seg13.relationRow4630 rho)
    (r4631 : Seg13.relationRow4631 rho)
    (tail : next (rho 11770) (rho 11775) (rho 11780) (rho 11785) (rho 11790) (rho 11795) (rho 11800)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg66 (rho 11770) (rho 11775) (rho 11780) (rho 11785) (rho 11790) (rho 11795) next := by
  exact ⟨rho 11796, rho 11797, rho 11798, rho 11799, rho 11800, r4627, r4628, r4629, r4630, r4631, tail⟩

theorem seg13_scp_node11_seg67 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4632 : Seg13.relationRow4632 rho)
    (r4633 : Seg13.relationRow4633 rho)
    (r4634 : Seg13.relationRow4634 rho)
    (r4635 : Seg13.relationRow4635 rho)
    (r4636 : Seg13.relationRow4636 rho)
    (tail : next (rho 11770) (rho 11775) (rho 11780) (rho 11785) (rho 11790) (rho 11795) (rho 11800) (rho 11805)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg67 (rho 11770) (rho 11775) (rho 11780) (rho 11785) (rho 11790) (rho 11795) (rho 11800) next := by
  exact ⟨rho 11801, rho 11802, rho 11803, rho 11804, rho 11805, r4632, r4633, r4634, r4635, r4636, tail⟩

theorem seg13_scp_node11_seg68 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4637 : Seg13.relationRow4637 rho)
    (r4638 : Seg13.relationRow4638 rho)
    (r4639 : Seg13.relationRow4639 rho)
    (r4640 : Seg13.relationRow4640 rho)
    (r4641 : Seg13.relationRow4641 rho)
    (tail : next (rho 11770) (rho 11775) (rho 11780) (rho 11785) (rho 11790) (rho 11795) (rho 11800) (rho 11805) (rho 11810)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg68 (rho 11770) (rho 11775) (rho 11780) (rho 11785) (rho 11790) (rho 11795) (rho 11800) (rho 11805) next := by
  exact ⟨rho 11806, rho 11807, rho 11808, rho 11809, rho 11810, r4637, r4638, r4639, r4640, r4641, tail⟩

theorem seg13_scp_node11_seg69 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r4642 : Seg13.relationRow4642 rho)
    (r4643 : Seg13.relationRow4643 rho)
    (r4644 : Seg13.relationRow4644 rho)
    (r4645 : Seg13.relationRow4645 rho)
    (r4646 : Seg13.relationRow4646 rho)
    (tail : next (rho 11795) (rho 11800) (rho 11805) (rho 11810) (rho 11815)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode11350_1b6ddd.seg69 (rho 11770) (rho 11775) (rho 11780) (rho 11785) (rho 11790) (rho 11795) (rho 11800) (rho 11805) (rho 11810) next := by
  exact ⟨rho 11811, rho 11812, rho 11813, rho 11814, rho 11815, r4642, r4643, r4644, r4645, r4646, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

