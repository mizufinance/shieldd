import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node22_seg10 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8351 : Seg13.relationRow8351 rho)
    (r8352 : Seg13.relationRow8352 rho)
    (r8353 : Seg13.relationRow8353 rho)
    (r8354 : Seg13.relationRow8354 rho)
    (r8355 : Seg13.relationRow8355 rho)
    (tail : next (rho 15450) (rho 15455) (rho 15460) (rho 15465) (rho 15470) (rho 15475) (rho 15480)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg10 (rho 15450) (rho 15455) (rho 15460) (rho 15465) (rho 15470) (rho 15475) next := by
  exact ⟨rho 15476, rho 15477, rho 15478, rho 15479, rho 15480, r8351, r8352, r8353, r8354, r8355, tail⟩

theorem seg13_scp_node22_seg11 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8356 : Seg13.relationRow8356 rho)
    (r8357 : Seg13.relationRow8357 rho)
    (r8358 : Seg13.relationRow8358 rho)
    (r8359 : Seg13.relationRow8359 rho)
    (r8360 : Seg13.relationRow8360 rho)
    (tail : next (rho 15450) (rho 15455) (rho 15460) (rho 15465) (rho 15470) (rho 15475) (rho 15480) (rho 15485)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg11 (rho 15450) (rho 15455) (rho 15460) (rho 15465) (rho 15470) (rho 15475) (rho 15480) next := by
  exact ⟨rho 15481, rho 15482, rho 15483, rho 15484, rho 15485, r8356, r8357, r8358, r8359, r8360, tail⟩

theorem seg13_scp_node22_seg12 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8361 : Seg13.relationRow8361 rho)
    (r8362 : Seg13.relationRow8362 rho)
    (r8363 : Seg13.relationRow8363 rho)
    (r8364 : Seg13.relationRow8364 rho)
    (r8365 : Seg13.relationRow8365 rho)
    (tail : next (rho 15450) (rho 15455) (rho 15460) (rho 15465) (rho 15470) (rho 15475) (rho 15480) (rho 15485) (rho 15490)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg12 (rho 15450) (rho 15455) (rho 15460) (rho 15465) (rho 15470) (rho 15475) (rho 15480) (rho 15485) next := by
  exact ⟨rho 15486, rho 15487, rho 15488, rho 15489, rho 15490, r8361, r8362, r8363, r8364, r8365, tail⟩

theorem seg13_scp_node22_seg13 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8366 : Seg13.relationRow8366 rho)
    (r8367 : Seg13.relationRow8367 rho)
    (r8368 : Seg13.relationRow8368 rho)
    (r8369 : Seg13.relationRow8369 rho)
    (r8370 : Seg13.relationRow8370 rho)
    (tail : next (rho 15475) (rho 15480) (rho 15485) (rho 15490) (rho 15495)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg13 (rho 15450) (rho 15455) (rho 15460) (rho 15465) (rho 15470) (rho 15475) (rho 15480) (rho 15485) (rho 15490) next := by
  exact ⟨rho 15491, rho 15492, rho 15493, rho 15494, rho 15495, r8366, r8367, r8368, r8369, r8370, tail⟩

theorem seg13_scp_node22_seg14 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8371 : Seg13.relationRow8371 rho)
    (r8372 : Seg13.relationRow8372 rho)
    (r8373 : Seg13.relationRow8373 rho)
    (r8374 : Seg13.relationRow8374 rho)
    (r8375 : Seg13.relationRow8375 rho)
    (tail : next (rho 15475) (rho 15480) (rho 15485) (rho 15490) (rho 15495) (rho 15500)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg14 (rho 15475) (rho 15480) (rho 15485) (rho 15490) (rho 15495) next := by
  exact ⟨rho 15496, rho 15497, rho 15498, rho 15499, rho 15500, r8371, r8372, r8373, r8374, r8375, tail⟩

theorem seg13_scp_node22_seg15 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8376 : Seg13.relationRow8376 rho)
    (r8377 : Seg13.relationRow8377 rho)
    (r8378 : Seg13.relationRow8378 rho)
    (r8379 : Seg13.relationRow8379 rho)
    (r8380 : Seg13.relationRow8380 rho)
    (tail : next (rho 15475) (rho 15480) (rho 15485) (rho 15490) (rho 15495) (rho 15500) (rho 15505)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg15 (rho 15475) (rho 15480) (rho 15485) (rho 15490) (rho 15495) (rho 15500) next := by
  exact ⟨rho 15501, rho 15502, rho 15503, rho 15504, rho 15505, r8376, r8377, r8378, r8379, r8380, tail⟩

theorem seg13_scp_node22_seg16 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8381 : Seg13.relationRow8381 rho)
    (r8382 : Seg13.relationRow8382 rho)
    (r8383 : Seg13.relationRow8383 rho)
    (r8384 : Seg13.relationRow8384 rho)
    (r8385 : Seg13.relationRow8385 rho)
    (tail : next (rho 15475) (rho 15480) (rho 15485) (rho 15490) (rho 15495) (rho 15500) (rho 15505) (rho 15510)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg16 (rho 15475) (rho 15480) (rho 15485) (rho 15490) (rho 15495) (rho 15500) (rho 15505) next := by
  exact ⟨rho 15506, rho 15507, rho 15508, rho 15509, rho 15510, r8381, r8382, r8383, r8384, r8385, tail⟩

theorem seg13_scp_node22_seg17 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8386 : Seg13.relationRow8386 rho)
    (r8387 : Seg13.relationRow8387 rho)
    (r8388 : Seg13.relationRow8388 rho)
    (r8389 : Seg13.relationRow8389 rho)
    (r8390 : Seg13.relationRow8390 rho)
    (tail : next (rho 15475) (rho 15480) (rho 15485) (rho 15490) (rho 15495) (rho 15500) (rho 15505) (rho 15510) (rho 15515)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg17 (rho 15475) (rho 15480) (rho 15485) (rho 15490) (rho 15495) (rho 15500) (rho 15505) (rho 15510) next := by
  exact ⟨rho 15511, rho 15512, rho 15513, rho 15514, rho 15515, r8386, r8387, r8388, r8389, r8390, tail⟩

theorem seg13_scp_node22_seg18 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8391 : Seg13.relationRow8391 rho)
    (r8392 : Seg13.relationRow8392 rho)
    (r8393 : Seg13.relationRow8393 rho)
    (r8394 : Seg13.relationRow8394 rho)
    (r8395 : Seg13.relationRow8395 rho)
    (tail : next (rho 15500) (rho 15505) (rho 15510) (rho 15515) (rho 15520)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg18 (rho 15475) (rho 15480) (rho 15485) (rho 15490) (rho 15495) (rho 15500) (rho 15505) (rho 15510) (rho 15515) next := by
  exact ⟨rho 15516, rho 15517, rho 15518, rho 15519, rho 15520, r8391, r8392, r8393, r8394, r8395, tail⟩

theorem seg13_scp_node22_seg19 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r8396 : Seg13.relationRow8396 rho)
    (r8397 : Seg13.relationRow8397 rho)
    (r8398 : Seg13.relationRow8398 rho)
    (r8399 : Seg13.relationRow8399 rho)
    (r8400 : Seg13.relationRow8400 rho)
    (tail : next (rho 15500) (rho 15505) (rho 15510) (rho 15515) (rho 15520) (rho 15525)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_eaae71.seg19 (rho 15500) (rho 15505) (rho 15510) (rho 15515) (rho 15520) next := by
  exact ⟨rho 15521, rho 15522, rho 15523, rho 15524, rho 15525, r8396, r8397, r8398, r8399, r8400, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

