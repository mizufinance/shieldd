import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk146

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep147L (rho : Nat -> Seg5.F) (r2029 : Seg5.relationRow2029 rho) :
    rho 1727 = seg5RPe148 rho * (1 - rho 1334) := by
  unfold Seg5.relationRow2029 at r2029
  unfold seg5RPe148
  linear_combination -r2029

theorem seg5RStep147IlMul (rho : Nat -> Seg5.F) (r2030 : Seg5.relationRow2030 rho) :
    rho 1728 = seg5RIl148 rho * (rho 1727) := by
  unfold Seg5.relationRow2030 at r2030
  rw [seg5RStep147IlLc rho] at r2030
  linear_combination -r2030

theorem seg5RStep147Acc (rho : Nat -> Seg5.F) :
    seg5RIl147 rho = seg5RIl148 rho + (rho 1727) - (rho 1728) := by
  have hstate : seg5RIl147 rho = seg5RIl148 rho + seg5RIlAtom52 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom52
  ring

theorem seg5RStep147Pe (rho : Nat -> Seg5.F) (r2031 : Seg5.relationRow2031 rho) :
    seg5RPe147 rho = seg5RPe148 rho * rho 1334 := by
  unfold Seg5.relationRow2031 at r2031
  unfold seg5RPe147 seg5RPe148
  linear_combination -r2031

theorem seg5RStep147 (rho : Nat -> Seg5.F) (r2029 : Seg5.relationRow2029 rho) (r2030 : Seg5.relationRow2030 rho) (r2031 : Seg5.relationRow2031 rho) :
    seg5RPe147 rho = seg5RPe148 rho * rho 1334 ∧
    seg5RIl147 rho = seg5RIl148 rho + seg5RPe148 rho * (1 - rho 1334) -
      seg5RIl148 rho * (seg5RPe148 rho * (1 - rho 1334)) := by
  constructor
  · exact seg5RStep147Pe rho r2031
  · rw [seg5RStep147Acc rho, seg5RStep147L rho r2029, seg5RStep147IlMul rho r2030, seg5RStep147L rho r2029]

theorem seg5_r_chunk147 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 148 (seg5RPeState rho 148) (seg5RIlState rho 148) := by
  have htail := seg5_r_chunk146 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2029, r2030, r2031, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 147 ≤ n → n < 148 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 147 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep147 rho r2029 r2030 r2031
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 147 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
