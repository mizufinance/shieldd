import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk60

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep61L (rho : Nat -> Seg45.F) (r2201 : Seg45.relationRow2201 rho) :
    rho 40432 = seg45RPe62 rho * (1 - rho 39781) := by
  unfold Seg45.relationRow2201 at r2201
  unfold seg45RPe62
  linear_combination -r2201

theorem seg45RStep61IlMul (rho : Nat -> Seg45.F) (r2202 : Seg45.relationRow2202 rho) :
    rho 40433 = seg45RIl62 rho * (rho 40432) := by
  unfold Seg45.relationRow2202 at r2202
  rw [seg45RStep61IlLc rho] at r2202
  linear_combination -r2202

theorem seg45RStep61Acc (rho : Nat -> Seg45.F) :
    seg45RIl61 rho = seg45RIl62 rho + (rho 40432) - (rho 40433) := by
  have hstate : seg45RIl61 rho = seg45RIl62 rho + seg45RIlAtom97 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom97
  ring

theorem seg45RStep61Pe (rho : Nat -> Seg45.F) (r2203 : Seg45.relationRow2203 rho) :
    seg45RPe61 rho = seg45RPe62 rho * rho 39781 := by
  unfold Seg45.relationRow2203 at r2203
  unfold seg45RPe61 seg45RPe62
  linear_combination -r2203

theorem seg45RStep61 (rho : Nat -> Seg45.F) (r2201 : Seg45.relationRow2201 rho) (r2202 : Seg45.relationRow2202 rho) (r2203 : Seg45.relationRow2203 rho) :
    seg45RPe61 rho = seg45RPe62 rho * rho 39781 ∧
    seg45RIl61 rho = seg45RIl62 rho + seg45RPe62 rho * (1 - rho 39781) -
      seg45RIl62 rho * (seg45RPe62 rho * (1 - rho 39781)) := by
  constructor
  · exact seg45RStep61Pe rho r2203
  · rw [seg45RStep61Acc rho, seg45RStep61L rho r2201, seg45RStep61IlMul rho r2202, seg45RStep61L rho r2201]

theorem seg45_r_chunk61 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 62 (seg45RPeState rho 62) (seg45RIlState rho 62) := by
  have htail := seg45_r_chunk60 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2201, r2202, r2203, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 61 ≤ n → n < 62 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 61 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep61 rho r2201 r2202 r2203
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 61 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
