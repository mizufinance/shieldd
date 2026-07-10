import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk60

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep61L (rho : Nat -> Seg5.F) (r2201 : Seg5.relationRow2201 rho) :
    rho 1899 = seg5RPe62 rho * (1 - rho 1248) := by
  unfold Seg5.relationRow2201 at r2201
  unfold seg5RPe62
  linear_combination -r2201

theorem seg5RStep61IlMul (rho : Nat -> Seg5.F) (r2202 : Seg5.relationRow2202 rho) :
    rho 1900 = seg5RIl62 rho * (rho 1899) := by
  unfold Seg5.relationRow2202 at r2202
  rw [seg5RStep61IlLc rho] at r2202
  linear_combination -r2202

theorem seg5RStep61Acc (rho : Nat -> Seg5.F) :
    seg5RIl61 rho = seg5RIl62 rho + (rho 1899) - (rho 1900) := by
  have hstate : seg5RIl61 rho = seg5RIl62 rho + seg5RIlAtom97 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom97
  ring

theorem seg5RStep61Pe (rho : Nat -> Seg5.F) (r2203 : Seg5.relationRow2203 rho) :
    seg5RPe61 rho = seg5RPe62 rho * rho 1248 := by
  unfold Seg5.relationRow2203 at r2203
  unfold seg5RPe61 seg5RPe62
  linear_combination -r2203

theorem seg5RStep61 (rho : Nat -> Seg5.F) (r2201 : Seg5.relationRow2201 rho) (r2202 : Seg5.relationRow2202 rho) (r2203 : Seg5.relationRow2203 rho) :
    seg5RPe61 rho = seg5RPe62 rho * rho 1248 ∧
    seg5RIl61 rho = seg5RIl62 rho + seg5RPe62 rho * (1 - rho 1248) -
      seg5RIl62 rho * (seg5RPe62 rho * (1 - rho 1248)) := by
  constructor
  · exact seg5RStep61Pe rho r2203
  · rw [seg5RStep61Acc rho, seg5RStep61L rho r2201, seg5RStep61IlMul rho r2202, seg5RStep61L rho r2201]

theorem seg5_r_chunk61 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 62 (seg5RPeState rho 62) (seg5RIlState rho 62) := by
  have htail := seg5_r_chunk60 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2201, r2202, r2203, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 61 ≤ n → n < 62 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 61 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep61 rho r2201 r2202 r2203
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 61 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
