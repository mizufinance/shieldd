import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Canon1Compare

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Extracted.CanonicalFqBits

theorem seg16Canon1_chain (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : List.Vector Seg16.F 253 -> Prop) (hk : k (seg16Canon1Bits rho)) : chainK (seg16Canon1Bits rho) k 253 1 := by
  refine chainK_of_obligations (seg16Canon1Bits rho) k hk ?_
  refine block_hobl_of_truethread (seg16Canon1Bits rho) (seg16Canon1Flag rho) ?_ ?_ ?_ ?_
  · rfl
  · exact seg16Canon1_flag_step rho h
  · exact seg16Canon1_compare rho h
  · have hbinary := seg16Canon1_binary rho h
    obtain ⟨bools, hbools⟩ := is_vector_binary_iff_exists_bool_vec.mp hbinary
    intro j hj
    have hget : (seg16Canon1Bits rho)[j]! = Bool.toZMod bools[j]! := by
      rw [hbools, getElem!_pos (bools.map Bool.toZMod) j (by simpa using hj), getElem!_pos bools j (by simpa using hj), List.Vector.getElem_map]
    rw [hget]
    cases bools[j]! <;> simp [Bool.toZMod_zero, Bool.toZMod_one]

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
