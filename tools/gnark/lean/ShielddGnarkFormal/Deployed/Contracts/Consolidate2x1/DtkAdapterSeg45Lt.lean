import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk252

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4PeState_terminal (rho : Nat -> Seg45.F) : seg45Q4PeState rho 253 = (1 : Seg45.F) := by rfl
theorem seg45Q4IlState_terminal (rho : Nat -> Seg45.F) : seg45Q4IlState rho 253 = (0 : Seg45.F) := by rfl
theorem seg45RPeState_terminal (rho : Nat -> Seg45.F) : seg45RPeState rho 253 = (1 : Seg45.F) := by rfl
theorem seg45RIlState_terminal (rho : Nat -> Seg45.F) : seg45RIlState rho 253 = (0 : Seg45.F) := by rfl

theorem seg45_q4_ladder (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F) := by
  have ht := seg45_q4_chunk252 rho h k hk
  rw [seg45Q4PeState_terminal, seg45Q4IlState_terminal] at ht
  exact ht

theorem seg45_r_ladder (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop)
    (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F) := by
  have ht := seg45_r_chunk252 rho h k hq4
  rw [seg45RPeState_terminal, seg45RIlState_terminal] at ht
  exact ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
