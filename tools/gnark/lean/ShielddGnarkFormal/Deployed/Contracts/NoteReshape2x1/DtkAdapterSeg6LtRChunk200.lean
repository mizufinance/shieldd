import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk199

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep200L (rho : Nat -> Seg6.F) (r1928 : Seg6.relationRow1928 rho) :
    rho 2323 = seg6RPe201 rho * (1 - rho 2084) := by
  unfold Seg6.relationRow1928 at r1928
  unfold seg6RPe201
  linear_combination -r1928

theorem seg6RStep200IlMul (rho : Nat -> Seg6.F) (r1929 : Seg6.relationRow1929 rho) :
    rho 2324 = seg6RIl201 rho * (rho 2323) := by
  unfold Seg6.relationRow1929 at r1929
  rw [seg6RStep200IlLc rho] at r1929
  linear_combination -r1929

theorem seg6RStep200Acc (rho : Nat -> Seg6.F) :
    seg6RIl200 rho = seg6RIl201 rho + (rho 2323) - (rho 2324) := by
  have hstate : seg6RIl200 rho = seg6RIl201 rho + seg6RIlAtom26 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom26
  ring

theorem seg6RStep200Pe (rho : Nat -> Seg6.F) (r1930 : Seg6.relationRow1930 rho) :
    seg6RPe200 rho = seg6RPe201 rho * rho 2084 := by
  unfold Seg6.relationRow1930 at r1930
  unfold seg6RPe200 seg6RPe201
  linear_combination -r1930

theorem seg6RStep200 (rho : Nat -> Seg6.F) (r1928 : Seg6.relationRow1928 rho) (r1929 : Seg6.relationRow1929 rho) (r1930 : Seg6.relationRow1930 rho) :
    seg6RPe200 rho = seg6RPe201 rho * rho 2084 ∧
    seg6RIl200 rho = seg6RIl201 rho + seg6RPe201 rho * (1 - rho 2084) -
      seg6RIl201 rho * (seg6RPe201 rho * (1 - rho 2084)) := by
  constructor
  · exact seg6RStep200Pe rho r1930
  · rw [seg6RStep200Acc rho, seg6RStep200L rho r1928, seg6RStep200IlMul rho r1929, seg6RStep200L rho r1928]

theorem seg6_r_chunk200 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 201 (seg6RPeState rho 201) (seg6RIlState rho 201) := by
  have htail := seg6_r_chunk199 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, r1928, r1929, r1930, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 200 ≤ n → n < 201 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 200 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep200 rho r1928 r1929 r1930
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 200 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
