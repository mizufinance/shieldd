import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep12L (rho : Nat -> Seg6.F) (r2310 : Seg6.relationRow2310 rho) :
    rho 2711 = seg6RPe13 rho * (1 - rho 1902) := by
  unfold Seg6.relationRow2310 at r2310
  unfold seg6RPe13
  linear_combination -r2310

theorem seg6RStep12IlMul (rho : Nat -> Seg6.F) (r2311 : Seg6.relationRow2311 rho) :
    rho 2712 = seg6RIl13 rho * (rho 2711) := by
  unfold Seg6.relationRow2311 at r2311
  rw [seg6RStep12IlLc rho] at r2311
  linear_combination -r2311

theorem seg6RStep12Acc (rho : Nat -> Seg6.F) :
    seg6RIl12 rho = seg6RIl13 rho + (rho 2711) - (rho 2712) := by
  have hstate : seg6RIl12 rho = seg6RIl13 rho + seg6RIlAtom129 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom129
  ring

theorem seg6RStep12Pe (rho : Nat -> Seg6.F) (r2312 : Seg6.relationRow2312 rho) :
    seg6RPe12 rho = seg6RPe13 rho * rho 1902 := by
  unfold Seg6.relationRow2312 at r2312
  unfold seg6RPe12 seg6RPe13
  linear_combination -r2312

theorem seg6RStep12 (rho : Nat -> Seg6.F) (r2310 : Seg6.relationRow2310 rho) (r2311 : Seg6.relationRow2311 rho) (r2312 : Seg6.relationRow2312 rho) :
    seg6RPe12 rho = seg6RPe13 rho * rho 1902 ∧
    seg6RIl12 rho = seg6RIl13 rho + seg6RPe13 rho * (1 - rho 1902) -
      seg6RIl13 rho * (seg6RPe13 rho * (1 - rho 1902)) := by
  constructor
  · exact seg6RStep12Pe rho r2312
  · rw [seg6RStep12Acc rho, seg6RStep12L rho r2310, seg6RStep12IlMul rho r2311, seg6RStep12L rho r2310]

theorem seg6_r_chunk12 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 13 (seg6RPeState rho 13) (seg6RIlState rho 13) := by
  have htail := seg6_r_chunk11 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2310, r2311, r2312, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 12 ≤ n → n < 13 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 12 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep12 rho r2310 r2311 r2312
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 12 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
