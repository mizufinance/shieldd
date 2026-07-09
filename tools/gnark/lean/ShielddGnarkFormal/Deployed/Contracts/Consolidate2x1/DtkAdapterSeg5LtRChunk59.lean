import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk58

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep59L (rho : Nat -> Seg5.F) (r2207 : Seg5.relationRow2207 rho) :
    rho 1905 = seg5RPe60 rho * (1 - rho 1246) := by
  unfold Seg5.relationRow2207 at r2207
  unfold seg5RPe60
  linear_combination -r2207

theorem seg5RStep59IlMul (rho : Nat -> Seg5.F) (r2208 : Seg5.relationRow2208 rho) :
    rho 1906 = seg5RIl60 rho * (rho 1905) := by
  unfold Seg5.relationRow2208 at r2208
  rw [seg5RStep59IlLc rho] at r2208
  linear_combination -r2208

theorem seg5RStep59Acc (rho : Nat -> Seg5.F) :
    seg5RIl59 rho = seg5RIl60 rho + (rho 1905) - (rho 1906) := by
  have hstate : seg5RIl59 rho = seg5RIl60 rho + seg5RIlAtom99 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom99
  ring

theorem seg5RStep59Pe (rho : Nat -> Seg5.F) (r2209 : Seg5.relationRow2209 rho) :
    seg5RPe59 rho = seg5RPe60 rho * rho 1246 := by
  unfold Seg5.relationRow2209 at r2209
  unfold seg5RPe59 seg5RPe60
  linear_combination -r2209

theorem seg5RStep59 (rho : Nat -> Seg5.F) (r2207 : Seg5.relationRow2207 rho) (r2208 : Seg5.relationRow2208 rho) (r2209 : Seg5.relationRow2209 rho) :
    seg5RPe59 rho = seg5RPe60 rho * rho 1246 ∧
    seg5RIl59 rho = seg5RIl60 rho + seg5RPe60 rho * (1 - rho 1246) -
      seg5RIl60 rho * (seg5RPe60 rho * (1 - rho 1246)) := by
  constructor
  · exact seg5RStep59Pe rho r2209
  · rw [seg5RStep59Acc rho, seg5RStep59L rho r2207, seg5RStep59IlMul rho r2208, seg5RStep59L rho r2207]

theorem seg5_r_chunk59 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 60 (seg5RPeState rho 60) (seg5RIlState rho 60) := by
  have htail := seg5_r_chunk58 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2207, r2208, r2209, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 59 ≤ n → n < 60 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 59 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep59 rho r2207 r2208 r2209
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 59 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
