import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk58

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep59L (rho : Nat -> Seg45.F) (r2207 : Seg45.relationRow2207 rho) :
    rho 40438 = seg45RPe60 rho * (1 - rho 39779) := by
  unfold Seg45.relationRow2207 at r2207
  unfold seg45RPe60
  linear_combination -r2207

theorem seg45RStep59IlMul (rho : Nat -> Seg45.F) (r2208 : Seg45.relationRow2208 rho) :
    rho 40439 = seg45RIl60 rho * (rho 40438) := by
  unfold Seg45.relationRow2208 at r2208
  rw [seg45RStep59IlLc rho] at r2208
  linear_combination -r2208

theorem seg45RStep59Acc (rho : Nat -> Seg45.F) :
    seg45RIl59 rho = seg45RIl60 rho + (rho 40438) - (rho 40439) := by
  have hstate : seg45RIl59 rho = seg45RIl60 rho + seg45RIlAtom99 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom99
  ring

theorem seg45RStep59Pe (rho : Nat -> Seg45.F) (r2209 : Seg45.relationRow2209 rho) :
    seg45RPe59 rho = seg45RPe60 rho * rho 39779 := by
  unfold Seg45.relationRow2209 at r2209
  unfold seg45RPe59 seg45RPe60
  linear_combination -r2209

theorem seg45RStep59 (rho : Nat -> Seg45.F) (r2207 : Seg45.relationRow2207 rho) (r2208 : Seg45.relationRow2208 rho) (r2209 : Seg45.relationRow2209 rho) :
    seg45RPe59 rho = seg45RPe60 rho * rho 39779 ∧
    seg45RIl59 rho = seg45RIl60 rho + seg45RPe60 rho * (1 - rho 39779) -
      seg45RIl60 rho * (seg45RPe60 rho * (1 - rho 39779)) := by
  constructor
  · exact seg45RStep59Pe rho r2209
  · rw [seg45RStep59Acc rho, seg45RStep59L rho r2207, seg45RStep59IlMul rho r2208, seg45RStep59L rho r2207]

theorem seg45_r_chunk59 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 60 (seg45RPeState rho 60) (seg45RIlState rho 60) := by
  have htail := seg45_r_chunk58 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2207, r2208, r2209, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 59 ≤ n → n < 60 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 59 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep59 rho r2207 r2208 r2209
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 59 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
