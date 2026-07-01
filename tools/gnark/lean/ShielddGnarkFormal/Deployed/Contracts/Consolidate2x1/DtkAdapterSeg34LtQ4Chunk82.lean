import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk81

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step82L (rho : Nat -> Seg34.F) (r2568 : Seg34.relationRow2568 rho) :
    rho 33842 = seg34Q4Pe83 rho * (1 - rho 32846) := by
  unfold Seg34.relationRow2568 at r2568
  unfold seg34Q4Pe83
  linear_combination -r2568

theorem seg34Q4Step82IlMul (rho : Nat -> Seg34.F) (r2569 : Seg34.relationRow2569 rho) :
    rho 33843 = seg34Q4Il83 rho * (rho 33842) := by
  unfold Seg34.relationRow2569 at r2569
  rw [seg34Q4Step82IlLc rho] at r2569
  linear_combination -r2569

theorem seg34Q4Step82Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il82 rho = seg34Q4Il83 rho + (rho 33842) - (rho 33843) := by
  have hstate : seg34Q4Il82 rho = seg34Q4Il83 rho + seg34Q4IlAtom28 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom28
  ring

theorem seg34Q4Step82Pe (rho : Nat -> Seg34.F) (r2570 : Seg34.relationRow2570 rho) :
    seg34Q4Pe82 rho = seg34Q4Pe83 rho * rho 32846 := by
  unfold Seg34.relationRow2570 at r2570
  unfold seg34Q4Pe82 seg34Q4Pe83
  linear_combination -r2570

theorem seg34Q4Step82 (rho : Nat -> Seg34.F) (r2568 : Seg34.relationRow2568 rho) (r2569 : Seg34.relationRow2569 rho) (r2570 : Seg34.relationRow2570 rho) :
    seg34Q4Pe82 rho = seg34Q4Pe83 rho * rho 32846 ∧
    seg34Q4Il82 rho = seg34Q4Il83 rho + seg34Q4Pe83 rho * (1 - rho 32846) -
      seg34Q4Il83 rho * (seg34Q4Pe83 rho * (1 - rho 32846)) := by
  constructor
  · exact seg34Q4Step82Pe rho r2570
  · rw [seg34Q4Step82Acc rho, seg34Q4Step82L rho r2568, seg34Q4Step82IlMul rho r2569, seg34Q4Step82L rho r2568]

theorem seg34_q4_chunk82 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 83 (seg34Q4PeState rho 83) (seg34Q4IlState rho 83) := by
  have htail := seg34_q4_chunk81 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, r2568, r2569, r2570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 82 ≤ n → n < 83 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 82 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step82 rho r2568 r2569 r2570
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 82 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
