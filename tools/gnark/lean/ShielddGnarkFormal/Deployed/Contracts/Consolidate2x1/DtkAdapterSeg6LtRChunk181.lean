import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk180

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep181L (rho : Nat -> Seg6.F) (r1963 : Seg6.relationRow1963 rho) :
    rho 2364 = seg6RPe182 rho * (1 - rho 2071) := by
  unfold Seg6.relationRow1963 at r1963
  unfold seg6RPe182
  linear_combination -r1963

theorem seg6RStep181IlMul (rho : Nat -> Seg6.F) (r1964 : Seg6.relationRow1964 rho) :
    rho 2365 = seg6RIl182 rho * (rho 2364) := by
  unfold Seg6.relationRow1964 at r1964
  rw [seg6RStep181IlLc rho] at r1964
  linear_combination -r1964

theorem seg6RStep181Acc (rho : Nat -> Seg6.F) :
    seg6RIl181 rho = seg6RIl182 rho + (rho 2364) - (rho 2365) := by
  have hstate : seg6RIl181 rho = seg6RIl182 rho + seg6RIlAtom35 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom35
  ring

theorem seg6RStep181Pe (rho : Nat -> Seg6.F) (r1965 : Seg6.relationRow1965 rho) :
    seg6RPe181 rho = seg6RPe182 rho * rho 2071 := by
  unfold Seg6.relationRow1965 at r1965
  unfold seg6RPe181 seg6RPe182
  linear_combination -r1965

theorem seg6RStep181 (rho : Nat -> Seg6.F) (r1963 : Seg6.relationRow1963 rho) (r1964 : Seg6.relationRow1964 rho) (r1965 : Seg6.relationRow1965 rho) :
    seg6RPe181 rho = seg6RPe182 rho * rho 2071 ∧
    seg6RIl181 rho = seg6RIl182 rho + seg6RPe182 rho * (1 - rho 2071) -
      seg6RIl182 rho * (seg6RPe182 rho * (1 - rho 2071)) := by
  constructor
  · exact seg6RStep181Pe rho r1965
  · rw [seg6RStep181Acc rho, seg6RStep181L rho r1963, seg6RStep181IlMul rho r1964, seg6RStep181L rho r1963]

theorem seg6_r_chunk181 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 182 (seg6RPeState rho 182) (seg6RIlState rho 182) := by
  have htail := seg6_r_chunk180 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1963, r1964, r1965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 181 ≤ n → n < 182 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 181 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep181 rho r1963 r1964 r1965
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 181 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
