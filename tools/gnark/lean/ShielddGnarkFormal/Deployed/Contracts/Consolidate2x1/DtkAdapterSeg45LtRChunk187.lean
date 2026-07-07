import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk186

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep187L (rho : Nat -> Seg45.F) (r1955 : Seg45.relationRow1955 rho) :
    rho 40186 = seg45RPe188 rho * (1 - rho 39907) := by
  unfold Seg45.relationRow1955 at r1955
  unfold seg45RPe188
  linear_combination -r1955

theorem seg45RStep187IlMul (rho : Nat -> Seg45.F) (r1956 : Seg45.relationRow1956 rho) :
    rho 40187 = seg45RIl188 rho * (rho 40186) := by
  unfold Seg45.relationRow1956 at r1956
  rw [seg45RStep187IlLc rho] at r1956
  linear_combination -r1956

theorem seg45RStep187Acc (rho : Nat -> Seg45.F) :
    seg45RIl187 rho = seg45RIl188 rho + (rho 40186) - (rho 40187) := by
  have hstate : seg45RIl187 rho = seg45RIl188 rho + seg45RIlAtom33 rho + (-1 : Seg45.F) * seg45RIlAtom34 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom33 seg45RIlAtom34
  ring

theorem seg45RStep187Pe (rho : Nat -> Seg45.F) (r1957 : Seg45.relationRow1957 rho) :
    seg45RPe187 rho = seg45RPe188 rho * rho 39907 := by
  unfold Seg45.relationRow1957 at r1957
  unfold seg45RPe187 seg45RPe188
  linear_combination -r1957

theorem seg45RStep187 (rho : Nat -> Seg45.F) (r1955 : Seg45.relationRow1955 rho) (r1956 : Seg45.relationRow1956 rho) (r1957 : Seg45.relationRow1957 rho) :
    seg45RPe187 rho = seg45RPe188 rho * rho 39907 ∧
    seg45RIl187 rho = seg45RIl188 rho + seg45RPe188 rho * (1 - rho 39907) -
      seg45RIl188 rho * (seg45RPe188 rho * (1 - rho 39907)) := by
  constructor
  · exact seg45RStep187Pe rho r1957
  · rw [seg45RStep187Acc rho, seg45RStep187L rho r1955, seg45RStep187IlMul rho r1956, seg45RStep187L rho r1955]

theorem seg45_r_chunk187 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 188 (seg45RPeState rho 188) (seg45RIlState rho 188) := by
  have htail := seg45_r_chunk186 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1955, r1956, r1957, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 187 ≤ n → n < 188 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 187 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep187 rho r1955 r1956 r1957
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 187 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
