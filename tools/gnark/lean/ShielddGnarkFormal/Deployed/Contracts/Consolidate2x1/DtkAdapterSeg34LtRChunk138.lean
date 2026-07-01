import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk137

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep138L (rho : Nat -> Seg34.F) (r2052 : Seg34.relationRow2052 rho) :
    rho 33327 = seg34RPe139 rho * (1 - rho 32902) := by
  unfold Seg34.relationRow2052 at r2052
  unfold seg34RPe139
  linear_combination -r2052

theorem seg34RStep138IlMul (rho : Nat -> Seg34.F) (r2053 : Seg34.relationRow2053 rho) :
    rho 33328 = seg34RIl139 rho * (rho 33327) := by
  unfold Seg34.relationRow2053 at r2053
  rw [seg34RStep138IlLc rho] at r2053
  linear_combination -r2053

theorem seg34RStep138Acc (rho : Nat -> Seg34.F) :
    seg34RIl138 rho = seg34RIl139 rho + (rho 33327) - (rho 33328) := by
  have hstate : seg34RIl138 rho = seg34RIl139 rho + seg34RIlAtom59 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom59
  ring

theorem seg34RStep138Pe (rho : Nat -> Seg34.F) (r2054 : Seg34.relationRow2054 rho) :
    seg34RPe138 rho = seg34RPe139 rho * rho 32902 := by
  unfold Seg34.relationRow2054 at r2054
  unfold seg34RPe138 seg34RPe139
  linear_combination -r2054

theorem seg34RStep138 (rho : Nat -> Seg34.F) (r2052 : Seg34.relationRow2052 rho) (r2053 : Seg34.relationRow2053 rho) (r2054 : Seg34.relationRow2054 rho) :
    seg34RPe138 rho = seg34RPe139 rho * rho 32902 ∧
    seg34RIl138 rho = seg34RIl139 rho + seg34RPe139 rho * (1 - rho 32902) -
      seg34RIl139 rho * (seg34RPe139 rho * (1 - rho 32902)) := by
  constructor
  · exact seg34RStep138Pe rho r2054
  · rw [seg34RStep138Acc rho, seg34RStep138L rho r2052, seg34RStep138IlMul rho r2053, seg34RStep138L rho r2052]

theorem seg34_r_chunk138 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 139 (seg34RPeState rho 139) (seg34RIlState rho 139) := by
  have htail := seg34_r_chunk137 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2052, r2053, r2054, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 138 ≤ n → n < 139 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 138 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep138 rho r2052 r2053 r2054
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 138 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
