import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk82

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep83L (rho : Nat -> Seg6.F) (r2153 : Seg6.relationRow2153 rho) :
    rho 2548 = seg6RPe84 rho * (1 - rho 1967) := by
  unfold Seg6.relationRow2153 at r2153
  unfold seg6RPe84
  linear_combination -r2153

theorem seg6RStep83IlMul (rho : Nat -> Seg6.F) (r2154 : Seg6.relationRow2154 rho) :
    rho 2549 = seg6RIl84 rho * (rho 2548) := by
  unfold Seg6.relationRow2154 at r2154
  rw [seg6RStep83IlLc rho] at r2154
  linear_combination -r2154

theorem seg6RStep83Acc (rho : Nat -> Seg6.F) :
    seg6RIl83 rho = seg6RIl84 rho + (rho 2548) - (rho 2549) := by
  have hstate : seg6RIl83 rho = seg6RIl84 rho + seg6RIlAtom83 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom83
  ring

theorem seg6RStep83Pe (rho : Nat -> Seg6.F) (r2155 : Seg6.relationRow2155 rho) :
    seg6RPe83 rho = seg6RPe84 rho * rho 1967 := by
  unfold Seg6.relationRow2155 at r2155
  unfold seg6RPe83 seg6RPe84
  linear_combination -r2155

theorem seg6RStep83 (rho : Nat -> Seg6.F) (r2153 : Seg6.relationRow2153 rho) (r2154 : Seg6.relationRow2154 rho) (r2155 : Seg6.relationRow2155 rho) :
    seg6RPe83 rho = seg6RPe84 rho * rho 1967 ∧
    seg6RIl83 rho = seg6RIl84 rho + seg6RPe84 rho * (1 - rho 1967) -
      seg6RIl84 rho * (seg6RPe84 rho * (1 - rho 1967)) := by
  constructor
  · exact seg6RStep83Pe rho r2155
  · rw [seg6RStep83Acc rho, seg6RStep83L rho r2153, seg6RStep83IlMul rho r2154, seg6RStep83L rho r2153]

theorem seg6_r_chunk83 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 84 (seg6RPeState rho 84) (seg6RIlState rho 84) := by
  have htail := seg6_r_chunk82 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2153, r2154, r2155, _, _, _, _⟩
  have hsteps : ∀ n, 83 ≤ n → n < 84 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 83 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep83 rho r2153 r2154 r2155
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 83 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
