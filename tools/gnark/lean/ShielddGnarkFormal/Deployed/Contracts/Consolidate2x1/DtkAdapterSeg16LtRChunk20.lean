import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk19

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep20L (rho : Nat -> Seg16.F) (r2288 : Seg16.relationRow2288 rho) :
    rho 14863 = seg16RPe21 rho * (1 - rho 14084) := by
  unfold Seg16.relationRow2288 at r2288
  unfold seg16RPe21
  linear_combination -r2288

theorem seg16RStep20IlMul (rho : Nat -> Seg16.F) (r2289 : Seg16.relationRow2289 rho) :
    rho 14864 = seg16RIl21 rho * (rho 14863) := by
  unfold Seg16.relationRow2289 at r2289
  rw [seg16RStep20IlLc rho] at r2289
  linear_combination -r2289

theorem seg16RStep20Acc (rho : Nat -> Seg16.F) :
    seg16RIl20 rho = seg16RIl21 rho + (rho 14863) - (rho 14864) := by
  have hstate : seg16RIl20 rho = seg16RIl21 rho + seg16RIlAtom122 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom122
  ring

theorem seg16RStep20Pe (rho : Nat -> Seg16.F) (r2290 : Seg16.relationRow2290 rho) :
    seg16RPe20 rho = seg16RPe21 rho * rho 14084 := by
  unfold Seg16.relationRow2290 at r2290
  unfold seg16RPe20 seg16RPe21
  linear_combination -r2290

theorem seg16RStep20 (rho : Nat -> Seg16.F) (r2288 : Seg16.relationRow2288 rho) (r2289 : Seg16.relationRow2289 rho) (r2290 : Seg16.relationRow2290 rho) :
    seg16RPe20 rho = seg16RPe21 rho * rho 14084 ∧
    seg16RIl20 rho = seg16RIl21 rho + seg16RPe21 rho * (1 - rho 14084) -
      seg16RIl21 rho * (seg16RPe21 rho * (1 - rho 14084)) := by
  constructor
  · exact seg16RStep20Pe rho r2290
  · rw [seg16RStep20Acc rho, seg16RStep20L rho r2288, seg16RStep20IlMul rho r2289, seg16RStep20L rho r2288]

theorem seg16_r_chunk20 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 21 (seg16RPeState rho 21) (seg16RIlState rho 21) := by
  have htail := seg16_r_chunk19 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2288, r2289, r2290, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 20 ≤ n → n < 21 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 20 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep20 rho r2288 r2289 r2290
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 20 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
