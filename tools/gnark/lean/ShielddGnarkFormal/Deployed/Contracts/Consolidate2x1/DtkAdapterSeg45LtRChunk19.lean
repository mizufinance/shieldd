import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep19L (rho : Nat -> Seg45.F) (r2291 : Seg45.relationRow2291 rho) :
    rho 40522 = seg45RPe20 rho * (1 - rho 39739) := by
  unfold Seg45.relationRow2291 at r2291
  unfold seg45RPe20
  linear_combination -r2291

theorem seg45RStep19IlMul (rho : Nat -> Seg45.F) (r2292 : Seg45.relationRow2292 rho) :
    rho 40523 = seg45RIl20 rho * (rho 40522) := by
  unfold Seg45.relationRow2292 at r2292
  rw [seg45RStep19IlLc rho] at r2292
  linear_combination -r2292

theorem seg45RStep19Acc (rho : Nat -> Seg45.F) :
    seg45RIl19 rho = seg45RIl20 rho + (rho 40522) - (rho 40523) := by
  have hstate : seg45RIl19 rho = seg45RIl20 rho + seg45RIlAtom123 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom123
  ring

theorem seg45RStep19Pe (rho : Nat -> Seg45.F) (r2293 : Seg45.relationRow2293 rho) :
    seg45RPe19 rho = seg45RPe20 rho * rho 39739 := by
  unfold Seg45.relationRow2293 at r2293
  unfold seg45RPe19 seg45RPe20
  linear_combination -r2293

theorem seg45RStep19 (rho : Nat -> Seg45.F) (r2291 : Seg45.relationRow2291 rho) (r2292 : Seg45.relationRow2292 rho) (r2293 : Seg45.relationRow2293 rho) :
    seg45RPe19 rho = seg45RPe20 rho * rho 39739 ∧
    seg45RIl19 rho = seg45RIl20 rho + seg45RPe20 rho * (1 - rho 39739) -
      seg45RIl20 rho * (seg45RPe20 rho * (1 - rho 39739)) := by
  constructor
  · exact seg45RStep19Pe rho r2293
  · rw [seg45RStep19Acc rho, seg45RStep19L rho r2291, seg45RStep19IlMul rho r2292, seg45RStep19L rho r2291]

theorem seg45_r_chunk19 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 20 (seg45RPeState rho 20) (seg45RIlState rho 20) := by
  have htail := seg45_r_chunk18 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2291, r2292, r2293, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 19 ≤ n → n < 20 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 19 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep19 rho r2291 r2292 r2293
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 19 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
