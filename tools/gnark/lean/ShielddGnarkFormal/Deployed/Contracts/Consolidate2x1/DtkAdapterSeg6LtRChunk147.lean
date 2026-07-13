import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk146

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep147L (rho : Nat -> Seg6.F) (r2029 : Seg6.relationRow2029 rho) :
    rho 2430 = seg6RPe148 rho * (1 - rho 2037) := by
  unfold Seg6.relationRow2029 at r2029
  unfold seg6RPe148
  linear_combination -r2029

theorem seg6RStep147IlMul (rho : Nat -> Seg6.F) (r2030 : Seg6.relationRow2030 rho) :
    rho 2431 = seg6RIl148 rho * (rho 2430) := by
  unfold Seg6.relationRow2030 at r2030
  rw [seg6RStep147IlLc rho] at r2030
  linear_combination -r2030

theorem seg6RStep147Acc (rho : Nat -> Seg6.F) :
    seg6RIl147 rho = seg6RIl148 rho + (rho 2430) - (rho 2431) := by
  have hstate : seg6RIl147 rho = seg6RIl148 rho + seg6RIlAtom52 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom52
  ring

theorem seg6RStep147Pe (rho : Nat -> Seg6.F) (r2031 : Seg6.relationRow2031 rho) :
    seg6RPe147 rho = seg6RPe148 rho * rho 2037 := by
  unfold Seg6.relationRow2031 at r2031
  unfold seg6RPe147 seg6RPe148
  linear_combination -r2031

theorem seg6RStep147 (rho : Nat -> Seg6.F) (r2029 : Seg6.relationRow2029 rho) (r2030 : Seg6.relationRow2030 rho) (r2031 : Seg6.relationRow2031 rho) :
    seg6RPe147 rho = seg6RPe148 rho * rho 2037 ∧
    seg6RIl147 rho = seg6RIl148 rho + seg6RPe148 rho * (1 - rho 2037) -
      seg6RIl148 rho * (seg6RPe148 rho * (1 - rho 2037)) := by
  constructor
  · exact seg6RStep147Pe rho r2031
  · rw [seg6RStep147Acc rho, seg6RStep147L rho r2029, seg6RStep147IlMul rho r2030, seg6RStep147L rho r2029]

theorem seg6_r_chunk147 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 148 (seg6RPeState rho 148) (seg6RIlState rho 148) := by
  have htail := seg6_r_chunk146 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2029, r2030, r2031, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 147 ≤ n → n < 148 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 147 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep147 rho r2029 r2030 r2031
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 147 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
