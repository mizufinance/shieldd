import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk123

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep124L (rho : Nat -> Seg34.F) (r2070 : Seg34.relationRow2070 rho) :
    rho 33345 = seg34RPe125 rho * (1 - rho 32888) := by
  unfold Seg34.relationRow2070 at r2070
  unfold seg34RPe125
  linear_combination -r2070

theorem seg34RStep124IlMul (rho : Nat -> Seg34.F) (r2071 : Seg34.relationRow2071 rho) :
    rho 33346 = seg34RIl125 rho * (rho 33345) := by
  unfold Seg34.relationRow2071 at r2071
  rw [seg34RStep124IlLc rho] at r2071
  linear_combination -r2071

theorem seg34RStep124Acc (rho : Nat -> Seg34.F) :
    seg34RIl124 rho = seg34RIl125 rho + (rho 33345) - (rho 33346) := by
  have hstate : seg34RIl124 rho = seg34RIl125 rho + seg34RIlAtom61 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom61
  ring

theorem seg34RStep124Pe (rho : Nat -> Seg34.F) (r2072 : Seg34.relationRow2072 rho) :
    seg34RPe124 rho = seg34RPe125 rho * rho 32888 := by
  unfold Seg34.relationRow2072 at r2072
  unfold seg34RPe124 seg34RPe125
  linear_combination -r2072

theorem seg34RStep124 (rho : Nat -> Seg34.F) (r2070 : Seg34.relationRow2070 rho) (r2071 : Seg34.relationRow2071 rho) (r2072 : Seg34.relationRow2072 rho) :
    seg34RPe124 rho = seg34RPe125 rho * rho 32888 ∧
    seg34RIl124 rho = seg34RIl125 rho + seg34RPe125 rho * (1 - rho 32888) -
      seg34RIl125 rho * (seg34RPe125 rho * (1 - rho 32888)) := by
  constructor
  · exact seg34RStep124Pe rho r2072
  · rw [seg34RStep124Acc rho, seg34RStep124L rho r2070, seg34RStep124IlMul rho r2071, seg34RStep124L rho r2070]

theorem seg34_r_chunk124 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 125 (seg34RPeState rho 125) (seg34RIlState rho 125) := by
  have htail := seg34_r_chunk123 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2070, r2071, r2072, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 124 ≤ n → n < 125 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 124 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep124 rho r2070 r2071 r2072
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 124 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
