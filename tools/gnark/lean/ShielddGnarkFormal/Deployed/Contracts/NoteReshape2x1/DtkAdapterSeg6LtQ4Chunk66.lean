import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk65

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step66L (rho : Nat -> Seg6.F) (r2596 : Seg6.relationRow2596 rho) :
    rho 2990 = seg6Q4Pe67 rho * (1 - rho 1950) := by
  unfold Seg6.relationRow2596 at r2596
  unfold seg6Q4Pe67
  linear_combination -r2596

theorem seg6Q4Step66IlMul (rho : Nat -> Seg6.F) (r2597 : Seg6.relationRow2597 rho) :
    rho 2991 = seg6Q4Il67 rho * (rho 2990) := by
  unfold Seg6.relationRow2597 at r2597
  rw [seg6Q4Step66IlLc rho] at r2597
  linear_combination -r2597

theorem seg6Q4Step66Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il66 rho = seg6Q4Il67 rho + (rho 2990) - (rho 2991) := by
  have hstate : seg6Q4Il66 rho = seg6Q4Il67 rho + seg6Q4IlAtom35 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom35
  ring

theorem seg6Q4Step66Pe (rho : Nat -> Seg6.F) (r2598 : Seg6.relationRow2598 rho) :
    seg6Q4Pe66 rho = seg6Q4Pe67 rho * rho 1950 := by
  unfold Seg6.relationRow2598 at r2598
  unfold seg6Q4Pe66 seg6Q4Pe67
  linear_combination -r2598

theorem seg6Q4Step66 (rho : Nat -> Seg6.F) (r2596 : Seg6.relationRow2596 rho) (r2597 : Seg6.relationRow2597 rho) (r2598 : Seg6.relationRow2598 rho) :
    seg6Q4Pe66 rho = seg6Q4Pe67 rho * rho 1950 ∧
    seg6Q4Il66 rho = seg6Q4Il67 rho + seg6Q4Pe67 rho * (1 - rho 1950) -
      seg6Q4Il67 rho * (seg6Q4Pe67 rho * (1 - rho 1950)) := by
  constructor
  · exact seg6Q4Step66Pe rho r2598
  · rw [seg6Q4Step66Acc rho, seg6Q4Step66L rho r2596, seg6Q4Step66IlMul rho r2597, seg6Q4Step66L rho r2596]

theorem seg6_q4_chunk66 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 67 (seg6Q4PeState rho 67) (seg6Q4IlState rho 67) := by
  have htail := seg6_q4_chunk65 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2596, r2597, r2598, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 66 ≤ n → n < 67 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 66 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step66 rho r2596 r2597 r2598
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 66 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
