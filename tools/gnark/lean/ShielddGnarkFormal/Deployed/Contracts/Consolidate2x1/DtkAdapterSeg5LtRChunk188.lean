import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk187

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep188L (rho : Nat -> Seg5.F) (r1952 : Seg5.relationRow1952 rho) :
    rho 1650 = seg5RPe189 rho * (1 - rho 1375) := by
  unfold Seg5.relationRow1952 at r1952
  unfold seg5RPe189
  linear_combination -r1952

theorem seg5RStep188IlMul (rho : Nat -> Seg5.F) (r1953 : Seg5.relationRow1953 rho) :
    rho 1651 = seg5RIl189 rho * (rho 1650) := by
  unfold Seg5.relationRow1953 at r1953
  rw [seg5RStep188IlLc rho] at r1953
  linear_combination -r1953

theorem seg5RStep188Acc (rho : Nat -> Seg5.F) :
    seg5RIl188 rho = seg5RIl189 rho + (rho 1650) - (rho 1651) := by
  have hstate : seg5RIl188 rho = seg5RIl189 rho + seg5RIlAtom32 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom32
  ring

theorem seg5RStep188Pe (rho : Nat -> Seg5.F) (r1954 : Seg5.relationRow1954 rho) :
    seg5RPe188 rho = seg5RPe189 rho * rho 1375 := by
  unfold Seg5.relationRow1954 at r1954
  unfold seg5RPe188 seg5RPe189
  linear_combination -r1954

theorem seg5RStep188 (rho : Nat -> Seg5.F) (r1952 : Seg5.relationRow1952 rho) (r1953 : Seg5.relationRow1953 rho) (r1954 : Seg5.relationRow1954 rho) :
    seg5RPe188 rho = seg5RPe189 rho * rho 1375 ∧
    seg5RIl188 rho = seg5RIl189 rho + seg5RPe189 rho * (1 - rho 1375) -
      seg5RIl189 rho * (seg5RPe189 rho * (1 - rho 1375)) := by
  constructor
  · exact seg5RStep188Pe rho r1954
  · rw [seg5RStep188Acc rho, seg5RStep188L rho r1952, seg5RStep188IlMul rho r1953, seg5RStep188L rho r1952]

theorem seg5_r_chunk188 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 189 (seg5RPeState rho 189) (seg5RIlState rho 189) := by
  have htail := seg5_r_chunk187 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1952, r1953, r1954, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 188 ≤ n → n < 189 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 188 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep188 rho r1952 r1953 r1954
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 188 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
