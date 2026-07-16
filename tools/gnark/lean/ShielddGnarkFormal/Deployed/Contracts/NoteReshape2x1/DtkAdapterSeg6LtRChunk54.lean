import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk53

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep54L (rho : Nat -> Seg6.F) (r2216 : Seg6.relationRow2216 rho) :
    rho 2617 = seg6RPe55 rho * (1 - rho 1944) := by
  unfold Seg6.relationRow2216 at r2216
  unfold seg6RPe55
  linear_combination -r2216

theorem seg6RStep54IlMul (rho : Nat -> Seg6.F) (r2217 : Seg6.relationRow2217 rho) :
    rho 2618 = seg6RIl55 rho * (rho 2617) := by
  unfold Seg6.relationRow2217 at r2217
  rw [seg6RStep54IlLc rho] at r2217
  linear_combination -r2217

theorem seg6RStep54Acc (rho : Nat -> Seg6.F) :
    seg6RIl54 rho = seg6RIl55 rho + (rho 2617) - (rho 2618) := by
  have hstate : seg6RIl54 rho = seg6RIl55 rho + seg6RIlAtom101 rho + (-1 : Seg6.F) * seg6RIlAtom102 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom101 seg6RIlAtom102
  ring

theorem seg6RStep54Pe (rho : Nat -> Seg6.F) (r2218 : Seg6.relationRow2218 rho) :
    seg6RPe54 rho = seg6RPe55 rho * rho 1944 := by
  unfold Seg6.relationRow2218 at r2218
  unfold seg6RPe54 seg6RPe55
  linear_combination -r2218

theorem seg6RStep54 (rho : Nat -> Seg6.F) (r2216 : Seg6.relationRow2216 rho) (r2217 : Seg6.relationRow2217 rho) (r2218 : Seg6.relationRow2218 rho) :
    seg6RPe54 rho = seg6RPe55 rho * rho 1944 ∧
    seg6RIl54 rho = seg6RIl55 rho + seg6RPe55 rho * (1 - rho 1944) -
      seg6RIl55 rho * (seg6RPe55 rho * (1 - rho 1944)) := by
  constructor
  · exact seg6RStep54Pe rho r2218
  · rw [seg6RStep54Acc rho, seg6RStep54L rho r2216, seg6RStep54IlMul rho r2217, seg6RStep54L rho r2216]

theorem seg6_r_chunk54 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 55 (seg6RPeState rho 55) (seg6RIlState rho 55) := by
  have htail := seg6_r_chunk53 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2216, r2217, r2218, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 54 ≤ n → n < 55 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 54 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep54 rho r2216 r2217 r2218
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 54 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
