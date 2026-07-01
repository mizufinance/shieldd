import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk46

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step47L (rho : Nat -> Seg45.F) (r2631 : Seg45.relationRow2631 rho) :
    rho 40861 = seg45Q4Pe48 rho * (1 - rho 39767) := by
  unfold Seg45.relationRow2631 at r2631
  unfold seg45Q4Pe48
  linear_combination -r2631

theorem seg45Q4Step47IlMul (rho : Nat -> Seg45.F) (r2632 : Seg45.relationRow2632 rho) :
    rho 40862 = seg45Q4Il48 rho * (rho 40861) := by
  unfold Seg45.relationRow2632 at r2632
  rw [seg45Q4Step47IlLc rho] at r2632
  linear_combination -r2632

theorem seg45Q4Step47Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il47 rho = seg45Q4Il48 rho + (rho 40861) - (rho 40862) := by
  have hstate : seg45Q4Il47 rho = seg45Q4Il48 rho + seg45Q4IlAtom43 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom43
  ring

theorem seg45Q4Step47Pe (rho : Nat -> Seg45.F) (r2633 : Seg45.relationRow2633 rho) :
    seg45Q4Pe47 rho = seg45Q4Pe48 rho * rho 39767 := by
  unfold Seg45.relationRow2633 at r2633
  unfold seg45Q4Pe47 seg45Q4Pe48
  linear_combination -r2633

theorem seg45Q4Step47 (rho : Nat -> Seg45.F) (r2631 : Seg45.relationRow2631 rho) (r2632 : Seg45.relationRow2632 rho) (r2633 : Seg45.relationRow2633 rho) :
    seg45Q4Pe47 rho = seg45Q4Pe48 rho * rho 39767 ∧
    seg45Q4Il47 rho = seg45Q4Il48 rho + seg45Q4Pe48 rho * (1 - rho 39767) -
      seg45Q4Il48 rho * (seg45Q4Pe48 rho * (1 - rho 39767)) := by
  constructor
  · exact seg45Q4Step47Pe rho r2633
  · rw [seg45Q4Step47Acc rho, seg45Q4Step47L rho r2631, seg45Q4Step47IlMul rho r2632, seg45Q4Step47L rho r2631]

theorem seg45_q4_chunk47 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 48 (seg45Q4PeState rho 48) (seg45Q4IlState rho 48) := by
  have htail := seg45_q4_chunk46 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2631, r2632, r2633, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 47 ≤ n → n < 48 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 47 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step47 rho r2631 r2632 r2633
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 47 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
