import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk65

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step66L (rho : Nat -> Seg34.F) (r2596 : Seg34.relationRow2596 rho) :
    rho 33870 = seg34Q4Pe67 rho * (1 - rho 32830) := by
  unfold Seg34.relationRow2596 at r2596
  unfold seg34Q4Pe67
  linear_combination -r2596

theorem seg34Q4Step66IlMul (rho : Nat -> Seg34.F) (r2597 : Seg34.relationRow2597 rho) :
    rho 33871 = seg34Q4Il67 rho * (rho 33870) := by
  unfold Seg34.relationRow2597 at r2597
  rw [seg34Q4Step66IlLc rho] at r2597
  linear_combination -r2597

theorem seg34Q4Step66Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il66 rho = seg34Q4Il67 rho + (rho 33870) - (rho 33871) := by
  have hstate : seg34Q4Il66 rho = seg34Q4Il67 rho + seg34Q4IlAtom35 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom35
  ring

theorem seg34Q4Step66Pe (rho : Nat -> Seg34.F) (r2598 : Seg34.relationRow2598 rho) :
    seg34Q4Pe66 rho = seg34Q4Pe67 rho * rho 32830 := by
  unfold Seg34.relationRow2598 at r2598
  unfold seg34Q4Pe66 seg34Q4Pe67
  linear_combination -r2598

theorem seg34Q4Step66 (rho : Nat -> Seg34.F) (r2596 : Seg34.relationRow2596 rho) (r2597 : Seg34.relationRow2597 rho) (r2598 : Seg34.relationRow2598 rho) :
    seg34Q4Pe66 rho = seg34Q4Pe67 rho * rho 32830 ∧
    seg34Q4Il66 rho = seg34Q4Il67 rho + seg34Q4Pe67 rho * (1 - rho 32830) -
      seg34Q4Il67 rho * (seg34Q4Pe67 rho * (1 - rho 32830)) := by
  constructor
  · exact seg34Q4Step66Pe rho r2598
  · rw [seg34Q4Step66Acc rho, seg34Q4Step66L rho r2596, seg34Q4Step66IlMul rho r2597, seg34Q4Step66L rho r2596]

theorem seg34_q4_chunk66 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 67 (seg34Q4PeState rho 67) (seg34Q4IlState rho 67) := by
  have htail := seg34_q4_chunk65 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2596, r2597, r2598, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 66 ≤ n → n < 67 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 66 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step66 rho r2596 r2597 r2598
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 66 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
