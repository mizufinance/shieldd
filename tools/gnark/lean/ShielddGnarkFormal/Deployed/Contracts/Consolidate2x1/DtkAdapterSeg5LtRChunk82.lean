import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk81

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep82L (rho : Nat -> Seg5.F) (r2156 : Seg5.relationRow2156 rho) :
    rho 1854 = seg5RPe83 rho * (1 - rho 1269) := by
  unfold Seg5.relationRow2156 at r2156
  unfold seg5RPe83
  linear_combination -r2156

theorem seg5RStep82IlMul (rho : Nat -> Seg5.F) (r2157 : Seg5.relationRow2157 rho) :
    rho 1855 = seg5RIl83 rho * (rho 1854) := by
  unfold Seg5.relationRow2157 at r2157
  rw [seg5RStep82IlLc rho] at r2157
  linear_combination -r2157

theorem seg5RStep82Acc (rho : Nat -> Seg5.F) :
    seg5RIl82 rho = seg5RIl83 rho + (rho 1854) - (rho 1855) := by
  have hstate : seg5RIl82 rho = seg5RIl83 rho + seg5RIlAtom84 rho + (-1 : Seg5.F) * seg5RIlAtom85 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom84 seg5RIlAtom85
  ring

theorem seg5RStep82Pe (rho : Nat -> Seg5.F) (r2158 : Seg5.relationRow2158 rho) :
    seg5RPe82 rho = seg5RPe83 rho * rho 1269 := by
  unfold Seg5.relationRow2158 at r2158
  unfold seg5RPe82 seg5RPe83
  linear_combination -r2158

theorem seg5RStep82 (rho : Nat -> Seg5.F) (r2156 : Seg5.relationRow2156 rho) (r2157 : Seg5.relationRow2157 rho) (r2158 : Seg5.relationRow2158 rho) :
    seg5RPe82 rho = seg5RPe83 rho * rho 1269 ∧
    seg5RIl82 rho = seg5RIl83 rho + seg5RPe83 rho * (1 - rho 1269) -
      seg5RIl83 rho * (seg5RPe83 rho * (1 - rho 1269)) := by
  constructor
  · exact seg5RStep82Pe rho r2158
  · rw [seg5RStep82Acc rho, seg5RStep82L rho r2156, seg5RStep82IlMul rho r2157, seg5RStep82L rho r2156]

theorem seg5_r_chunk82 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 83 (seg5RPeState rho 83) (seg5RIlState rho 83) := by
  have htail := seg5_r_chunk81 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2156, r2157, r2158, _⟩
  have hsteps : ∀ n, 82 ≤ n → n < 83 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 82 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep82 rho r2156 r2157 r2158
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 82 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
