import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk108

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep109L (rho : Nat -> Seg6.F) (r2099 : Seg6.relationRow2099 rho) :
    rho 2500 = seg6RPe110 rho * (1 - rho 1999) := by
  unfold Seg6.relationRow2099 at r2099
  unfold seg6RPe110
  linear_combination -r2099

theorem seg6RStep109IlMul (rho : Nat -> Seg6.F) (r2100 : Seg6.relationRow2100 rho) :
    rho 2501 = seg6RIl110 rho * (rho 2500) := by
  unfold Seg6.relationRow2100 at r2100
  rw [seg6RStep109IlLc rho] at r2100
  linear_combination -r2100

theorem seg6RStep109Acc (rho : Nat -> Seg6.F) :
    seg6RIl109 rho = seg6RIl110 rho + (rho 2500) - (rho 2501) := by
  have hstate : seg6RIl109 rho = seg6RIl110 rho + seg6RIlAtom69 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom69
  ring

theorem seg6RStep109Pe (rho : Nat -> Seg6.F) (r2101 : Seg6.relationRow2101 rho) :
    seg6RPe109 rho = seg6RPe110 rho * rho 1999 := by
  unfold Seg6.relationRow2101 at r2101
  unfold seg6RPe109 seg6RPe110
  linear_combination -r2101

theorem seg6RStep109 (rho : Nat -> Seg6.F) (r2099 : Seg6.relationRow2099 rho) (r2100 : Seg6.relationRow2100 rho) (r2101 : Seg6.relationRow2101 rho) :
    seg6RPe109 rho = seg6RPe110 rho * rho 1999 ∧
    seg6RIl109 rho = seg6RIl110 rho + seg6RPe110 rho * (1 - rho 1999) -
      seg6RIl110 rho * (seg6RPe110 rho * (1 - rho 1999)) := by
  constructor
  · exact seg6RStep109Pe rho r2101
  · rw [seg6RStep109Acc rho, seg6RStep109L rho r2099, seg6RStep109IlMul rho r2100, seg6RStep109L rho r2099]

theorem seg6_r_chunk109 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 110 (seg6RPeState rho 110) (seg6RIlState rho 110) := by
  have htail := seg6_r_chunk108 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2099, r2100, r2101, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 109 ≤ n → n < 110 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 109 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep109 rho r2099 r2100 r2101
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 109 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
