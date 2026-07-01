import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk84

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep85L (rho : Nat -> Seg34.F) (r2147 : Seg34.relationRow2147 rho) :
    rho 33422 = seg34RPe86 rho * (1 - rho 32849) := by
  unfold Seg34.relationRow2147 at r2147
  unfold seg34RPe86
  linear_combination -r2147

theorem seg34RStep85IlMul (rho : Nat -> Seg34.F) (r2148 : Seg34.relationRow2148 rho) :
    rho 33423 = seg34RIl86 rho * (rho 33422) := by
  unfold Seg34.relationRow2148 at r2148
  rw [seg34RStep85IlLc rho] at r2148
  linear_combination -r2148

theorem seg34RStep85Acc (rho : Nat -> Seg34.F) :
    seg34RIl85 rho = seg34RIl86 rho + (rho 33422) - (rho 33423) := by
  have hstate : seg34RIl85 rho = seg34RIl86 rho + seg34RIlAtom81 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom81
  ring

theorem seg34RStep85Pe (rho : Nat -> Seg34.F) (r2149 : Seg34.relationRow2149 rho) :
    seg34RPe85 rho = seg34RPe86 rho * rho 32849 := by
  unfold Seg34.relationRow2149 at r2149
  unfold seg34RPe85 seg34RPe86
  linear_combination -r2149

theorem seg34RStep85 (rho : Nat -> Seg34.F) (r2147 : Seg34.relationRow2147 rho) (r2148 : Seg34.relationRow2148 rho) (r2149 : Seg34.relationRow2149 rho) :
    seg34RPe85 rho = seg34RPe86 rho * rho 32849 ∧
    seg34RIl85 rho = seg34RIl86 rho + seg34RPe86 rho * (1 - rho 32849) -
      seg34RIl86 rho * (seg34RPe86 rho * (1 - rho 32849)) := by
  constructor
  · exact seg34RStep85Pe rho r2149
  · rw [seg34RStep85Acc rho, seg34RStep85L rho r2147, seg34RStep85IlMul rho r2148, seg34RStep85L rho r2147]

theorem seg34_r_chunk85 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 86 (seg34RPeState rho 86) (seg34RIlState rho 86) := by
  have htail := seg34_r_chunk84 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2147, r2148, r2149, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 85 ≤ n → n < 86 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 85 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep85 rho r2147 r2148 r2149
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 85 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
