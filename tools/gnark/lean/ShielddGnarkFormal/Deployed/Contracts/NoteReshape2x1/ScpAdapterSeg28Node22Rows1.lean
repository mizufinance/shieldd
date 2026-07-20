import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node22_seg10 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8351 : Seg28.relationRow8351 rho)
    (r8352 : Seg28.relationRow8352 rho)
    (r8353 : Seg28.relationRow8353 rho)
    (r8354 : Seg28.relationRow8354 rho)
    (r8355 : Seg28.relationRow8355 rho)
    (tail : next (rho 27625) (rho 27630) (rho 27635) (rho 27640) (rho 27645) (rho 27650) (rho 27655)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg10 (rho 27625) (rho 27630) (rho 27635) (rho 27640) (rho 27645) (rho 27650) next := by
  exact ⟨rho 27651, rho 27652, rho 27653, rho 27654, rho 27655, r8351, r8352, r8353, r8354, r8355, tail⟩

theorem seg28_scp_node22_seg11 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8356 : Seg28.relationRow8356 rho)
    (r8357 : Seg28.relationRow8357 rho)
    (r8358 : Seg28.relationRow8358 rho)
    (r8359 : Seg28.relationRow8359 rho)
    (r8360 : Seg28.relationRow8360 rho)
    (tail : next (rho 27625) (rho 27630) (rho 27635) (rho 27640) (rho 27645) (rho 27650) (rho 27655) (rho 27660)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg11 (rho 27625) (rho 27630) (rho 27635) (rho 27640) (rho 27645) (rho 27650) (rho 27655) next := by
  exact ⟨rho 27656, rho 27657, rho 27658, rho 27659, rho 27660, r8356, r8357, r8358, r8359, r8360, tail⟩

theorem seg28_scp_node22_seg12 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8361 : Seg28.relationRow8361 rho)
    (r8362 : Seg28.relationRow8362 rho)
    (r8363 : Seg28.relationRow8363 rho)
    (r8364 : Seg28.relationRow8364 rho)
    (r8365 : Seg28.relationRow8365 rho)
    (tail : next (rho 27625) (rho 27630) (rho 27635) (rho 27640) (rho 27645) (rho 27650) (rho 27655) (rho 27660) (rho 27665)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg12 (rho 27625) (rho 27630) (rho 27635) (rho 27640) (rho 27645) (rho 27650) (rho 27655) (rho 27660) next := by
  exact ⟨rho 27661, rho 27662, rho 27663, rho 27664, rho 27665, r8361, r8362, r8363, r8364, r8365, tail⟩

theorem seg28_scp_node22_seg13 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8366 : Seg28.relationRow8366 rho)
    (r8367 : Seg28.relationRow8367 rho)
    (r8368 : Seg28.relationRow8368 rho)
    (r8369 : Seg28.relationRow8369 rho)
    (r8370 : Seg28.relationRow8370 rho)
    (tail : next (rho 27650) (rho 27655) (rho 27660) (rho 27665) (rho 27670)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg13 (rho 27625) (rho 27630) (rho 27635) (rho 27640) (rho 27645) (rho 27650) (rho 27655) (rho 27660) (rho 27665) next := by
  exact ⟨rho 27666, rho 27667, rho 27668, rho 27669, rho 27670, r8366, r8367, r8368, r8369, r8370, tail⟩

theorem seg28_scp_node22_seg14 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8371 : Seg28.relationRow8371 rho)
    (r8372 : Seg28.relationRow8372 rho)
    (r8373 : Seg28.relationRow8373 rho)
    (r8374 : Seg28.relationRow8374 rho)
    (r8375 : Seg28.relationRow8375 rho)
    (tail : next (rho 27650) (rho 27655) (rho 27660) (rho 27665) (rho 27670) (rho 27675)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg14 (rho 27650) (rho 27655) (rho 27660) (rho 27665) (rho 27670) next := by
  exact ⟨rho 27671, rho 27672, rho 27673, rho 27674, rho 27675, r8371, r8372, r8373, r8374, r8375, tail⟩

theorem seg28_scp_node22_seg15 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8376 : Seg28.relationRow8376 rho)
    (r8377 : Seg28.relationRow8377 rho)
    (r8378 : Seg28.relationRow8378 rho)
    (r8379 : Seg28.relationRow8379 rho)
    (r8380 : Seg28.relationRow8380 rho)
    (tail : next (rho 27650) (rho 27655) (rho 27660) (rho 27665) (rho 27670) (rho 27675) (rho 27680)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg15 (rho 27650) (rho 27655) (rho 27660) (rho 27665) (rho 27670) (rho 27675) next := by
  exact ⟨rho 27676, rho 27677, rho 27678, rho 27679, rho 27680, r8376, r8377, r8378, r8379, r8380, tail⟩

theorem seg28_scp_node22_seg16 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8381 : Seg28.relationRow8381 rho)
    (r8382 : Seg28.relationRow8382 rho)
    (r8383 : Seg28.relationRow8383 rho)
    (r8384 : Seg28.relationRow8384 rho)
    (r8385 : Seg28.relationRow8385 rho)
    (tail : next (rho 27650) (rho 27655) (rho 27660) (rho 27665) (rho 27670) (rho 27675) (rho 27680) (rho 27685)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg16 (rho 27650) (rho 27655) (rho 27660) (rho 27665) (rho 27670) (rho 27675) (rho 27680) next := by
  exact ⟨rho 27681, rho 27682, rho 27683, rho 27684, rho 27685, r8381, r8382, r8383, r8384, r8385, tail⟩

theorem seg28_scp_node22_seg17 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8386 : Seg28.relationRow8386 rho)
    (r8387 : Seg28.relationRow8387 rho)
    (r8388 : Seg28.relationRow8388 rho)
    (r8389 : Seg28.relationRow8389 rho)
    (r8390 : Seg28.relationRow8390 rho)
    (tail : next (rho 27650) (rho 27655) (rho 27660) (rho 27665) (rho 27670) (rho 27675) (rho 27680) (rho 27685) (rho 27690)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg17 (rho 27650) (rho 27655) (rho 27660) (rho 27665) (rho 27670) (rho 27675) (rho 27680) (rho 27685) next := by
  exact ⟨rho 27686, rho 27687, rho 27688, rho 27689, rho 27690, r8386, r8387, r8388, r8389, r8390, tail⟩

theorem seg28_scp_node22_seg18 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8391 : Seg28.relationRow8391 rho)
    (r8392 : Seg28.relationRow8392 rho)
    (r8393 : Seg28.relationRow8393 rho)
    (r8394 : Seg28.relationRow8394 rho)
    (r8395 : Seg28.relationRow8395 rho)
    (tail : next (rho 27675) (rho 27680) (rho 27685) (rho 27690) (rho 27695)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg18 (rho 27650) (rho 27655) (rho 27660) (rho 27665) (rho 27670) (rho 27675) (rho 27680) (rho 27685) (rho 27690) next := by
  exact ⟨rho 27691, rho 27692, rho 27693, rho 27694, rho 27695, r8391, r8392, r8393, r8394, r8395, tail⟩

theorem seg28_scp_node22_seg19 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r8396 : Seg28.relationRow8396 rho)
    (r8397 : Seg28.relationRow8397 rho)
    (r8398 : Seg28.relationRow8398 rho)
    (r8399 : Seg28.relationRow8399 rho)
    (r8400 : Seg28.relationRow8400 rho)
    (tail : next (rho 27675) (rho 27680) (rho 27685) (rho 27690) (rho 27695) (rho 27700)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode22350_dad54b.seg19 (rho 27675) (rho 27680) (rho 27685) (rho 27690) (rho 27695) next := by
  exact ⟨rho 27696, rho 27697, rho 27698, rho 27699, rho 27700, r8396, r8397, r8398, r8399, r8400, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

