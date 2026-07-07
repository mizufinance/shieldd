import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk165

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep166L (rho : Nat -> Seg45.F) (r1992 : Seg45.relationRow1992 rho) :
    rho 40223 = seg45RPe167 rho * (1 - rho 39886) := by
  unfold Seg45.relationRow1992 at r1992
  unfold seg45RPe167
  linear_combination -r1992

theorem seg45RStep166IlMul (rho : Nat -> Seg45.F) (r1993 : Seg45.relationRow1993 rho) :
    rho 40224 = seg45RIl167 rho * (rho 40223) := by
  unfold Seg45.relationRow1993 at r1993
  rw [seg45RStep166IlLc rho] at r1993
  linear_combination -r1993

theorem seg45RStep166Acc (rho : Nat -> Seg45.F) :
    seg45RIl166 rho = seg45RIl167 rho + (rho 40223) - (rho 40224) := by
  have hstate : seg45RIl166 rho = seg45RIl167 rho + seg45RIlAtom42 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom42
  ring

theorem seg45RStep166Pe (rho : Nat -> Seg45.F) (r1994 : Seg45.relationRow1994 rho) :
    seg45RPe166 rho = seg45RPe167 rho * rho 39886 := by
  unfold Seg45.relationRow1994 at r1994
  unfold seg45RPe166 seg45RPe167
  linear_combination -r1994

theorem seg45RStep166 (rho : Nat -> Seg45.F) (r1992 : Seg45.relationRow1992 rho) (r1993 : Seg45.relationRow1993 rho) (r1994 : Seg45.relationRow1994 rho) :
    seg45RPe166 rho = seg45RPe167 rho * rho 39886 ∧
    seg45RIl166 rho = seg45RIl167 rho + seg45RPe167 rho * (1 - rho 39886) -
      seg45RIl167 rho * (seg45RPe167 rho * (1 - rho 39886)) := by
  constructor
  · exact seg45RStep166Pe rho r1994
  · rw [seg45RStep166Acc rho, seg45RStep166L rho r1992, seg45RStep166IlMul rho r1993, seg45RStep166L rho r1992]

theorem seg45_r_chunk166 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 167 (seg45RPeState rho 167) (seg45RIlState rho 167) := by
  have htail := seg45_r_chunk165 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1992, r1993, r1994, _, _, _, _, _⟩
  have hsteps : ∀ n, 166 ≤ n → n < 167 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 166 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep166 rho r1992 r1993 r1994
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 166 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
