import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk81

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step82L (rho : Nat -> Seg5.F) (r2568 : Seg5.relationRow2568 rho) :
    rho 2265 = seg5Q4Pe83 rho * (1 - rho 1269) := by
  unfold Seg5.relationRow2568 at r2568
  unfold seg5Q4Pe83
  linear_combination -r2568

theorem seg5Q4Step82IlMul (rho : Nat -> Seg5.F) (r2569 : Seg5.relationRow2569 rho) :
    rho 2266 = seg5Q4Il83 rho * (rho 2265) := by
  unfold Seg5.relationRow2569 at r2569
  rw [seg5Q4Step82IlLc rho] at r2569
  linear_combination -r2569

theorem seg5Q4Step82Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il82 rho = seg5Q4Il83 rho + (rho 2265) - (rho 2266) := by
  have hstate : seg5Q4Il82 rho = seg5Q4Il83 rho + seg5Q4IlAtom28 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom28
  ring

theorem seg5Q4Step82Pe (rho : Nat -> Seg5.F) (r2570 : Seg5.relationRow2570 rho) :
    seg5Q4Pe82 rho = seg5Q4Pe83 rho * rho 1269 := by
  unfold Seg5.relationRow2570 at r2570
  unfold seg5Q4Pe82 seg5Q4Pe83
  linear_combination -r2570

theorem seg5Q4Step82 (rho : Nat -> Seg5.F) (r2568 : Seg5.relationRow2568 rho) (r2569 : Seg5.relationRow2569 rho) (r2570 : Seg5.relationRow2570 rho) :
    seg5Q4Pe82 rho = seg5Q4Pe83 rho * rho 1269 ∧
    seg5Q4Il82 rho = seg5Q4Il83 rho + seg5Q4Pe83 rho * (1 - rho 1269) -
      seg5Q4Il83 rho * (seg5Q4Pe83 rho * (1 - rho 1269)) := by
  constructor
  · exact seg5Q4Step82Pe rho r2570
  · rw [seg5Q4Step82Acc rho, seg5Q4Step82L rho r2568, seg5Q4Step82IlMul rho r2569, seg5Q4Step82L rho r2568]

theorem seg5_q4_chunk82 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 83 (seg5Q4PeState rho 83) (seg5Q4IlState rho 83) := by
  have htail := seg5_q4_chunk81 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, r2568, r2569, r2570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 82 ≤ n → n < 83 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 82 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step82 rho r2568 r2569 r2570
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 82 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
