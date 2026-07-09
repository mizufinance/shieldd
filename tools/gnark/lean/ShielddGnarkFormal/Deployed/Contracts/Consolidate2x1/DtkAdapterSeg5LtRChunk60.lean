import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk59

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep60L (rho : Nat -> Seg5.F) (r2204 : Seg5.relationRow2204 rho) :
    rho 1902 = seg5RPe61 rho * (1 - rho 1247) := by
  unfold Seg5.relationRow2204 at r2204
  unfold seg5RPe61
  linear_combination -r2204

theorem seg5RStep60IlMul (rho : Nat -> Seg5.F) (r2205 : Seg5.relationRow2205 rho) :
    rho 1903 = seg5RIl61 rho * (rho 1902) := by
  unfold Seg5.relationRow2205 at r2205
  rw [seg5RStep60IlLc rho] at r2205
  linear_combination -r2205

theorem seg5RStep60Acc (rho : Nat -> Seg5.F) :
    seg5RIl60 rho = seg5RIl61 rho + (rho 1902) - (rho 1903) := by
  have hstate : seg5RIl60 rho = seg5RIl61 rho + seg5RIlAtom98 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom98
  ring

theorem seg5RStep60Pe (rho : Nat -> Seg5.F) (r2206 : Seg5.relationRow2206 rho) :
    seg5RPe60 rho = seg5RPe61 rho * rho 1247 := by
  unfold Seg5.relationRow2206 at r2206
  unfold seg5RPe60 seg5RPe61
  linear_combination -r2206

theorem seg5RStep60 (rho : Nat -> Seg5.F) (r2204 : Seg5.relationRow2204 rho) (r2205 : Seg5.relationRow2205 rho) (r2206 : Seg5.relationRow2206 rho) :
    seg5RPe60 rho = seg5RPe61 rho * rho 1247 ∧
    seg5RIl60 rho = seg5RIl61 rho + seg5RPe61 rho * (1 - rho 1247) -
      seg5RIl61 rho * (seg5RPe61 rho * (1 - rho 1247)) := by
  constructor
  · exact seg5RStep60Pe rho r2206
  · rw [seg5RStep60Acc rho, seg5RStep60L rho r2204, seg5RStep60IlMul rho r2205, seg5RStep60L rho r2204]

theorem seg5_r_chunk60 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 61 (seg5RPeState rho 61) (seg5RIlState rho 61) := by
  have htail := seg5_r_chunk59 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2204, r2205, r2206, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 60 ≤ n → n < 61 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 60 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep60 rho r2204 r2205 r2206
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 60 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
