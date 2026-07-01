import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk120

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step121L (rho : Nat -> Seg45.F) (r2479 : Seg45.relationRow2479 rho) :
    rho 40709 = seg45Q4Pe122 rho * (1 - rho 39841) := by
  unfold Seg45.relationRow2479 at r2479
  unfold seg45Q4Pe122
  linear_combination -r2479

theorem seg45Q4Step121IlMul (rho : Nat -> Seg45.F) (r2480 : Seg45.relationRow2480 rho) :
    rho 40710 = seg45Q4Il122 rho * (rho 40709) := by
  unfold Seg45.relationRow2480 at r2480
  rw [seg45Q4Il122Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1
  linear_combination -r2480

theorem seg45Q4Step121Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il121 rho = seg45Q4Il122 rho + (rho 40709) - (rho 40710) := by
  have hstate : seg45Q4Il121 rho = seg45Q4Il122 rho + seg45Q4IlAtom2 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom2
  ring

theorem seg45Q4Step121Pe (rho : Nat -> Seg45.F) (r2481 : Seg45.relationRow2481 rho) :
    seg45Q4Pe121 rho = seg45Q4Pe122 rho * rho 39841 := by
  unfold Seg45.relationRow2481 at r2481
  unfold seg45Q4Pe121 seg45Q4Pe122
  linear_combination -r2481

theorem seg45Q4Step121 (rho : Nat -> Seg45.F) (r2479 : Seg45.relationRow2479 rho) (r2480 : Seg45.relationRow2480 rho) (r2481 : Seg45.relationRow2481 rho) :
    seg45Q4Pe121 rho = seg45Q4Pe122 rho * rho 39841 ∧
    seg45Q4Il121 rho = seg45Q4Il122 rho + seg45Q4Pe122 rho * (1 - rho 39841) -
      seg45Q4Il122 rho * (seg45Q4Pe122 rho * (1 - rho 39841)) := by
  constructor
  · exact seg45Q4Step121Pe rho r2481
  · rw [seg45Q4Step121Acc rho, seg45Q4Step121L rho r2479, seg45Q4Step121IlMul rho r2480, seg45Q4Step121L rho r2479]

theorem seg45_q4_chunk121 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 122 (seg45Q4PeState rho 122) (seg45Q4IlState rho 122) := by
  have htail := seg45_q4_chunk120 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2479⟩
  unfold Seg45.relationPart31 at p31
  rcases p31 with ⟨r2480, r2481, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 121 ≤ n → n < 122 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 121 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step121 rho r2479 r2480 r2481
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 121 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
