import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk120

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep121L (rho : Nat -> Seg45.F) (r2075 : Seg45.relationRow2075 rho) :
    rho 40306 = seg45RPe122 rho * (1 - rho 39841) := by
  unfold Seg45.relationRow2075 at r2075
  unfold seg45RPe122
  linear_combination -r2075

theorem seg45RStep121IlMul (rho : Nat -> Seg45.F) (r2076 : Seg45.relationRow2076 rho) :
    rho 40307 = seg45RIl122 rho * (rho 40306) := by
  unfold Seg45.relationRow2076 at r2076
  rw [seg45RStep121IlLc rho] at r2076
  linear_combination -r2076

theorem seg45RStep121Acc (rho : Nat -> Seg45.F) :
    seg45RIl121 rho = seg45RIl122 rho + (rho 40306) - (rho 40307) := by
  have hstate : seg45RIl121 rho = seg45RIl122 rho + seg45RIlAtom62 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom62
  ring

theorem seg45RStep121Pe (rho : Nat -> Seg45.F) (r2077 : Seg45.relationRow2077 rho) :
    seg45RPe121 rho = seg45RPe122 rho * rho 39841 := by
  unfold Seg45.relationRow2077 at r2077
  unfold seg45RPe121 seg45RPe122
  linear_combination -r2077

theorem seg45RStep121 (rho : Nat -> Seg45.F) (r2075 : Seg45.relationRow2075 rho) (r2076 : Seg45.relationRow2076 rho) (r2077 : Seg45.relationRow2077 rho) :
    seg45RPe121 rho = seg45RPe122 rho * rho 39841 ∧
    seg45RIl121 rho = seg45RIl122 rho + seg45RPe122 rho * (1 - rho 39841) -
      seg45RIl122 rho * (seg45RPe122 rho * (1 - rho 39841)) := by
  constructor
  · exact seg45RStep121Pe rho r2077
  · rw [seg45RStep121Acc rho, seg45RStep121L rho r2075, seg45RStep121IlMul rho r2076, seg45RStep121L rho r2075]

theorem seg45_r_chunk121 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 122 (seg45RPeState rho 122) (seg45RIlState rho 122) := by
  have htail := seg45_r_chunk120 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2075, r2076, r2077, _, _⟩
  have hsteps : ∀ n, 121 ≤ n → n < 122 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 121 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep121 rho r2075 r2076 r2077
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 121 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
