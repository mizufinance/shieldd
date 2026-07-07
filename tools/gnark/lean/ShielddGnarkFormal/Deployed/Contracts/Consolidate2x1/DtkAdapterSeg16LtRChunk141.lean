import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk140

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep141L (rho : Nat -> Seg16.F) (r2045 : Seg16.relationRow2045 rho) :
    rho 14620 = seg16RPe142 rho * (1 - rho 14205) := by
  unfold Seg16.relationRow2045 at r2045
  unfold seg16RPe142
  linear_combination -r2045

theorem seg16RStep141IlMul (rho : Nat -> Seg16.F) (r2046 : Seg16.relationRow2046 rho) :
    rho 14621 = seg16RIl142 rho * (rho 14620) := by
  unfold Seg16.relationRow2046 at r2046
  rw [seg16RStep141IlLc rho] at r2046
  linear_combination -r2046

theorem seg16RStep141Acc (rho : Nat -> Seg16.F) :
    seg16RIl141 rho = seg16RIl142 rho + (rho 14620) - (rho 14621) := by
  have hstate : seg16RIl141 rho = seg16RIl142 rho + seg16RIlAtom57 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom57
  ring

theorem seg16RStep141Pe (rho : Nat -> Seg16.F) (r2047 : Seg16.relationRow2047 rho) :
    seg16RPe141 rho = seg16RPe142 rho * rho 14205 := by
  unfold Seg16.relationRow2047 at r2047
  unfold seg16RPe141 seg16RPe142
  linear_combination -r2047

theorem seg16RStep141 (rho : Nat -> Seg16.F) (r2045 : Seg16.relationRow2045 rho) (r2046 : Seg16.relationRow2046 rho) (r2047 : Seg16.relationRow2047 rho) :
    seg16RPe141 rho = seg16RPe142 rho * rho 14205 ∧
    seg16RIl141 rho = seg16RIl142 rho + seg16RPe142 rho * (1 - rho 14205) -
      seg16RIl142 rho * (seg16RPe142 rho * (1 - rho 14205)) := by
  constructor
  · exact seg16RStep141Pe rho r2047
  · rw [seg16RStep141Acc rho, seg16RStep141L rho r2045, seg16RStep141IlMul rho r2046, seg16RStep141L rho r2045]

theorem seg16_r_chunk141 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 142 (seg16RPeState rho 142) (seg16RIlState rho 142) := by
  have htail := seg16_r_chunk140 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2045, r2046, r2047, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 141 ≤ n → n < 142 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 141 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep141 rho r2045 r2046 r2047
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 141 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
