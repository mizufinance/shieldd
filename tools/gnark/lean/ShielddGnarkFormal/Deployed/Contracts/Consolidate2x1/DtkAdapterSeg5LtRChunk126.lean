import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk125

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep126L (rho : Nat -> Seg5.F) (r2066 : Seg5.relationRow2066 rho) :
    rho 1764 = seg5RPe127 rho * (1 - rho 1313) := by
  unfold Seg5.relationRow2066 at r2066
  unfold seg5RPe127
  linear_combination -r2066

theorem seg5RStep126IlMul (rho : Nat -> Seg5.F) (r2067 : Seg5.relationRow2067 rho) :
    rho 1765 = seg5RIl127 rho * (rho 1764) := by
  unfold Seg5.relationRow2067 at r2067
  rw [seg5RStep126IlLc rho] at r2067
  linear_combination -r2067

theorem seg5RStep126Acc (rho : Nat -> Seg5.F) :
    seg5RIl126 rho = seg5RIl127 rho + (rho 1764) - (rho 1765) := by
  have hstate : seg5RIl126 rho = seg5RIl127 rho + seg5RIlAtom60 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom60
  ring

theorem seg5RStep126Pe (rho : Nat -> Seg5.F) (r2068 : Seg5.relationRow2068 rho) :
    seg5RPe126 rho = seg5RPe127 rho * rho 1313 := by
  unfold Seg5.relationRow2068 at r2068
  unfold seg5RPe126 seg5RPe127
  linear_combination -r2068

theorem seg5RStep126 (rho : Nat -> Seg5.F) (r2066 : Seg5.relationRow2066 rho) (r2067 : Seg5.relationRow2067 rho) (r2068 : Seg5.relationRow2068 rho) :
    seg5RPe126 rho = seg5RPe127 rho * rho 1313 ∧
    seg5RIl126 rho = seg5RIl127 rho + seg5RPe127 rho * (1 - rho 1313) -
      seg5RIl127 rho * (seg5RPe127 rho * (1 - rho 1313)) := by
  constructor
  · exact seg5RStep126Pe rho r2068
  · rw [seg5RStep126Acc rho, seg5RStep126L rho r2066, seg5RStep126IlMul rho r2067, seg5RStep126L rho r2066]

theorem seg5_r_chunk126 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 127 (seg5RPeState rho 127) (seg5RIlState rho 127) := by
  have htail := seg5_r_chunk125 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2066, r2067, r2068, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 126 ≤ n → n < 127 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 126 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep126 rho r2066 r2067 r2068
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 126 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
