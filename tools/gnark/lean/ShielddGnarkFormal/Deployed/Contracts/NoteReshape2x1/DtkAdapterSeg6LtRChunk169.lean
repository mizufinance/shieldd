import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk168

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep169L (rho : Nat -> Seg6.F) (r1985 : Seg6.relationRow1985 rho) :
    rho 2386 = seg6RPe170 rho * (1 - rho 2059) := by
  unfold Seg6.relationRow1985 at r1985
  unfold seg6RPe170
  linear_combination -r1985

theorem seg6RStep169IlMul (rho : Nat -> Seg6.F) (r1986 : Seg6.relationRow1986 rho) :
    rho 2387 = seg6RIl170 rho * (rho 2386) := by
  unfold Seg6.relationRow1986 at r1986
  rw [seg6RStep169IlLc rho] at r1986
  linear_combination -r1986

theorem seg6RStep169Acc (rho : Nat -> Seg6.F) :
    seg6RIl169 rho = seg6RIl170 rho + (rho 2386) - (rho 2387) := by
  have hstate : seg6RIl169 rho = seg6RIl170 rho + seg6RIlAtom40 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom40
  ring

theorem seg6RStep169Pe (rho : Nat -> Seg6.F) (r1987 : Seg6.relationRow1987 rho) :
    seg6RPe169 rho = seg6RPe170 rho * rho 2059 := by
  unfold Seg6.relationRow1987 at r1987
  unfold seg6RPe169 seg6RPe170
  linear_combination -r1987

theorem seg6RStep169 (rho : Nat -> Seg6.F) (r1985 : Seg6.relationRow1985 rho) (r1986 : Seg6.relationRow1986 rho) (r1987 : Seg6.relationRow1987 rho) :
    seg6RPe169 rho = seg6RPe170 rho * rho 2059 ∧
    seg6RIl169 rho = seg6RIl170 rho + seg6RPe170 rho * (1 - rho 2059) -
      seg6RIl170 rho * (seg6RPe170 rho * (1 - rho 2059)) := by
  constructor
  · exact seg6RStep169Pe rho r1987
  · rw [seg6RStep169Acc rho, seg6RStep169L rho r1985, seg6RStep169IlMul rho r1986, seg6RStep169L rho r1985]

theorem seg6_r_chunk169 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 170 (seg6RPeState rho 170) (seg6RIlState rho 170) := by
  have htail := seg6_r_chunk168 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1985, r1986, r1987, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 169 ≤ n → n < 170 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 169 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep169 rho r1985 r1986 r1987
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 169 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
