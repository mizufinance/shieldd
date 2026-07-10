import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk115

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep116L (rho : Nat -> Seg5.F) (r2084 : Seg5.relationRow2084 rho) :
    rho 1782 = seg5RPe117 rho * (1 - rho 1303) := by
  unfold Seg5.relationRow2084 at r2084
  unfold seg5RPe117
  linear_combination -r2084

theorem seg5RStep116IlMul (rho : Nat -> Seg5.F) (r2085 : Seg5.relationRow2085 rho) :
    rho 1783 = seg5RIl117 rho * (rho 1782) := by
  unfold Seg5.relationRow2085 at r2085
  rw [seg5RStep116IlLc rho] at r2085
  linear_combination -r2085

theorem seg5RStep116Acc (rho : Nat -> Seg5.F) :
    seg5RIl116 rho = seg5RIl117 rho + (rho 1782) - (rho 1783) := by
  have hstate : seg5RIl116 rho = seg5RIl117 rho + seg5RIlAtom64 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom64
  ring

theorem seg5RStep116Pe (rho : Nat -> Seg5.F) (r2086 : Seg5.relationRow2086 rho) :
    seg5RPe116 rho = seg5RPe117 rho * rho 1303 := by
  unfold Seg5.relationRow2086 at r2086
  unfold seg5RPe116 seg5RPe117
  linear_combination -r2086

theorem seg5RStep116 (rho : Nat -> Seg5.F) (r2084 : Seg5.relationRow2084 rho) (r2085 : Seg5.relationRow2085 rho) (r2086 : Seg5.relationRow2086 rho) :
    seg5RPe116 rho = seg5RPe117 rho * rho 1303 ∧
    seg5RIl116 rho = seg5RIl117 rho + seg5RPe117 rho * (1 - rho 1303) -
      seg5RIl117 rho * (seg5RPe117 rho * (1 - rho 1303)) := by
  constructor
  · exact seg5RStep116Pe rho r2086
  · rw [seg5RStep116Acc rho, seg5RStep116L rho r2084, seg5RStep116IlMul rho r2085, seg5RStep116L rho r2084]

theorem seg5_r_chunk116 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 117 (seg5RPeState rho 117) (seg5RIlState rho 117) := by
  have htail := seg5_r_chunk115 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, r2084, r2085, r2086, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 116 ≤ n → n < 117 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 116 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep116 rho r2084 r2085 r2086
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 116 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
