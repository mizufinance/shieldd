import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk252

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4PeState_terminal (rho : Nat -> Seg16.F) : seg16Q4PeState rho 253 = (1 : Seg16.F) := by rfl
theorem seg16Q4IlState_terminal (rho : Nat -> Seg16.F) : seg16Q4IlState rho 253 = (0 : Seg16.F) := by rfl
theorem seg16RPeState_terminal (rho : Nat -> Seg16.F) : seg16RPeState rho 253 = (1 : Seg16.F) := by rfl
theorem seg16RIlState_terminal (rho : Nat -> Seg16.F) : seg16RIlState rho 253 = (0 : Seg16.F) := by rfl

theorem seg16_q4_ladder (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F) := by
  have ht := seg16_q4_chunk252 rho h k hk
  rw [seg16Q4PeState_terminal, seg16Q4IlState_terminal] at ht
  exact ht

theorem seg16_r_ladder (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop)
    (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F) := by
  have ht := seg16_r_chunk252 rho h k hq4
  rw [seg16RPeState_terminal, seg16RIlState_terminal] at ht
  exact ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
