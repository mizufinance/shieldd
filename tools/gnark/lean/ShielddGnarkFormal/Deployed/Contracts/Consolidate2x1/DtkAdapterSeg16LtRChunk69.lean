import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk68

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep69L (rho : Nat -> Seg16.F) (r2181 : Seg16.relationRow2181 rho) :
    rho 14756 = seg16RPe70 rho * (1 - rho 14133) := by
  unfold Seg16.relationRow2181 at r2181
  unfold seg16RPe70
  linear_combination -r2181

theorem seg16RStep69IlMul (rho : Nat -> Seg16.F) (r2182 : Seg16.relationRow2182 rho) :
    rho 14757 = seg16RIl70 rho * (rho 14756) := by
  unfold Seg16.relationRow2182 at r2182
  rw [seg16RStep69IlLc rho] at r2182
  linear_combination -r2182

theorem seg16RStep69Acc (rho : Nat -> Seg16.F) :
    seg16RIl69 rho = seg16RIl70 rho + (rho 14756) - (rho 14757) := by
  have hstate : seg16RIl69 rho = seg16RIl70 rho + seg16RIlAtom91 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom91
  ring

theorem seg16RStep69Pe (rho : Nat -> Seg16.F) (r2183 : Seg16.relationRow2183 rho) :
    seg16RPe69 rho = seg16RPe70 rho * rho 14133 := by
  unfold Seg16.relationRow2183 at r2183
  unfold seg16RPe69 seg16RPe70
  linear_combination -r2183

theorem seg16RStep69 (rho : Nat -> Seg16.F) (r2181 : Seg16.relationRow2181 rho) (r2182 : Seg16.relationRow2182 rho) (r2183 : Seg16.relationRow2183 rho) :
    seg16RPe69 rho = seg16RPe70 rho * rho 14133 ∧
    seg16RIl69 rho = seg16RIl70 rho + seg16RPe70 rho * (1 - rho 14133) -
      seg16RIl70 rho * (seg16RPe70 rho * (1 - rho 14133)) := by
  constructor
  · exact seg16RStep69Pe rho r2183
  · rw [seg16RStep69Acc rho, seg16RStep69L rho r2181, seg16RStep69IlMul rho r2182, seg16RStep69L rho r2181]

theorem seg16_r_chunk69 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 70 (seg16RPeState rho 70) (seg16RIlState rho 70) := by
  have htail := seg16_r_chunk68 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2181, r2182, r2183, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 69 ≤ n → n < 70 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 69 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep69 rho r2181 r2182 r2183
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 69 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
