import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep8L (rho : Nat -> Seg5.F) (r2318 : Seg5.relationRow2318 rho) :
    rho 2016 = seg5RPe9 rho * (1 - rho 1195) := by
  unfold Seg5.relationRow2318 at r2318
  unfold seg5RPe9
  linear_combination -r2318

theorem seg5RStep8IlMul (rho : Nat -> Seg5.F) (r2319 : Seg5.relationRow2319 rho) :
    rho 2017 = seg5RIl9 rho * (rho 2016) := by
  unfold Seg5.relationRow2319 at r2319
  rw [seg5RStep8IlLc rho] at r2319
  linear_combination -r2319

theorem seg5RStep8Acc (rho : Nat -> Seg5.F) :
    seg5RIl8 rho = seg5RIl9 rho + (rho 2016) - (rho 2017) := by
  have hstate : seg5RIl8 rho = seg5RIl9 rho + seg5RIlAtom131 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom131
  ring

theorem seg5RStep8Pe (rho : Nat -> Seg5.F) (r2320 : Seg5.relationRow2320 rho) :
    seg5RPe8 rho = seg5RPe9 rho * rho 1195 := by
  unfold Seg5.relationRow2320 at r2320
  unfold seg5RPe8 seg5RPe9
  linear_combination -r2320

theorem seg5RStep8 (rho : Nat -> Seg5.F) (r2318 : Seg5.relationRow2318 rho) (r2319 : Seg5.relationRow2319 rho) (r2320 : Seg5.relationRow2320 rho) :
    seg5RPe8 rho = seg5RPe9 rho * rho 1195 ∧
    seg5RIl8 rho = seg5RIl9 rho + seg5RPe9 rho * (1 - rho 1195) -
      seg5RIl9 rho * (seg5RPe9 rho * (1 - rho 1195)) := by
  constructor
  · exact seg5RStep8Pe rho r2320
  · rw [seg5RStep8Acc rho, seg5RStep8L rho r2318, seg5RStep8IlMul rho r2319, seg5RStep8L rho r2318]

theorem seg5_r_chunk8 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 9 (seg5RPeState rho 9) (seg5RIlState rho 9) := by
  have htail := seg5_r_chunk7 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2318, r2319⟩
  unfold Seg5.relationPart29 at p29
  rcases p29 with ⟨r2320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 8 ≤ n → n < 9 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 8 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep8 rho r2318 r2319 r2320
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 8 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
