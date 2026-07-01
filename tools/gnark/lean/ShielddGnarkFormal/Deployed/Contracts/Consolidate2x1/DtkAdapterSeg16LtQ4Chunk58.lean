import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk57

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step58L (rho : Nat -> Seg16.F) (r2610 : Seg16.relationRow2610 rho) :
    rho 15184 = seg16Q4Pe59 rho * (1 - rho 14122) := by
  unfold Seg16.relationRow2610 at r2610
  unfold seg16Q4Pe59
  linear_combination -r2610

theorem seg16Q4Step58IlMul (rho : Nat -> Seg16.F) (r2611 : Seg16.relationRow2611 rho) :
    rho 15185 = seg16Q4Il59 rho * (rho 15184) := by
  unfold Seg16.relationRow2611 at r2611
  rw [seg16Q4Step58IlLc rho] at r2611
  linear_combination -r2611

theorem seg16Q4Step58Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il58 rho = seg16Q4Il59 rho + (rho 15184) - (rho 15185) := by
  have hstate : seg16Q4Il58 rho = seg16Q4Il59 rho + seg16Q4IlAtom38 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom38
  ring

theorem seg16Q4Step58Pe (rho : Nat -> Seg16.F) (r2612 : Seg16.relationRow2612 rho) :
    seg16Q4Pe58 rho = seg16Q4Pe59 rho * rho 14122 := by
  unfold Seg16.relationRow2612 at r2612
  unfold seg16Q4Pe58 seg16Q4Pe59
  linear_combination -r2612

theorem seg16Q4Step58 (rho : Nat -> Seg16.F) (r2610 : Seg16.relationRow2610 rho) (r2611 : Seg16.relationRow2611 rho) (r2612 : Seg16.relationRow2612 rho) :
    seg16Q4Pe58 rho = seg16Q4Pe59 rho * rho 14122 ∧
    seg16Q4Il58 rho = seg16Q4Il59 rho + seg16Q4Pe59 rho * (1 - rho 14122) -
      seg16Q4Il59 rho * (seg16Q4Pe59 rho * (1 - rho 14122)) := by
  constructor
  · exact seg16Q4Step58Pe rho r2612
  · rw [seg16Q4Step58Acc rho, seg16Q4Step58L rho r2610, seg16Q4Step58IlMul rho r2611, seg16Q4Step58L rho r2610]

theorem seg16_q4_chunk58 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 59 (seg16Q4PeState rho 59) (seg16Q4IlState rho 59) := by
  have htail := seg16_q4_chunk57 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2610, r2611, r2612, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 58 ≤ n → n < 59 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 58 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step58 rho r2610 r2611 r2612
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 58 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
