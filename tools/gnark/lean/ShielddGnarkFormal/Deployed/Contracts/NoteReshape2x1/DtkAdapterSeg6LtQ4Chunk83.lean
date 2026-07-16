import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk82

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step83L (rho : Nat -> Seg6.F) (r2565 : Seg6.relationRow2565 rho) :
    rho 2965 = seg6Q4Pe84 rho * (1 - rho 1973) := by
  unfold Seg6.relationRow2565 at r2565
  unfold seg6Q4Pe84
  linear_combination -r2565

theorem seg6Q4Step83IlMul (rho : Nat -> Seg6.F) (r2566 : Seg6.relationRow2566 rho) :
    rho 2966 = seg6Q4Il84 rho * (rho 2965) := by
  unfold Seg6.relationRow2566 at r2566
  rw [seg6Q4Step83IlLc rho] at r2566
  linear_combination -r2566

theorem seg6Q4Step83Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il83 rho = seg6Q4Il84 rho + (rho 2965) - (rho 2966) := by
  have hstate : seg6Q4Il83 rho = seg6Q4Il84 rho + seg6Q4IlAtom27 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom27
  ring

theorem seg6Q4Step83Pe (rho : Nat -> Seg6.F) (r2567 : Seg6.relationRow2567 rho) :
    seg6Q4Pe83 rho = seg6Q4Pe84 rho * rho 1973 := by
  unfold Seg6.relationRow2567 at r2567
  unfold seg6Q4Pe83 seg6Q4Pe84
  linear_combination -r2567

theorem seg6Q4Step83 (rho : Nat -> Seg6.F) (r2565 : Seg6.relationRow2565 rho) (r2566 : Seg6.relationRow2566 rho) (r2567 : Seg6.relationRow2567 rho) :
    seg6Q4Pe83 rho = seg6Q4Pe84 rho * rho 1973 ∧
    seg6Q4Il83 rho = seg6Q4Il84 rho + seg6Q4Pe84 rho * (1 - rho 1973) -
      seg6Q4Il84 rho * (seg6Q4Pe84 rho * (1 - rho 1973)) := by
  constructor
  · exact seg6Q4Step83Pe rho r2567
  · rw [seg6Q4Step83Acc rho, seg6Q4Step83L rho r2565, seg6Q4Step83IlMul rho r2566, seg6Q4Step83L rho r2565]

theorem seg6_q4_chunk83 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 84 (seg6Q4PeState rho 84) (seg6Q4IlState rho 84) := by
  have htail := seg6_q4_chunk82 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, r2565, r2566, r2567, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 83 ≤ n → n < 84 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 83 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step83 rho r2565 r2566 r2567
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 83 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
