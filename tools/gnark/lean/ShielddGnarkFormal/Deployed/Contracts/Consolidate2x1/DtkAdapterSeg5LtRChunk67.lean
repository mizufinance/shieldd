import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk66

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep67L (rho : Nat -> Seg5.F) (r2187 : Seg5.relationRow2187 rho) :
    rho 1885 = seg5RPe68 rho * (1 - rho 1254) := by
  unfold Seg5.relationRow2187 at r2187
  unfold seg5RPe68
  linear_combination -r2187

theorem seg5RStep67IlMul (rho : Nat -> Seg5.F) (r2188 : Seg5.relationRow2188 rho) :
    rho 1886 = seg5RIl68 rho * (rho 1885) := by
  unfold Seg5.relationRow2188 at r2188
  rw [seg5RStep67IlLc rho] at r2188
  linear_combination -r2188

theorem seg5RStep67Acc (rho : Nat -> Seg5.F) :
    seg5RIl67 rho = seg5RIl68 rho + (rho 1885) - (rho 1886) := by
  have hstate : seg5RIl67 rho = seg5RIl68 rho + seg5RIlAtom93 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom93
  ring

theorem seg5RStep67Pe (rho : Nat -> Seg5.F) (r2189 : Seg5.relationRow2189 rho) :
    seg5RPe67 rho = seg5RPe68 rho * rho 1254 := by
  unfold Seg5.relationRow2189 at r2189
  unfold seg5RPe67 seg5RPe68
  linear_combination -r2189

theorem seg5RStep67 (rho : Nat -> Seg5.F) (r2187 : Seg5.relationRow2187 rho) (r2188 : Seg5.relationRow2188 rho) (r2189 : Seg5.relationRow2189 rho) :
    seg5RPe67 rho = seg5RPe68 rho * rho 1254 ∧
    seg5RIl67 rho = seg5RIl68 rho + seg5RPe68 rho * (1 - rho 1254) -
      seg5RIl68 rho * (seg5RPe68 rho * (1 - rho 1254)) := by
  constructor
  · exact seg5RStep67Pe rho r2189
  · rw [seg5RStep67Acc rho, seg5RStep67L rho r2187, seg5RStep67IlMul rho r2188, seg5RStep67L rho r2187]

theorem seg5_r_chunk67 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 68 (seg5RPeState rho 68) (seg5RIlState rho 68) := by
  have htail := seg5_r_chunk66 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2187, r2188, r2189, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 67 ≤ n → n < 68 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 67 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep67 rho r2187 r2188 r2189
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 67 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
