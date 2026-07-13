import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6Canon1Compare

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg6Canon1_chain (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : List.Vector Seg6.F 253 -> Prop) (hk : k (seg6Canon1Bits rho)) : chainK (seg6Canon1Bits rho) k 253 1 := by
  refine chainK_of_obligations (seg6Canon1Bits rho) k hk ?_
  refine block_hobl_of_truethread (seg6Canon1Bits rho) (seg6Canon1Flag rho) ?_ ?_ ?_ ?_
  · rfl
  · exact seg6Canon1_flag_step rho h
  · exact seg6Canon1_compare rho h
  · have hbinary := seg6Canon1_binary rho h
    obtain ⟨bools, hbools⟩ := is_vector_binary_iff_exists_bool_vec.mp hbinary
    intro j hj
    have hget : (seg6Canon1Bits rho)[j]! = Bool.toZMod bools[j]! := by
      rw [hbools, getElem!_pos (bools.map Bool.toZMod) j (by simpa using hj), getElem!_pos bools j (by simpa using hj), List.Vector.getElem_map]
    rw [hget]
    cases bools[j]! <;> simp [Bool.toZMod_zero, Bool.toZMod_one]

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
