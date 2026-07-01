import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk46

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step47L (rho : Nat -> Seg16.F) (r2631 : Seg16.relationRow2631 rho) :
    rho 15205 = seg16Q4Pe48 rho * (1 - rho 14111) := by
  unfold Seg16.relationRow2631 at r2631
  unfold seg16Q4Pe48
  linear_combination -r2631

theorem seg16Q4Step47IlMul (rho : Nat -> Seg16.F) (r2632 : Seg16.relationRow2632 rho) :
    rho 15206 = seg16Q4Il48 rho * (rho 15205) := by
  unfold Seg16.relationRow2632 at r2632
  rw [seg16Q4Step47IlLc rho] at r2632
  linear_combination -r2632

theorem seg16Q4Step47Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il47 rho = seg16Q4Il48 rho + (rho 15205) - (rho 15206) := by
  have hstate : seg16Q4Il47 rho = seg16Q4Il48 rho + seg16Q4IlAtom43 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom43
  ring

theorem seg16Q4Step47Pe (rho : Nat -> Seg16.F) (r2633 : Seg16.relationRow2633 rho) :
    seg16Q4Pe47 rho = seg16Q4Pe48 rho * rho 14111 := by
  unfold Seg16.relationRow2633 at r2633
  unfold seg16Q4Pe47 seg16Q4Pe48
  linear_combination -r2633

theorem seg16Q4Step47 (rho : Nat -> Seg16.F) (r2631 : Seg16.relationRow2631 rho) (r2632 : Seg16.relationRow2632 rho) (r2633 : Seg16.relationRow2633 rho) :
    seg16Q4Pe47 rho = seg16Q4Pe48 rho * rho 14111 ∧
    seg16Q4Il47 rho = seg16Q4Il48 rho + seg16Q4Pe48 rho * (1 - rho 14111) -
      seg16Q4Il48 rho * (seg16Q4Pe48 rho * (1 - rho 14111)) := by
  constructor
  · exact seg16Q4Step47Pe rho r2633
  · rw [seg16Q4Step47Acc rho, seg16Q4Step47L rho r2631, seg16Q4Step47IlMul rho r2632, seg16Q4Step47L rho r2631]

theorem seg16_q4_chunk47 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 48 (seg16Q4PeState rho 48) (seg16Q4IlState rho 48) := by
  have htail := seg16_q4_chunk46 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2631, r2632, r2633, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 47 ≤ n → n < 48 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 47 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step47 rho r2631 r2632 r2633
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 47 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
