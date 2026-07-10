import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep25L (rho : Nat -> Seg5.F) (r2277 : Seg5.relationRow2277 rho) :
    rho 1975 = seg5RPe26 rho * (1 - rho 1212) := by
  unfold Seg5.relationRow2277 at r2277
  unfold seg5RPe26
  linear_combination -r2277

theorem seg5RStep25IlMul (rho : Nat -> Seg5.F) (r2278 : Seg5.relationRow2278 rho) :
    rho 1976 = seg5RIl26 rho * (rho 1975) := by
  unfold Seg5.relationRow2278 at r2278
  rw [seg5RStep25IlLc rho] at r2278
  linear_combination -r2278

theorem seg5RStep25Acc (rho : Nat -> Seg5.F) :
    seg5RIl25 rho = seg5RIl26 rho + (rho 1975) - (rho 1976) := by
  have hstate : seg5RIl25 rho = seg5RIl26 rho + seg5RIlAtom118 rho + (-1 : Seg5.F) * seg5RIlAtom119 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom118 seg5RIlAtom119
  ring

theorem seg5RStep25Pe (rho : Nat -> Seg5.F) (r2279 : Seg5.relationRow2279 rho) :
    seg5RPe25 rho = seg5RPe26 rho * rho 1212 := by
  unfold Seg5.relationRow2279 at r2279
  unfold seg5RPe25 seg5RPe26
  linear_combination -r2279

theorem seg5RStep25 (rho : Nat -> Seg5.F) (r2277 : Seg5.relationRow2277 rho) (r2278 : Seg5.relationRow2278 rho) (r2279 : Seg5.relationRow2279 rho) :
    seg5RPe25 rho = seg5RPe26 rho * rho 1212 ∧
    seg5RIl25 rho = seg5RIl26 rho + seg5RPe26 rho * (1 - rho 1212) -
      seg5RIl26 rho * (seg5RPe26 rho * (1 - rho 1212)) := by
  constructor
  · exact seg5RStep25Pe rho r2279
  · rw [seg5RStep25Acc rho, seg5RStep25L rho r2277, seg5RStep25IlMul rho r2278, seg5RStep25L rho r2277]

theorem seg5_r_chunk25 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 26 (seg5RPeState rho 26) (seg5RIlState rho 26) := by
  have htail := seg5_r_chunk24 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2277, r2278, r2279, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 25 ≤ n → n < 26 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 25 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep25 rho r2277 r2278 r2279
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 25 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
