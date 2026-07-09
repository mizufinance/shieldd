import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk142

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep143L (rho : Nat -> Seg5.F) (r2039 : Seg5.relationRow2039 rho) :
    rho 1737 = seg5RPe144 rho * (1 - rho 1330) := by
  unfold Seg5.relationRow2039 at r2039
  unfold seg5RPe144
  linear_combination -r2039

theorem seg5RStep143IlMul (rho : Nat -> Seg5.F) (r2040 : Seg5.relationRow2040 rho) :
    rho 1738 = seg5RIl144 rho * (rho 1737) := by
  unfold Seg5.relationRow2040 at r2040
  rw [seg5RStep143IlLc rho] at r2040
  linear_combination -r2040

theorem seg5RStep143Acc (rho : Nat -> Seg5.F) :
    seg5RIl143 rho = seg5RIl144 rho + (rho 1737) - (rho 1738) := by
  have hstate : seg5RIl143 rho = seg5RIl144 rho + seg5RIlAtom55 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom55
  ring

theorem seg5RStep143Pe (rho : Nat -> Seg5.F) (r2041 : Seg5.relationRow2041 rho) :
    seg5RPe143 rho = seg5RPe144 rho * rho 1330 := by
  unfold Seg5.relationRow2041 at r2041
  unfold seg5RPe143 seg5RPe144
  linear_combination -r2041

theorem seg5RStep143 (rho : Nat -> Seg5.F) (r2039 : Seg5.relationRow2039 rho) (r2040 : Seg5.relationRow2040 rho) (r2041 : Seg5.relationRow2041 rho) :
    seg5RPe143 rho = seg5RPe144 rho * rho 1330 ∧
    seg5RIl143 rho = seg5RIl144 rho + seg5RPe144 rho * (1 - rho 1330) -
      seg5RIl144 rho * (seg5RPe144 rho * (1 - rho 1330)) := by
  constructor
  · exact seg5RStep143Pe rho r2041
  · rw [seg5RStep143Acc rho, seg5RStep143L rho r2039, seg5RStep143IlMul rho r2040, seg5RStep143L rho r2039]

theorem seg5_r_chunk143 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 144 (seg5RPeState rho 144) (seg5RIlState rho 144) := by
  have htail := seg5_r_chunk142 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2039, r2040, r2041, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 143 ≤ n → n < 144 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 143 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep143 rho r2039 r2040 r2041
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 143 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
