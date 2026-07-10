import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk65

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step66L (rho : Nat -> Seg5.F) (r2596 : Seg5.relationRow2596 rho) :
    rho 2293 = seg5Q4Pe67 rho * (1 - rho 1253) := by
  unfold Seg5.relationRow2596 at r2596
  unfold seg5Q4Pe67
  linear_combination -r2596

theorem seg5Q4Step66IlMul (rho : Nat -> Seg5.F) (r2597 : Seg5.relationRow2597 rho) :
    rho 2294 = seg5Q4Il67 rho * (rho 2293) := by
  unfold Seg5.relationRow2597 at r2597
  rw [seg5Q4Step66IlLc rho] at r2597
  linear_combination -r2597

theorem seg5Q4Step66Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il66 rho = seg5Q4Il67 rho + (rho 2293) - (rho 2294) := by
  have hstate : seg5Q4Il66 rho = seg5Q4Il67 rho + seg5Q4IlAtom35 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom35
  ring

theorem seg5Q4Step66Pe (rho : Nat -> Seg5.F) (r2598 : Seg5.relationRow2598 rho) :
    seg5Q4Pe66 rho = seg5Q4Pe67 rho * rho 1253 := by
  unfold Seg5.relationRow2598 at r2598
  unfold seg5Q4Pe66 seg5Q4Pe67
  linear_combination -r2598

theorem seg5Q4Step66 (rho : Nat -> Seg5.F) (r2596 : Seg5.relationRow2596 rho) (r2597 : Seg5.relationRow2597 rho) (r2598 : Seg5.relationRow2598 rho) :
    seg5Q4Pe66 rho = seg5Q4Pe67 rho * rho 1253 ∧
    seg5Q4Il66 rho = seg5Q4Il67 rho + seg5Q4Pe67 rho * (1 - rho 1253) -
      seg5Q4Il67 rho * (seg5Q4Pe67 rho * (1 - rho 1253)) := by
  constructor
  · exact seg5Q4Step66Pe rho r2598
  · rw [seg5Q4Step66Acc rho, seg5Q4Step66L rho r2596, seg5Q4Step66IlMul rho r2597, seg5Q4Step66L rho r2596]

theorem seg5_q4_chunk66 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 67 (seg5Q4PeState rho 67) (seg5Q4IlState rho 67) := by
  have htail := seg5_q4_chunk65 rho h k hk
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2596, r2597, r2598, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 66 ≤ n → n < 67 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 66 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step66 rho r2596 r2597 r2598
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 66 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
