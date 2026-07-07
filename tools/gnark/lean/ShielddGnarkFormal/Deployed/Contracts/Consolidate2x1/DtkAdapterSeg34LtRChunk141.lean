import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk140

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep141L (rho : Nat -> Seg34.F) (r2045 : Seg34.relationRow2045 rho) :
    rho 33320 = seg34RPe142 rho * (1 - rho 32905) := by
  unfold Seg34.relationRow2045 at r2045
  unfold seg34RPe142
  linear_combination -r2045

theorem seg34RStep141IlMul (rho : Nat -> Seg34.F) (r2046 : Seg34.relationRow2046 rho) :
    rho 33321 = seg34RIl142 rho * (rho 33320) := by
  unfold Seg34.relationRow2046 at r2046
  rw [seg34RStep141IlLc rho] at r2046
  linear_combination -r2046

theorem seg34RStep141Acc (rho : Nat -> Seg34.F) :
    seg34RIl141 rho = seg34RIl142 rho + (rho 33320) - (rho 33321) := by
  have hstate : seg34RIl141 rho = seg34RIl142 rho + seg34RIlAtom57 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom57
  ring

theorem seg34RStep141Pe (rho : Nat -> Seg34.F) (r2047 : Seg34.relationRow2047 rho) :
    seg34RPe141 rho = seg34RPe142 rho * rho 32905 := by
  unfold Seg34.relationRow2047 at r2047
  unfold seg34RPe141 seg34RPe142
  linear_combination -r2047

theorem seg34RStep141 (rho : Nat -> Seg34.F) (r2045 : Seg34.relationRow2045 rho) (r2046 : Seg34.relationRow2046 rho) (r2047 : Seg34.relationRow2047 rho) :
    seg34RPe141 rho = seg34RPe142 rho * rho 32905 ∧
    seg34RIl141 rho = seg34RIl142 rho + seg34RPe142 rho * (1 - rho 32905) -
      seg34RIl142 rho * (seg34RPe142 rho * (1 - rho 32905)) := by
  constructor
  · exact seg34RStep141Pe rho r2047
  · rw [seg34RStep141Acc rho, seg34RStep141L rho r2045, seg34RStep141IlMul rho r2046, seg34RStep141L rho r2045]

theorem seg34_r_chunk141 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 142 (seg34RPeState rho 142) (seg34RIlState rho 142) := by
  have htail := seg34_r_chunk140 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2045, r2046, r2047, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 141 ≤ n → n < 142 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 141 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep141 rho r2045 r2046 r2047
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 141 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
