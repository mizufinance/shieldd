import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk142

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep143L (rho : Nat -> Seg45.F) (r2039 : Seg45.relationRow2039 rho) :
    rho 40270 = seg45RPe144 rho * (1 - rho 39863) := by
  unfold Seg45.relationRow2039 at r2039
  unfold seg45RPe144
  linear_combination -r2039

theorem seg45RStep143IlMul (rho : Nat -> Seg45.F) (r2040 : Seg45.relationRow2040 rho) :
    rho 40271 = seg45RIl144 rho * (rho 40270) := by
  unfold Seg45.relationRow2040 at r2040
  rw [seg45RStep143IlLc rho] at r2040
  linear_combination -r2040

theorem seg45RStep143Acc (rho : Nat -> Seg45.F) :
    seg45RIl143 rho = seg45RIl144 rho + (rho 40270) - (rho 40271) := by
  have hstate : seg45RIl143 rho = seg45RIl144 rho + seg45RIlAtom55 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom55
  ring

theorem seg45RStep143Pe (rho : Nat -> Seg45.F) (r2041 : Seg45.relationRow2041 rho) :
    seg45RPe143 rho = seg45RPe144 rho * rho 39863 := by
  unfold Seg45.relationRow2041 at r2041
  unfold seg45RPe143 seg45RPe144
  linear_combination -r2041

theorem seg45RStep143 (rho : Nat -> Seg45.F) (r2039 : Seg45.relationRow2039 rho) (r2040 : Seg45.relationRow2040 rho) (r2041 : Seg45.relationRow2041 rho) :
    seg45RPe143 rho = seg45RPe144 rho * rho 39863 ∧
    seg45RIl143 rho = seg45RIl144 rho + seg45RPe144 rho * (1 - rho 39863) -
      seg45RIl144 rho * (seg45RPe144 rho * (1 - rho 39863)) := by
  constructor
  · exact seg45RStep143Pe rho r2041
  · rw [seg45RStep143Acc rho, seg45RStep143L rho r2039, seg45RStep143IlMul rho r2040, seg45RStep143L rho r2039]

theorem seg45_r_chunk143 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 144 (seg45RPeState rho 144) (seg45RIlState rho 144) := by
  have htail := seg45_r_chunk142 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2039, r2040, r2041, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 143 ≤ n → n < 144 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 143 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep143 rho r2039 r2040 r2041
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 143 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
