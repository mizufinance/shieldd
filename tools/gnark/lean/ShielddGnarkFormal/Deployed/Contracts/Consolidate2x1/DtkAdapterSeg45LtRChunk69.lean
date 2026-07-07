import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk68

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep69L (rho : Nat -> Seg45.F) (r2181 : Seg45.relationRow2181 rho) :
    rho 40412 = seg45RPe70 rho * (1 - rho 39789) := by
  unfold Seg45.relationRow2181 at r2181
  unfold seg45RPe70
  linear_combination -r2181

theorem seg45RStep69IlMul (rho : Nat -> Seg45.F) (r2182 : Seg45.relationRow2182 rho) :
    rho 40413 = seg45RIl70 rho * (rho 40412) := by
  unfold Seg45.relationRow2182 at r2182
  rw [seg45RStep69IlLc rho] at r2182
  linear_combination -r2182

theorem seg45RStep69Acc (rho : Nat -> Seg45.F) :
    seg45RIl69 rho = seg45RIl70 rho + (rho 40412) - (rho 40413) := by
  have hstate : seg45RIl69 rho = seg45RIl70 rho + seg45RIlAtom91 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom91
  ring

theorem seg45RStep69Pe (rho : Nat -> Seg45.F) (r2183 : Seg45.relationRow2183 rho) :
    seg45RPe69 rho = seg45RPe70 rho * rho 39789 := by
  unfold Seg45.relationRow2183 at r2183
  unfold seg45RPe69 seg45RPe70
  linear_combination -r2183

theorem seg45RStep69 (rho : Nat -> Seg45.F) (r2181 : Seg45.relationRow2181 rho) (r2182 : Seg45.relationRow2182 rho) (r2183 : Seg45.relationRow2183 rho) :
    seg45RPe69 rho = seg45RPe70 rho * rho 39789 ∧
    seg45RIl69 rho = seg45RIl70 rho + seg45RPe70 rho * (1 - rho 39789) -
      seg45RIl70 rho * (seg45RPe70 rho * (1 - rho 39789)) := by
  constructor
  · exact seg45RStep69Pe rho r2183
  · rw [seg45RStep69Acc rho, seg45RStep69L rho r2181, seg45RStep69IlMul rho r2182, seg45RStep69L rho r2181]

theorem seg45_r_chunk69 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 70 (seg45RPeState rho 70) (seg45RIlState rho 70) := by
  have htail := seg45_r_chunk68 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2181, r2182, r2183, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 69 ≤ n → n < 70 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 69 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep69 rho r2181 r2182 r2183
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 69 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
