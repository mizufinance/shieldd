import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk83

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep84L (rho : Nat -> Seg5.F) (r2150 : Seg5.relationRow2150 rho) :
    rho 1848 = seg5RPe85 rho * (1 - rho 1271) := by
  unfold Seg5.relationRow2150 at r2150
  unfold seg5RPe85
  linear_combination -r2150

theorem seg5RStep84IlMul (rho : Nat -> Seg5.F) (r2151 : Seg5.relationRow2151 rho) :
    rho 1849 = seg5RIl85 rho * (rho 1848) := by
  unfold Seg5.relationRow2151 at r2151
  rw [seg5RStep84IlLc rho] at r2151
  linear_combination -r2151

theorem seg5RStep84Acc (rho : Nat -> Seg5.F) :
    seg5RIl84 rho = seg5RIl85 rho + (rho 1848) - (rho 1849) := by
  have hstate : seg5RIl84 rho = seg5RIl85 rho + seg5RIlAtom82 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom82
  ring

theorem seg5RStep84Pe (rho : Nat -> Seg5.F) (r2152 : Seg5.relationRow2152 rho) :
    seg5RPe84 rho = seg5RPe85 rho * rho 1271 := by
  unfold Seg5.relationRow2152 at r2152
  unfold seg5RPe84 seg5RPe85
  linear_combination -r2152

theorem seg5RStep84 (rho : Nat -> Seg5.F) (r2150 : Seg5.relationRow2150 rho) (r2151 : Seg5.relationRow2151 rho) (r2152 : Seg5.relationRow2152 rho) :
    seg5RPe84 rho = seg5RPe85 rho * rho 1271 ∧
    seg5RIl84 rho = seg5RIl85 rho + seg5RPe85 rho * (1 - rho 1271) -
      seg5RIl85 rho * (seg5RPe85 rho * (1 - rho 1271)) := by
  constructor
  · exact seg5RStep84Pe rho r2152
  · rw [seg5RStep84Acc rho, seg5RStep84L rho r2150, seg5RStep84IlMul rho r2151, seg5RStep84L rho r2150]

theorem seg5_r_chunk84 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 85 (seg5RPeState rho 85) (seg5RIlState rho 85) := by
  have htail := seg5_r_chunk83 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2150, r2151, r2152, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 84 ≤ n → n < 85 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 84 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep84 rho r2150 r2151 r2152
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 84 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
