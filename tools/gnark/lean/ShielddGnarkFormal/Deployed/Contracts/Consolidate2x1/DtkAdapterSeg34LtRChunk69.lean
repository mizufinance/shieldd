import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk68

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep69L (rho : Nat -> Seg34.F) (r2181 : Seg34.relationRow2181 rho) :
    rho 33456 = seg34RPe70 rho * (1 - rho 32833) := by
  unfold Seg34.relationRow2181 at r2181
  unfold seg34RPe70
  linear_combination -r2181

theorem seg34RStep69IlMul (rho : Nat -> Seg34.F) (r2182 : Seg34.relationRow2182 rho) :
    rho 33457 = seg34RIl70 rho * (rho 33456) := by
  unfold Seg34.relationRow2182 at r2182
  rw [seg34RStep69IlLc rho] at r2182
  linear_combination -r2182

theorem seg34RStep69Acc (rho : Nat -> Seg34.F) :
    seg34RIl69 rho = seg34RIl70 rho + (rho 33456) - (rho 33457) := by
  have hstate : seg34RIl69 rho = seg34RIl70 rho + seg34RIlAtom91 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom91
  ring

theorem seg34RStep69Pe (rho : Nat -> Seg34.F) (r2183 : Seg34.relationRow2183 rho) :
    seg34RPe69 rho = seg34RPe70 rho * rho 32833 := by
  unfold Seg34.relationRow2183 at r2183
  unfold seg34RPe69 seg34RPe70
  linear_combination -r2183

theorem seg34RStep69 (rho : Nat -> Seg34.F) (r2181 : Seg34.relationRow2181 rho) (r2182 : Seg34.relationRow2182 rho) (r2183 : Seg34.relationRow2183 rho) :
    seg34RPe69 rho = seg34RPe70 rho * rho 32833 ∧
    seg34RIl69 rho = seg34RIl70 rho + seg34RPe70 rho * (1 - rho 32833) -
      seg34RIl70 rho * (seg34RPe70 rho * (1 - rho 32833)) := by
  constructor
  · exact seg34RStep69Pe rho r2183
  · rw [seg34RStep69Acc rho, seg34RStep69L rho r2181, seg34RStep69IlMul rho r2182, seg34RStep69L rho r2181]

theorem seg34_r_chunk69 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 70 (seg34RPeState rho 70) (seg34RIlState rho 70) := by
  have htail := seg34_r_chunk68 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2181, r2182, r2183, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 69 ≤ n → n < 70 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 69 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep69 rho r2181 r2182 r2183
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 69 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
