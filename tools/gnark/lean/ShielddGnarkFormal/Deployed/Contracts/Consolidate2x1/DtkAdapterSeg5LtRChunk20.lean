import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk19

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep20L (rho : Nat -> Seg5.F) (r2288 : Seg5.relationRow2288 rho) :
    rho 1986 = seg5RPe21 rho * (1 - rho 1207) := by
  unfold Seg5.relationRow2288 at r2288
  unfold seg5RPe21
  linear_combination -r2288

theorem seg5RStep20IlMul (rho : Nat -> Seg5.F) (r2289 : Seg5.relationRow2289 rho) :
    rho 1987 = seg5RIl21 rho * (rho 1986) := by
  unfold Seg5.relationRow2289 at r2289
  rw [seg5RStep20IlLc rho] at r2289
  linear_combination -r2289

theorem seg5RStep20Acc (rho : Nat -> Seg5.F) :
    seg5RIl20 rho = seg5RIl21 rho + (rho 1986) - (rho 1987) := by
  have hstate : seg5RIl20 rho = seg5RIl21 rho + seg5RIlAtom122 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom122
  ring

theorem seg5RStep20Pe (rho : Nat -> Seg5.F) (r2290 : Seg5.relationRow2290 rho) :
    seg5RPe20 rho = seg5RPe21 rho * rho 1207 := by
  unfold Seg5.relationRow2290 at r2290
  unfold seg5RPe20 seg5RPe21
  linear_combination -r2290

theorem seg5RStep20 (rho : Nat -> Seg5.F) (r2288 : Seg5.relationRow2288 rho) (r2289 : Seg5.relationRow2289 rho) (r2290 : Seg5.relationRow2290 rho) :
    seg5RPe20 rho = seg5RPe21 rho * rho 1207 ∧
    seg5RIl20 rho = seg5RIl21 rho + seg5RPe21 rho * (1 - rho 1207) -
      seg5RIl21 rho * (seg5RPe21 rho * (1 - rho 1207)) := by
  constructor
  · exact seg5RStep20Pe rho r2290
  · rw [seg5RStep20Acc rho, seg5RStep20L rho r2288, seg5RStep20IlMul rho r2289, seg5RStep20L rho r2288]

theorem seg5_r_chunk20 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 21 (seg5RPeState rho 21) (seg5RIlState rho 21) := by
  have htail := seg5_r_chunk19 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2288, r2289, r2290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 20 ≤ n → n < 21 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 20 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep20 rho r2288 r2289 r2290
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 20 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
