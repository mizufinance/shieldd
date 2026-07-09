import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk93

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep94L (rho : Nat -> Seg5.F) (r2134 : Seg5.relationRow2134 rho) :
    rho 1832 = seg5RPe95 rho * (1 - rho 1281) := by
  unfold Seg5.relationRow2134 at r2134
  unfold seg5RPe95
  linear_combination -r2134

theorem seg5RStep94IlMul (rho : Nat -> Seg5.F) (r2135 : Seg5.relationRow2135 rho) :
    rho 1833 = seg5RIl95 rho * (rho 1832) := by
  unfold Seg5.relationRow2135 at r2135
  rw [seg5RStep94IlLc rho] at r2135
  linear_combination -r2135

theorem seg5RStep94Acc (rho : Nat -> Seg5.F) :
    seg5RIl94 rho = seg5RIl95 rho + (rho 1832) - (rho 1833) := by
  have hstate : seg5RIl94 rho = seg5RIl95 rho + seg5RIlAtom79 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom79
  ring

theorem seg5RStep94Pe (rho : Nat -> Seg5.F) (r2136 : Seg5.relationRow2136 rho) :
    seg5RPe94 rho = seg5RPe95 rho * rho 1281 := by
  unfold Seg5.relationRow2136 at r2136
  unfold seg5RPe94 seg5RPe95
  linear_combination -r2136

theorem seg5RStep94 (rho : Nat -> Seg5.F) (r2134 : Seg5.relationRow2134 rho) (r2135 : Seg5.relationRow2135 rho) (r2136 : Seg5.relationRow2136 rho) :
    seg5RPe94 rho = seg5RPe95 rho * rho 1281 ∧
    seg5RIl94 rho = seg5RIl95 rho + seg5RPe95 rho * (1 - rho 1281) -
      seg5RIl95 rho * (seg5RPe95 rho * (1 - rho 1281)) := by
  constructor
  · exact seg5RStep94Pe rho r2136
  · rw [seg5RStep94Acc rho, seg5RStep94L rho r2134, seg5RStep94IlMul rho r2135, seg5RStep94L rho r2134]

theorem seg5_r_chunk94 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 95 (seg5RPeState rho 95) (seg5RIlState rho 95) := by
  have htail := seg5_r_chunk93 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2134, r2135, r2136, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 94 ≤ n → n < 95 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 94 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep94 rho r2134 r2135 r2136
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 94 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
