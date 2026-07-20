import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk30

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step31L (rho : Nat -> Seg6.F) (r2661 : Seg6.relationRow2661 rho) :
    rho 3055 = seg6Q4Pe32 rho * (1 - rho 1915) := by
  unfold Seg6.relationRow2661 at r2661
  unfold seg6Q4Pe32
  linear_combination -r2661

theorem seg6Q4Step31IlMul (rho : Nat -> Seg6.F) (r2662 : Seg6.relationRow2662 rho) :
    rho 3056 = seg6Q4Il32 rho * (rho 3055) := by
  unfold Seg6.relationRow2662 at r2662
  rw [seg6Q4Step31IlLc rho] at r2662
  linear_combination -r2662

theorem seg6Q4Step31Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il31 rho = seg6Q4Il32 rho + (rho 3055) - (rho 3056) := by
  have hstate : seg6Q4Il31 rho = seg6Q4Il32 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom50 seg6Q4IlAtom51
  ring

theorem seg6Q4Step31Pe (rho : Nat -> Seg6.F) (r2663 : Seg6.relationRow2663 rho) :
    seg6Q4Pe31 rho = seg6Q4Pe32 rho * rho 1915 := by
  unfold Seg6.relationRow2663 at r2663
  unfold seg6Q4Pe31 seg6Q4Pe32
  linear_combination -r2663

theorem seg6Q4Step31 (rho : Nat -> Seg6.F) (r2661 : Seg6.relationRow2661 rho) (r2662 : Seg6.relationRow2662 rho) (r2663 : Seg6.relationRow2663 rho) :
    seg6Q4Pe31 rho = seg6Q4Pe32 rho * rho 1915 ∧
    seg6Q4Il31 rho = seg6Q4Il32 rho + seg6Q4Pe32 rho * (1 - rho 1915) -
      seg6Q4Il32 rho * (seg6Q4Pe32 rho * (1 - rho 1915)) := by
  constructor
  · exact seg6Q4Step31Pe rho r2663
  · rw [seg6Q4Step31Acc rho, seg6Q4Step31L rho r2661, seg6Q4Step31IlMul rho r2662, seg6Q4Step31L rho r2661]

theorem seg6_q4_chunk31 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 32 (seg6Q4PeState rho 32) (seg6Q4IlState rho 32) := by
  have htail := seg6_q4_chunk30 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2661, r2662, r2663, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 31 ≤ n → n < 32 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 31 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step31 rho r2661 r2662 r2663
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 31 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
