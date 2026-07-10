import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk46

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step47L (rho : Nat -> Seg5.F) (r2631 : Seg5.relationRow2631 rho) :
    rho 2328 = seg5Q4Pe48 rho * (1 - rho 1234) := by
  unfold Seg5.relationRow2631 at r2631
  unfold seg5Q4Pe48
  linear_combination -r2631

theorem seg5Q4Step47IlMul (rho : Nat -> Seg5.F) (r2632 : Seg5.relationRow2632 rho) :
    rho 2329 = seg5Q4Il48 rho * (rho 2328) := by
  unfold Seg5.relationRow2632 at r2632
  rw [seg5Q4Step47IlLc rho] at r2632
  linear_combination -r2632

theorem seg5Q4Step47Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il47 rho = seg5Q4Il48 rho + (rho 2328) - (rho 2329) := by
  have hstate : seg5Q4Il47 rho = seg5Q4Il48 rho + seg5Q4IlAtom43 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom43
  ring

theorem seg5Q4Step47Pe (rho : Nat -> Seg5.F) (r2633 : Seg5.relationRow2633 rho) :
    seg5Q4Pe47 rho = seg5Q4Pe48 rho * rho 1234 := by
  unfold Seg5.relationRow2633 at r2633
  unfold seg5Q4Pe47 seg5Q4Pe48
  linear_combination -r2633

theorem seg5Q4Step47 (rho : Nat -> Seg5.F) (r2631 : Seg5.relationRow2631 rho) (r2632 : Seg5.relationRow2632 rho) (r2633 : Seg5.relationRow2633 rho) :
    seg5Q4Pe47 rho = seg5Q4Pe48 rho * rho 1234 ∧
    seg5Q4Il47 rho = seg5Q4Il48 rho + seg5Q4Pe48 rho * (1 - rho 1234) -
      seg5Q4Il48 rho * (seg5Q4Pe48 rho * (1 - rho 1234)) := by
  constructor
  · exact seg5Q4Step47Pe rho r2633
  · rw [seg5Q4Step47Acc rho, seg5Q4Step47L rho r2631, seg5Q4Step47IlMul rho r2632, seg5Q4Step47L rho r2631]

theorem seg5_q4_chunk47 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 48 (seg5Q4PeState rho 48) (seg5Q4IlState rho 48) := by
  have htail := seg5_q4_chunk46 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2631, r2632, r2633, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 47 ≤ n → n < 48 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 47 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step47 rho r2631 r2632 r2633
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 47 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
