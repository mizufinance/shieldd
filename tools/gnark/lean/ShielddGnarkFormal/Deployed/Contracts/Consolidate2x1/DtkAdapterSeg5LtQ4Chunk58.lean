import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk57

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step58L (rho : Nat -> Seg5.F) (r2610 : Seg5.relationRow2610 rho) :
    rho 2307 = seg5Q4Pe59 rho * (1 - rho 1245) := by
  unfold Seg5.relationRow2610 at r2610
  unfold seg5Q4Pe59
  linear_combination -r2610

theorem seg5Q4Step58IlMul (rho : Nat -> Seg5.F) (r2611 : Seg5.relationRow2611 rho) :
    rho 2308 = seg5Q4Il59 rho * (rho 2307) := by
  unfold Seg5.relationRow2611 at r2611
  rw [seg5Q4Step58IlLc rho] at r2611
  linear_combination -r2611

theorem seg5Q4Step58Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il58 rho = seg5Q4Il59 rho + (rho 2307) - (rho 2308) := by
  have hstate : seg5Q4Il58 rho = seg5Q4Il59 rho + seg5Q4IlAtom38 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom38
  ring

theorem seg5Q4Step58Pe (rho : Nat -> Seg5.F) (r2612 : Seg5.relationRow2612 rho) :
    seg5Q4Pe58 rho = seg5Q4Pe59 rho * rho 1245 := by
  unfold Seg5.relationRow2612 at r2612
  unfold seg5Q4Pe58 seg5Q4Pe59
  linear_combination -r2612

theorem seg5Q4Step58 (rho : Nat -> Seg5.F) (r2610 : Seg5.relationRow2610 rho) (r2611 : Seg5.relationRow2611 rho) (r2612 : Seg5.relationRow2612 rho) :
    seg5Q4Pe58 rho = seg5Q4Pe59 rho * rho 1245 ∧
    seg5Q4Il58 rho = seg5Q4Il59 rho + seg5Q4Pe59 rho * (1 - rho 1245) -
      seg5Q4Il59 rho * (seg5Q4Pe59 rho * (1 - rho 1245)) := by
  constructor
  · exact seg5Q4Step58Pe rho r2612
  · rw [seg5Q4Step58Acc rho, seg5Q4Step58L rho r2610, seg5Q4Step58IlMul rho r2611, seg5Q4Step58L rho r2610]

theorem seg5_q4_chunk58 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 59 (seg5Q4PeState rho 59) (seg5Q4IlState rho 59) := by
  have htail := seg5_q4_chunk57 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2610, r2611, r2612, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 58 ≤ n → n < 59 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 58 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step58 rho r2610 r2611 r2612
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 58 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
