import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk35

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step36L (rho : Nat -> Seg6.F) (r2652 : Seg6.relationRow2652 rho) :
    rho 3046 = seg6Q4Pe37 rho * (1 - rho 1920) := by
  unfold Seg6.relationRow2652 at r2652
  unfold seg6Q4Pe37
  linear_combination -r2652

theorem seg6Q4Step36IlMul (rho : Nat -> Seg6.F) (r2653 : Seg6.relationRow2653 rho) :
    rho 3047 = seg6Q4Il37 rho * (rho 3046) := by
  unfold Seg6.relationRow2653 at r2653
  rw [seg6Q4Step36IlLc rho] at r2653
  linear_combination -r2653

theorem seg6Q4Step36Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il36 rho = seg6Q4Il37 rho + (rho 3046) - (rho 3047) := by
  have hstate : seg6Q4Il36 rho = seg6Q4Il37 rho + seg6Q4IlAtom48 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom48
  ring

theorem seg6Q4Step36Pe (rho : Nat -> Seg6.F) (r2654 : Seg6.relationRow2654 rho) :
    seg6Q4Pe36 rho = seg6Q4Pe37 rho * rho 1920 := by
  unfold Seg6.relationRow2654 at r2654
  unfold seg6Q4Pe36 seg6Q4Pe37
  linear_combination -r2654

theorem seg6Q4Step36 (rho : Nat -> Seg6.F) (r2652 : Seg6.relationRow2652 rho) (r2653 : Seg6.relationRow2653 rho) (r2654 : Seg6.relationRow2654 rho) :
    seg6Q4Pe36 rho = seg6Q4Pe37 rho * rho 1920 ∧
    seg6Q4Il36 rho = seg6Q4Il37 rho + seg6Q4Pe37 rho * (1 - rho 1920) -
      seg6Q4Il37 rho * (seg6Q4Pe37 rho * (1 - rho 1920)) := by
  constructor
  · exact seg6Q4Step36Pe rho r2654
  · rw [seg6Q4Step36Acc rho, seg6Q4Step36L rho r2652, seg6Q4Step36IlMul rho r2653, seg6Q4Step36L rho r2652]

theorem seg6_q4_chunk36 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 37 (seg6Q4PeState rho 37) (seg6Q4IlState rho 37) := by
  have htail := seg6_q4_chunk35 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2652, r2653, r2654, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 36 ≤ n → n < 37 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 36 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step36 rho r2652 r2653 r2654
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 36 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
