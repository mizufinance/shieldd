import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk34

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep35L (rho : Nat -> Seg34.F) (r2259 : Seg34.relationRow2259 rho) :
    rho 33534 = seg34RPe36 rho * (1 - rho 32799) := by
  unfold Seg34.relationRow2259 at r2259
  unfold seg34RPe36
  linear_combination -r2259

theorem seg34RStep35IlMul (rho : Nat -> Seg34.F) (r2260 : Seg34.relationRow2260 rho) :
    rho 33535 = seg34RIl36 rho * (rho 33534) := by
  unfold Seg34.relationRow2260 at r2260
  rw [seg34RStep35IlLc rho] at r2260
  linear_combination -r2260

theorem seg34RStep35Acc (rho : Nat -> Seg34.F) :
    seg34RIl35 rho = seg34RIl36 rho + (rho 33534) - (rho 33535) := by
  have hstate : seg34RIl35 rho = seg34RIl36 rho + seg34RIlAtom114 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom114
  ring

theorem seg34RStep35Pe (rho : Nat -> Seg34.F) (r2261 : Seg34.relationRow2261 rho) :
    seg34RPe35 rho = seg34RPe36 rho * rho 32799 := by
  unfold Seg34.relationRow2261 at r2261
  unfold seg34RPe35 seg34RPe36
  linear_combination -r2261

theorem seg34RStep35 (rho : Nat -> Seg34.F) (r2259 : Seg34.relationRow2259 rho) (r2260 : Seg34.relationRow2260 rho) (r2261 : Seg34.relationRow2261 rho) :
    seg34RPe35 rho = seg34RPe36 rho * rho 32799 ∧
    seg34RIl35 rho = seg34RIl36 rho + seg34RPe36 rho * (1 - rho 32799) -
      seg34RIl36 rho * (seg34RPe36 rho * (1 - rho 32799)) := by
  constructor
  · exact seg34RStep35Pe rho r2261
  · rw [seg34RStep35Acc rho, seg34RStep35L rho r2259, seg34RStep35IlMul rho r2260, seg34RStep35L rho r2259]

theorem seg34_r_chunk35 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 36 (seg34RPeState rho 36) (seg34RIlState rho 36) := by
  have htail := seg34_r_chunk34 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2259, r2260, r2261, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 35 ≤ n → n < 36 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 35 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep35 rho r2259 r2260 r2261
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 35 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
