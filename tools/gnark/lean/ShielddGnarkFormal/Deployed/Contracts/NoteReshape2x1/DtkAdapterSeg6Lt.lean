import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk252

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4PeState_terminal (rho : Nat -> Seg6.F) : seg6Q4PeState rho 253 = (1 : Seg6.F) := by rfl
theorem seg6Q4IlState_terminal (rho : Nat -> Seg6.F) : seg6Q4IlState rho 253 = (0 : Seg6.F) := by rfl
theorem seg6RPeState_terminal (rho : Nat -> Seg6.F) : seg6RPeState rho 253 = (1 : Seg6.F) := by rfl
theorem seg6RIlState_terminal (rho : Nat -> Seg6.F) : seg6RIlState rho 253 = (0 : Seg6.F) := by rfl

theorem seg6_q4_ladder (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F) := by
  have ht := seg6_q4_chunk252 rho h k hk
  rw [seg6Q4PeState_terminal, seg6Q4IlState_terminal] at ht
  exact ht

theorem seg6_r_ladder (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop)
    (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F) := by
  have ht := seg6_r_chunk252 rho h k hq4
  rw [seg6RPeState_terminal, seg6RIlState_terminal] at ht
  exact ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
