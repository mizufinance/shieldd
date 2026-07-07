import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk66

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep67L (rho : Nat -> Seg34.F) (r2187 : Seg34.relationRow2187 rho) :
    rho 33462 = seg34RPe68 rho * (1 - rho 32831) := by
  unfold Seg34.relationRow2187 at r2187
  unfold seg34RPe68
  linear_combination -r2187

theorem seg34RStep67IlMul (rho : Nat -> Seg34.F) (r2188 : Seg34.relationRow2188 rho) :
    rho 33463 = seg34RIl68 rho * (rho 33462) := by
  unfold Seg34.relationRow2188 at r2188
  rw [seg34RStep67IlLc rho] at r2188
  linear_combination -r2188

theorem seg34RStep67Acc (rho : Nat -> Seg34.F) :
    seg34RIl67 rho = seg34RIl68 rho + (rho 33462) - (rho 33463) := by
  have hstate : seg34RIl67 rho = seg34RIl68 rho + seg34RIlAtom93 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom93
  ring

theorem seg34RStep67Pe (rho : Nat -> Seg34.F) (r2189 : Seg34.relationRow2189 rho) :
    seg34RPe67 rho = seg34RPe68 rho * rho 32831 := by
  unfold Seg34.relationRow2189 at r2189
  unfold seg34RPe67 seg34RPe68
  linear_combination -r2189

theorem seg34RStep67 (rho : Nat -> Seg34.F) (r2187 : Seg34.relationRow2187 rho) (r2188 : Seg34.relationRow2188 rho) (r2189 : Seg34.relationRow2189 rho) :
    seg34RPe67 rho = seg34RPe68 rho * rho 32831 ∧
    seg34RIl67 rho = seg34RIl68 rho + seg34RPe68 rho * (1 - rho 32831) -
      seg34RIl68 rho * (seg34RPe68 rho * (1 - rho 32831)) := by
  constructor
  · exact seg34RStep67Pe rho r2189
  · rw [seg34RStep67Acc rho, seg34RStep67L rho r2187, seg34RStep67IlMul rho r2188, seg34RStep67L rho r2187]

theorem seg34_r_chunk67 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 68 (seg34RPeState rho 68) (seg34RIlState rho 68) := by
  have htail := seg34_r_chunk66 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2187, r2188, r2189, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 67 ≤ n → n < 68 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 67 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep67 rho r2187 r2188 r2189
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 67 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
