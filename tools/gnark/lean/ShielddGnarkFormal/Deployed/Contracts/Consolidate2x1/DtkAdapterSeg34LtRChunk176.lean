import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk175

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep176L (rho : Nat -> Seg34.F) (r1974 : Seg34.relationRow1974 rho) :
    rho 33249 = seg34RPe177 rho * (1 - rho 32940) := by
  unfold Seg34.relationRow1974 at r1974
  unfold seg34RPe177
  linear_combination -r1974

theorem seg34RStep176IlMul (rho : Nat -> Seg34.F) (r1975 : Seg34.relationRow1975 rho) :
    rho 33250 = seg34RIl177 rho * (rho 33249) := by
  unfold Seg34.relationRow1975 at r1975
  rw [seg34RStep176IlLc rho] at r1975
  linear_combination -r1975

theorem seg34RStep176Acc (rho : Nat -> Seg34.F) :
    seg34RIl176 rho = seg34RIl177 rho + (rho 33249) - (rho 33250) := by
  have hstate : seg34RIl176 rho = seg34RIl177 rho + seg34RIlAtom38 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom38
  ring

theorem seg34RStep176Pe (rho : Nat -> Seg34.F) (r1976 : Seg34.relationRow1976 rho) :
    seg34RPe176 rho = seg34RPe177 rho * rho 32940 := by
  unfold Seg34.relationRow1976 at r1976
  unfold seg34RPe176 seg34RPe177
  linear_combination -r1976

theorem seg34RStep176 (rho : Nat -> Seg34.F) (r1974 : Seg34.relationRow1974 rho) (r1975 : Seg34.relationRow1975 rho) (r1976 : Seg34.relationRow1976 rho) :
    seg34RPe176 rho = seg34RPe177 rho * rho 32940 ∧
    seg34RIl176 rho = seg34RIl177 rho + seg34RPe177 rho * (1 - rho 32940) -
      seg34RIl177 rho * (seg34RPe177 rho * (1 - rho 32940)) := by
  constructor
  · exact seg34RStep176Pe rho r1976
  · rw [seg34RStep176Acc rho, seg34RStep176L rho r1974, seg34RStep176IlMul rho r1975, seg34RStep176L rho r1974]

theorem seg34_r_chunk176 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 177 (seg34RPeState rho 177) (seg34RIlState rho 177) := by
  have htail := seg34_r_chunk175 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1974, r1975, r1976, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 176 ≤ n → n < 177 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 176 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep176 rho r1974 r1975 r1976
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 176 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
