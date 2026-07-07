import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk108

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep109L (rho : Nat -> Seg34.F) (r2099 : Seg34.relationRow2099 rho) :
    rho 33374 = seg34RPe110 rho * (1 - rho 32873) := by
  unfold Seg34.relationRow2099 at r2099
  unfold seg34RPe110
  linear_combination -r2099

theorem seg34RStep109IlMul (rho : Nat -> Seg34.F) (r2100 : Seg34.relationRow2100 rho) :
    rho 33375 = seg34RIl110 rho * (rho 33374) := by
  unfold Seg34.relationRow2100 at r2100
  rw [seg34RStep109IlLc rho] at r2100
  linear_combination -r2100

theorem seg34RStep109Acc (rho : Nat -> Seg34.F) :
    seg34RIl109 rho = seg34RIl110 rho + (rho 33374) - (rho 33375) := by
  have hstate : seg34RIl109 rho = seg34RIl110 rho + seg34RIlAtom69 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom69
  ring

theorem seg34RStep109Pe (rho : Nat -> Seg34.F) (r2101 : Seg34.relationRow2101 rho) :
    seg34RPe109 rho = seg34RPe110 rho * rho 32873 := by
  unfold Seg34.relationRow2101 at r2101
  unfold seg34RPe109 seg34RPe110
  linear_combination -r2101

theorem seg34RStep109 (rho : Nat -> Seg34.F) (r2099 : Seg34.relationRow2099 rho) (r2100 : Seg34.relationRow2100 rho) (r2101 : Seg34.relationRow2101 rho) :
    seg34RPe109 rho = seg34RPe110 rho * rho 32873 ∧
    seg34RIl109 rho = seg34RIl110 rho + seg34RPe110 rho * (1 - rho 32873) -
      seg34RIl110 rho * (seg34RPe110 rho * (1 - rho 32873)) := by
  constructor
  · exact seg34RStep109Pe rho r2101
  · rw [seg34RStep109Acc rho, seg34RStep109L rho r2099, seg34RStep109IlMul rho r2100, seg34RStep109L rho r2099]

theorem seg34_r_chunk109 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 110 (seg34RPeState rho 110) (seg34RIlState rho 110) := by
  have htail := seg34_r_chunk108 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2099, r2100, r2101, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 109 ≤ n → n < 110 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 109 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep109 rho r2099 r2100 r2101
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 109 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
