import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk111

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep112L (rho : Nat -> Seg5.F) (r2092 : Seg5.relationRow2092 rho) :
    rho 1790 = seg5RPe113 rho * (1 - rho 1299) := by
  unfold Seg5.relationRow2092 at r2092
  unfold seg5RPe113
  linear_combination -r2092

theorem seg5RStep112IlMul (rho : Nat -> Seg5.F) (r2093 : Seg5.relationRow2093 rho) :
    rho 1791 = seg5RIl113 rho * (rho 1790) := by
  unfold Seg5.relationRow2093 at r2093
  rw [seg5RStep112IlLc rho] at r2093
  linear_combination -r2093

theorem seg5RStep112Acc (rho : Nat -> Seg5.F) :
    seg5RIl112 rho = seg5RIl113 rho + (rho 1790) - (rho 1791) := by
  have hstate : seg5RIl112 rho = seg5RIl113 rho + seg5RIlAtom66 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom66
  ring

theorem seg5RStep112Pe (rho : Nat -> Seg5.F) (r2094 : Seg5.relationRow2094 rho) :
    seg5RPe112 rho = seg5RPe113 rho * rho 1299 := by
  unfold Seg5.relationRow2094 at r2094
  unfold seg5RPe112 seg5RPe113
  linear_combination -r2094

theorem seg5RStep112 (rho : Nat -> Seg5.F) (r2092 : Seg5.relationRow2092 rho) (r2093 : Seg5.relationRow2093 rho) (r2094 : Seg5.relationRow2094 rho) :
    seg5RPe112 rho = seg5RPe113 rho * rho 1299 ∧
    seg5RIl112 rho = seg5RIl113 rho + seg5RPe113 rho * (1 - rho 1299) -
      seg5RIl113 rho * (seg5RPe113 rho * (1 - rho 1299)) := by
  constructor
  · exact seg5RStep112Pe rho r2094
  · rw [seg5RStep112Acc rho, seg5RStep112L rho r2092, seg5RStep112IlMul rho r2093, seg5RStep112L rho r2092]

theorem seg5_r_chunk112 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 113 (seg5RPeState rho 113) (seg5RIlState rho 113) := by
  have htail := seg5_r_chunk111 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2092, r2093, r2094, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 112 ≤ n → n < 113 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 112 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep112 rho r2092 r2093 r2094
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 112 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
