import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg48CanonCompare

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg48Canon_chain (rho : Nat -> Seg48.F) (h : Seg48.relation rho) (k : List.Vector Seg48.F 253 -> Prop) (hk : k (seg48CanonBits rho)) : chainK (seg48CanonBits rho) k 253 1 := by
  refine chainK_of_obligations (seg48CanonBits rho) k hk ?_
  refine block_hobl_of_truethread (seg48CanonBits rho) (seg48CanonFlag rho) ?_ ?_ ?_ ?_
  · rfl
  · exact seg48Canon_flag_step rho h
  · exact seg48Canon_compare rho h
  · have hbinary := seg48Canon_binary rho h
    obtain ⟨bools, hbools⟩ := is_vector_binary_iff_exists_bool_vec.mp hbinary
    intro j hj
    have hget : (seg48CanonBits rho)[j]! = Bool.toZMod bools[j]! := by
      rw [hbools, getElem!_pos (bools.map Bool.toZMod) j (by simpa using hj), getElem!_pos bools j (by simpa using hj), List.Vector.getElem_map]
    rw [hget]
    cases bools[j]! <;> simp [Bool.toZMod_zero, Bool.toZMod_one]

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
