import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk46

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step47L (rho : Nat -> Seg34.F) (r2631 : Seg34.relationRow2631 rho) :
    rho 33905 = seg34Q4Pe48 rho * (1 - rho 32811) := by
  unfold Seg34.relationRow2631 at r2631
  unfold seg34Q4Pe48
  linear_combination -r2631

theorem seg34Q4Step47IlMul (rho : Nat -> Seg34.F) (r2632 : Seg34.relationRow2632 rho) :
    rho 33906 = seg34Q4Il48 rho * (rho 33905) := by
  unfold Seg34.relationRow2632 at r2632
  rw [seg34Q4Step47IlLc rho] at r2632
  linear_combination -r2632

theorem seg34Q4Step47Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il47 rho = seg34Q4Il48 rho + (rho 33905) - (rho 33906) := by
  have hstate : seg34Q4Il47 rho = seg34Q4Il48 rho + seg34Q4IlAtom43 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom43
  ring

theorem seg34Q4Step47Pe (rho : Nat -> Seg34.F) (r2633 : Seg34.relationRow2633 rho) :
    seg34Q4Pe47 rho = seg34Q4Pe48 rho * rho 32811 := by
  unfold Seg34.relationRow2633 at r2633
  unfold seg34Q4Pe47 seg34Q4Pe48
  linear_combination -r2633

theorem seg34Q4Step47 (rho : Nat -> Seg34.F) (r2631 : Seg34.relationRow2631 rho) (r2632 : Seg34.relationRow2632 rho) (r2633 : Seg34.relationRow2633 rho) :
    seg34Q4Pe47 rho = seg34Q4Pe48 rho * rho 32811 ∧
    seg34Q4Il47 rho = seg34Q4Il48 rho + seg34Q4Pe48 rho * (1 - rho 32811) -
      seg34Q4Il48 rho * (seg34Q4Pe48 rho * (1 - rho 32811)) := by
  constructor
  · exact seg34Q4Step47Pe rho r2633
  · rw [seg34Q4Step47Acc rho, seg34Q4Step47L rho r2631, seg34Q4Step47IlMul rho r2632, seg34Q4Step47L rho r2631]

theorem seg34_q4_chunk47 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 48 (seg34Q4PeState rho 48) (seg34Q4IlState rho 48) := by
  have htail := seg34_q4_chunk46 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2631, r2632, r2633, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 47 ≤ n → n < 48 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 47 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step47 rho r2631 r2632 r2633
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 47 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
