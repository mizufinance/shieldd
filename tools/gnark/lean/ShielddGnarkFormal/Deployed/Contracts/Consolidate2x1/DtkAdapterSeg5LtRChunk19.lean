import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep19L (rho : Nat -> Seg5.F) (r2291 : Seg5.relationRow2291 rho) :
    rho 1989 = seg5RPe20 rho * (1 - rho 1206) := by
  unfold Seg5.relationRow2291 at r2291
  unfold seg5RPe20
  linear_combination -r2291

theorem seg5RStep19IlMul (rho : Nat -> Seg5.F) (r2292 : Seg5.relationRow2292 rho) :
    rho 1990 = seg5RIl20 rho * (rho 1989) := by
  unfold Seg5.relationRow2292 at r2292
  rw [seg5RStep19IlLc rho] at r2292
  linear_combination -r2292

theorem seg5RStep19Acc (rho : Nat -> Seg5.F) :
    seg5RIl19 rho = seg5RIl20 rho + (rho 1989) - (rho 1990) := by
  have hstate : seg5RIl19 rho = seg5RIl20 rho + seg5RIlAtom123 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom123
  ring

theorem seg5RStep19Pe (rho : Nat -> Seg5.F) (r2293 : Seg5.relationRow2293 rho) :
    seg5RPe19 rho = seg5RPe20 rho * rho 1206 := by
  unfold Seg5.relationRow2293 at r2293
  unfold seg5RPe19 seg5RPe20
  linear_combination -r2293

theorem seg5RStep19 (rho : Nat -> Seg5.F) (r2291 : Seg5.relationRow2291 rho) (r2292 : Seg5.relationRow2292 rho) (r2293 : Seg5.relationRow2293 rho) :
    seg5RPe19 rho = seg5RPe20 rho * rho 1206 ∧
    seg5RIl19 rho = seg5RIl20 rho + seg5RPe20 rho * (1 - rho 1206) -
      seg5RIl20 rho * (seg5RPe20 rho * (1 - rho 1206)) := by
  constructor
  · exact seg5RStep19Pe rho r2293
  · rw [seg5RStep19Acc rho, seg5RStep19L rho r2291, seg5RStep19IlMul rho r2292, seg5RStep19L rho r2291]

theorem seg5_r_chunk19 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 20 (seg5RPeState rho 20) (seg5RIlState rho 20) := by
  have htail := seg5_r_chunk18 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2291, r2292, r2293, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 19 ≤ n → n < 20 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 19 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep19 rho r2291 r2292 r2293
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 19 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
