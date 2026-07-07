import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk180

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep181L (rho : Nat -> Seg45.F) (r1963 : Seg45.relationRow1963 rho) :
    rho 40194 = seg45RPe182 rho * (1 - rho 39901) := by
  unfold Seg45.relationRow1963 at r1963
  unfold seg45RPe182
  linear_combination -r1963

theorem seg45RStep181IlMul (rho : Nat -> Seg45.F) (r1964 : Seg45.relationRow1964 rho) :
    rho 40195 = seg45RIl182 rho * (rho 40194) := by
  unfold Seg45.relationRow1964 at r1964
  rw [seg45RStep181IlLc rho] at r1964
  linear_combination -r1964

theorem seg45RStep181Acc (rho : Nat -> Seg45.F) :
    seg45RIl181 rho = seg45RIl182 rho + (rho 40194) - (rho 40195) := by
  have hstate : seg45RIl181 rho = seg45RIl182 rho + seg45RIlAtom35 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom35
  ring

theorem seg45RStep181Pe (rho : Nat -> Seg45.F) (r1965 : Seg45.relationRow1965 rho) :
    seg45RPe181 rho = seg45RPe182 rho * rho 39901 := by
  unfold Seg45.relationRow1965 at r1965
  unfold seg45RPe181 seg45RPe182
  linear_combination -r1965

theorem seg45RStep181 (rho : Nat -> Seg45.F) (r1963 : Seg45.relationRow1963 rho) (r1964 : Seg45.relationRow1964 rho) (r1965 : Seg45.relationRow1965 rho) :
    seg45RPe181 rho = seg45RPe182 rho * rho 39901 ∧
    seg45RIl181 rho = seg45RIl182 rho + seg45RPe182 rho * (1 - rho 39901) -
      seg45RIl182 rho * (seg45RPe182 rho * (1 - rho 39901)) := by
  constructor
  · exact seg45RStep181Pe rho r1965
  · rw [seg45RStep181Acc rho, seg45RStep181L rho r1963, seg45RStep181IlMul rho r1964, seg45RStep181L rho r1963]

theorem seg45_r_chunk181 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 182 (seg45RPeState rho 182) (seg45RIlState rho 182) := by
  have htail := seg45_r_chunk180 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1963, r1964, r1965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 181 ≤ n → n < 182 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 181 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep181 rho r1963 r1964 r1965
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 181 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
