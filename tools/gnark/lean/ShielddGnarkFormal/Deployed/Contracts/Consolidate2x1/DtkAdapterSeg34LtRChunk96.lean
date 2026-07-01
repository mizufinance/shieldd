import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk95

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep96L (rho : Nat -> Seg34.F) (r2128 : Seg34.relationRow2128 rho) :
    rho 33403 = seg34RPe97 rho * (1 - rho 32860) := by
  unfold Seg34.relationRow2128 at r2128
  unfold seg34RPe97
  linear_combination -r2128

theorem seg34RStep96IlMul (rho : Nat -> Seg34.F) (r2129 : Seg34.relationRow2129 rho) :
    rho 33404 = seg34RIl97 rho * (rho 33403) := by
  unfold Seg34.relationRow2129 at r2129
  rw [seg34RStep96IlLc rho] at r2129
  linear_combination -r2129

theorem seg34RStep96Acc (rho : Nat -> Seg34.F) :
    seg34RIl96 rho = seg34RIl97 rho + (rho 33403) - (rho 33404) := by
  have hstate : seg34RIl96 rho = seg34RIl97 rho + seg34RIlAtom77 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom77
  ring

theorem seg34RStep96Pe (rho : Nat -> Seg34.F) (r2130 : Seg34.relationRow2130 rho) :
    seg34RPe96 rho = seg34RPe97 rho * rho 32860 := by
  unfold Seg34.relationRow2130 at r2130
  unfold seg34RPe96 seg34RPe97
  linear_combination -r2130

theorem seg34RStep96 (rho : Nat -> Seg34.F) (r2128 : Seg34.relationRow2128 rho) (r2129 : Seg34.relationRow2129 rho) (r2130 : Seg34.relationRow2130 rho) :
    seg34RPe96 rho = seg34RPe97 rho * rho 32860 ∧
    seg34RIl96 rho = seg34RIl97 rho + seg34RPe97 rho * (1 - rho 32860) -
      seg34RIl97 rho * (seg34RPe97 rho * (1 - rho 32860)) := by
  constructor
  · exact seg34RStep96Pe rho r2130
  · rw [seg34RStep96Acc rho, seg34RStep96L rho r2128, seg34RStep96IlMul rho r2129, seg34RStep96L rho r2128]

theorem seg34_r_chunk96 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 97 (seg34RPeState rho 97) (seg34RIlState rho 97) := by
  have htail := seg34_r_chunk95 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2128, r2129, r2130, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 96 ≤ n → n < 97 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 96 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep96 rho r2128 r2129 r2130
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 96 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
