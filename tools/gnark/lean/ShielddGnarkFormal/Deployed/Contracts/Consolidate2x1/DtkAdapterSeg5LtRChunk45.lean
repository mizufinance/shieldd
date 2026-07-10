import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk44

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep45L (rho : Nat -> Seg5.F) (r2237 : Seg5.relationRow2237 rho) :
    rho 1935 = seg5RPe46 rho * (1 - rho 1232) := by
  unfold Seg5.relationRow2237 at r2237
  unfold seg5RPe46
  linear_combination -r2237

theorem seg5RStep45IlMul (rho : Nat -> Seg5.F) (r2238 : Seg5.relationRow2238 rho) :
    rho 1936 = seg5RIl46 rho * (rho 1935) := by
  unfold Seg5.relationRow2238 at r2238
  rw [seg5RStep45IlLc rho] at r2238
  linear_combination -r2238

theorem seg5RStep45Acc (rho : Nat -> Seg5.F) :
    seg5RIl45 rho = seg5RIl46 rho + (rho 1935) - (rho 1936) := by
  have hstate : seg5RIl45 rho = seg5RIl46 rho + seg5RIlAtom108 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom108
  ring

theorem seg5RStep45Pe (rho : Nat -> Seg5.F) (r2239 : Seg5.relationRow2239 rho) :
    seg5RPe45 rho = seg5RPe46 rho * rho 1232 := by
  unfold Seg5.relationRow2239 at r2239
  unfold seg5RPe45 seg5RPe46
  linear_combination -r2239

theorem seg5RStep45 (rho : Nat -> Seg5.F) (r2237 : Seg5.relationRow2237 rho) (r2238 : Seg5.relationRow2238 rho) (r2239 : Seg5.relationRow2239 rho) :
    seg5RPe45 rho = seg5RPe46 rho * rho 1232 ∧
    seg5RIl45 rho = seg5RIl46 rho + seg5RPe46 rho * (1 - rho 1232) -
      seg5RIl46 rho * (seg5RPe46 rho * (1 - rho 1232)) := by
  constructor
  · exact seg5RStep45Pe rho r2239
  · rw [seg5RStep45Acc rho, seg5RStep45L rho r2237, seg5RStep45IlMul rho r2238, seg5RStep45L rho r2237]

theorem seg5_r_chunk45 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 46 (seg5RPeState rho 46) (seg5RIlState rho 46) := by
  have htail := seg5_r_chunk44 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2237, r2238, r2239⟩
  have hsteps : ∀ n, 45 ≤ n → n < 46 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 45 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep45 rho r2237 r2238 r2239
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 45 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
