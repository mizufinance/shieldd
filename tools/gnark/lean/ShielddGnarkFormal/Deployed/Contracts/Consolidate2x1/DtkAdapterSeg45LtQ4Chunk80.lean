import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk79

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step80L (rho : Nat -> Seg45.F) (r2572 : Seg45.relationRow2572 rho) :
    rho 40802 = seg45Q4Pe81 rho * (1 - rho 39800) := by
  unfold Seg45.relationRow2572 at r2572
  unfold seg45Q4Pe81
  linear_combination -r2572

theorem seg45Q4Step80IlMul (rho : Nat -> Seg45.F) (r2573 : Seg45.relationRow2573 rho) :
    rho 40803 = seg45Q4Il81 rho * (rho 40802) := by
  unfold Seg45.relationRow2573 at r2573
  rw [seg45Q4Step80IlLc rho] at r2573
  linear_combination -r2573

theorem seg45Q4Step80Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il80 rho = seg45Q4Il81 rho + (rho 40802) - (rho 40803) := by
  have hstate : seg45Q4Il80 rho = seg45Q4Il81 rho + seg45Q4IlAtom29 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom29
  ring

theorem seg45Q4Step80Pe (rho : Nat -> Seg45.F) (r2574 : Seg45.relationRow2574 rho) :
    seg45Q4Pe80 rho = seg45Q4Pe81 rho * rho 39800 := by
  unfold Seg45.relationRow2574 at r2574
  unfold seg45Q4Pe80 seg45Q4Pe81
  linear_combination -r2574

theorem seg45Q4Step80 (rho : Nat -> Seg45.F) (r2572 : Seg45.relationRow2572 rho) (r2573 : Seg45.relationRow2573 rho) (r2574 : Seg45.relationRow2574 rho) :
    seg45Q4Pe80 rho = seg45Q4Pe81 rho * rho 39800 ∧
    seg45Q4Il80 rho = seg45Q4Il81 rho + seg45Q4Pe81 rho * (1 - rho 39800) -
      seg45Q4Il81 rho * (seg45Q4Pe81 rho * (1 - rho 39800)) := by
  constructor
  · exact seg45Q4Step80Pe rho r2574
  · rw [seg45Q4Step80Acc rho, seg45Q4Step80L rho r2572, seg45Q4Step80IlMul rho r2573, seg45Q4Step80L rho r2572]

theorem seg45_q4_chunk80 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 81 (seg45Q4PeState rho 81) (seg45Q4IlState rho 81) := by
  have htail := seg45_q4_chunk79 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2572, r2573, r2574, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 80 ≤ n → n < 81 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 80 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step80 rho r2572 r2573 r2574
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 80 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
