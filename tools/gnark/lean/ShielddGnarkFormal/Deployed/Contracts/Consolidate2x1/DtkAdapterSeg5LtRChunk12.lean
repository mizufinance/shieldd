import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep12L (rho : Nat -> Seg5.F) (r2310 : Seg5.relationRow2310 rho) :
    rho 2008 = seg5RPe13 rho * (1 - rho 1199) := by
  unfold Seg5.relationRow2310 at r2310
  unfold seg5RPe13
  linear_combination -r2310

theorem seg5RStep12IlMul (rho : Nat -> Seg5.F) (r2311 : Seg5.relationRow2311 rho) :
    rho 2009 = seg5RIl13 rho * (rho 2008) := by
  unfold Seg5.relationRow2311 at r2311
  rw [seg5RStep12IlLc rho] at r2311
  linear_combination -r2311

theorem seg5RStep12Acc (rho : Nat -> Seg5.F) :
    seg5RIl12 rho = seg5RIl13 rho + (rho 2008) - (rho 2009) := by
  have hstate : seg5RIl12 rho = seg5RIl13 rho + seg5RIlAtom129 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom129
  ring

theorem seg5RStep12Pe (rho : Nat -> Seg5.F) (r2312 : Seg5.relationRow2312 rho) :
    seg5RPe12 rho = seg5RPe13 rho * rho 1199 := by
  unfold Seg5.relationRow2312 at r2312
  unfold seg5RPe12 seg5RPe13
  linear_combination -r2312

theorem seg5RStep12 (rho : Nat -> Seg5.F) (r2310 : Seg5.relationRow2310 rho) (r2311 : Seg5.relationRow2311 rho) (r2312 : Seg5.relationRow2312 rho) :
    seg5RPe12 rho = seg5RPe13 rho * rho 1199 ∧
    seg5RIl12 rho = seg5RIl13 rho + seg5RPe13 rho * (1 - rho 1199) -
      seg5RIl13 rho * (seg5RPe13 rho * (1 - rho 1199)) := by
  constructor
  · exact seg5RStep12Pe rho r2312
  · rw [seg5RStep12Acc rho, seg5RStep12L rho r2310, seg5RStep12IlMul rho r2311, seg5RStep12L rho r2310]

theorem seg5_r_chunk12 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 13 (seg5RPeState rho 13) (seg5RIlState rho 13) := by
  have htail := seg5_r_chunk11 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2310, r2311, r2312, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 12 ≤ n → n < 13 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 12 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep12 rho r2310 r2311 r2312
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 12 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
