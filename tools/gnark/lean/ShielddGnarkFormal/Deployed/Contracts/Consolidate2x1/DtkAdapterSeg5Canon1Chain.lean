import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Canon1Compare

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg5Canon1_chain (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : List.Vector Seg5.F 253 -> Prop) (hk : k (seg5Canon1Bits rho)) : chainK (seg5Canon1Bits rho) k 253 1 := by
  refine chainK_of_obligations (seg5Canon1Bits rho) k hk ?_
  refine block_hobl_of_truethread (seg5Canon1Bits rho) (seg5Canon1Flag rho) ?_ ?_ ?_ ?_
  · rfl
  · exact seg5Canon1_flag_step rho h
  · exact seg5Canon1_compare rho h
  · have hbinary := seg5Canon1_binary rho h
    obtain ⟨bools, hbools⟩ := is_vector_binary_iff_exists_bool_vec.mp hbinary
    intro j hj
    have hget : (seg5Canon1Bits rho)[j]! = Bool.toZMod bools[j]! := by
      rw [hbools, getElem!_pos (bools.map Bool.toZMod) j (by simpa using hj), getElem!_pos bools j (by simpa using hj), List.Vector.getElem_map]
    rw [hget]
    cases bools[j]! <;> simp [Bool.toZMod_zero, Bool.toZMod_one]

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
