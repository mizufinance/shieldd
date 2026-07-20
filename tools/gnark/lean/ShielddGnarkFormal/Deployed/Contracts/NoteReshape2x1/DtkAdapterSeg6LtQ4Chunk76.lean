import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk75

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step76L (rho : Nat -> Seg6.F) (r2582 : Seg6.relationRow2582 rho) :
    rho 2976 = seg6Q4Pe77 rho * (1 - rho 1960) := by
  unfold Seg6.relationRow2582 at r2582
  unfold seg6Q4Pe77
  linear_combination -r2582

theorem seg6Q4Step76IlMul (rho : Nat -> Seg6.F) (r2583 : Seg6.relationRow2583 rho) :
    rho 2977 = seg6Q4Il77 rho * (rho 2976) := by
  unfold Seg6.relationRow2583 at r2583
  rw [seg6Q4Step76IlLc rho] at r2583
  linear_combination -r2583

theorem seg6Q4Step76Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il76 rho = seg6Q4Il77 rho + (rho 2976) - (rho 2977) := by
  have hstate : seg6Q4Il76 rho = seg6Q4Il77 rho + seg6Q4IlAtom32 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom32
  ring

theorem seg6Q4Step76Pe (rho : Nat -> Seg6.F) (r2584 : Seg6.relationRow2584 rho) :
    seg6Q4Pe76 rho = seg6Q4Pe77 rho * rho 1960 := by
  unfold Seg6.relationRow2584 at r2584
  unfold seg6Q4Pe76 seg6Q4Pe77
  linear_combination -r2584

theorem seg6Q4Step76 (rho : Nat -> Seg6.F) (r2582 : Seg6.relationRow2582 rho) (r2583 : Seg6.relationRow2583 rho) (r2584 : Seg6.relationRow2584 rho) :
    seg6Q4Pe76 rho = seg6Q4Pe77 rho * rho 1960 ∧
    seg6Q4Il76 rho = seg6Q4Il77 rho + seg6Q4Pe77 rho * (1 - rho 1960) -
      seg6Q4Il77 rho * (seg6Q4Pe77 rho * (1 - rho 1960)) := by
  constructor
  · exact seg6Q4Step76Pe rho r2584
  · rw [seg6Q4Step76Acc rho, seg6Q4Step76L rho r2582, seg6Q4Step76IlMul rho r2583, seg6Q4Step76L rho r2582]

theorem seg6_q4_chunk76 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 77 (seg6Q4PeState rho 77) (seg6Q4IlState rho 77) := by
  have htail := seg6_q4_chunk75 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2582, r2583, r2584, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 76 ≤ n → n < 77 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 76 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step76 rho r2582 r2583 r2584
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 76 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
