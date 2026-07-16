import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk49

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step50L (rho : Nat -> Seg6.F) (r2624 : Seg6.relationRow2624 rho) :
    rho 3024 = seg6Q4Pe51 rho * (1 - rho 1940) := by
  unfold Seg6.relationRow2624 at r2624
  unfold seg6Q4Pe51
  linear_combination -r2624

theorem seg6Q4Step50IlMul (rho : Nat -> Seg6.F) (r2625 : Seg6.relationRow2625 rho) :
    rho 3025 = seg6Q4Il51 rho * (rho 3024) := by
  unfold Seg6.relationRow2625 at r2625
  rw [seg6Q4Step50IlLc rho] at r2625
  linear_combination -r2625

theorem seg6Q4Step50Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il50 rho = seg6Q4Il51 rho + (rho 3024) - (rho 3025) := by
  have hstate : seg6Q4Il50 rho = seg6Q4Il51 rho + seg6Q4IlAtom41 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom41
  ring

theorem seg6Q4Step50Pe (rho : Nat -> Seg6.F) (r2626 : Seg6.relationRow2626 rho) :
    seg6Q4Pe50 rho = seg6Q4Pe51 rho * rho 1940 := by
  unfold Seg6.relationRow2626 at r2626
  unfold seg6Q4Pe50 seg6Q4Pe51
  linear_combination -r2626

theorem seg6Q4Step50 (rho : Nat -> Seg6.F) (r2624 : Seg6.relationRow2624 rho) (r2625 : Seg6.relationRow2625 rho) (r2626 : Seg6.relationRow2626 rho) :
    seg6Q4Pe50 rho = seg6Q4Pe51 rho * rho 1940 ∧
    seg6Q4Il50 rho = seg6Q4Il51 rho + seg6Q4Pe51 rho * (1 - rho 1940) -
      seg6Q4Il51 rho * (seg6Q4Pe51 rho * (1 - rho 1940)) := by
  constructor
  · exact seg6Q4Step50Pe rho r2626
  · rw [seg6Q4Step50Acc rho, seg6Q4Step50L rho r2624, seg6Q4Step50IlMul rho r2625, seg6Q4Step50L rho r2624]

theorem seg6_q4_chunk50 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 51 (seg6Q4PeState rho 51) (seg6Q4IlState rho 51) := by
  have htail := seg6_q4_chunk49 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2624, r2625, r2626, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 50 ≤ n → n < 51 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 50 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step50 rho r2624 r2625 r2626
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 50 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
