import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep12L (rho : Nat -> Seg45.F) (r2310 : Seg45.relationRow2310 rho) :
    rho 40541 = seg45RPe13 rho * (1 - rho 39732) := by
  unfold Seg45.relationRow2310 at r2310
  unfold seg45RPe13
  linear_combination -r2310

theorem seg45RStep12IlMul (rho : Nat -> Seg45.F) (r2311 : Seg45.relationRow2311 rho) :
    rho 40542 = seg45RIl13 rho * (rho 40541) := by
  unfold Seg45.relationRow2311 at r2311
  rw [seg45RStep12IlLc rho] at r2311
  linear_combination -r2311

theorem seg45RStep12Acc (rho : Nat -> Seg45.F) :
    seg45RIl12 rho = seg45RIl13 rho + (rho 40541) - (rho 40542) := by
  have hstate : seg45RIl12 rho = seg45RIl13 rho + seg45RIlAtom129 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom129
  ring

theorem seg45RStep12Pe (rho : Nat -> Seg45.F) (r2312 : Seg45.relationRow2312 rho) :
    seg45RPe12 rho = seg45RPe13 rho * rho 39732 := by
  unfold Seg45.relationRow2312 at r2312
  unfold seg45RPe12 seg45RPe13
  linear_combination -r2312

theorem seg45RStep12 (rho : Nat -> Seg45.F) (r2310 : Seg45.relationRow2310 rho) (r2311 : Seg45.relationRow2311 rho) (r2312 : Seg45.relationRow2312 rho) :
    seg45RPe12 rho = seg45RPe13 rho * rho 39732 ∧
    seg45RIl12 rho = seg45RIl13 rho + seg45RPe13 rho * (1 - rho 39732) -
      seg45RIl13 rho * (seg45RPe13 rho * (1 - rho 39732)) := by
  constructor
  · exact seg45RStep12Pe rho r2312
  · rw [seg45RStep12Acc rho, seg45RStep12L rho r2310, seg45RStep12IlMul rho r2311, seg45RStep12L rho r2310]

theorem seg45_r_chunk12 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 13 (seg45RPeState rho 13) (seg45RIlState rho 13) := by
  have htail := seg45_r_chunk11 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2310, r2311, r2312, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 12 ≤ n → n < 13 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 12 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep12 rho r2310 r2311 r2312
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 12 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
