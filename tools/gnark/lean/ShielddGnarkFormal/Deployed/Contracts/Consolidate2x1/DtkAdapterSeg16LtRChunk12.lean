import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep12L (rho : Nat -> Seg16.F) (r2310 : Seg16.relationRow2310 rho) :
    rho 14885 = seg16RPe13 rho * (1 - rho 14076) := by
  unfold Seg16.relationRow2310 at r2310
  unfold seg16RPe13
  linear_combination -r2310

theorem seg16RStep12IlMul (rho : Nat -> Seg16.F) (r2311 : Seg16.relationRow2311 rho) :
    rho 14886 = seg16RIl13 rho * (rho 14885) := by
  unfold Seg16.relationRow2311 at r2311
  rw [seg16RStep12IlLc rho] at r2311
  linear_combination -r2311

theorem seg16RStep12Acc (rho : Nat -> Seg16.F) :
    seg16RIl12 rho = seg16RIl13 rho + (rho 14885) - (rho 14886) := by
  have hstate : seg16RIl12 rho = seg16RIl13 rho + seg16RIlAtom129 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom129
  ring

theorem seg16RStep12Pe (rho : Nat -> Seg16.F) (r2312 : Seg16.relationRow2312 rho) :
    seg16RPe12 rho = seg16RPe13 rho * rho 14076 := by
  unfold Seg16.relationRow2312 at r2312
  unfold seg16RPe12 seg16RPe13
  linear_combination -r2312

theorem seg16RStep12 (rho : Nat -> Seg16.F) (r2310 : Seg16.relationRow2310 rho) (r2311 : Seg16.relationRow2311 rho) (r2312 : Seg16.relationRow2312 rho) :
    seg16RPe12 rho = seg16RPe13 rho * rho 14076 ∧
    seg16RIl12 rho = seg16RIl13 rho + seg16RPe13 rho * (1 - rho 14076) -
      seg16RIl13 rho * (seg16RPe13 rho * (1 - rho 14076)) := by
  constructor
  · exact seg16RStep12Pe rho r2312
  · rw [seg16RStep12Acc rho, seg16RStep12L rho r2310, seg16RStep12IlMul rho r2311, seg16RStep12L rho r2310]

theorem seg16_r_chunk12 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 13 (seg16RPeState rho 13) (seg16RIlState rho 13) := by
  have htail := seg16_r_chunk11 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2310, r2311, r2312, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 12 ≤ n → n < 13 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 12 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep12 rho r2310 r2311 r2312
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 12 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
