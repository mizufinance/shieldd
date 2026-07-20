import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk187

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep188L (rho : Nat -> Seg6.F) (r1952 : Seg6.relationRow1952 rho) :
    rho 2347 = seg6RPe189 rho * (1 - rho 2072) := by
  unfold Seg6.relationRow1952 at r1952
  unfold seg6RPe189
  linear_combination -r1952

theorem seg6RStep188IlMul (rho : Nat -> Seg6.F) (r1953 : Seg6.relationRow1953 rho) :
    rho 2348 = seg6RIl189 rho * (rho 2347) := by
  unfold Seg6.relationRow1953 at r1953
  rw [seg6RStep188IlLc rho] at r1953
  linear_combination -r1953

theorem seg6RStep188Acc (rho : Nat -> Seg6.F) :
    seg6RIl188 rho = seg6RIl189 rho + (rho 2347) - (rho 2348) := by
  have hstate : seg6RIl188 rho = seg6RIl189 rho + seg6RIlAtom32 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom32
  ring

theorem seg6RStep188Pe (rho : Nat -> Seg6.F) (r1954 : Seg6.relationRow1954 rho) :
    seg6RPe188 rho = seg6RPe189 rho * rho 2072 := by
  unfold Seg6.relationRow1954 at r1954
  unfold seg6RPe188 seg6RPe189
  linear_combination -r1954

theorem seg6RStep188 (rho : Nat -> Seg6.F) (r1952 : Seg6.relationRow1952 rho) (r1953 : Seg6.relationRow1953 rho) (r1954 : Seg6.relationRow1954 rho) :
    seg6RPe188 rho = seg6RPe189 rho * rho 2072 ∧
    seg6RIl188 rho = seg6RIl189 rho + seg6RPe189 rho * (1 - rho 2072) -
      seg6RIl189 rho * (seg6RPe189 rho * (1 - rho 2072)) := by
  constructor
  · exact seg6RStep188Pe rho r1954
  · rw [seg6RStep188Acc rho, seg6RStep188L rho r1952, seg6RStep188IlMul rho r1953, seg6RStep188L rho r1952]

theorem seg6_r_chunk188 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 189 (seg6RPeState rho 189) (seg6RIlState rho 189) := by
  have htail := seg6_r_chunk187 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1952, r1953, r1954, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 188 ≤ n → n < 189 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 188 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep188 rho r1952 r1953 r1954
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 188 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
