import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk35

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep36L (rho : Nat -> Seg5.F) (r2256 : Seg5.relationRow2256 rho) :
    rho 1954 = seg5RPe37 rho * (1 - rho 1223) := by
  unfold Seg5.relationRow2256 at r2256
  unfold seg5RPe37
  linear_combination -r2256

theorem seg5RStep36IlMul (rho : Nat -> Seg5.F) (r2257 : Seg5.relationRow2257 rho) :
    rho 1955 = seg5RIl37 rho * (rho 1954) := by
  unfold Seg5.relationRow2257 at r2257
  rw [seg5RStep36IlLc rho] at r2257
  linear_combination -r2257

theorem seg5RStep36Acc (rho : Nat -> Seg5.F) :
    seg5RIl36 rho = seg5RIl37 rho + (rho 1954) - (rho 1955) := by
  have hstate : seg5RIl36 rho = seg5RIl37 rho + seg5RIlAtom113 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom113
  ring

theorem seg5RStep36Pe (rho : Nat -> Seg5.F) (r2258 : Seg5.relationRow2258 rho) :
    seg5RPe36 rho = seg5RPe37 rho * rho 1223 := by
  unfold Seg5.relationRow2258 at r2258
  unfold seg5RPe36 seg5RPe37
  linear_combination -r2258

theorem seg5RStep36 (rho : Nat -> Seg5.F) (r2256 : Seg5.relationRow2256 rho) (r2257 : Seg5.relationRow2257 rho) (r2258 : Seg5.relationRow2258 rho) :
    seg5RPe36 rho = seg5RPe37 rho * rho 1223 ∧
    seg5RIl36 rho = seg5RIl37 rho + seg5RPe37 rho * (1 - rho 1223) -
      seg5RIl37 rho * (seg5RPe37 rho * (1 - rho 1223)) := by
  constructor
  · exact seg5RStep36Pe rho r2258
  · rw [seg5RStep36Acc rho, seg5RStep36L rho r2256, seg5RStep36IlMul rho r2257, seg5RStep36L rho r2256]

theorem seg5_r_chunk36 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 37 (seg5RPeState rho 37) (seg5RIlState rho 37) := by
  have htail := seg5_r_chunk35 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2256, r2257, r2258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 36 ≤ n → n < 37 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 36 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep36 rho r2256 r2257 r2258
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 36 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
