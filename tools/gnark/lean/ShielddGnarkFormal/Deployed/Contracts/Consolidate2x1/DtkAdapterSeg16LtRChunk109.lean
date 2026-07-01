import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk108

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep109L (rho : Nat -> Seg16.F) (r2099 : Seg16.relationRow2099 rho) :
    rho 14674 = seg16RPe110 rho * (1 - rho 14173) := by
  unfold Seg16.relationRow2099 at r2099
  unfold seg16RPe110
  linear_combination -r2099

theorem seg16RStep109IlMul (rho : Nat -> Seg16.F) (r2100 : Seg16.relationRow2100 rho) :
    rho 14675 = seg16RIl110 rho * (rho 14674) := by
  unfold Seg16.relationRow2100 at r2100
  rw [seg16RStep109IlLc rho] at r2100
  linear_combination -r2100

theorem seg16RStep109Acc (rho : Nat -> Seg16.F) :
    seg16RIl109 rho = seg16RIl110 rho + (rho 14674) - (rho 14675) := by
  have hstate : seg16RIl109 rho = seg16RIl110 rho + seg16RIlAtom69 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom69
  ring

theorem seg16RStep109Pe (rho : Nat -> Seg16.F) (r2101 : Seg16.relationRow2101 rho) :
    seg16RPe109 rho = seg16RPe110 rho * rho 14173 := by
  unfold Seg16.relationRow2101 at r2101
  unfold seg16RPe109 seg16RPe110
  linear_combination -r2101

theorem seg16RStep109 (rho : Nat -> Seg16.F) (r2099 : Seg16.relationRow2099 rho) (r2100 : Seg16.relationRow2100 rho) (r2101 : Seg16.relationRow2101 rho) :
    seg16RPe109 rho = seg16RPe110 rho * rho 14173 ∧
    seg16RIl109 rho = seg16RIl110 rho + seg16RPe110 rho * (1 - rho 14173) -
      seg16RIl110 rho * (seg16RPe110 rho * (1 - rho 14173)) := by
  constructor
  · exact seg16RStep109Pe rho r2101
  · rw [seg16RStep109Acc rho, seg16RStep109L rho r2099, seg16RStep109IlMul rho r2100, seg16RStep109L rho r2099]

theorem seg16_r_chunk109 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 110 (seg16RPeState rho 110) (seg16RIlState rho 110) := by
  have htail := seg16_r_chunk108 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2099, r2100, r2101, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 109 ≤ n → n < 110 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 109 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep109 rho r2099 r2100 r2101
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 109 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
