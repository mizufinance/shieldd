import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk68

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep69L (rho : Nat -> Seg5.F) (r2181 : Seg5.relationRow2181 rho) :
    rho 1879 = seg5RPe70 rho * (1 - rho 1256) := by
  unfold Seg5.relationRow2181 at r2181
  unfold seg5RPe70
  linear_combination -r2181

theorem seg5RStep69IlMul (rho : Nat -> Seg5.F) (r2182 : Seg5.relationRow2182 rho) :
    rho 1880 = seg5RIl70 rho * (rho 1879) := by
  unfold Seg5.relationRow2182 at r2182
  rw [seg5RStep69IlLc rho] at r2182
  linear_combination -r2182

theorem seg5RStep69Acc (rho : Nat -> Seg5.F) :
    seg5RIl69 rho = seg5RIl70 rho + (rho 1879) - (rho 1880) := by
  have hstate : seg5RIl69 rho = seg5RIl70 rho + seg5RIlAtom91 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom91
  ring

theorem seg5RStep69Pe (rho : Nat -> Seg5.F) (r2183 : Seg5.relationRow2183 rho) :
    seg5RPe69 rho = seg5RPe70 rho * rho 1256 := by
  unfold Seg5.relationRow2183 at r2183
  unfold seg5RPe69 seg5RPe70
  linear_combination -r2183

theorem seg5RStep69 (rho : Nat -> Seg5.F) (r2181 : Seg5.relationRow2181 rho) (r2182 : Seg5.relationRow2182 rho) (r2183 : Seg5.relationRow2183 rho) :
    seg5RPe69 rho = seg5RPe70 rho * rho 1256 ∧
    seg5RIl69 rho = seg5RIl70 rho + seg5RPe70 rho * (1 - rho 1256) -
      seg5RIl70 rho * (seg5RPe70 rho * (1 - rho 1256)) := by
  constructor
  · exact seg5RStep69Pe rho r2183
  · rw [seg5RStep69Acc rho, seg5RStep69L rho r2181, seg5RStep69IlMul rho r2182, seg5RStep69L rho r2181]

theorem seg5_r_chunk69 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 70 (seg5RPeState rho 70) (seg5RIlState rho 70) := by
  have htail := seg5_r_chunk68 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2181, r2182, r2183, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 69 ≤ n → n < 70 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 69 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep69 rho r2181 r2182 r2183
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 69 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
