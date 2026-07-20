import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk23

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step24L (rho : Nat -> Seg6.F) (r2678 : Seg6.relationRow2678 rho) :
    rho 3072 = seg6Q4Pe25 rho * (1 - rho 1908) := by
  unfold Seg6.relationRow2678 at r2678
  unfold seg6Q4Pe25
  linear_combination -r2678

theorem seg6Q4Step24IlMul (rho : Nat -> Seg6.F) (r2679 : Seg6.relationRow2679 rho) :
    rho 3073 = seg6Q4Il25 rho * (rho 3072) := by
  unfold Seg6.relationRow2679 at r2679
  rw [seg6Q4Step24IlLc rho] at r2679
  linear_combination -r2679

theorem seg6Q4Step24Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il24 rho = seg6Q4Il25 rho + (rho 3072) - (rho 3073) := by
  have hstate : seg6Q4Il24 rho = seg6Q4Il25 rho + seg6Q4IlAtom56 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom56
  ring

theorem seg6Q4Step24Pe (rho : Nat -> Seg6.F) (r2680 : Seg6.relationRow2680 rho) :
    seg6Q4Pe24 rho = seg6Q4Pe25 rho * rho 1908 := by
  unfold Seg6.relationRow2680 at r2680
  unfold seg6Q4Pe24 seg6Q4Pe25
  linear_combination -r2680

theorem seg6Q4Step24 (rho : Nat -> Seg6.F) (r2678 : Seg6.relationRow2678 rho) (r2679 : Seg6.relationRow2679 rho) (r2680 : Seg6.relationRow2680 rho) :
    seg6Q4Pe24 rho = seg6Q4Pe25 rho * rho 1908 ∧
    seg6Q4Il24 rho = seg6Q4Il25 rho + seg6Q4Pe25 rho * (1 - rho 1908) -
      seg6Q4Il25 rho * (seg6Q4Pe25 rho * (1 - rho 1908)) := by
  constructor
  · exact seg6Q4Step24Pe rho r2680
  · rw [seg6Q4Step24Acc rho, seg6Q4Step24L rho r2678, seg6Q4Step24IlMul rho r2679, seg6Q4Step24L rho r2678]

theorem seg6_q4_chunk24 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 25 (seg6Q4PeState rho 25) (seg6Q4IlState rho 25) := by
  have htail := seg6_q4_chunk23 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2678, r2679, r2680, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 24 ≤ n → n < 25 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 24 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step24 rho r2678 r2679 r2680
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 24 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
