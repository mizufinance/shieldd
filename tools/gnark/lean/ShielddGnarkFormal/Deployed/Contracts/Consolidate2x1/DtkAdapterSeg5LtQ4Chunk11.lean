import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step11L (rho : Nat -> Seg5.F) (r2697 : Seg5.relationRow2697 rho) :
    rho 2394 = seg5Q4Pe12 rho * (1 - rho 1198) := by
  unfold Seg5.relationRow2697 at r2697
  unfold seg5Q4Pe12
  linear_combination -r2697

theorem seg5Q4Step11IlMul (rho : Nat -> Seg5.F) (r2698 : Seg5.relationRow2698 rho) :
    rho 2395 = seg5Q4Il12 rho * (rho 2394) := by
  unfold Seg5.relationRow2698 at r2698
  rw [seg5Q4Step11IlLc rho] at r2698
  linear_combination -r2698

theorem seg5Q4Step11Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il11 rho = seg5Q4Il12 rho + (rho 2394) - (rho 2395) := by
  have hstate : seg5Q4Il11 rho = seg5Q4Il12 rho + seg5Q4IlAtom59 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom59
  ring

theorem seg5Q4Step11Pe (rho : Nat -> Seg5.F) (r2699 : Seg5.relationRow2699 rho) :
    seg5Q4Pe11 rho = seg5Q4Pe12 rho * rho 1198 := by
  unfold Seg5.relationRow2699 at r2699
  unfold seg5Q4Pe11 seg5Q4Pe12
  linear_combination -r2699

theorem seg5Q4Step11 (rho : Nat -> Seg5.F) (r2697 : Seg5.relationRow2697 rho) (r2698 : Seg5.relationRow2698 rho) (r2699 : Seg5.relationRow2699 rho) :
    seg5Q4Pe11 rho = seg5Q4Pe12 rho * rho 1198 ∧
    seg5Q4Il11 rho = seg5Q4Il12 rho + seg5Q4Pe12 rho * (1 - rho 1198) -
      seg5Q4Il12 rho * (seg5Q4Pe12 rho * (1 - rho 1198)) := by
  constructor
  · exact seg5Q4Step11Pe rho r2699
  · rw [seg5Q4Step11Acc rho, seg5Q4Step11L rho r2697, seg5Q4Step11IlMul rho r2698, seg5Q4Step11L rho r2697]

theorem seg5_q4_chunk11 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 12 (seg5Q4PeState rho 12) (seg5Q4IlState rho 12) := by
  have htail := seg5_q4_chunk10 rho h k hk
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2697, r2698, r2699, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 11 ≤ n → n < 12 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 11 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step11 rho r2697 r2698 r2699
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 11 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
