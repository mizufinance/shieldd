import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk29

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep30L (rho : Nat -> Seg45.F) (r2270 : Seg45.relationRow2270 rho) :
    rho 40501 = seg45RPe31 rho * (1 - rho 39750) := by
  unfold Seg45.relationRow2270 at r2270
  unfold seg45RPe31
  linear_combination -r2270

theorem seg45RStep30IlMul (rho : Nat -> Seg45.F) (r2271 : Seg45.relationRow2271 rho) :
    rho 40502 = seg45RIl31 rho * (rho 40501) := by
  unfold Seg45.relationRow2271 at r2271
  rw [seg45RStep30IlLc rho] at r2271
  linear_combination -r2271

theorem seg45RStep30Acc (rho : Nat -> Seg45.F) :
    seg45RIl30 rho = seg45RIl31 rho + (rho 40501) - (rho 40502) := by
  have hstate : seg45RIl30 rho = seg45RIl31 rho + seg45RIlAtom117 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom117
  ring

theorem seg45RStep30Pe (rho : Nat -> Seg45.F) (r2272 : Seg45.relationRow2272 rho) :
    seg45RPe30 rho = seg45RPe31 rho * rho 39750 := by
  unfold Seg45.relationRow2272 at r2272
  unfold seg45RPe30 seg45RPe31
  linear_combination -r2272

theorem seg45RStep30 (rho : Nat -> Seg45.F) (r2270 : Seg45.relationRow2270 rho) (r2271 : Seg45.relationRow2271 rho) (r2272 : Seg45.relationRow2272 rho) :
    seg45RPe30 rho = seg45RPe31 rho * rho 39750 ∧
    seg45RIl30 rho = seg45RIl31 rho + seg45RPe31 rho * (1 - rho 39750) -
      seg45RIl31 rho * (seg45RPe31 rho * (1 - rho 39750)) := by
  constructor
  · exact seg45RStep30Pe rho r2272
  · rw [seg45RStep30Acc rho, seg45RStep30L rho r2270, seg45RStep30IlMul rho r2271, seg45RStep30L rho r2270]

theorem seg45_r_chunk30 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 31 (seg45RPeState rho 31) (seg45RIlState rho 31) := by
  have htail := seg45_r_chunk29 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2270, r2271, r2272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 30 ≤ n → n < 31 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 30 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep30 rho r2270 r2271 r2272
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 30 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
