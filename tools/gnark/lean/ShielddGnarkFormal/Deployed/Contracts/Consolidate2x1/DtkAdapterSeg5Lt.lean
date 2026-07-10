import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk252

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4PeState_terminal (rho : Nat -> Seg5.F) : seg5Q4PeState rho 253 = (1 : Seg5.F) := by rfl
theorem seg5Q4IlState_terminal (rho : Nat -> Seg5.F) : seg5Q4IlState rho 253 = (0 : Seg5.F) := by rfl
theorem seg5RPeState_terminal (rho : Nat -> Seg5.F) : seg5RPeState rho 253 = (1 : Seg5.F) := by rfl
theorem seg5RIlState_terminal (rho : Nat -> Seg5.F) : seg5RIlState rho 253 = (0 : Seg5.F) := by rfl

theorem seg5_q4_ladder (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F) := by
  have ht := seg5_q4_chunk252 rho h k hk
  rw [seg5Q4PeState_terminal, seg5Q4IlState_terminal] at ht
  exact ht

theorem seg5_r_ladder (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop)
    (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F) := by
  have ht := seg5_r_chunk252 rho h k hq4
  rw [seg5RPeState_terminal, seg5RIlState_terminal] at ht
  exact ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
