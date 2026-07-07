import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk146

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep147L (rho : Nat -> Seg34.F) (r2029 : Seg34.relationRow2029 rho) :
    rho 33304 = seg34RPe148 rho * (1 - rho 32911) := by
  unfold Seg34.relationRow2029 at r2029
  unfold seg34RPe148
  linear_combination -r2029

theorem seg34RStep147IlMul (rho : Nat -> Seg34.F) (r2030 : Seg34.relationRow2030 rho) :
    rho 33305 = seg34RIl148 rho * (rho 33304) := by
  unfold Seg34.relationRow2030 at r2030
  rw [seg34RStep147IlLc rho] at r2030
  linear_combination -r2030

theorem seg34RStep147Acc (rho : Nat -> Seg34.F) :
    seg34RIl147 rho = seg34RIl148 rho + (rho 33304) - (rho 33305) := by
  have hstate : seg34RIl147 rho = seg34RIl148 rho + seg34RIlAtom52 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom52
  ring

theorem seg34RStep147Pe (rho : Nat -> Seg34.F) (r2031 : Seg34.relationRow2031 rho) :
    seg34RPe147 rho = seg34RPe148 rho * rho 32911 := by
  unfold Seg34.relationRow2031 at r2031
  unfold seg34RPe147 seg34RPe148
  linear_combination -r2031

theorem seg34RStep147 (rho : Nat -> Seg34.F) (r2029 : Seg34.relationRow2029 rho) (r2030 : Seg34.relationRow2030 rho) (r2031 : Seg34.relationRow2031 rho) :
    seg34RPe147 rho = seg34RPe148 rho * rho 32911 ∧
    seg34RIl147 rho = seg34RIl148 rho + seg34RPe148 rho * (1 - rho 32911) -
      seg34RIl148 rho * (seg34RPe148 rho * (1 - rho 32911)) := by
  constructor
  · exact seg34RStep147Pe rho r2031
  · rw [seg34RStep147Acc rho, seg34RStep147L rho r2029, seg34RStep147IlMul rho r2030, seg34RStep147L rho r2029]

theorem seg34_r_chunk147 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 148 (seg34RPeState rho 148) (seg34RIlState rho 148) := by
  have htail := seg34_r_chunk146 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2029, r2030, r2031, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 147 ≤ n → n < 148 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 147 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep147 rho r2029 r2030 r2031
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 147 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
