import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk29

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep30L (rho : Nat -> Seg34.F) (r2270 : Seg34.relationRow2270 rho) :
    rho 33545 = seg34RPe31 rho * (1 - rho 32794) := by
  unfold Seg34.relationRow2270 at r2270
  unfold seg34RPe31
  linear_combination -r2270

theorem seg34RStep30IlMul (rho : Nat -> Seg34.F) (r2271 : Seg34.relationRow2271 rho) :
    rho 33546 = seg34RIl31 rho * (rho 33545) := by
  unfold Seg34.relationRow2271 at r2271
  rw [seg34RStep30IlLc rho] at r2271
  linear_combination -r2271

theorem seg34RStep30Acc (rho : Nat -> Seg34.F) :
    seg34RIl30 rho = seg34RIl31 rho + (rho 33545) - (rho 33546) := by
  have hstate : seg34RIl30 rho = seg34RIl31 rho + seg34RIlAtom117 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom117
  ring

theorem seg34RStep30Pe (rho : Nat -> Seg34.F) (r2272 : Seg34.relationRow2272 rho) :
    seg34RPe30 rho = seg34RPe31 rho * rho 32794 := by
  unfold Seg34.relationRow2272 at r2272
  unfold seg34RPe30 seg34RPe31
  linear_combination -r2272

theorem seg34RStep30 (rho : Nat -> Seg34.F) (r2270 : Seg34.relationRow2270 rho) (r2271 : Seg34.relationRow2271 rho) (r2272 : Seg34.relationRow2272 rho) :
    seg34RPe30 rho = seg34RPe31 rho * rho 32794 ∧
    seg34RIl30 rho = seg34RIl31 rho + seg34RPe31 rho * (1 - rho 32794) -
      seg34RIl31 rho * (seg34RPe31 rho * (1 - rho 32794)) := by
  constructor
  · exact seg34RStep30Pe rho r2272
  · rw [seg34RStep30Acc rho, seg34RStep30L rho r2270, seg34RStep30IlMul rho r2271, seg34RStep30L rho r2270]

theorem seg34_r_chunk30 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 31 (seg34RPeState rho 31) (seg34RIlState rho 31) := by
  have htail := seg34_r_chunk29 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2270, r2271, r2272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 30 ≤ n → n < 31 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 30 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep30 rho r2270 r2271 r2272
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 30 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
