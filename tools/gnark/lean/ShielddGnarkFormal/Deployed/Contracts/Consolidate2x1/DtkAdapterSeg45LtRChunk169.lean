import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk168

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep169L (rho : Nat -> Seg45.F) (r1985 : Seg45.relationRow1985 rho) :
    rho 40216 = seg45RPe170 rho * (1 - rho 39889) := by
  unfold Seg45.relationRow1985 at r1985
  unfold seg45RPe170
  linear_combination -r1985

theorem seg45RStep169IlMul (rho : Nat -> Seg45.F) (r1986 : Seg45.relationRow1986 rho) :
    rho 40217 = seg45RIl170 rho * (rho 40216) := by
  unfold Seg45.relationRow1986 at r1986
  rw [seg45RStep169IlLc rho] at r1986
  linear_combination -r1986

theorem seg45RStep169Acc (rho : Nat -> Seg45.F) :
    seg45RIl169 rho = seg45RIl170 rho + (rho 40216) - (rho 40217) := by
  have hstate : seg45RIl169 rho = seg45RIl170 rho + seg45RIlAtom40 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom40
  ring

theorem seg45RStep169Pe (rho : Nat -> Seg45.F) (r1987 : Seg45.relationRow1987 rho) :
    seg45RPe169 rho = seg45RPe170 rho * rho 39889 := by
  unfold Seg45.relationRow1987 at r1987
  unfold seg45RPe169 seg45RPe170
  linear_combination -r1987

theorem seg45RStep169 (rho : Nat -> Seg45.F) (r1985 : Seg45.relationRow1985 rho) (r1986 : Seg45.relationRow1986 rho) (r1987 : Seg45.relationRow1987 rho) :
    seg45RPe169 rho = seg45RPe170 rho * rho 39889 ∧
    seg45RIl169 rho = seg45RIl170 rho + seg45RPe170 rho * (1 - rho 39889) -
      seg45RIl170 rho * (seg45RPe170 rho * (1 - rho 39889)) := by
  constructor
  · exact seg45RStep169Pe rho r1987
  · rw [seg45RStep169Acc rho, seg45RStep169L rho r1985, seg45RStep169IlMul rho r1986, seg45RStep169L rho r1985]

theorem seg45_r_chunk169 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 170 (seg45RPeState rho 170) (seg45RIlState rho 170) := by
  have htail := seg45_r_chunk168 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1985, r1986, r1987, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 169 ≤ n → n < 170 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 169 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep169 rho r1985 r1986 r1987
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 169 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
