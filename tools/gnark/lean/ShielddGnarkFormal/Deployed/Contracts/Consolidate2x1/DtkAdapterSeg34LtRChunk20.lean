import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk19

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep20L (rho : Nat -> Seg34.F) (r2288 : Seg34.relationRow2288 rho) :
    rho 33563 = seg34RPe21 rho * (1 - rho 32784) := by
  unfold Seg34.relationRow2288 at r2288
  unfold seg34RPe21
  linear_combination -r2288

theorem seg34RStep20IlMul (rho : Nat -> Seg34.F) (r2289 : Seg34.relationRow2289 rho) :
    rho 33564 = seg34RIl21 rho * (rho 33563) := by
  unfold Seg34.relationRow2289 at r2289
  rw [seg34RStep20IlLc rho] at r2289
  linear_combination -r2289

theorem seg34RStep20Acc (rho : Nat -> Seg34.F) :
    seg34RIl20 rho = seg34RIl21 rho + (rho 33563) - (rho 33564) := by
  have hstate : seg34RIl20 rho = seg34RIl21 rho + seg34RIlAtom122 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom122
  ring

theorem seg34RStep20Pe (rho : Nat -> Seg34.F) (r2290 : Seg34.relationRow2290 rho) :
    seg34RPe20 rho = seg34RPe21 rho * rho 32784 := by
  unfold Seg34.relationRow2290 at r2290
  unfold seg34RPe20 seg34RPe21
  linear_combination -r2290

theorem seg34RStep20 (rho : Nat -> Seg34.F) (r2288 : Seg34.relationRow2288 rho) (r2289 : Seg34.relationRow2289 rho) (r2290 : Seg34.relationRow2290 rho) :
    seg34RPe20 rho = seg34RPe21 rho * rho 32784 ∧
    seg34RIl20 rho = seg34RIl21 rho + seg34RPe21 rho * (1 - rho 32784) -
      seg34RIl21 rho * (seg34RPe21 rho * (1 - rho 32784)) := by
  constructor
  · exact seg34RStep20Pe rho r2290
  · rw [seg34RStep20Acc rho, seg34RStep20L rho r2288, seg34RStep20IlMul rho r2289, seg34RStep20L rho r2288]

theorem seg34_r_chunk20 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 21 (seg34RPeState rho 21) (seg34RIlState rho 21) := by
  have htail := seg34_r_chunk19 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2288, r2289, r2290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 20 ≤ n → n < 21 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 20 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep20 rho r2288 r2289 r2290
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 20 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
