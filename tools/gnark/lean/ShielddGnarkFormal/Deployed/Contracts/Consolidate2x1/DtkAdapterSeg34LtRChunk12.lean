import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep12L (rho : Nat -> Seg34.F) (r2310 : Seg34.relationRow2310 rho) :
    rho 33585 = seg34RPe13 rho * (1 - rho 32776) := by
  unfold Seg34.relationRow2310 at r2310
  unfold seg34RPe13
  linear_combination -r2310

theorem seg34RStep12IlMul (rho : Nat -> Seg34.F) (r2311 : Seg34.relationRow2311 rho) :
    rho 33586 = seg34RIl13 rho * (rho 33585) := by
  unfold Seg34.relationRow2311 at r2311
  rw [seg34RStep12IlLc rho] at r2311
  linear_combination -r2311

theorem seg34RStep12Acc (rho : Nat -> Seg34.F) :
    seg34RIl12 rho = seg34RIl13 rho + (rho 33585) - (rho 33586) := by
  have hstate : seg34RIl12 rho = seg34RIl13 rho + seg34RIlAtom129 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom129
  ring

theorem seg34RStep12Pe (rho : Nat -> Seg34.F) (r2312 : Seg34.relationRow2312 rho) :
    seg34RPe12 rho = seg34RPe13 rho * rho 32776 := by
  unfold Seg34.relationRow2312 at r2312
  unfold seg34RPe12 seg34RPe13
  linear_combination -r2312

theorem seg34RStep12 (rho : Nat -> Seg34.F) (r2310 : Seg34.relationRow2310 rho) (r2311 : Seg34.relationRow2311 rho) (r2312 : Seg34.relationRow2312 rho) :
    seg34RPe12 rho = seg34RPe13 rho * rho 32776 ∧
    seg34RIl12 rho = seg34RIl13 rho + seg34RPe13 rho * (1 - rho 32776) -
      seg34RIl13 rho * (seg34RPe13 rho * (1 - rho 32776)) := by
  constructor
  · exact seg34RStep12Pe rho r2312
  · rw [seg34RStep12Acc rho, seg34RStep12L rho r2310, seg34RStep12IlMul rho r2311, seg34RStep12L rho r2310]

theorem seg34_r_chunk12 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 13 (seg34RPeState rho 13) (seg34RIlState rho 13) := by
  have htail := seg34_r_chunk11 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2310, r2311, r2312, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 12 ≤ n → n < 13 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 12 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep12 rho r2310 r2311 r2312
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 12 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
