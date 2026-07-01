import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep25L (rho : Nat -> Seg45.F) (r2277 : Seg45.relationRow2277 rho) :
    rho 40508 = seg45RPe26 rho * (1 - rho 39745) := by
  unfold Seg45.relationRow2277 at r2277
  unfold seg45RPe26
  linear_combination -r2277

theorem seg45RStep25IlMul (rho : Nat -> Seg45.F) (r2278 : Seg45.relationRow2278 rho) :
    rho 40509 = seg45RIl26 rho * (rho 40508) := by
  unfold Seg45.relationRow2278 at r2278
  rw [seg45RStep25IlLc rho] at r2278
  linear_combination -r2278

theorem seg45RStep25Acc (rho : Nat -> Seg45.F) :
    seg45RIl25 rho = seg45RIl26 rho + (rho 40508) - (rho 40509) := by
  have hstate : seg45RIl25 rho = seg45RIl26 rho + seg45RIlAtom118 rho + (-1 : Seg45.F) * seg45RIlAtom119 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom118 seg45RIlAtom119
  ring

theorem seg45RStep25Pe (rho : Nat -> Seg45.F) (r2279 : Seg45.relationRow2279 rho) :
    seg45RPe25 rho = seg45RPe26 rho * rho 39745 := by
  unfold Seg45.relationRow2279 at r2279
  unfold seg45RPe25 seg45RPe26
  linear_combination -r2279

theorem seg45RStep25 (rho : Nat -> Seg45.F) (r2277 : Seg45.relationRow2277 rho) (r2278 : Seg45.relationRow2278 rho) (r2279 : Seg45.relationRow2279 rho) :
    seg45RPe25 rho = seg45RPe26 rho * rho 39745 ∧
    seg45RIl25 rho = seg45RIl26 rho + seg45RPe26 rho * (1 - rho 39745) -
      seg45RIl26 rho * (seg45RPe26 rho * (1 - rho 39745)) := by
  constructor
  · exact seg45RStep25Pe rho r2279
  · rw [seg45RStep25Acc rho, seg45RStep25L rho r2277, seg45RStep25IlMul rho r2278, seg45RStep25L rho r2277]

theorem seg45_r_chunk25 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 26 (seg45RPeState rho 26) (seg45RIlState rho 26) := by
  have htail := seg45_r_chunk24 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2277, r2278, r2279, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 25 ≤ n → n < 26 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 25 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep25 rho r2277 r2278 r2279
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 25 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
