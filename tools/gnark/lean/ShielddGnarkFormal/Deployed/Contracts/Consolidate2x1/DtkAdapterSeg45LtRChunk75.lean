import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk74

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep75L (rho : Nat -> Seg45.F) (r2167 : Seg45.relationRow2167 rho) :
    rho 40398 = seg45RPe76 rho * (1 - rho 39795) := by
  unfold Seg45.relationRow2167 at r2167
  unfold seg45RPe76
  linear_combination -r2167

theorem seg45RStep75IlMul (rho : Nat -> Seg45.F) (r2168 : Seg45.relationRow2168 rho) :
    rho 40399 = seg45RIl76 rho * (rho 40398) := by
  unfold Seg45.relationRow2168 at r2168
  rw [seg45RStep75IlLc rho] at r2168
  linear_combination -r2168

theorem seg45RStep75Acc (rho : Nat -> Seg45.F) :
    seg45RIl75 rho = seg45RIl76 rho + (rho 40398) - (rho 40399) := by
  have hstate : seg45RIl75 rho = seg45RIl76 rho + seg45RIlAtom87 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom87
  ring

theorem seg45RStep75Pe (rho : Nat -> Seg45.F) (r2169 : Seg45.relationRow2169 rho) :
    seg45RPe75 rho = seg45RPe76 rho * rho 39795 := by
  unfold Seg45.relationRow2169 at r2169
  unfold seg45RPe75 seg45RPe76
  linear_combination -r2169

theorem seg45RStep75 (rho : Nat -> Seg45.F) (r2167 : Seg45.relationRow2167 rho) (r2168 : Seg45.relationRow2168 rho) (r2169 : Seg45.relationRow2169 rho) :
    seg45RPe75 rho = seg45RPe76 rho * rho 39795 ∧
    seg45RIl75 rho = seg45RIl76 rho + seg45RPe76 rho * (1 - rho 39795) -
      seg45RIl76 rho * (seg45RPe76 rho * (1 - rho 39795)) := by
  constructor
  · exact seg45RStep75Pe rho r2169
  · rw [seg45RStep75Acc rho, seg45RStep75L rho r2167, seg45RStep75IlMul rho r2168, seg45RStep75L rho r2167]

theorem seg45_r_chunk75 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 76 (seg45RPeState rho 76) (seg45RIlState rho 76) := by
  have htail := seg45_r_chunk74 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, r2167, r2168, r2169, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 75 ≤ n → n < 76 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 75 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep75 rho r2167 r2168 r2169
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 75 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
