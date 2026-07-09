import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk167

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep168L (rho : Nat -> Seg5.F) (r1988 : Seg5.relationRow1988 rho) :
    rho 1686 = seg5RPe169 rho * (1 - rho 1355) := by
  unfold Seg5.relationRow1988 at r1988
  unfold seg5RPe169
  linear_combination -r1988

theorem seg5RStep168IlMul (rho : Nat -> Seg5.F) (r1989 : Seg5.relationRow1989 rho) :
    rho 1687 = seg5RIl169 rho * (rho 1686) := by
  unfold Seg5.relationRow1989 at r1989
  rw [seg5RStep168IlLc rho] at r1989
  linear_combination -r1989

theorem seg5RStep168Acc (rho : Nat -> Seg5.F) :
    seg5RIl168 rho = seg5RIl169 rho + (rho 1686) - (rho 1687) := by
  have hstate : seg5RIl168 rho = seg5RIl169 rho + seg5RIlAtom41 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom41
  ring

theorem seg5RStep168Pe (rho : Nat -> Seg5.F) (r1990 : Seg5.relationRow1990 rho) :
    seg5RPe168 rho = seg5RPe169 rho * rho 1355 := by
  unfold Seg5.relationRow1990 at r1990
  unfold seg5RPe168 seg5RPe169
  linear_combination -r1990

theorem seg5RStep168 (rho : Nat -> Seg5.F) (r1988 : Seg5.relationRow1988 rho) (r1989 : Seg5.relationRow1989 rho) (r1990 : Seg5.relationRow1990 rho) :
    seg5RPe168 rho = seg5RPe169 rho * rho 1355 ∧
    seg5RIl168 rho = seg5RIl169 rho + seg5RPe169 rho * (1 - rho 1355) -
      seg5RIl169 rho * (seg5RPe169 rho * (1 - rho 1355)) := by
  constructor
  · exact seg5RStep168Pe rho r1990
  · rw [seg5RStep168Acc rho, seg5RStep168L rho r1988, seg5RStep168IlMul rho r1989, seg5RStep168L rho r1988]

theorem seg5_r_chunk168 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 169 (seg5RPeState rho 169) (seg5RIlState rho 169) := by
  have htail := seg5_r_chunk167 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1988, r1989, r1990, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 168 ≤ n → n < 169 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 168 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep168 rho r1988 r1989 r1990
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 168 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
