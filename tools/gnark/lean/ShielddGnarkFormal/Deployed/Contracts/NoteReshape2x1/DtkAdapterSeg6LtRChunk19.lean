import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep19L (rho : Nat -> Seg6.F) (r2291 : Seg6.relationRow2291 rho) :
    rho 2686 = seg6RPe20 rho * (1 - rho 1903) := by
  unfold Seg6.relationRow2291 at r2291
  unfold seg6RPe20
  linear_combination -r2291

theorem seg6RStep19IlMul (rho : Nat -> Seg6.F) (r2292 : Seg6.relationRow2292 rho) :
    rho 2687 = seg6RIl20 rho * (rho 2686) := by
  unfold Seg6.relationRow2292 at r2292
  rw [seg6RStep19IlLc rho] at r2292
  linear_combination -r2292

theorem seg6RStep19Acc (rho : Nat -> Seg6.F) :
    seg6RIl19 rho = seg6RIl20 rho + (rho 2686) - (rho 2687) := by
  have hstate : seg6RIl19 rho = seg6RIl20 rho + seg6RIlAtom123 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom123
  ring

theorem seg6RStep19Pe (rho : Nat -> Seg6.F) (r2293 : Seg6.relationRow2293 rho) :
    seg6RPe19 rho = seg6RPe20 rho * rho 1903 := by
  unfold Seg6.relationRow2293 at r2293
  unfold seg6RPe19 seg6RPe20
  linear_combination -r2293

theorem seg6RStep19 (rho : Nat -> Seg6.F) (r2291 : Seg6.relationRow2291 rho) (r2292 : Seg6.relationRow2292 rho) (r2293 : Seg6.relationRow2293 rho) :
    seg6RPe19 rho = seg6RPe20 rho * rho 1903 ∧
    seg6RIl19 rho = seg6RIl20 rho + seg6RPe20 rho * (1 - rho 1903) -
      seg6RIl20 rho * (seg6RPe20 rho * (1 - rho 1903)) := by
  constructor
  · exact seg6RStep19Pe rho r2293
  · rw [seg6RStep19Acc rho, seg6RStep19L rho r2291, seg6RStep19IlMul rho r2292, seg6RStep19L rho r2291]

theorem seg6_r_chunk19 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 20 (seg6RPeState rho 20) (seg6RIlState rho 20) := by
  have htail := seg6_r_chunk18 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2291, r2292, r2293, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 19 ≤ n → n < 20 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 19 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep19 rho r2291 r2292 r2293
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 19 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
