import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep11L (rho : Nat -> Seg5.F) (r2313 : Seg5.relationRow2313 rho) :
    rho 2011 = seg5RPe12 rho * (1 - rho 1198) := by
  unfold Seg5.relationRow2313 at r2313
  unfold seg5RPe12
  linear_combination -r2313

theorem seg5RStep11IlMul (rho : Nat -> Seg5.F) (r2314 : Seg5.relationRow2314 rho) :
    rho 2012 = seg5RIl12 rho * (rho 2011) := by
  unfold Seg5.relationRow2314 at r2314
  rw [seg5RStep11IlLc rho] at r2314
  linear_combination -r2314

theorem seg5RStep11Acc (rho : Nat -> Seg5.F) :
    seg5RIl11 rho = seg5RIl12 rho + (rho 2011) - (rho 2012) := by
  have hstate : seg5RIl11 rho = seg5RIl12 rho + seg5RIlAtom130 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom130
  ring

theorem seg5RStep11Pe (rho : Nat -> Seg5.F) (r2315 : Seg5.relationRow2315 rho) :
    seg5RPe11 rho = seg5RPe12 rho * rho 1198 := by
  unfold Seg5.relationRow2315 at r2315
  unfold seg5RPe11 seg5RPe12
  linear_combination -r2315

theorem seg5RStep11 (rho : Nat -> Seg5.F) (r2313 : Seg5.relationRow2313 rho) (r2314 : Seg5.relationRow2314 rho) (r2315 : Seg5.relationRow2315 rho) :
    seg5RPe11 rho = seg5RPe12 rho * rho 1198 ∧
    seg5RIl11 rho = seg5RIl12 rho + seg5RPe12 rho * (1 - rho 1198) -
      seg5RIl12 rho * (seg5RPe12 rho * (1 - rho 1198)) := by
  constructor
  · exact seg5RStep11Pe rho r2315
  · rw [seg5RStep11Acc rho, seg5RStep11L rho r2313, seg5RStep11IlMul rho r2314, seg5RStep11L rho r2313]

theorem seg5_r_chunk11 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 12 (seg5RPeState rho 12) (seg5RIlState rho 12) := by
  have htail := seg5_r_chunk10 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2313, r2314, r2315, _, _, _, _⟩
  have hsteps : ∀ n, 11 ≤ n → n < 12 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 11 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep11 rho r2313 r2314 r2315
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 11 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
