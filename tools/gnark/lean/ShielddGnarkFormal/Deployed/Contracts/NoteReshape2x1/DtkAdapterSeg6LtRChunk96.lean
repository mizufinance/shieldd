import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk95

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep96L (rho : Nat -> Seg6.F) (r2128 : Seg6.relationRow2128 rho) :
    rho 2529 = seg6RPe97 rho * (1 - rho 1986) := by
  unfold Seg6.relationRow2128 at r2128
  unfold seg6RPe97
  linear_combination -r2128

theorem seg6RStep96IlMul (rho : Nat -> Seg6.F) (r2129 : Seg6.relationRow2129 rho) :
    rho 2530 = seg6RIl97 rho * (rho 2529) := by
  unfold Seg6.relationRow2129 at r2129
  rw [seg6RStep96IlLc rho] at r2129
  linear_combination -r2129

theorem seg6RStep96Acc (rho : Nat -> Seg6.F) :
    seg6RIl96 rho = seg6RIl97 rho + (rho 2529) - (rho 2530) := by
  have hstate : seg6RIl96 rho = seg6RIl97 rho + seg6RIlAtom77 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom77
  ring

theorem seg6RStep96Pe (rho : Nat -> Seg6.F) (r2130 : Seg6.relationRow2130 rho) :
    seg6RPe96 rho = seg6RPe97 rho * rho 1986 := by
  unfold Seg6.relationRow2130 at r2130
  unfold seg6RPe96 seg6RPe97
  linear_combination -r2130

theorem seg6RStep96 (rho : Nat -> Seg6.F) (r2128 : Seg6.relationRow2128 rho) (r2129 : Seg6.relationRow2129 rho) (r2130 : Seg6.relationRow2130 rho) :
    seg6RPe96 rho = seg6RPe97 rho * rho 1986 ∧
    seg6RIl96 rho = seg6RIl97 rho + seg6RPe97 rho * (1 - rho 1986) -
      seg6RIl97 rho * (seg6RPe97 rho * (1 - rho 1986)) := by
  constructor
  · exact seg6RStep96Pe rho r2130
  · rw [seg6RStep96Acc rho, seg6RStep96L rho r2128, seg6RStep96IlMul rho r2129, seg6RStep96L rho r2128]

theorem seg6_r_chunk96 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 97 (seg6RPeState rho 97) (seg6RIlState rho 97) := by
  have htail := seg6_r_chunk95 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2128, r2129, r2130, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 96 ≤ n → n < 97 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 96 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep96 rho r2128 r2129 r2130
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 96 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
