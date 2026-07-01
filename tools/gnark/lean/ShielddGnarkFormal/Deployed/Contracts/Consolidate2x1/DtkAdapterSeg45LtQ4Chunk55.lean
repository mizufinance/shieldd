import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk54

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step55L (rho : Nat -> Seg45.F) (r2615 : Seg45.relationRow2615 rho) :
    rho 40845 = seg45Q4Pe56 rho * (1 - rho 39775) := by
  unfold Seg45.relationRow2615 at r2615
  unfold seg45Q4Pe56
  linear_combination -r2615

theorem seg45Q4Step55IlMul (rho : Nat -> Seg45.F) (r2616 : Seg45.relationRow2616 rho) :
    rho 40846 = seg45Q4Il56 rho * (rho 40845) := by
  unfold Seg45.relationRow2616 at r2616
  rw [seg45Q4Step55IlLc rho] at r2616
  linear_combination -r2616

theorem seg45Q4Step55Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il55 rho = seg45Q4Il56 rho + (rho 40845) - (rho 40846) := by
  have hstate : seg45Q4Il55 rho = seg45Q4Il56 rho + seg45Q4IlAtom39 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom39
  ring

theorem seg45Q4Step55Pe (rho : Nat -> Seg45.F) (r2617 : Seg45.relationRow2617 rho) :
    seg45Q4Pe55 rho = seg45Q4Pe56 rho * rho 39775 := by
  unfold Seg45.relationRow2617 at r2617
  unfold seg45Q4Pe55 seg45Q4Pe56
  linear_combination -r2617

theorem seg45Q4Step55 (rho : Nat -> Seg45.F) (r2615 : Seg45.relationRow2615 rho) (r2616 : Seg45.relationRow2616 rho) (r2617 : Seg45.relationRow2617 rho) :
    seg45Q4Pe55 rho = seg45Q4Pe56 rho * rho 39775 ∧
    seg45Q4Il55 rho = seg45Q4Il56 rho + seg45Q4Pe56 rho * (1 - rho 39775) -
      seg45Q4Il56 rho * (seg45Q4Pe56 rho * (1 - rho 39775)) := by
  constructor
  · exact seg45Q4Step55Pe rho r2617
  · rw [seg45Q4Step55Acc rho, seg45Q4Step55L rho r2615, seg45Q4Step55IlMul rho r2616, seg45Q4Step55L rho r2615]

theorem seg45_q4_chunk55 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 56 (seg45Q4PeState rho 56) (seg45Q4IlState rho 56) := by
  have htail := seg45_q4_chunk54 rho h k hk
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2615, r2616, r2617, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 55 ≤ n → n < 56 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 55 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step55 rho r2615 r2616 r2617
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 55 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
