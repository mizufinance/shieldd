import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk58

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep59L (rho : Nat -> Seg6.F) (r2207 : Seg6.relationRow2207 rho) :
    rho 2602 = seg6RPe60 rho * (1 - rho 1943) := by
  unfold Seg6.relationRow2207 at r2207
  unfold seg6RPe60
  linear_combination -r2207

theorem seg6RStep59IlMul (rho : Nat -> Seg6.F) (r2208 : Seg6.relationRow2208 rho) :
    rho 2603 = seg6RIl60 rho * (rho 2602) := by
  unfold Seg6.relationRow2208 at r2208
  rw [seg6RStep59IlLc rho] at r2208
  linear_combination -r2208

theorem seg6RStep59Acc (rho : Nat -> Seg6.F) :
    seg6RIl59 rho = seg6RIl60 rho + (rho 2602) - (rho 2603) := by
  have hstate : seg6RIl59 rho = seg6RIl60 rho + seg6RIlAtom99 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom99
  ring

theorem seg6RStep59Pe (rho : Nat -> Seg6.F) (r2209 : Seg6.relationRow2209 rho) :
    seg6RPe59 rho = seg6RPe60 rho * rho 1943 := by
  unfold Seg6.relationRow2209 at r2209
  unfold seg6RPe59 seg6RPe60
  linear_combination -r2209

theorem seg6RStep59 (rho : Nat -> Seg6.F) (r2207 : Seg6.relationRow2207 rho) (r2208 : Seg6.relationRow2208 rho) (r2209 : Seg6.relationRow2209 rho) :
    seg6RPe59 rho = seg6RPe60 rho * rho 1943 ∧
    seg6RIl59 rho = seg6RIl60 rho + seg6RPe60 rho * (1 - rho 1943) -
      seg6RIl60 rho * (seg6RPe60 rho * (1 - rho 1943)) := by
  constructor
  · exact seg6RStep59Pe rho r2209
  · rw [seg6RStep59Acc rho, seg6RStep59L rho r2207, seg6RStep59IlMul rho r2208, seg6RStep59L rho r2207]

theorem seg6_r_chunk59 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 60 (seg6RPeState rho 60) (seg6RIlState rho 60) := by
  have htail := seg6_r_chunk58 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2207, r2208, r2209, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 59 ≤ n → n < 60 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 59 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep59 rho r2207 r2208 r2209
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 59 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
