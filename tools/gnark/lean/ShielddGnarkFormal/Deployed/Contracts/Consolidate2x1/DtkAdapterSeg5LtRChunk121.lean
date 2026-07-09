import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk120

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep121L (rho : Nat -> Seg5.F) (r2075 : Seg5.relationRow2075 rho) :
    rho 1773 = seg5RPe122 rho * (1 - rho 1308) := by
  unfold Seg5.relationRow2075 at r2075
  unfold seg5RPe122
  linear_combination -r2075

theorem seg5RStep121IlMul (rho : Nat -> Seg5.F) (r2076 : Seg5.relationRow2076 rho) :
    rho 1774 = seg5RIl122 rho * (rho 1773) := by
  unfold Seg5.relationRow2076 at r2076
  rw [seg5RStep121IlLc rho] at r2076
  linear_combination -r2076

theorem seg5RStep121Acc (rho : Nat -> Seg5.F) :
    seg5RIl121 rho = seg5RIl122 rho + (rho 1773) - (rho 1774) := by
  have hstate : seg5RIl121 rho = seg5RIl122 rho + seg5RIlAtom62 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom62
  ring

theorem seg5RStep121Pe (rho : Nat -> Seg5.F) (r2077 : Seg5.relationRow2077 rho) :
    seg5RPe121 rho = seg5RPe122 rho * rho 1308 := by
  unfold Seg5.relationRow2077 at r2077
  unfold seg5RPe121 seg5RPe122
  linear_combination -r2077

theorem seg5RStep121 (rho : Nat -> Seg5.F) (r2075 : Seg5.relationRow2075 rho) (r2076 : Seg5.relationRow2076 rho) (r2077 : Seg5.relationRow2077 rho) :
    seg5RPe121 rho = seg5RPe122 rho * rho 1308 ∧
    seg5RIl121 rho = seg5RIl122 rho + seg5RPe122 rho * (1 - rho 1308) -
      seg5RIl122 rho * (seg5RPe122 rho * (1 - rho 1308)) := by
  constructor
  · exact seg5RStep121Pe rho r2077
  · rw [seg5RStep121Acc rho, seg5RStep121L rho r2075, seg5RStep121IlMul rho r2076, seg5RStep121L rho r2075]

theorem seg5_r_chunk121 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 122 (seg5RPeState rho 122) (seg5RIlState rho 122) := by
  have htail := seg5_r_chunk120 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2075, r2076, r2077, _, _⟩
  have hsteps : ∀ n, 121 ≤ n → n < 122 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 121 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep121 rho r2075 r2076 r2077
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 121 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
