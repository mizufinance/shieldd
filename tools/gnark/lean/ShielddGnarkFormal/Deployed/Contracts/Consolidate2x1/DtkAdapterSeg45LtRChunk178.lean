import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk177

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep178L (rho : Nat -> Seg45.F) (r1970 : Seg45.relationRow1970 rho) :
    rho 40201 = seg45RPe179 rho * (1 - rho 39898) := by
  unfold Seg45.relationRow1970 at r1970
  unfold seg45RPe179
  linear_combination -r1970

theorem seg45RStep178IlMul (rho : Nat -> Seg45.F) (r1971 : Seg45.relationRow1971 rho) :
    rho 40202 = seg45RIl179 rho * (rho 40201) := by
  unfold Seg45.relationRow1971 at r1971
  rw [seg45RStep178IlLc rho] at r1971
  linear_combination -r1971

theorem seg45RStep178Acc (rho : Nat -> Seg45.F) :
    seg45RIl178 rho = seg45RIl179 rho + (rho 40201) - (rho 40202) := by
  have hstate : seg45RIl178 rho = seg45RIl179 rho + seg45RIlAtom37 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom37
  ring

theorem seg45RStep178Pe (rho : Nat -> Seg45.F) (r1972 : Seg45.relationRow1972 rho) :
    seg45RPe178 rho = seg45RPe179 rho * rho 39898 := by
  unfold Seg45.relationRow1972 at r1972
  unfold seg45RPe178 seg45RPe179
  linear_combination -r1972

theorem seg45RStep178 (rho : Nat -> Seg45.F) (r1970 : Seg45.relationRow1970 rho) (r1971 : Seg45.relationRow1971 rho) (r1972 : Seg45.relationRow1972 rho) :
    seg45RPe178 rho = seg45RPe179 rho * rho 39898 ∧
    seg45RIl178 rho = seg45RIl179 rho + seg45RPe179 rho * (1 - rho 39898) -
      seg45RIl179 rho * (seg45RPe179 rho * (1 - rho 39898)) := by
  constructor
  · exact seg45RStep178Pe rho r1972
  · rw [seg45RStep178Acc rho, seg45RStep178L rho r1970, seg45RStep178IlMul rho r1971, seg45RStep178L rho r1970]

theorem seg45_r_chunk178 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 179 (seg45RPeState rho 179) (seg45RIlState rho 179) := by
  have htail := seg45_r_chunk177 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1970, r1971, r1972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 178 ≤ n → n < 179 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 178 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep178 rho r1970 r1971 r1972
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 178 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
