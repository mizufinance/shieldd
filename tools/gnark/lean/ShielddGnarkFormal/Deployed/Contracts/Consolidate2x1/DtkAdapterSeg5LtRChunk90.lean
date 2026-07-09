import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk89

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep90L (rho : Nat -> Seg5.F) (r2140 : Seg5.relationRow2140 rho) :
    rho 1838 = seg5RPe91 rho * (1 - rho 1277) := by
  unfold Seg5.relationRow2140 at r2140
  unfold seg5RPe91
  linear_combination -r2140

theorem seg5RStep90IlMul (rho : Nat -> Seg5.F) (r2141 : Seg5.relationRow2141 rho) :
    rho 1839 = seg5RIl91 rho * (rho 1838) := by
  unfold Seg5.relationRow2141 at r2141
  rw [seg5RStep90IlLc rho] at r2141
  linear_combination -r2141

theorem seg5RStep90Acc (rho : Nat -> Seg5.F) :
    seg5RIl90 rho = seg5RIl91 rho + (rho 1838) - (rho 1839) := by
  have hstate : seg5RIl90 rho = seg5RIl91 rho + seg5RIlAtom80 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom80
  ring

theorem seg5RStep90Pe (rho : Nat -> Seg5.F) (r2142 : Seg5.relationRow2142 rho) :
    seg5RPe90 rho = seg5RPe91 rho * rho 1277 := by
  unfold Seg5.relationRow2142 at r2142
  unfold seg5RPe90 seg5RPe91
  linear_combination -r2142

theorem seg5RStep90 (rho : Nat -> Seg5.F) (r2140 : Seg5.relationRow2140 rho) (r2141 : Seg5.relationRow2141 rho) (r2142 : Seg5.relationRow2142 rho) :
    seg5RPe90 rho = seg5RPe91 rho * rho 1277 ∧
    seg5RIl90 rho = seg5RIl91 rho + seg5RPe91 rho * (1 - rho 1277) -
      seg5RIl91 rho * (seg5RPe91 rho * (1 - rho 1277)) := by
  constructor
  · exact seg5RStep90Pe rho r2142
  · rw [seg5RStep90Acc rho, seg5RStep90L rho r2140, seg5RStep90IlMul rho r2141, seg5RStep90L rho r2140]

theorem seg5_r_chunk90 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 91 (seg5RPeState rho 91) (seg5RIlState rho 91) := by
  have htail := seg5_r_chunk89 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2140, r2141, r2142, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 90 ≤ n → n < 91 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 90 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep90 rho r2140 r2141 r2142
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 90 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
