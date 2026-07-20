import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node14_seg50 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5639 : Seg28.relationRow5639 rho)
    (r5640 : Seg28.relationRow5640 rho)
    (r5641 : Seg28.relationRow5641 rho)
    (r5642 : Seg28.relationRow5642 rho)
    (r5643 : Seg28.relationRow5643 rho)
    (tail : next (rho 24795) (rho 24800) (rho 24805) (rho 24810) (rho 24815) (rho 24820) (rho 24825) (rho 24830) (rho 24835) (rho 24840) (rho 24845) (rho 24850) (rho 24855) (rho 24860) (rho 24865) (rho 24870) (rho 24875) (rho 24880) (rho 24885) (rho 24890) (rho 24895) (rho 24900) (rho 24905) (rho 24910) (rho 24915) (rho 24920) (rho 24925) (rho 24930) (rho 24935) (rho 24940) (rho 24945) (rho 24950) (rho 24955) (rho 24960) (rho 24965) (rho 24970) (rho 24975)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg50 (rho 24795) (rho 24800) (rho 24805) (rho 24810) (rho 24815) (rho 24820) (rho 24825) (rho 24830) (rho 24835) (rho 24840) (rho 24845) (rho 24850) (rho 24855) (rho 24860) (rho 24865) (rho 24870) (rho 24875) (rho 24880) (rho 24885) (rho 24890) (rho 24895) (rho 24900) (rho 24905) (rho 24910) (rho 24915) (rho 24920) (rho 24925) (rho 24930) (rho 24935) (rho 24940) (rho 24945) (rho 24950) (rho 24955) (rho 24960) (rho 24965) (rho 24970) next := by
  exact ⟨rho 24971, rho 24972, rho 24973, rho 24974, rho 24975, r5639, r5640, r5641, r5642, r5643, tail⟩

theorem seg28_scp_node14_seg51 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5644 : Seg28.relationRow5644 rho)
    (r5645 : Seg28.relationRow5645 rho)
    (r5646 : Seg28.relationRow5646 rho)
    (r5647 : Seg28.relationRow5647 rho)
    (r5648 : Seg28.relationRow5648 rho)
    (tail : next (rho 24795) (rho 24800) (rho 24805) (rho 24810) (rho 24815) (rho 24820) (rho 24825) (rho 24830) (rho 24835) (rho 24840) (rho 24845) (rho 24850) (rho 24855) (rho 24860) (rho 24865) (rho 24870) (rho 24875) (rho 24880) (rho 24885) (rho 24890) (rho 24895) (rho 24900) (rho 24905) (rho 24910) (rho 24915) (rho 24920) (rho 24925) (rho 24930) (rho 24935) (rho 24940) (rho 24945) (rho 24950) (rho 24955) (rho 24960) (rho 24965) (rho 24970) (rho 24975) (rho 24980)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg51 (rho 24795) (rho 24800) (rho 24805) (rho 24810) (rho 24815) (rho 24820) (rho 24825) (rho 24830) (rho 24835) (rho 24840) (rho 24845) (rho 24850) (rho 24855) (rho 24860) (rho 24865) (rho 24870) (rho 24875) (rho 24880) (rho 24885) (rho 24890) (rho 24895) (rho 24900) (rho 24905) (rho 24910) (rho 24915) (rho 24920) (rho 24925) (rho 24930) (rho 24935) (rho 24940) (rho 24945) (rho 24950) (rho 24955) (rho 24960) (rho 24965) (rho 24970) (rho 24975) next := by
  exact ⟨rho 24976, rho 24977, rho 24978, rho 24979, rho 24980, r5644, r5645, r5646, r5647, r5648, tail⟩

theorem seg28_scp_node14_seg52 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5649 : Seg28.relationRow5649 rho)
    (r5650 : Seg28.relationRow5650 rho)
    (r5651 : Seg28.relationRow5651 rho)
    (r5652 : Seg28.relationRow5652 rho)
    (r5653 : Seg28.relationRow5653 rho)
    (tail : next (rho 24795) (rho 24800) (rho 24805) (rho 24810) (rho 24815) (rho 24820) (rho 24825) (rho 24830) (rho 24835) (rho 24840) (rho 24845) (rho 24850) (rho 24855) (rho 24860) (rho 24865) (rho 24870) (rho 24875) (rho 24880) (rho 24885) (rho 24890) (rho 24895) (rho 24900) (rho 24905) (rho 24910) (rho 24915) (rho 24920) (rho 24925) (rho 24930) (rho 24935) (rho 24940) (rho 24945) (rho 24950) (rho 24955) (rho 24960) (rho 24965) (rho 24970) (rho 24975) (rho 24980) (rho 24985)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg52 (rho 24795) (rho 24800) (rho 24805) (rho 24810) (rho 24815) (rho 24820) (rho 24825) (rho 24830) (rho 24835) (rho 24840) (rho 24845) (rho 24850) (rho 24855) (rho 24860) (rho 24865) (rho 24870) (rho 24875) (rho 24880) (rho 24885) (rho 24890) (rho 24895) (rho 24900) (rho 24905) (rho 24910) (rho 24915) (rho 24920) (rho 24925) (rho 24930) (rho 24935) (rho 24940) (rho 24945) (rho 24950) (rho 24955) (rho 24960) (rho 24965) (rho 24970) (rho 24975) (rho 24980) next := by
  exact ⟨rho 24981, rho 24982, rho 24983, rho 24984, rho 24985, r5649, r5650, r5651, r5652, r5653, tail⟩

theorem seg28_scp_node14_seg53 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5654 : Seg28.relationRow5654 rho)
    (r5655 : Seg28.relationRow5655 rho)
    (r5656 : Seg28.relationRow5656 rho)
    (r5657 : Seg28.relationRow5657 rho)
    (r5658 : Seg28.relationRow5658 rho)
    (tail : next (rho 24795) (rho 24800) (rho 24805) (rho 24810) (rho 24815) (rho 24820) (rho 24825) (rho 24830) (rho 24835) (rho 24840) (rho 24845) (rho 24850) (rho 24855) (rho 24860) (rho 24865) (rho 24870) (rho 24875) (rho 24880) (rho 24885) (rho 24890) (rho 24895) (rho 24900) (rho 24905) (rho 24910) (rho 24915) (rho 24920) (rho 24925) (rho 24930) (rho 24935) (rho 24940) (rho 24945) (rho 24950) (rho 24955) (rho 24960) (rho 24965) (rho 24970) (rho 24975) (rho 24980) (rho 24985) (rho 24990)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg53 (rho 24795) (rho 24800) (rho 24805) (rho 24810) (rho 24815) (rho 24820) (rho 24825) (rho 24830) (rho 24835) (rho 24840) (rho 24845) (rho 24850) (rho 24855) (rho 24860) (rho 24865) (rho 24870) (rho 24875) (rho 24880) (rho 24885) (rho 24890) (rho 24895) (rho 24900) (rho 24905) (rho 24910) (rho 24915) (rho 24920) (rho 24925) (rho 24930) (rho 24935) (rho 24940) (rho 24945) (rho 24950) (rho 24955) (rho 24960) (rho 24965) (rho 24970) (rho 24975) (rho 24980) (rho 24985) next := by
  exact ⟨rho 24986, rho 24987, rho 24988, rho 24989, rho 24990, r5654, r5655, r5656, r5657, r5658, tail⟩

theorem seg28_scp_node14_seg54 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5659 : Seg28.relationRow5659 rho)
    (r5660 : Seg28.relationRow5660 rho)
    (r5661 : Seg28.relationRow5661 rho)
    (r5662 : Seg28.relationRow5662 rho)
    (r5663 : Seg28.relationRow5663 rho)
    (tail : next (rho 24975) (rho 24980) (rho 24985) (rho 24990) (rho 24995)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg54 (rho 24795) (rho 24800) (rho 24805) (rho 24810) (rho 24815) (rho 24820) (rho 24825) (rho 24830) (rho 24835) (rho 24840) (rho 24845) (rho 24850) (rho 24855) (rho 24860) (rho 24865) (rho 24870) (rho 24875) (rho 24880) (rho 24885) (rho 24890) (rho 24895) (rho 24900) (rho 24905) (rho 24910) (rho 24915) (rho 24920) (rho 24925) (rho 24930) (rho 24935) (rho 24940) (rho 24945) (rho 24950) (rho 24955) (rho 24960) (rho 24965) (rho 24970) (rho 24975) (rho 24980) (rho 24985) (rho 24990) next := by
  exact ⟨rho 24991, rho 24992, rho 24993, rho 24994, rho 24995, r5659, r5660, r5661, r5662, r5663, tail⟩

theorem seg28_scp_node14_seg55 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5664 : Seg28.relationRow5664 rho)
    (r5665 : Seg28.relationRow5665 rho)
    (r5666 : Seg28.relationRow5666 rho)
    (r5667 : Seg28.relationRow5667 rho)
    (r5668 : Seg28.relationRow5668 rho)
    (tail : next (rho 24975) (rho 24980) (rho 24985) (rho 24990) (rho 24995) (rho 25000)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg55 (rho 24975) (rho 24980) (rho 24985) (rho 24990) (rho 24995) next := by
  exact ⟨rho 24996, rho 24997, rho 24998, rho 24999, rho 25000, r5664, r5665, r5666, r5667, r5668, tail⟩

theorem seg28_scp_node14_seg56 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5669 : Seg28.relationRow5669 rho)
    (r5670 : Seg28.relationRow5670 rho)
    (r5671 : Seg28.relationRow5671 rho)
    (r5672 : Seg28.relationRow5672 rho)
    (r5673 : Seg28.relationRow5673 rho)
    (tail : next (rho 24975) (rho 24980) (rho 24985) (rho 24990) (rho 24995) (rho 25000) (rho 25005)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg56 (rho 24975) (rho 24980) (rho 24985) (rho 24990) (rho 24995) (rho 25000) next := by
  exact ⟨rho 25001, rho 25002, rho 25003, rho 25004, rho 25005, r5669, r5670, r5671, r5672, r5673, tail⟩

theorem seg28_scp_node14_seg57 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5674 : Seg28.relationRow5674 rho)
    (r5675 : Seg28.relationRow5675 rho)
    (r5676 : Seg28.relationRow5676 rho)
    (r5677 : Seg28.relationRow5677 rho)
    (r5678 : Seg28.relationRow5678 rho)
    (tail : next (rho 24975) (rho 24980) (rho 24985) (rho 24990) (rho 24995) (rho 25000) (rho 25005) (rho 25010)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg57 (rho 24975) (rho 24980) (rho 24985) (rho 24990) (rho 24995) (rho 25000) (rho 25005) next := by
  exact ⟨rho 25006, rho 25007, rho 25008, rho 25009, rho 25010, r5674, r5675, r5676, r5677, r5678, tail⟩

theorem seg28_scp_node14_seg58 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5679 : Seg28.relationRow5679 rho)
    (r5680 : Seg28.relationRow5680 rho)
    (r5681 : Seg28.relationRow5681 rho)
    (r5682 : Seg28.relationRow5682 rho)
    (r5683 : Seg28.relationRow5683 rho)
    (tail : next (rho 24975) (rho 24980) (rho 24985) (rho 24990) (rho 24995) (rho 25000) (rho 25005) (rho 25010) (rho 25015)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg58 (rho 24975) (rho 24980) (rho 24985) (rho 24990) (rho 24995) (rho 25000) (rho 25005) (rho 25010) next := by
  exact ⟨rho 25011, rho 25012, rho 25013, rho 25014, rho 25015, r5679, r5680, r5681, r5682, r5683, tail⟩

theorem seg28_scp_node14_seg59 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r5684 : Seg28.relationRow5684 rho)
    (r5685 : Seg28.relationRow5685 rho)
    (r5686 : Seg28.relationRow5686 rho)
    (r5687 : Seg28.relationRow5687 rho)
    (r5688 : Seg28.relationRow5688 rho)
    (tail : next (rho 25000) (rho 25005) (rho 25010) (rho 25015) (rho 25020)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode14350_e0110c.seg59 (rho 24975) (rho 24980) (rho 24985) (rho 24990) (rho 24995) (rho 25000) (rho 25005) (rho 25010) (rho 25015) next := by
  exact ⟨rho 25016, rho 25017, rho 25018, rho 25019, rho 25020, r5684, r5685, r5686, r5687, r5688, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

