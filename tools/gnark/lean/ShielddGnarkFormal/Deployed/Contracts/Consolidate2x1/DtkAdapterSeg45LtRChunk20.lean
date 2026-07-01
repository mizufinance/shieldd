import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk19

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep20L (rho : Nat -> Seg45.F) (r2288 : Seg45.relationRow2288 rho) :
    rho 40519 = seg45RPe21 rho * (1 - rho 39740) := by
  unfold Seg45.relationRow2288 at r2288
  unfold seg45RPe21
  linear_combination -r2288

theorem seg45RStep20IlMul (rho : Nat -> Seg45.F) (r2289 : Seg45.relationRow2289 rho) :
    rho 40520 = seg45RIl21 rho * (rho 40519) := by
  unfold Seg45.relationRow2289 at r2289
  rw [seg45RStep20IlLc rho] at r2289
  linear_combination -r2289

theorem seg45RStep20Acc (rho : Nat -> Seg45.F) :
    seg45RIl20 rho = seg45RIl21 rho + (rho 40519) - (rho 40520) := by
  have hstate : seg45RIl20 rho = seg45RIl21 rho + seg45RIlAtom122 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom122
  ring

theorem seg45RStep20Pe (rho : Nat -> Seg45.F) (r2290 : Seg45.relationRow2290 rho) :
    seg45RPe20 rho = seg45RPe21 rho * rho 39740 := by
  unfold Seg45.relationRow2290 at r2290
  unfold seg45RPe20 seg45RPe21
  linear_combination -r2290

theorem seg45RStep20 (rho : Nat -> Seg45.F) (r2288 : Seg45.relationRow2288 rho) (r2289 : Seg45.relationRow2289 rho) (r2290 : Seg45.relationRow2290 rho) :
    seg45RPe20 rho = seg45RPe21 rho * rho 39740 ∧
    seg45RIl20 rho = seg45RIl21 rho + seg45RPe21 rho * (1 - rho 39740) -
      seg45RIl21 rho * (seg45RPe21 rho * (1 - rho 39740)) := by
  constructor
  · exact seg45RStep20Pe rho r2290
  · rw [seg45RStep20Acc rho, seg45RStep20L rho r2288, seg45RStep20IlMul rho r2289, seg45RStep20L rho r2288]

theorem seg45_r_chunk20 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 21 (seg45RPeState rho 21) (seg45RIlState rho 21) := by
  have htail := seg45_r_chunk19 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2288, r2289, r2290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 20 ≤ n → n < 21 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 20 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep20 rho r2288 r2289 r2290
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 20 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
