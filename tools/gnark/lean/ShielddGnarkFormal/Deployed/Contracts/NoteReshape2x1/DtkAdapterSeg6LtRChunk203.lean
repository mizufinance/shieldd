import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk202

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep203L (rho : Nat -> Seg6.F) (r1923 : Seg6.relationRow1923 rho) :
    rho 2318 = seg6RPe204 rho * (1 - rho 2087) := by
  unfold Seg6.relationRow1923 at r1923
  unfold seg6RPe204
  linear_combination -r1923

theorem seg6RStep203IlMul (rho : Nat -> Seg6.F) (r1924 : Seg6.relationRow1924 rho) :
    rho 2319 = seg6RIl204 rho * (rho 2318) := by
  unfold Seg6.relationRow1924 at r1924
  rw [seg6RStep203IlLc rho] at r1924
  linear_combination -r1924

theorem seg6RStep203Acc (rho : Nat -> Seg6.F) :
    seg6RIl203 rho = seg6RIl204 rho + (rho 2318) - (rho 2319) := by
  have hstate : seg6RIl203 rho = seg6RIl204 rho + seg6RIlAtom25 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom25
  ring

theorem seg6RStep203Pe (rho : Nat -> Seg6.F) (r1925 : Seg6.relationRow1925 rho) :
    seg6RPe203 rho = seg6RPe204 rho * rho 2087 := by
  unfold Seg6.relationRow1925 at r1925
  unfold seg6RPe203 seg6RPe204
  linear_combination -r1925

theorem seg6RStep203 (rho : Nat -> Seg6.F) (r1923 : Seg6.relationRow1923 rho) (r1924 : Seg6.relationRow1924 rho) (r1925 : Seg6.relationRow1925 rho) :
    seg6RPe203 rho = seg6RPe204 rho * rho 2087 ∧
    seg6RIl203 rho = seg6RIl204 rho + seg6RPe204 rho * (1 - rho 2087) -
      seg6RIl204 rho * (seg6RPe204 rho * (1 - rho 2087)) := by
  constructor
  · exact seg6RStep203Pe rho r1925
  · rw [seg6RStep203Acc rho, seg6RStep203L rho r1923, seg6RStep203IlMul rho r1924, seg6RStep203L rho r1923]

theorem seg6_r_chunk203 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 204 (seg6RPeState rho 204) (seg6RIlState rho 204) := by
  have htail := seg6_r_chunk202 rho h k hq4
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
  rcases p24 with ⟨_, _, _, r1923, r1924, r1925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 203 ≤ n → n < 204 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 203 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep203 rho r1923 r1924 r1925
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 203 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
