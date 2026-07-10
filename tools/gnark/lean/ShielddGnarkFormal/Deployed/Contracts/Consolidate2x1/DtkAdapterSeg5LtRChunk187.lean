import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk186

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep187L (rho : Nat -> Seg5.F) (r1955 : Seg5.relationRow1955 rho) :
    rho 1653 = seg5RPe188 rho * (1 - rho 1374) := by
  unfold Seg5.relationRow1955 at r1955
  unfold seg5RPe188
  linear_combination -r1955

theorem seg5RStep187IlMul (rho : Nat -> Seg5.F) (r1956 : Seg5.relationRow1956 rho) :
    rho 1654 = seg5RIl188 rho * (rho 1653) := by
  unfold Seg5.relationRow1956 at r1956
  rw [seg5RStep187IlLc rho] at r1956
  linear_combination -r1956

theorem seg5RStep187Acc (rho : Nat -> Seg5.F) :
    seg5RIl187 rho = seg5RIl188 rho + (rho 1653) - (rho 1654) := by
  have hstate : seg5RIl187 rho = seg5RIl188 rho + seg5RIlAtom33 rho + (-1 : Seg5.F) * seg5RIlAtom34 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom33 seg5RIlAtom34
  ring

theorem seg5RStep187Pe (rho : Nat -> Seg5.F) (r1957 : Seg5.relationRow1957 rho) :
    seg5RPe187 rho = seg5RPe188 rho * rho 1374 := by
  unfold Seg5.relationRow1957 at r1957
  unfold seg5RPe187 seg5RPe188
  linear_combination -r1957

theorem seg5RStep187 (rho : Nat -> Seg5.F) (r1955 : Seg5.relationRow1955 rho) (r1956 : Seg5.relationRow1956 rho) (r1957 : Seg5.relationRow1957 rho) :
    seg5RPe187 rho = seg5RPe188 rho * rho 1374 ∧
    seg5RIl187 rho = seg5RIl188 rho + seg5RPe188 rho * (1 - rho 1374) -
      seg5RIl188 rho * (seg5RPe188 rho * (1 - rho 1374)) := by
  constructor
  · exact seg5RStep187Pe rho r1957
  · rw [seg5RStep187Acc rho, seg5RStep187L rho r1955, seg5RStep187IlMul rho r1956, seg5RStep187L rho r1955]

theorem seg5_r_chunk187 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 188 (seg5RPeState rho 188) (seg5RIlState rho 188) := by
  have htail := seg5_r_chunk186 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1955, r1956, r1957, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 187 ≤ n → n < 188 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 187 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep187 rho r1955 r1956 r1957
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 187 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
