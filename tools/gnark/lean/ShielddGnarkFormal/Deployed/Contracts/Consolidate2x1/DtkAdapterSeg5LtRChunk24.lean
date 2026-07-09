import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep24L (rho : Nat -> Seg5.F) (r2280 : Seg5.relationRow2280 rho) :
    rho 1978 = seg5RPe25 rho * (1 - rho 1211) := by
  unfold Seg5.relationRow2280 at r2280
  unfold seg5RPe25
  linear_combination -r2280

theorem seg5RStep24IlMul (rho : Nat -> Seg5.F) (r2281 : Seg5.relationRow2281 rho) :
    rho 1979 = seg5RIl25 rho * (rho 1978) := by
  unfold Seg5.relationRow2281 at r2281
  rw [seg5RStep24IlLc rho] at r2281
  linear_combination -r2281

theorem seg5RStep24Acc (rho : Nat -> Seg5.F) :
    seg5RIl24 rho = seg5RIl25 rho + (rho 1978) - (rho 1979) := by
  have hstate : seg5RIl24 rho = seg5RIl25 rho + seg5RIlAtom120 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom120
  ring

theorem seg5RStep24Pe (rho : Nat -> Seg5.F) (r2282 : Seg5.relationRow2282 rho) :
    seg5RPe24 rho = seg5RPe25 rho * rho 1211 := by
  unfold Seg5.relationRow2282 at r2282
  unfold seg5RPe24 seg5RPe25
  linear_combination -r2282

theorem seg5RStep24 (rho : Nat -> Seg5.F) (r2280 : Seg5.relationRow2280 rho) (r2281 : Seg5.relationRow2281 rho) (r2282 : Seg5.relationRow2282 rho) :
    seg5RPe24 rho = seg5RPe25 rho * rho 1211 ∧
    seg5RIl24 rho = seg5RIl25 rho + seg5RPe25 rho * (1 - rho 1211) -
      seg5RIl25 rho * (seg5RPe25 rho * (1 - rho 1211)) := by
  constructor
  · exact seg5RStep24Pe rho r2282
  · rw [seg5RStep24Acc rho, seg5RStep24L rho r2280, seg5RStep24IlMul rho r2281, seg5RStep24L rho r2280]

theorem seg5_r_chunk24 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 25 (seg5RPeState rho 25) (seg5RIlState rho 25) := by
  have htail := seg5_r_chunk23 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2280, r2281, r2282, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 24 ≤ n → n < 25 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 24 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep24 rho r2280 r2281 r2282
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 24 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
