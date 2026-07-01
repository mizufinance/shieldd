import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk146

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep147L (rho : Nat -> Seg16.F) (r2029 : Seg16.relationRow2029 rho) :
    rho 14604 = seg16RPe148 rho * (1 - rho 14211) := by
  unfold Seg16.relationRow2029 at r2029
  unfold seg16RPe148
  linear_combination -r2029

theorem seg16RStep147IlMul (rho : Nat -> Seg16.F) (r2030 : Seg16.relationRow2030 rho) :
    rho 14605 = seg16RIl148 rho * (rho 14604) := by
  unfold Seg16.relationRow2030 at r2030
  rw [seg16RStep147IlLc rho] at r2030
  linear_combination -r2030

theorem seg16RStep147Acc (rho : Nat -> Seg16.F) :
    seg16RIl147 rho = seg16RIl148 rho + (rho 14604) - (rho 14605) := by
  have hstate : seg16RIl147 rho = seg16RIl148 rho + seg16RIlAtom52 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom52
  ring

theorem seg16RStep147Pe (rho : Nat -> Seg16.F) (r2031 : Seg16.relationRow2031 rho) :
    seg16RPe147 rho = seg16RPe148 rho * rho 14211 := by
  unfold Seg16.relationRow2031 at r2031
  unfold seg16RPe147 seg16RPe148
  linear_combination -r2031

theorem seg16RStep147 (rho : Nat -> Seg16.F) (r2029 : Seg16.relationRow2029 rho) (r2030 : Seg16.relationRow2030 rho) (r2031 : Seg16.relationRow2031 rho) :
    seg16RPe147 rho = seg16RPe148 rho * rho 14211 ∧
    seg16RIl147 rho = seg16RIl148 rho + seg16RPe148 rho * (1 - rho 14211) -
      seg16RIl148 rho * (seg16RPe148 rho * (1 - rho 14211)) := by
  constructor
  · exact seg16RStep147Pe rho r2031
  · rw [seg16RStep147Acc rho, seg16RStep147L rho r2029, seg16RStep147IlMul rho r2030, seg16RStep147L rho r2029]

theorem seg16_r_chunk147 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 148 (seg16RPeState rho 148) (seg16RIlState rho 148) := by
  have htail := seg16_r_chunk146 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2029, r2030, r2031, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 147 ≤ n → n < 148 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 147 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep147 rho r2029 r2030 r2031
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 147 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
