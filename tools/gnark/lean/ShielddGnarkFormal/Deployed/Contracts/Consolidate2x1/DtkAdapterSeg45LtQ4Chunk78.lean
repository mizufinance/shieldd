import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk77

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step78L (rho : Nat -> Seg45.F) (r2578 : Seg45.relationRow2578 rho) :
    rho 40808 = seg45Q4Pe79 rho * (1 - rho 39798) := by
  unfold Seg45.relationRow2578 at r2578
  unfold seg45Q4Pe79
  linear_combination -r2578

theorem seg45Q4Step78IlMul (rho : Nat -> Seg45.F) (r2579 : Seg45.relationRow2579 rho) :
    rho 40809 = seg45Q4Il79 rho * (rho 40808) := by
  unfold Seg45.relationRow2579 at r2579
  rw [seg45Q4Step78IlLc rho] at r2579
  linear_combination -r2579

theorem seg45Q4Step78Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il78 rho = seg45Q4Il79 rho + (rho 40808) - (rho 40809) := by
  have hstate : seg45Q4Il78 rho = seg45Q4Il79 rho + seg45Q4IlAtom31 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom31
  ring

theorem seg45Q4Step78Pe (rho : Nat -> Seg45.F) (r2580 : Seg45.relationRow2580 rho) :
    seg45Q4Pe78 rho = seg45Q4Pe79 rho * rho 39798 := by
  unfold Seg45.relationRow2580 at r2580
  unfold seg45Q4Pe78 seg45Q4Pe79
  linear_combination -r2580

theorem seg45Q4Step78 (rho : Nat -> Seg45.F) (r2578 : Seg45.relationRow2578 rho) (r2579 : Seg45.relationRow2579 rho) (r2580 : Seg45.relationRow2580 rho) :
    seg45Q4Pe78 rho = seg45Q4Pe79 rho * rho 39798 ∧
    seg45Q4Il78 rho = seg45Q4Il79 rho + seg45Q4Pe79 rho * (1 - rho 39798) -
      seg45Q4Il79 rho * (seg45Q4Pe79 rho * (1 - rho 39798)) := by
  constructor
  · exact seg45Q4Step78Pe rho r2580
  · rw [seg45Q4Step78Acc rho, seg45Q4Step78L rho r2578, seg45Q4Step78IlMul rho r2579, seg45Q4Step78L rho r2578]

theorem seg45_q4_chunk78 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 79 (seg45Q4PeState rho 79) (seg45Q4IlState rho 79) := by
  have htail := seg45_q4_chunk77 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2578, r2579, r2580, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 78 ≤ n → n < 79 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 78 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step78 rho r2578 r2579 r2580
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 78 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
