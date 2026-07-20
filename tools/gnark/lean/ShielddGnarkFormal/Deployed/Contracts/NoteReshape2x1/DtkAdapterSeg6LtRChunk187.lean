import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk186

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep187L (rho : Nat -> Seg6.F) (r1955 : Seg6.relationRow1955 rho) :
    rho 2350 = seg6RPe188 rho * (1 - rho 2071) := by
  unfold Seg6.relationRow1955 at r1955
  unfold seg6RPe188
  linear_combination -r1955

theorem seg6RStep187IlMul (rho : Nat -> Seg6.F) (r1956 : Seg6.relationRow1956 rho) :
    rho 2351 = seg6RIl188 rho * (rho 2350) := by
  unfold Seg6.relationRow1956 at r1956
  rw [seg6RStep187IlLc rho] at r1956
  linear_combination -r1956

theorem seg6RStep187Acc (rho : Nat -> Seg6.F) :
    seg6RIl187 rho = seg6RIl188 rho + (rho 2350) - (rho 2351) := by
  have hstate : seg6RIl187 rho = seg6RIl188 rho + seg6RIlAtom33 rho + (-1 : Seg6.F) * seg6RIlAtom34 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom33 seg6RIlAtom34
  ring

theorem seg6RStep187Pe (rho : Nat -> Seg6.F) (r1957 : Seg6.relationRow1957 rho) :
    seg6RPe187 rho = seg6RPe188 rho * rho 2071 := by
  unfold Seg6.relationRow1957 at r1957
  unfold seg6RPe187 seg6RPe188
  linear_combination -r1957

theorem seg6RStep187 (rho : Nat -> Seg6.F) (r1955 : Seg6.relationRow1955 rho) (r1956 : Seg6.relationRow1956 rho) (r1957 : Seg6.relationRow1957 rho) :
    seg6RPe187 rho = seg6RPe188 rho * rho 2071 ∧
    seg6RIl187 rho = seg6RIl188 rho + seg6RPe188 rho * (1 - rho 2071) -
      seg6RIl188 rho * (seg6RPe188 rho * (1 - rho 2071)) := by
  constructor
  · exact seg6RStep187Pe rho r1957
  · rw [seg6RStep187Acc rho, seg6RStep187L rho r1955, seg6RStep187IlMul rho r1956, seg6RStep187L rho r1955]

theorem seg6_r_chunk187 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 188 (seg6RPeState rho 188) (seg6RIlState rho 188) := by
  have htail := seg6_r_chunk186 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1955, r1956, r1957, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 187 ≤ n → n < 188 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 187 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep187 rho r1955 r1956 r1957
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 187 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
