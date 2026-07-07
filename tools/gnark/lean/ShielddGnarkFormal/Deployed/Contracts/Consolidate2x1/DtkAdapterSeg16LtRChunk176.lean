import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk175

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep176L (rho : Nat -> Seg16.F) (r1974 : Seg16.relationRow1974 rho) :
    rho 14549 = seg16RPe177 rho * (1 - rho 14240) := by
  unfold Seg16.relationRow1974 at r1974
  unfold seg16RPe177
  linear_combination -r1974

theorem seg16RStep176IlMul (rho : Nat -> Seg16.F) (r1975 : Seg16.relationRow1975 rho) :
    rho 14550 = seg16RIl177 rho * (rho 14549) := by
  unfold Seg16.relationRow1975 at r1975
  rw [seg16RStep176IlLc rho] at r1975
  linear_combination -r1975

theorem seg16RStep176Acc (rho : Nat -> Seg16.F) :
    seg16RIl176 rho = seg16RIl177 rho + (rho 14549) - (rho 14550) := by
  have hstate : seg16RIl176 rho = seg16RIl177 rho + seg16RIlAtom38 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom38
  ring

theorem seg16RStep176Pe (rho : Nat -> Seg16.F) (r1976 : Seg16.relationRow1976 rho) :
    seg16RPe176 rho = seg16RPe177 rho * rho 14240 := by
  unfold Seg16.relationRow1976 at r1976
  unfold seg16RPe176 seg16RPe177
  linear_combination -r1976

theorem seg16RStep176 (rho : Nat -> Seg16.F) (r1974 : Seg16.relationRow1974 rho) (r1975 : Seg16.relationRow1975 rho) (r1976 : Seg16.relationRow1976 rho) :
    seg16RPe176 rho = seg16RPe177 rho * rho 14240 ∧
    seg16RIl176 rho = seg16RIl177 rho + seg16RPe177 rho * (1 - rho 14240) -
      seg16RIl177 rho * (seg16RPe177 rho * (1 - rho 14240)) := by
  constructor
  · exact seg16RStep176Pe rho r1976
  · rw [seg16RStep176Acc rho, seg16RStep176L rho r1974, seg16RStep176IlMul rho r1975, seg16RStep176L rho r1974]

theorem seg16_r_chunk176 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 177 (seg16RPeState rho 177) (seg16RIlState rho 177) := by
  have htail := seg16_r_chunk175 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1974, r1975, r1976, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 176 ≤ n → n < 177 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 176 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep176 rho r1974 r1975 r1976
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 176 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
