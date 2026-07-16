import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk19

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep20L (rho : Nat -> Seg6.F) (r2288 : Seg6.relationRow2288 rho) :
    rho 2689 = seg6RPe21 rho * (1 - rho 1910) := by
  unfold Seg6.relationRow2288 at r2288
  unfold seg6RPe21
  linear_combination -r2288

theorem seg6RStep20IlMul (rho : Nat -> Seg6.F) (r2289 : Seg6.relationRow2289 rho) :
    rho 2690 = seg6RIl21 rho * (rho 2689) := by
  unfold Seg6.relationRow2289 at r2289
  rw [seg6RStep20IlLc rho] at r2289
  linear_combination -r2289

theorem seg6RStep20Acc (rho : Nat -> Seg6.F) :
    seg6RIl20 rho = seg6RIl21 rho + (rho 2689) - (rho 2690) := by
  have hstate : seg6RIl20 rho = seg6RIl21 rho + seg6RIlAtom122 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom122
  ring

theorem seg6RStep20Pe (rho : Nat -> Seg6.F) (r2290 : Seg6.relationRow2290 rho) :
    seg6RPe20 rho = seg6RPe21 rho * rho 1910 := by
  unfold Seg6.relationRow2290 at r2290
  unfold seg6RPe20 seg6RPe21
  linear_combination -r2290

theorem seg6RStep20 (rho : Nat -> Seg6.F) (r2288 : Seg6.relationRow2288 rho) (r2289 : Seg6.relationRow2289 rho) (r2290 : Seg6.relationRow2290 rho) :
    seg6RPe20 rho = seg6RPe21 rho * rho 1910 ∧
    seg6RIl20 rho = seg6RIl21 rho + seg6RPe21 rho * (1 - rho 1910) -
      seg6RIl21 rho * (seg6RPe21 rho * (1 - rho 1910)) := by
  constructor
  · exact seg6RStep20Pe rho r2290
  · rw [seg6RStep20Acc rho, seg6RStep20L rho r2288, seg6RStep20IlMul rho r2289, seg6RStep20L rho r2288]

theorem seg6_r_chunk20 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 21 (seg6RPeState rho 21) (seg6RIlState rho 21) := by
  have htail := seg6_r_chunk19 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2288, r2289, r2290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 20 ≤ n → n < 21 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 20 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep20 rho r2288 r2289 r2290
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 20 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
