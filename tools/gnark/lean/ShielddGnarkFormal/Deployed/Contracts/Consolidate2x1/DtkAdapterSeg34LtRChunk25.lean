import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep25L (rho : Nat -> Seg34.F) (r2277 : Seg34.relationRow2277 rho) :
    rho 33552 = seg34RPe26 rho * (1 - rho 32789) := by
  unfold Seg34.relationRow2277 at r2277
  unfold seg34RPe26
  linear_combination -r2277

theorem seg34RStep25IlMul (rho : Nat -> Seg34.F) (r2278 : Seg34.relationRow2278 rho) :
    rho 33553 = seg34RIl26 rho * (rho 33552) := by
  unfold Seg34.relationRow2278 at r2278
  rw [seg34RStep25IlLc rho] at r2278
  linear_combination -r2278

theorem seg34RStep25Acc (rho : Nat -> Seg34.F) :
    seg34RIl25 rho = seg34RIl26 rho + (rho 33552) - (rho 33553) := by
  have hstate : seg34RIl25 rho = seg34RIl26 rho + seg34RIlAtom118 rho + (-1 : Seg34.F) * seg34RIlAtom119 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom118 seg34RIlAtom119
  ring

theorem seg34RStep25Pe (rho : Nat -> Seg34.F) (r2279 : Seg34.relationRow2279 rho) :
    seg34RPe25 rho = seg34RPe26 rho * rho 32789 := by
  unfold Seg34.relationRow2279 at r2279
  unfold seg34RPe25 seg34RPe26
  linear_combination -r2279

theorem seg34RStep25 (rho : Nat -> Seg34.F) (r2277 : Seg34.relationRow2277 rho) (r2278 : Seg34.relationRow2278 rho) (r2279 : Seg34.relationRow2279 rho) :
    seg34RPe25 rho = seg34RPe26 rho * rho 32789 ∧
    seg34RIl25 rho = seg34RIl26 rho + seg34RPe26 rho * (1 - rho 32789) -
      seg34RIl26 rho * (seg34RPe26 rho * (1 - rho 32789)) := by
  constructor
  · exact seg34RStep25Pe rho r2279
  · rw [seg34RStep25Acc rho, seg34RStep25L rho r2277, seg34RStep25IlMul rho r2278, seg34RStep25L rho r2277]

theorem seg34_r_chunk25 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 26 (seg34RPeState rho 26) (seg34RIlState rho 26) := by
  have htail := seg34_r_chunk24 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2277, r2278, r2279, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 25 ≤ n → n < 26 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 25 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep25 rho r2277 r2278 r2279
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 25 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
