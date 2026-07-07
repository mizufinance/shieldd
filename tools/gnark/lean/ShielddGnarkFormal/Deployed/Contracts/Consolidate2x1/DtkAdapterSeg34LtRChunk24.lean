import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep24L (rho : Nat -> Seg34.F) (r2280 : Seg34.relationRow2280 rho) :
    rho 33555 = seg34RPe25 rho * (1 - rho 32788) := by
  unfold Seg34.relationRow2280 at r2280
  unfold seg34RPe25
  linear_combination -r2280

theorem seg34RStep24IlMul (rho : Nat -> Seg34.F) (r2281 : Seg34.relationRow2281 rho) :
    rho 33556 = seg34RIl25 rho * (rho 33555) := by
  unfold Seg34.relationRow2281 at r2281
  rw [seg34RStep24IlLc rho] at r2281
  linear_combination -r2281

theorem seg34RStep24Acc (rho : Nat -> Seg34.F) :
    seg34RIl24 rho = seg34RIl25 rho + (rho 33555) - (rho 33556) := by
  have hstate : seg34RIl24 rho = seg34RIl25 rho + seg34RIlAtom120 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom120
  ring

theorem seg34RStep24Pe (rho : Nat -> Seg34.F) (r2282 : Seg34.relationRow2282 rho) :
    seg34RPe24 rho = seg34RPe25 rho * rho 32788 := by
  unfold Seg34.relationRow2282 at r2282
  unfold seg34RPe24 seg34RPe25
  linear_combination -r2282

theorem seg34RStep24 (rho : Nat -> Seg34.F) (r2280 : Seg34.relationRow2280 rho) (r2281 : Seg34.relationRow2281 rho) (r2282 : Seg34.relationRow2282 rho) :
    seg34RPe24 rho = seg34RPe25 rho * rho 32788 ∧
    seg34RIl24 rho = seg34RIl25 rho + seg34RPe25 rho * (1 - rho 32788) -
      seg34RIl25 rho * (seg34RPe25 rho * (1 - rho 32788)) := by
  constructor
  · exact seg34RStep24Pe rho r2282
  · rw [seg34RStep24Acc rho, seg34RStep24L rho r2280, seg34RStep24IlMul rho r2281, seg34RStep24L rho r2280]

theorem seg34_r_chunk24 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 25 (seg34RPeState rho 25) (seg34RIlState rho 25) := by
  have htail := seg34_r_chunk23 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2280, r2281, r2282, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 24 ≤ n → n < 25 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 24 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep24 rho r2280 r2281 r2282
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 24 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
