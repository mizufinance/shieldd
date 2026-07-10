import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk165

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep166L (rho : Nat -> Seg5.F) (r1992 : Seg5.relationRow1992 rho) :
    rho 1690 = seg5RPe167 rho * (1 - rho 1353) := by
  unfold Seg5.relationRow1992 at r1992
  unfold seg5RPe167
  linear_combination -r1992

theorem seg5RStep166IlMul (rho : Nat -> Seg5.F) (r1993 : Seg5.relationRow1993 rho) :
    rho 1691 = seg5RIl167 rho * (rho 1690) := by
  unfold Seg5.relationRow1993 at r1993
  rw [seg5RStep166IlLc rho] at r1993
  linear_combination -r1993

theorem seg5RStep166Acc (rho : Nat -> Seg5.F) :
    seg5RIl166 rho = seg5RIl167 rho + (rho 1690) - (rho 1691) := by
  have hstate : seg5RIl166 rho = seg5RIl167 rho + seg5RIlAtom42 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom42
  ring

theorem seg5RStep166Pe (rho : Nat -> Seg5.F) (r1994 : Seg5.relationRow1994 rho) :
    seg5RPe166 rho = seg5RPe167 rho * rho 1353 := by
  unfold Seg5.relationRow1994 at r1994
  unfold seg5RPe166 seg5RPe167
  linear_combination -r1994

theorem seg5RStep166 (rho : Nat -> Seg5.F) (r1992 : Seg5.relationRow1992 rho) (r1993 : Seg5.relationRow1993 rho) (r1994 : Seg5.relationRow1994 rho) :
    seg5RPe166 rho = seg5RPe167 rho * rho 1353 ∧
    seg5RIl166 rho = seg5RIl167 rho + seg5RPe167 rho * (1 - rho 1353) -
      seg5RIl167 rho * (seg5RPe167 rho * (1 - rho 1353)) := by
  constructor
  · exact seg5RStep166Pe rho r1994
  · rw [seg5RStep166Acc rho, seg5RStep166L rho r1992, seg5RStep166IlMul rho r1993, seg5RStep166L rho r1992]

theorem seg5_r_chunk166 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 167 (seg5RPeState rho 167) (seg5RIlState rho 167) := by
  have htail := seg5_r_chunk165 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1992, r1993, r1994, _, _, _, _, _⟩
  have hsteps : ∀ n, 166 ≤ n → n < 167 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 166 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep166 rho r1992 r1993 r1994
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 166 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
