import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node17_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6531 : Seg13.relationRow6531 rho)
    (r6532 : Seg13.relationRow6532 rho)
    (r6533 : Seg13.relationRow6533 rho)
    (r6534 : Seg13.relationRow6534 rho)
    (r6535 : Seg13.relationRow6535 rho)
    (tail : next (rho 13644) (rho 13649) (rho 13654) (rho 13659) (rho 13664) (rho 13669) (rho 13674)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg10 (rho 13644) (rho 13649) (rho 13654) (rho 13659) (rho 13664) (rho 13669) next := by
  exact ⟨rho 13670, rho 13671, rho 13672, rho 13673, rho 13674, r6531, r6532, r6533, r6534, r6535, tail⟩

theorem seg13_scp_node17_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6536 : Seg13.relationRow6536 rho)
    (r6537 : Seg13.relationRow6537 rho)
    (r6538 : Seg13.relationRow6538 rho)
    (r6539 : Seg13.relationRow6539 rho)
    (r6540 : Seg13.relationRow6540 rho)
    (tail : next (rho 13644) (rho 13649) (rho 13654) (rho 13659) (rho 13664) (rho 13669) (rho 13674) (rho 13679)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg11 (rho 13644) (rho 13649) (rho 13654) (rho 13659) (rho 13664) (rho 13669) (rho 13674) next := by
  exact ⟨rho 13675, rho 13676, rho 13677, rho 13678, rho 13679, r6536, r6537, r6538, r6539, r6540, tail⟩

theorem seg13_scp_node17_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6541 : Seg13.relationRow6541 rho)
    (r6542 : Seg13.relationRow6542 rho)
    (r6543 : Seg13.relationRow6543 rho)
    (r6544 : Seg13.relationRow6544 rho)
    (r6545 : Seg13.relationRow6545 rho)
    (tail : next (rho 13644) (rho 13649) (rho 13654) (rho 13659) (rho 13664) (rho 13669) (rho 13674) (rho 13679) (rho 13684)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg12 (rho 13644) (rho 13649) (rho 13654) (rho 13659) (rho 13664) (rho 13669) (rho 13674) (rho 13679) next := by
  exact ⟨rho 13680, rho 13681, rho 13682, rho 13683, rho 13684, r6541, r6542, r6543, r6544, r6545, tail⟩

theorem seg13_scp_node17_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6546 : Seg13.relationRow6546 rho)
    (r6547 : Seg13.relationRow6547 rho)
    (r6548 : Seg13.relationRow6548 rho)
    (r6549 : Seg13.relationRow6549 rho)
    (r6550 : Seg13.relationRow6550 rho)
    (tail : next (rho 13669) (rho 13674) (rho 13679) (rho 13684) (rho 13689)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg13 (rho 13644) (rho 13649) (rho 13654) (rho 13659) (rho 13664) (rho 13669) (rho 13674) (rho 13679) (rho 13684) next := by
  exact ⟨rho 13685, rho 13686, rho 13687, rho 13688, rho 13689, r6546, r6547, r6548, r6549, r6550, tail⟩

theorem seg13_scp_node17_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6551 : Seg13.relationRow6551 rho)
    (r6552 : Seg13.relationRow6552 rho)
    (r6553 : Seg13.relationRow6553 rho)
    (r6554 : Seg13.relationRow6554 rho)
    (r6555 : Seg13.relationRow6555 rho)
    (tail : next (rho 13669) (rho 13674) (rho 13679) (rho 13684) (rho 13689) (rho 13694)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg14 (rho 13669) (rho 13674) (rho 13679) (rho 13684) (rho 13689) next := by
  exact ⟨rho 13690, rho 13691, rho 13692, rho 13693, rho 13694, r6551, r6552, r6553, r6554, r6555, tail⟩

theorem seg13_scp_node17_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6556 : Seg13.relationRow6556 rho)
    (r6557 : Seg13.relationRow6557 rho)
    (r6558 : Seg13.relationRow6558 rho)
    (r6559 : Seg13.relationRow6559 rho)
    (r6560 : Seg13.relationRow6560 rho)
    (tail : next (rho 13669) (rho 13674) (rho 13679) (rho 13684) (rho 13689) (rho 13694) (rho 13699)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg15 (rho 13669) (rho 13674) (rho 13679) (rho 13684) (rho 13689) (rho 13694) next := by
  exact ⟨rho 13695, rho 13696, rho 13697, rho 13698, rho 13699, r6556, r6557, r6558, r6559, r6560, tail⟩

theorem seg13_scp_node17_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6561 : Seg13.relationRow6561 rho)
    (r6562 : Seg13.relationRow6562 rho)
    (r6563 : Seg13.relationRow6563 rho)
    (r6564 : Seg13.relationRow6564 rho)
    (r6565 : Seg13.relationRow6565 rho)
    (tail : next (rho 13669) (rho 13674) (rho 13679) (rho 13684) (rho 13689) (rho 13694) (rho 13699) (rho 13704)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg16 (rho 13669) (rho 13674) (rho 13679) (rho 13684) (rho 13689) (rho 13694) (rho 13699) next := by
  exact ⟨rho 13700, rho 13701, rho 13702, rho 13703, rho 13704, r6561, r6562, r6563, r6564, r6565, tail⟩

theorem seg13_scp_node17_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6566 : Seg13.relationRow6566 rho)
    (r6567 : Seg13.relationRow6567 rho)
    (r6568 : Seg13.relationRow6568 rho)
    (r6569 : Seg13.relationRow6569 rho)
    (r6570 : Seg13.relationRow6570 rho)
    (tail : next (rho 13669) (rho 13674) (rho 13679) (rho 13684) (rho 13689) (rho 13694) (rho 13699) (rho 13704) (rho 13709)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg17 (rho 13669) (rho 13674) (rho 13679) (rho 13684) (rho 13689) (rho 13694) (rho 13699) (rho 13704) next := by
  exact ⟨rho 13705, rho 13706, rho 13707, rho 13708, rho 13709, r6566, r6567, r6568, r6569, r6570, tail⟩

theorem seg13_scp_node17_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6571 : Seg13.relationRow6571 rho)
    (r6572 : Seg13.relationRow6572 rho)
    (r6573 : Seg13.relationRow6573 rho)
    (r6574 : Seg13.relationRow6574 rho)
    (r6575 : Seg13.relationRow6575 rho)
    (tail : next (rho 13694) (rho 13699) (rho 13704) (rho 13709) (rho 13714)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg18 (rho 13669) (rho 13674) (rho 13679) (rho 13684) (rho 13689) (rho 13694) (rho 13699) (rho 13704) (rho 13709) next := by
  exact ⟨rho 13710, rho 13711, rho 13712, rho 13713, rho 13714, r6571, r6572, r6573, r6574, r6575, tail⟩

theorem seg13_scp_node17_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r6576 : Seg13.relationRow6576 rho)
    (r6577 : Seg13.relationRow6577 rho)
    (r6578 : Seg13.relationRow6578 rho)
    (r6579 : Seg13.relationRow6579 rho)
    (r6580 : Seg13.relationRow6580 rho)
    (tail : next (rho 13694) (rho 13699) (rho 13704) (rho 13709) (rho 13714) (rho 13719)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode17350_727593.seg19 (rho 13694) (rho 13699) (rho 13704) (rho 13709) (rho 13714) next := by
  exact ⟨rho 13715, rho 13716, rho 13717, rho 13718, rho 13719, r6576, r6577, r6578, r6579, r6580, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

