import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk38

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step39L (rho : Nat -> Seg6.F) (r2647 : Seg6.relationRow2647 rho) :
    rho 3041 = seg6Q4Pe40 rho * (1 - rho 1923) := by
  unfold Seg6.relationRow2647 at r2647
  unfold seg6Q4Pe40
  linear_combination -r2647

theorem seg6Q4Step39IlMul (rho : Nat -> Seg6.F) (r2648 : Seg6.relationRow2648 rho) :
    rho 3042 = seg6Q4Il40 rho * (rho 3041) := by
  unfold Seg6.relationRow2648 at r2648
  rw [seg6Q4Step39IlLc rho] at r2648
  linear_combination -r2648

theorem seg6Q4Step39Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il39 rho = seg6Q4Il40 rho + (rho 3041) - (rho 3042) := by
  have hstate : seg6Q4Il39 rho = seg6Q4Il40 rho + seg6Q4IlAtom47 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom47
  ring

theorem seg6Q4Step39Pe (rho : Nat -> Seg6.F) (r2649 : Seg6.relationRow2649 rho) :
    seg6Q4Pe39 rho = seg6Q4Pe40 rho * rho 1923 := by
  unfold Seg6.relationRow2649 at r2649
  unfold seg6Q4Pe39 seg6Q4Pe40
  linear_combination -r2649

theorem seg6Q4Step39 (rho : Nat -> Seg6.F) (r2647 : Seg6.relationRow2647 rho) (r2648 : Seg6.relationRow2648 rho) (r2649 : Seg6.relationRow2649 rho) :
    seg6Q4Pe39 rho = seg6Q4Pe40 rho * rho 1923 ∧
    seg6Q4Il39 rho = seg6Q4Il40 rho + seg6Q4Pe40 rho * (1 - rho 1923) -
      seg6Q4Il40 rho * (seg6Q4Pe40 rho * (1 - rho 1923)) := by
  constructor
  · exact seg6Q4Step39Pe rho r2649
  · rw [seg6Q4Step39Acc rho, seg6Q4Step39L rho r2647, seg6Q4Step39IlMul rho r2648, seg6Q4Step39L rho r2647]

theorem seg6_q4_chunk39 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 40 (seg6Q4PeState rho 40) (seg6Q4IlState rho 40) := by
  have htail := seg6_q4_chunk38 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, r2647, r2648, r2649, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 39 ≤ n → n < 40 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 39 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step39 rho r2647 r2648 r2649
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 39 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
