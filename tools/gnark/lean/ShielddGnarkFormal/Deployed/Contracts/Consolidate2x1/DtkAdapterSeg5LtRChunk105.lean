import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk104

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep105L (rho : Nat -> Seg5.F) (r2105 : Seg5.relationRow2105 rho) :
    rho 1803 = seg5RPe106 rho * (1 - rho 1292) := by
  unfold Seg5.relationRow2105 at r2105
  unfold seg5RPe106
  linear_combination -r2105

theorem seg5RStep105IlMul (rho : Nat -> Seg5.F) (r2106 : Seg5.relationRow2106 rho) :
    rho 1804 = seg5RIl106 rho * (rho 1803) := by
  unfold Seg5.relationRow2106 at r2106
  rw [seg5RStep105IlLc rho] at r2106
  linear_combination -r2106

theorem seg5RStep105Acc (rho : Nat -> Seg5.F) :
    seg5RIl105 rho = seg5RIl106 rho + (rho 1803) - (rho 1804) := by
  have hstate : seg5RIl105 rho = seg5RIl106 rho + seg5RIlAtom70 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom70
  ring

theorem seg5RStep105Pe (rho : Nat -> Seg5.F) (r2107 : Seg5.relationRow2107 rho) :
    seg5RPe105 rho = seg5RPe106 rho * rho 1292 := by
  unfold Seg5.relationRow2107 at r2107
  unfold seg5RPe105 seg5RPe106
  linear_combination -r2107

theorem seg5RStep105 (rho : Nat -> Seg5.F) (r2105 : Seg5.relationRow2105 rho) (r2106 : Seg5.relationRow2106 rho) (r2107 : Seg5.relationRow2107 rho) :
    seg5RPe105 rho = seg5RPe106 rho * rho 1292 ∧
    seg5RIl105 rho = seg5RIl106 rho + seg5RPe106 rho * (1 - rho 1292) -
      seg5RIl106 rho * (seg5RPe106 rho * (1 - rho 1292)) := by
  constructor
  · exact seg5RStep105Pe rho r2107
  · rw [seg5RStep105Acc rho, seg5RStep105L rho r2105, seg5RStep105IlMul rho r2106, seg5RStep105L rho r2105]

theorem seg5_r_chunk105 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 106 (seg5RPeState rho 106) (seg5RIlState rho 106) := by
  have htail := seg5_r_chunk104 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2105, r2106, r2107, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 105 ≤ n → n < 106 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 105 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep105 rho r2105 r2106 r2107
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 105 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
