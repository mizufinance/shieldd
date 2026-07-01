import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk180

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep181L (rho : Nat -> Seg16.F) (r1963 : Seg16.relationRow1963 rho) :
    rho 14538 = seg16RPe182 rho * (1 - rho 14245) := by
  unfold Seg16.relationRow1963 at r1963
  unfold seg16RPe182
  linear_combination -r1963

theorem seg16RStep181IlMul (rho : Nat -> Seg16.F) (r1964 : Seg16.relationRow1964 rho) :
    rho 14539 = seg16RIl182 rho * (rho 14538) := by
  unfold Seg16.relationRow1964 at r1964
  rw [seg16RStep181IlLc rho] at r1964
  linear_combination -r1964

theorem seg16RStep181Acc (rho : Nat -> Seg16.F) :
    seg16RIl181 rho = seg16RIl182 rho + (rho 14538) - (rho 14539) := by
  have hstate : seg16RIl181 rho = seg16RIl182 rho + seg16RIlAtom35 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom35
  ring

theorem seg16RStep181Pe (rho : Nat -> Seg16.F) (r1965 : Seg16.relationRow1965 rho) :
    seg16RPe181 rho = seg16RPe182 rho * rho 14245 := by
  unfold Seg16.relationRow1965 at r1965
  unfold seg16RPe181 seg16RPe182
  linear_combination -r1965

theorem seg16RStep181 (rho : Nat -> Seg16.F) (r1963 : Seg16.relationRow1963 rho) (r1964 : Seg16.relationRow1964 rho) (r1965 : Seg16.relationRow1965 rho) :
    seg16RPe181 rho = seg16RPe182 rho * rho 14245 ∧
    seg16RIl181 rho = seg16RIl182 rho + seg16RPe182 rho * (1 - rho 14245) -
      seg16RIl182 rho * (seg16RPe182 rho * (1 - rho 14245)) := by
  constructor
  · exact seg16RStep181Pe rho r1965
  · rw [seg16RStep181Acc rho, seg16RStep181L rho r1963, seg16RStep181IlMul rho r1964, seg16RStep181L rho r1963]

theorem seg16_r_chunk181 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 182 (seg16RPeState rho 182) (seg16RIlState rho 182) := by
  have htail := seg16_r_chunk180 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1963, r1964, r1965, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 181 ≤ n → n < 182 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 181 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep181 rho r1963 r1964 r1965
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 181 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
