import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk252

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4PeState_terminal (rho : Nat -> Seg34.F) : seg34Q4PeState rho 253 = (1 : Seg34.F) := by rfl
theorem seg34Q4IlState_terminal (rho : Nat -> Seg34.F) : seg34Q4IlState rho 253 = (0 : Seg34.F) := by rfl
theorem seg34RPeState_terminal (rho : Nat -> Seg34.F) : seg34RPeState rho 253 = (1 : Seg34.F) := by rfl
theorem seg34RIlState_terminal (rho : Nat -> Seg34.F) : seg34RIlState rho 253 = (0 : Seg34.F) := by rfl

theorem seg34_q4_ladder (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F) := by
  have ht := seg34_q4_chunk252 rho h k hk
  rw [seg34Q4PeState_terminal, seg34Q4IlState_terminal] at ht
  exact ht

theorem seg34_r_ladder (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop)
    (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F) := by
  have ht := seg34_r_chunk252 rho h k hq4
  rw [seg34RPeState_terminal, seg34RIlState_terminal] at ht
  exact ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
