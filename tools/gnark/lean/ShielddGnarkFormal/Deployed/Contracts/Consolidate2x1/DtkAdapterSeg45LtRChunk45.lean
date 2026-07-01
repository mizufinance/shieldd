import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk44

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep45L (rho : Nat -> Seg45.F) (r2237 : Seg45.relationRow2237 rho) :
    rho 40468 = seg45RPe46 rho * (1 - rho 39765) := by
  unfold Seg45.relationRow2237 at r2237
  unfold seg45RPe46
  linear_combination -r2237

theorem seg45RStep45IlMul (rho : Nat -> Seg45.F) (r2238 : Seg45.relationRow2238 rho) :
    rho 40469 = seg45RIl46 rho * (rho 40468) := by
  unfold Seg45.relationRow2238 at r2238
  rw [seg45RStep45IlLc rho] at r2238
  linear_combination -r2238

theorem seg45RStep45Acc (rho : Nat -> Seg45.F) :
    seg45RIl45 rho = seg45RIl46 rho + (rho 40468) - (rho 40469) := by
  have hstate : seg45RIl45 rho = seg45RIl46 rho + seg45RIlAtom108 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom108
  ring

theorem seg45RStep45Pe (rho : Nat -> Seg45.F) (r2239 : Seg45.relationRow2239 rho) :
    seg45RPe45 rho = seg45RPe46 rho * rho 39765 := by
  unfold Seg45.relationRow2239 at r2239
  unfold seg45RPe45 seg45RPe46
  linear_combination -r2239

theorem seg45RStep45 (rho : Nat -> Seg45.F) (r2237 : Seg45.relationRow2237 rho) (r2238 : Seg45.relationRow2238 rho) (r2239 : Seg45.relationRow2239 rho) :
    seg45RPe45 rho = seg45RPe46 rho * rho 39765 ∧
    seg45RIl45 rho = seg45RIl46 rho + seg45RPe46 rho * (1 - rho 39765) -
      seg45RIl46 rho * (seg45RPe46 rho * (1 - rho 39765)) := by
  constructor
  · exact seg45RStep45Pe rho r2239
  · rw [seg45RStep45Acc rho, seg45RStep45L rho r2237, seg45RStep45IlMul rho r2238, seg45RStep45L rho r2237]

theorem seg45_r_chunk45 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 46 (seg45RPeState rho 46) (seg45RIlState rho 46) := by
  have htail := seg45_r_chunk44 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2237, r2238, r2239⟩
  have hsteps : ∀ n, 45 ≤ n → n < 46 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 45 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep45 rho r2237 r2238 r2239
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 45 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
