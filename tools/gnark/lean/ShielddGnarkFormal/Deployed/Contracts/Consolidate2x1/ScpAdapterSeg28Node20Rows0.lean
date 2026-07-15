import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg28_scp_node20_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7573 : Seg28.relationRow7573 rho)
    (r7574 : Seg28.relationRow7574 rho)
    (r7575 : Seg28.relationRow7575 rho)
    (r7576 : Seg28.relationRow7576 rho)
    (r7577 : Seg28.relationRow7577 rho)
    (tail : next (rho 125) (rho 126) (rho 26882) (rho 26883) (rho 26884) (rho 26885) (rho 26886) (rho 26891)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg0 (rho 124) (rho 125) (rho 126) (rho 26881) (rho 26882) (rho 26883) (rho 26884) (rho 26885) (rho 26886) next := by
  exact ⟨rho 26887, rho 26888, rho 26889, rho 26890, rho 26891, r7573, r7574, r7575, r7576, r7577, tail⟩

theorem seg28_scp_node20_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7578 : Seg28.relationRow7578 rho)
    (r7579 : Seg28.relationRow7579 rho)
    (r7580 : Seg28.relationRow7580 rho)
    (r7581 : Seg28.relationRow7581 rho)
    (r7582 : Seg28.relationRow7582 rho)
    (tail : next (rho 125) (rho 126) (rho 26884) (rho 26885) (rho 26886) (rho 26891) (rho 26896)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg1 (rho 125) (rho 126) (rho 26882) (rho 26883) (rho 26884) (rho 26885) (rho 26886) (rho 26891) next := by
  exact ⟨rho 26892, rho 26893, rho 26894, rho 26895, rho 26896, r7578, r7579, r7580, r7581, r7582, tail⟩

theorem seg28_scp_node20_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7583 : Seg28.relationRow7583 rho)
    (r7584 : Seg28.relationRow7584 rho)
    (r7585 : Seg28.relationRow7585 rho)
    (r7586 : Seg28.relationRow7586 rho)
    (r7587 : Seg28.relationRow7587 rho)
    (tail : next (rho 126) (rho 26886) (rho 26891) (rho 26896) (rho 26901)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg2 (rho 125) (rho 126) (rho 26884) (rho 26885) (rho 26886) (rho 26891) (rho 26896) next := by
  exact ⟨rho 26897, rho 26898, rho 26899, rho 26900, rho 26901, r7583, r7584, r7585, r7586, r7587, tail⟩

theorem seg28_scp_node20_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7588 : Seg28.relationRow7588 rho)
    (r7589 : Seg28.relationRow7589 rho)
    (r7590 : Seg28.relationRow7590 rho)
    (r7591 : Seg28.relationRow7591 rho)
    (r7592 : Seg28.relationRow7592 rho)
    (tail : next (rho 26891) (rho 26896) (rho 26901) (rho 26906)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg3 (rho 126) (rho 26886) (rho 26891) (rho 26896) (rho 26901) next := by
  exact ⟨rho 26902, rho 26903, rho 26904, rho 26905, rho 26906, r7588, r7589, r7590, r7591, r7592, tail⟩

theorem seg28_scp_node20_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7593 : Seg28.relationRow7593 rho)
    (r7594 : Seg28.relationRow7594 rho)
    (r7595 : Seg28.relationRow7595 rho)
    (r7596 : Seg28.relationRow7596 rho)
    (r7597 : Seg28.relationRow7597 rho)
    (tail : next (rho 26891) (rho 26896) (rho 26901) (rho 26906) (rho 26911)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg4 (rho 26891) (rho 26896) (rho 26901) (rho 26906) next := by
  exact ⟨rho 26907, rho 26908, rho 26909, rho 26910, rho 26911, r7593, r7594, r7595, r7596, r7597, tail⟩

theorem seg28_scp_node20_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7598 : Seg28.relationRow7598 rho)
    (r7599 : Seg28.relationRow7599 rho)
    (r7600 : Seg28.relationRow7600 rho)
    (r7601 : Seg28.relationRow7601 rho)
    (r7602 : Seg28.relationRow7602 rho)
    (tail : next (rho 26891) (rho 26896) (rho 26901) (rho 26906) (rho 26911) (rho 26916)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg5 (rho 26891) (rho 26896) (rho 26901) (rho 26906) (rho 26911) next := by
  exact ⟨rho 26912, rho 26913, rho 26914, rho 26915, rho 26916, r7598, r7599, r7600, r7601, r7602, tail⟩

theorem seg28_scp_node20_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7603 : Seg28.relationRow7603 rho)
    (r7604 : Seg28.relationRow7604 rho)
    (r7605 : Seg28.relationRow7605 rho)
    (r7606 : Seg28.relationRow7606 rho)
    (r7607 : Seg28.relationRow7607 rho)
    (tail : next (rho 26891) (rho 26896) (rho 26901) (rho 26906) (rho 26911) (rho 26916) (rho 26921)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg6 (rho 26891) (rho 26896) (rho 26901) (rho 26906) (rho 26911) (rho 26916) next := by
  exact ⟨rho 26917, rho 26918, rho 26919, rho 26920, rho 26921, r7603, r7604, r7605, r7606, r7607, tail⟩

theorem seg28_scp_node20_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7608 : Seg28.relationRow7608 rho)
    (r7609 : Seg28.relationRow7609 rho)
    (r7610 : Seg28.relationRow7610 rho)
    (r7611 : Seg28.relationRow7611 rho)
    (r7612 : Seg28.relationRow7612 rho)
    (tail : next (rho 26891) (rho 26896) (rho 26901) (rho 26906) (rho 26911) (rho 26916) (rho 26921) (rho 26926)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg7 (rho 26891) (rho 26896) (rho 26901) (rho 26906) (rho 26911) (rho 26916) (rho 26921) next := by
  exact ⟨rho 26922, rho 26923, rho 26924, rho 26925, rho 26926, r7608, r7609, r7610, r7611, r7612, tail⟩

theorem seg28_scp_node20_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7613 : Seg28.relationRow7613 rho)
    (r7614 : Seg28.relationRow7614 rho)
    (r7615 : Seg28.relationRow7615 rho)
    (r7616 : Seg28.relationRow7616 rho)
    (r7617 : Seg28.relationRow7617 rho)
    (tail : next (rho 26911) (rho 26916) (rho 26921) (rho 26926) (rho 26931)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg8 (rho 26891) (rho 26896) (rho 26901) (rho 26906) (rho 26911) (rho 26916) (rho 26921) (rho 26926) next := by
  exact ⟨rho 26927, rho 26928, rho 26929, rho 26930, rho 26931, r7613, r7614, r7615, r7616, r7617, tail⟩

theorem seg28_scp_node20_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7618 : Seg28.relationRow7618 rho)
    (r7619 : Seg28.relationRow7619 rho)
    (r7620 : Seg28.relationRow7620 rho)
    (r7621 : Seg28.relationRow7621 rho)
    (r7622 : Seg28.relationRow7622 rho)
    (tail : next (rho 26911) (rho 26916) (rho 26921) (rho 26926) (rho 26931) (rho 26936)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode20350_c2cc94.seg9 (rho 26911) (rho 26916) (rho 26921) (rho 26926) (rho 26931) next := by
  exact ⟨rho 26932, rho 26933, rho 26934, rho 26935, rho 26936, r7618, r7619, r7620, r7621, r7622, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

