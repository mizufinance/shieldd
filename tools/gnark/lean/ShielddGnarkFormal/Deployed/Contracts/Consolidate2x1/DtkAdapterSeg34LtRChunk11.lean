import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep11L (rho : Nat -> Seg34.F) (r2313 : Seg34.relationRow2313 rho) :
    rho 33588 = seg34RPe12 rho * (1 - rho 32775) := by
  unfold Seg34.relationRow2313 at r2313
  unfold seg34RPe12
  linear_combination -r2313

theorem seg34RStep11IlMul (rho : Nat -> Seg34.F) (r2314 : Seg34.relationRow2314 rho) :
    rho 33589 = seg34RIl12 rho * (rho 33588) := by
  unfold Seg34.relationRow2314 at r2314
  rw [seg34RStep11IlLc rho] at r2314
  linear_combination -r2314

theorem seg34RStep11Acc (rho : Nat -> Seg34.F) :
    seg34RIl11 rho = seg34RIl12 rho + (rho 33588) - (rho 33589) := by
  have hstate : seg34RIl11 rho = seg34RIl12 rho + seg34RIlAtom130 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom130
  ring

theorem seg34RStep11Pe (rho : Nat -> Seg34.F) (r2315 : Seg34.relationRow2315 rho) :
    seg34RPe11 rho = seg34RPe12 rho * rho 32775 := by
  unfold Seg34.relationRow2315 at r2315
  unfold seg34RPe11 seg34RPe12
  linear_combination -r2315

theorem seg34RStep11 (rho : Nat -> Seg34.F) (r2313 : Seg34.relationRow2313 rho) (r2314 : Seg34.relationRow2314 rho) (r2315 : Seg34.relationRow2315 rho) :
    seg34RPe11 rho = seg34RPe12 rho * rho 32775 ∧
    seg34RIl11 rho = seg34RIl12 rho + seg34RPe12 rho * (1 - rho 32775) -
      seg34RIl12 rho * (seg34RPe12 rho * (1 - rho 32775)) := by
  constructor
  · exact seg34RStep11Pe rho r2315
  · rw [seg34RStep11Acc rho, seg34RStep11L rho r2313, seg34RStep11IlMul rho r2314, seg34RStep11L rho r2313]

theorem seg34_r_chunk11 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 12 (seg34RPeState rho 12) (seg34RIlState rho 12) := by
  have htail := seg34_r_chunk10 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2313, r2314, r2315, _, _, _, _⟩
  have hsteps : ∀ n, 11 ≤ n → n < 12 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 11 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep11 rho r2313 r2314 r2315
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 11 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
