import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk29

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep30L (rho : Nat -> Seg6.F) (r2270 : Seg6.relationRow2270 rho) :
    rho 2671 = seg6RPe31 rho * (1 - rho 1920) := by
  unfold Seg6.relationRow2270 at r2270
  unfold seg6RPe31
  linear_combination -r2270

theorem seg6RStep30IlMul (rho : Nat -> Seg6.F) (r2271 : Seg6.relationRow2271 rho) :
    rho 2672 = seg6RIl31 rho * (rho 2671) := by
  unfold Seg6.relationRow2271 at r2271
  rw [seg6RStep30IlLc rho] at r2271
  linear_combination -r2271

theorem seg6RStep30Acc (rho : Nat -> Seg6.F) :
    seg6RIl30 rho = seg6RIl31 rho + (rho 2671) - (rho 2672) := by
  have hstate : seg6RIl30 rho = seg6RIl31 rho + seg6RIlAtom117 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom117
  ring

theorem seg6RStep30Pe (rho : Nat -> Seg6.F) (r2272 : Seg6.relationRow2272 rho) :
    seg6RPe30 rho = seg6RPe31 rho * rho 1920 := by
  unfold Seg6.relationRow2272 at r2272
  unfold seg6RPe30 seg6RPe31
  linear_combination -r2272

theorem seg6RStep30 (rho : Nat -> Seg6.F) (r2270 : Seg6.relationRow2270 rho) (r2271 : Seg6.relationRow2271 rho) (r2272 : Seg6.relationRow2272 rho) :
    seg6RPe30 rho = seg6RPe31 rho * rho 1920 ∧
    seg6RIl30 rho = seg6RIl31 rho + seg6RPe31 rho * (1 - rho 1920) -
      seg6RIl31 rho * (seg6RPe31 rho * (1 - rho 1920)) := by
  constructor
  · exact seg6RStep30Pe rho r2272
  · rw [seg6RStep30Acc rho, seg6RStep30L rho r2270, seg6RStep30IlMul rho r2271, seg6RStep30L rho r2270]

theorem seg6_r_chunk30 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 31 (seg6RPeState rho 31) (seg6RIlState rho 31) := by
  have htail := seg6_r_chunk29 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2270, r2271, r2272, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 30 ≤ n → n < 31 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 30 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep30 rho r2270 r2271 r2272
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 30 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
