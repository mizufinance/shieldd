import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk11

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step12L (rho : Nat -> Seg34.F) (r2694 : Seg34.relationRow2694 rho) :
    rho 33968 = seg34Q4Pe13 rho * (1 - rho 32776) := by
  unfold Seg34.relationRow2694 at r2694
  unfold seg34Q4Pe13
  linear_combination -r2694

theorem seg34Q4Step12IlMul (rho : Nat -> Seg34.F) (r2695 : Seg34.relationRow2695 rho) :
    rho 33969 = seg34Q4Il13 rho * (rho 33968) := by
  unfold Seg34.relationRow2695 at r2695
  rw [seg34Q4Step12IlLc rho] at r2695
  linear_combination -r2695

theorem seg34Q4Step12Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il12 rho = seg34Q4Il13 rho + (rho 33968) - (rho 33969) := by
  have hstate : seg34Q4Il12 rho = seg34Q4Il13 rho + seg34Q4IlAtom58 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom58
  ring

theorem seg34Q4Step12Pe (rho : Nat -> Seg34.F) (r2696 : Seg34.relationRow2696 rho) :
    seg34Q4Pe12 rho = seg34Q4Pe13 rho * rho 32776 := by
  unfold Seg34.relationRow2696 at r2696
  unfold seg34Q4Pe12 seg34Q4Pe13
  linear_combination -r2696

theorem seg34Q4Step12 (rho : Nat -> Seg34.F) (r2694 : Seg34.relationRow2694 rho) (r2695 : Seg34.relationRow2695 rho) (r2696 : Seg34.relationRow2696 rho) :
    seg34Q4Pe12 rho = seg34Q4Pe13 rho * rho 32776 ∧
    seg34Q4Il12 rho = seg34Q4Il13 rho + seg34Q4Pe13 rho * (1 - rho 32776) -
      seg34Q4Il13 rho * (seg34Q4Pe13 rho * (1 - rho 32776)) := by
  constructor
  · exact seg34Q4Step12Pe rho r2696
  · rw [seg34Q4Step12Acc rho, seg34Q4Step12L rho r2694, seg34Q4Step12IlMul rho r2695, seg34Q4Step12L rho r2694]

theorem seg34_q4_chunk12 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 13 (seg34Q4PeState rho 13) (seg34Q4IlState rho 13) := by
  have htail := seg34_q4_chunk11 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2694, r2695, r2696, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 12 ≤ n → n < 13 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 12 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step12 rho r2694 r2695 r2696
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 12 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
