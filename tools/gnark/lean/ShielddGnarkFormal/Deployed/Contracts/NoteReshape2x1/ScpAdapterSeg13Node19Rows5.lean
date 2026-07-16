import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node19_seg50 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7459 : Seg13.relationRow7459 rho)
    (r7460 : Seg13.relationRow7460 rho)
    (r7461 : Seg13.relationRow7461 rho)
    (r7462 : Seg13.relationRow7462 rho)
    (r7463 : Seg13.relationRow7463 rho)
    (tail : next (rho 14420) (rho 14425) (rho 14430) (rho 14435) (rho 14440) (rho 14445) (rho 14450) (rho 14455) (rho 14460) (rho 14465) (rho 14470) (rho 14475) (rho 14480) (rho 14485) (rho 14490) (rho 14495) (rho 14500) (rho 14505) (rho 14510) (rho 14515) (rho 14520) (rho 14525) (rho 14530) (rho 14535) (rho 14540) (rho 14545) (rho 14550) (rho 14555) (rho 14560) (rho 14565) (rho 14570) (rho 14575) (rho 14580) (rho 14585) (rho 14590) (rho 14595) (rho 14600)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg50 (rho 14420) (rho 14425) (rho 14430) (rho 14435) (rho 14440) (rho 14445) (rho 14450) (rho 14455) (rho 14460) (rho 14465) (rho 14470) (rho 14475) (rho 14480) (rho 14485) (rho 14490) (rho 14495) (rho 14500) (rho 14505) (rho 14510) (rho 14515) (rho 14520) (rho 14525) (rho 14530) (rho 14535) (rho 14540) (rho 14545) (rho 14550) (rho 14555) (rho 14560) (rho 14565) (rho 14570) (rho 14575) (rho 14580) (rho 14585) (rho 14590) (rho 14595) next := by
  exact ⟨rho 14596, rho 14597, rho 14598, rho 14599, rho 14600, r7459, r7460, r7461, r7462, r7463, tail⟩

theorem seg13_scp_node19_seg51 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7464 : Seg13.relationRow7464 rho)
    (r7465 : Seg13.relationRow7465 rho)
    (r7466 : Seg13.relationRow7466 rho)
    (r7467 : Seg13.relationRow7467 rho)
    (r7468 : Seg13.relationRow7468 rho)
    (tail : next (rho 14420) (rho 14425) (rho 14430) (rho 14435) (rho 14440) (rho 14445) (rho 14450) (rho 14455) (rho 14460) (rho 14465) (rho 14470) (rho 14475) (rho 14480) (rho 14485) (rho 14490) (rho 14495) (rho 14500) (rho 14505) (rho 14510) (rho 14515) (rho 14520) (rho 14525) (rho 14530) (rho 14535) (rho 14540) (rho 14545) (rho 14550) (rho 14555) (rho 14560) (rho 14565) (rho 14570) (rho 14575) (rho 14580) (rho 14585) (rho 14590) (rho 14595) (rho 14600) (rho 14605)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg51 (rho 14420) (rho 14425) (rho 14430) (rho 14435) (rho 14440) (rho 14445) (rho 14450) (rho 14455) (rho 14460) (rho 14465) (rho 14470) (rho 14475) (rho 14480) (rho 14485) (rho 14490) (rho 14495) (rho 14500) (rho 14505) (rho 14510) (rho 14515) (rho 14520) (rho 14525) (rho 14530) (rho 14535) (rho 14540) (rho 14545) (rho 14550) (rho 14555) (rho 14560) (rho 14565) (rho 14570) (rho 14575) (rho 14580) (rho 14585) (rho 14590) (rho 14595) (rho 14600) next := by
  exact ⟨rho 14601, rho 14602, rho 14603, rho 14604, rho 14605, r7464, r7465, r7466, r7467, r7468, tail⟩

theorem seg13_scp_node19_seg52 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7469 : Seg13.relationRow7469 rho)
    (r7470 : Seg13.relationRow7470 rho)
    (r7471 : Seg13.relationRow7471 rho)
    (r7472 : Seg13.relationRow7472 rho)
    (r7473 : Seg13.relationRow7473 rho)
    (tail : next (rho 14420) (rho 14425) (rho 14430) (rho 14435) (rho 14440) (rho 14445) (rho 14450) (rho 14455) (rho 14460) (rho 14465) (rho 14470) (rho 14475) (rho 14480) (rho 14485) (rho 14490) (rho 14495) (rho 14500) (rho 14505) (rho 14510) (rho 14515) (rho 14520) (rho 14525) (rho 14530) (rho 14535) (rho 14540) (rho 14545) (rho 14550) (rho 14555) (rho 14560) (rho 14565) (rho 14570) (rho 14575) (rho 14580) (rho 14585) (rho 14590) (rho 14595) (rho 14600) (rho 14605) (rho 14610)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg52 (rho 14420) (rho 14425) (rho 14430) (rho 14435) (rho 14440) (rho 14445) (rho 14450) (rho 14455) (rho 14460) (rho 14465) (rho 14470) (rho 14475) (rho 14480) (rho 14485) (rho 14490) (rho 14495) (rho 14500) (rho 14505) (rho 14510) (rho 14515) (rho 14520) (rho 14525) (rho 14530) (rho 14535) (rho 14540) (rho 14545) (rho 14550) (rho 14555) (rho 14560) (rho 14565) (rho 14570) (rho 14575) (rho 14580) (rho 14585) (rho 14590) (rho 14595) (rho 14600) (rho 14605) next := by
  exact ⟨rho 14606, rho 14607, rho 14608, rho 14609, rho 14610, r7469, r7470, r7471, r7472, r7473, tail⟩

theorem seg13_scp_node19_seg53 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7474 : Seg13.relationRow7474 rho)
    (r7475 : Seg13.relationRow7475 rho)
    (r7476 : Seg13.relationRow7476 rho)
    (r7477 : Seg13.relationRow7477 rho)
    (r7478 : Seg13.relationRow7478 rho)
    (tail : next (rho 14420) (rho 14425) (rho 14430) (rho 14435) (rho 14440) (rho 14445) (rho 14450) (rho 14455) (rho 14460) (rho 14465) (rho 14470) (rho 14475) (rho 14480) (rho 14485) (rho 14490) (rho 14495) (rho 14500) (rho 14505) (rho 14510) (rho 14515) (rho 14520) (rho 14525) (rho 14530) (rho 14535) (rho 14540) (rho 14545) (rho 14550) (rho 14555) (rho 14560) (rho 14565) (rho 14570) (rho 14575) (rho 14580) (rho 14585) (rho 14590) (rho 14595) (rho 14600) (rho 14605) (rho 14610) (rho 14615)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg53 (rho 14420) (rho 14425) (rho 14430) (rho 14435) (rho 14440) (rho 14445) (rho 14450) (rho 14455) (rho 14460) (rho 14465) (rho 14470) (rho 14475) (rho 14480) (rho 14485) (rho 14490) (rho 14495) (rho 14500) (rho 14505) (rho 14510) (rho 14515) (rho 14520) (rho 14525) (rho 14530) (rho 14535) (rho 14540) (rho 14545) (rho 14550) (rho 14555) (rho 14560) (rho 14565) (rho 14570) (rho 14575) (rho 14580) (rho 14585) (rho 14590) (rho 14595) (rho 14600) (rho 14605) (rho 14610) next := by
  exact ⟨rho 14611, rho 14612, rho 14613, rho 14614, rho 14615, r7474, r7475, r7476, r7477, r7478, tail⟩

theorem seg13_scp_node19_seg54 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7479 : Seg13.relationRow7479 rho)
    (r7480 : Seg13.relationRow7480 rho)
    (r7481 : Seg13.relationRow7481 rho)
    (r7482 : Seg13.relationRow7482 rho)
    (r7483 : Seg13.relationRow7483 rho)
    (tail : next (rho 14600) (rho 14605) (rho 14610) (rho 14615) (rho 14620)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg54 (rho 14420) (rho 14425) (rho 14430) (rho 14435) (rho 14440) (rho 14445) (rho 14450) (rho 14455) (rho 14460) (rho 14465) (rho 14470) (rho 14475) (rho 14480) (rho 14485) (rho 14490) (rho 14495) (rho 14500) (rho 14505) (rho 14510) (rho 14515) (rho 14520) (rho 14525) (rho 14530) (rho 14535) (rho 14540) (rho 14545) (rho 14550) (rho 14555) (rho 14560) (rho 14565) (rho 14570) (rho 14575) (rho 14580) (rho 14585) (rho 14590) (rho 14595) (rho 14600) (rho 14605) (rho 14610) (rho 14615) next := by
  exact ⟨rho 14616, rho 14617, rho 14618, rho 14619, rho 14620, r7479, r7480, r7481, r7482, r7483, tail⟩

theorem seg13_scp_node19_seg55 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7484 : Seg13.relationRow7484 rho)
    (r7485 : Seg13.relationRow7485 rho)
    (r7486 : Seg13.relationRow7486 rho)
    (r7487 : Seg13.relationRow7487 rho)
    (r7488 : Seg13.relationRow7488 rho)
    (tail : next (rho 14600) (rho 14605) (rho 14610) (rho 14615) (rho 14620) (rho 14625)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg55 (rho 14600) (rho 14605) (rho 14610) (rho 14615) (rho 14620) next := by
  exact ⟨rho 14621, rho 14622, rho 14623, rho 14624, rho 14625, r7484, r7485, r7486, r7487, r7488, tail⟩

theorem seg13_scp_node19_seg56 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7489 : Seg13.relationRow7489 rho)
    (r7490 : Seg13.relationRow7490 rho)
    (r7491 : Seg13.relationRow7491 rho)
    (r7492 : Seg13.relationRow7492 rho)
    (r7493 : Seg13.relationRow7493 rho)
    (tail : next (rho 14600) (rho 14605) (rho 14610) (rho 14615) (rho 14620) (rho 14625) (rho 14630)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg56 (rho 14600) (rho 14605) (rho 14610) (rho 14615) (rho 14620) (rho 14625) next := by
  exact ⟨rho 14626, rho 14627, rho 14628, rho 14629, rho 14630, r7489, r7490, r7491, r7492, r7493, tail⟩

theorem seg13_scp_node19_seg57 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7494 : Seg13.relationRow7494 rho)
    (r7495 : Seg13.relationRow7495 rho)
    (r7496 : Seg13.relationRow7496 rho)
    (r7497 : Seg13.relationRow7497 rho)
    (r7498 : Seg13.relationRow7498 rho)
    (tail : next (rho 14600) (rho 14605) (rho 14610) (rho 14615) (rho 14620) (rho 14625) (rho 14630) (rho 14635)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg57 (rho 14600) (rho 14605) (rho 14610) (rho 14615) (rho 14620) (rho 14625) (rho 14630) next := by
  exact ⟨rho 14631, rho 14632, rho 14633, rho 14634, rho 14635, r7494, r7495, r7496, r7497, r7498, tail⟩

theorem seg13_scp_node19_seg58 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7499 : Seg13.relationRow7499 rho)
    (r7500 : Seg13.relationRow7500 rho)
    (r7501 : Seg13.relationRow7501 rho)
    (r7502 : Seg13.relationRow7502 rho)
    (r7503 : Seg13.relationRow7503 rho)
    (tail : next (rho 14600) (rho 14605) (rho 14610) (rho 14615) (rho 14620) (rho 14625) (rho 14630) (rho 14635) (rho 14640)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg58 (rho 14600) (rho 14605) (rho 14610) (rho 14615) (rho 14620) (rho 14625) (rho 14630) (rho 14635) next := by
  exact ⟨rho 14636, rho 14637, rho 14638, rho 14639, rho 14640, r7499, r7500, r7501, r7502, r7503, tail⟩

theorem seg13_scp_node19_seg59 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7504 : Seg13.relationRow7504 rho)
    (r7505 : Seg13.relationRow7505 rho)
    (r7506 : Seg13.relationRow7506 rho)
    (r7507 : Seg13.relationRow7507 rho)
    (r7508 : Seg13.relationRow7508 rho)
    (tail : next (rho 14625) (rho 14630) (rho 14635) (rho 14640) (rho 14645)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode19350_b6a305.seg59 (rho 14600) (rho 14605) (rho 14610) (rho 14615) (rho 14620) (rho 14625) (rho 14630) (rho 14635) (rho 14640) next := by
  exact ⟨rho 14641, rho 14642, rho 14643, rho 14644, rho 14645, r7504, r7505, r7506, r7507, r7508, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

