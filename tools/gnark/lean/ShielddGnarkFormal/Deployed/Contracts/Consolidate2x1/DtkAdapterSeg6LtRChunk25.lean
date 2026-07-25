import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep25L (rho : Nat -> Seg6.F) (r2277 : Seg6.relationRow2277 rho) :
    rho 2678 = seg6RPe26 rho * (1 - rho 1915) := by
  unfold Seg6.relationRow2277 at r2277
  unfold seg6RPe26
  linear_combination -r2277

theorem seg6RStep25IlMul (rho : Nat -> Seg6.F) (r2278 : Seg6.relationRow2278 rho) :
    rho 2679 = seg6RIl26 rho * (rho 2678) := by
  unfold Seg6.relationRow2278 at r2278
  rw [seg6RStep25IlLc rho] at r2278
  linear_combination -r2278

theorem seg6RStep25Acc (rho : Nat -> Seg6.F) :
    seg6RIl25 rho = seg6RIl26 rho + (rho 2678) - (rho 2679) := by
  have hstate : seg6RIl25 rho = seg6RIl26 rho + seg6RIlAtom118 rho + (-1 : Seg6.F) * seg6RIlAtom119 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom118 seg6RIlAtom119
  ring

theorem seg6RStep25Pe (rho : Nat -> Seg6.F) (r2279 : Seg6.relationRow2279 rho) :
    seg6RPe25 rho = seg6RPe26 rho * rho 1915 := by
  unfold Seg6.relationRow2279 at r2279
  unfold seg6RPe25 seg6RPe26
  linear_combination -r2279

theorem seg6RStep25 (rho : Nat -> Seg6.F) (r2277 : Seg6.relationRow2277 rho) (r2278 : Seg6.relationRow2278 rho) (r2279 : Seg6.relationRow2279 rho) :
    seg6RPe25 rho = seg6RPe26 rho * rho 1915 ∧
    seg6RIl25 rho = seg6RIl26 rho + seg6RPe26 rho * (1 - rho 1915) -
      seg6RIl26 rho * (seg6RPe26 rho * (1 - rho 1915)) := by
  constructor
  · exact seg6RStep25Pe rho r2279
  · rw [seg6RStep25Acc rho, seg6RStep25L rho r2277, seg6RStep25IlMul rho r2278, seg6RStep25L rho r2277]

theorem seg6_r_chunk25 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 26 (seg6RPeState rho 26) (seg6RIlState rho 26) := by
  have htail := seg6_r_chunk24 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2277, r2278, r2279, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 25 ≤ n → n < 26 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 25 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep25 rho r2277 r2278 r2279
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 25 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
