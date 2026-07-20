import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk68

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep69L (rho : Nat -> Seg6.F) (r2181 : Seg6.relationRow2181 rho) :
    rho 2576 = seg6RPe70 rho * (1 - rho 1953) := by
  unfold Seg6.relationRow2181 at r2181
  unfold seg6RPe70
  linear_combination -r2181

theorem seg6RStep69IlMul (rho : Nat -> Seg6.F) (r2182 : Seg6.relationRow2182 rho) :
    rho 2577 = seg6RIl70 rho * (rho 2576) := by
  unfold Seg6.relationRow2182 at r2182
  rw [seg6RStep69IlLc rho] at r2182
  linear_combination -r2182

theorem seg6RStep69Acc (rho : Nat -> Seg6.F) :
    seg6RIl69 rho = seg6RIl70 rho + (rho 2576) - (rho 2577) := by
  have hstate : seg6RIl69 rho = seg6RIl70 rho + seg6RIlAtom91 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom91
  ring

theorem seg6RStep69Pe (rho : Nat -> Seg6.F) (r2183 : Seg6.relationRow2183 rho) :
    seg6RPe69 rho = seg6RPe70 rho * rho 1953 := by
  unfold Seg6.relationRow2183 at r2183
  unfold seg6RPe69 seg6RPe70
  linear_combination -r2183

theorem seg6RStep69 (rho : Nat -> Seg6.F) (r2181 : Seg6.relationRow2181 rho) (r2182 : Seg6.relationRow2182 rho) (r2183 : Seg6.relationRow2183 rho) :
    seg6RPe69 rho = seg6RPe70 rho * rho 1953 ∧
    seg6RIl69 rho = seg6RIl70 rho + seg6RPe70 rho * (1 - rho 1953) -
      seg6RIl70 rho * (seg6RPe70 rho * (1 - rho 1953)) := by
  constructor
  · exact seg6RStep69Pe rho r2183
  · rw [seg6RStep69Acc rho, seg6RStep69L rho r2181, seg6RStep69IlMul rho r2182, seg6RStep69L rho r2181]

theorem seg6_r_chunk69 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 70 (seg6RPeState rho 70) (seg6RIlState rho 70) := by
  have htail := seg6_r_chunk68 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2181, r2182, r2183, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 69 ≤ n → n < 70 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 69 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep69 rho r2181 r2182 r2183
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 69 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
