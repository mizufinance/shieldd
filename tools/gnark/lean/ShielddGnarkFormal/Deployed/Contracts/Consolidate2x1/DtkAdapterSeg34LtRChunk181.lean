import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk180

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep181L (rho : Nat -> Seg34.F) (r1963 : Seg34.relationRow1963 rho) :
    rho 33238 = seg34RPe182 rho * (1 - rho 32945) := by
  unfold Seg34.relationRow1963 at r1963
  unfold seg34RPe182
  linear_combination -r1963

theorem seg34RStep181IlMul (rho : Nat -> Seg34.F) (r1964 : Seg34.relationRow1964 rho) :
    rho 33239 = seg34RIl182 rho * (rho 33238) := by
  unfold Seg34.relationRow1964 at r1964
  rw [seg34RStep181IlLc rho] at r1964
  linear_combination -r1964

theorem seg34RStep181Acc (rho : Nat -> Seg34.F) :
    seg34RIl181 rho = seg34RIl182 rho + (rho 33238) - (rho 33239) := by
  have hstate : seg34RIl181 rho = seg34RIl182 rho + seg34RIlAtom35 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom35
  ring

theorem seg34RStep181Pe (rho : Nat -> Seg34.F) (r1965 : Seg34.relationRow1965 rho) :
    seg34RPe181 rho = seg34RPe182 rho * rho 32945 := by
  unfold Seg34.relationRow1965 at r1965
  unfold seg34RPe181 seg34RPe182
  linear_combination -r1965

theorem seg34RStep181 (rho : Nat -> Seg34.F) (r1963 : Seg34.relationRow1963 rho) (r1964 : Seg34.relationRow1964 rho) (r1965 : Seg34.relationRow1965 rho) :
    seg34RPe181 rho = seg34RPe182 rho * rho 32945 ∧
    seg34RIl181 rho = seg34RIl182 rho + seg34RPe182 rho * (1 - rho 32945) -
      seg34RIl182 rho * (seg34RPe182 rho * (1 - rho 32945)) := by
  constructor
  · exact seg34RStep181Pe rho r1965
  · rw [seg34RStep181Acc rho, seg34RStep181L rho r1963, seg34RStep181IlMul rho r1964, seg34RStep181L rho r1963]

theorem seg34_r_chunk181 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 182 (seg34RPeState rho 182) (seg34RIlState rho 182) := by
  have htail := seg34_r_chunk180 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1963, r1964, r1965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 181 ≤ n → n < 182 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 181 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep181 rho r1963 r1964 r1965
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 181 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
