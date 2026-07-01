import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk62

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep63L (rho : Nat -> Seg45.F) (r2197 : Seg45.relationRow2197 rho) :
    rho 40428 = seg45RPe64 rho * (1 - rho 39783) := by
  unfold Seg45.relationRow2197 at r2197
  unfold seg45RPe64
  linear_combination -r2197

theorem seg45RStep63IlMul (rho : Nat -> Seg45.F) (r2198 : Seg45.relationRow2198 rho) :
    rho 40429 = seg45RIl64 rho * (rho 40428) := by
  unfold Seg45.relationRow2198 at r2198
  rw [seg45RStep63IlLc rho] at r2198
  linear_combination -r2198

theorem seg45RStep63Acc (rho : Nat -> Seg45.F) :
    seg45RIl63 rho = seg45RIl64 rho + (rho 40428) - (rho 40429) := by
  have hstate : seg45RIl63 rho = seg45RIl64 rho + seg45RIlAtom96 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom96
  ring

theorem seg45RStep63Pe (rho : Nat -> Seg45.F) (r2199 : Seg45.relationRow2199 rho) :
    seg45RPe63 rho = seg45RPe64 rho * rho 39783 := by
  unfold Seg45.relationRow2199 at r2199
  unfold seg45RPe63 seg45RPe64
  linear_combination -r2199

theorem seg45RStep63 (rho : Nat -> Seg45.F) (r2197 : Seg45.relationRow2197 rho) (r2198 : Seg45.relationRow2198 rho) (r2199 : Seg45.relationRow2199 rho) :
    seg45RPe63 rho = seg45RPe64 rho * rho 39783 ∧
    seg45RIl63 rho = seg45RIl64 rho + seg45RPe64 rho * (1 - rho 39783) -
      seg45RIl64 rho * (seg45RPe64 rho * (1 - rho 39783)) := by
  constructor
  · exact seg45RStep63Pe rho r2199
  · rw [seg45RStep63Acc rho, seg45RStep63L rho r2197, seg45RStep63IlMul rho r2198, seg45RStep63L rho r2197]

theorem seg45_r_chunk63 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 64 (seg45RPeState rho 64) (seg45RIlState rho 64) := by
  have htail := seg45_r_chunk62 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2197, r2198, r2199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 63 ≤ n → n < 64 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 63 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep63 rho r2197 r2198 r2199
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 63 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
