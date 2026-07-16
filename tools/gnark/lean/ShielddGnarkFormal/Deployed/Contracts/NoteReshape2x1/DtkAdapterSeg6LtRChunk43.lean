import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk42

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep43L (rho : Nat -> Seg6.F) (r2241 : Seg6.relationRow2241 rho) :
    rho 2642 = seg6RPe44 rho * (1 - rho 1933) := by
  unfold Seg6.relationRow2241 at r2241
  unfold seg6RPe44
  linear_combination -r2241

theorem seg6RStep43IlMul (rho : Nat -> Seg6.F) (r2242 : Seg6.relationRow2242 rho) :
    rho 2643 = seg6RIl44 rho * (rho 2642) := by
  unfold Seg6.relationRow2242 at r2242
  rw [seg6RStep43IlLc rho] at r2242
  linear_combination -r2242

theorem seg6RStep43Acc (rho : Nat -> Seg6.F) :
    seg6RIl43 rho = seg6RIl44 rho + (rho 2642) - (rho 2643) := by
  have hstate : seg6RIl43 rho = seg6RIl44 rho + seg6RIlAtom109 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom109
  ring

theorem seg6RStep43Pe (rho : Nat -> Seg6.F) (r2243 : Seg6.relationRow2243 rho) :
    seg6RPe43 rho = seg6RPe44 rho * rho 1933 := by
  unfold Seg6.relationRow2243 at r2243
  unfold seg6RPe43 seg6RPe44
  linear_combination -r2243

theorem seg6RStep43 (rho : Nat -> Seg6.F) (r2241 : Seg6.relationRow2241 rho) (r2242 : Seg6.relationRow2242 rho) (r2243 : Seg6.relationRow2243 rho) :
    seg6RPe43 rho = seg6RPe44 rho * rho 1933 ∧
    seg6RIl43 rho = seg6RIl44 rho + seg6RPe44 rho * (1 - rho 1933) -
      seg6RIl44 rho * (seg6RPe44 rho * (1 - rho 1933)) := by
  constructor
  · exact seg6RStep43Pe rho r2243
  · rw [seg6RStep43Acc rho, seg6RStep43L rho r2241, seg6RStep43IlMul rho r2242, seg6RStep43L rho r2241]

theorem seg6_r_chunk43 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 44 (seg6RPeState rho 44) (seg6RIlState rho 44) := by
  have htail := seg6_r_chunk42 rho h k hq4
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
  rcases p28 with ⟨_, r2241, r2242, r2243, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 43 ≤ n → n < 44 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 43 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep43 rho r2241 r2242 r2243
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 43 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
