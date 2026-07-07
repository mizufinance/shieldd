import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep21L (rho : Nat -> Seg34.F) (r2285 : Seg34.relationRow2285 rho) :
    rho 33560 = seg34RPe22 rho * (1 - rho 32785) := by
  unfold Seg34.relationRow2285 at r2285
  unfold seg34RPe22
  linear_combination -r2285

theorem seg34RStep21IlMul (rho : Nat -> Seg34.F) (r2286 : Seg34.relationRow2286 rho) :
    rho 33561 = seg34RIl22 rho * (rho 33560) := by
  unfold Seg34.relationRow2286 at r2286
  rw [seg34RStep21IlLc rho] at r2286
  linear_combination -r2286

theorem seg34RStep21Acc (rho : Nat -> Seg34.F) :
    seg34RIl21 rho = seg34RIl22 rho + (rho 33560) - (rho 33561) := by
  have hstate : seg34RIl21 rho = seg34RIl22 rho + seg34RIlAtom121 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom121
  ring

theorem seg34RStep21Pe (rho : Nat -> Seg34.F) (r2287 : Seg34.relationRow2287 rho) :
    seg34RPe21 rho = seg34RPe22 rho * rho 32785 := by
  unfold Seg34.relationRow2287 at r2287
  unfold seg34RPe21 seg34RPe22
  linear_combination -r2287

theorem seg34RStep21 (rho : Nat -> Seg34.F) (r2285 : Seg34.relationRow2285 rho) (r2286 : Seg34.relationRow2286 rho) (r2287 : Seg34.relationRow2287 rho) :
    seg34RPe21 rho = seg34RPe22 rho * rho 32785 ∧
    seg34RIl21 rho = seg34RIl22 rho + seg34RPe22 rho * (1 - rho 32785) -
      seg34RIl22 rho * (seg34RPe22 rho * (1 - rho 32785)) := by
  constructor
  · exact seg34RStep21Pe rho r2287
  · rw [seg34RStep21Acc rho, seg34RStep21L rho r2285, seg34RStep21IlMul rho r2286, seg34RStep21L rho r2285]

theorem seg34_r_chunk21 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 22 (seg34RPeState rho 22) (seg34RIlState rho 22) := by
  have htail := seg34_r_chunk20 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2285, r2286, r2287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 21 ≤ n → n < 22 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 21 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep21 rho r2285 r2286 r2287
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 21 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
