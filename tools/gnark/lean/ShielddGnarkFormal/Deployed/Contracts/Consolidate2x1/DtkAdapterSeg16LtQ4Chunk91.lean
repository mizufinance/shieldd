import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk90

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step91L (rho : Nat -> Seg16.F) (r2549 : Seg16.relationRow2549 rho) :
    rho 15123 = seg16Q4Pe92 rho * (1 - rho 14155) := by
  unfold Seg16.relationRow2549 at r2549
  unfold seg16Q4Pe92
  linear_combination -r2549

theorem seg16Q4Step91IlMul (rho : Nat -> Seg16.F) (r2550 : Seg16.relationRow2550 rho) :
    rho 15124 = seg16Q4Il92 rho * (rho 15123) := by
  unfold Seg16.relationRow2550 at r2550
  rw [seg16Q4Step91IlLc rho] at r2550
  linear_combination -r2550

theorem seg16Q4Step91Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il91 rho = seg16Q4Il92 rho + (rho 15123) - (rho 15124) := by
  have hstate : seg16Q4Il91 rho = seg16Q4Il92 rho + seg16Q4IlAtom23 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom23
  ring

theorem seg16Q4Step91Pe (rho : Nat -> Seg16.F) (r2551 : Seg16.relationRow2551 rho) :
    seg16Q4Pe91 rho = seg16Q4Pe92 rho * rho 14155 := by
  unfold Seg16.relationRow2551 at r2551
  unfold seg16Q4Pe91 seg16Q4Pe92
  linear_combination -r2551

theorem seg16Q4Step91 (rho : Nat -> Seg16.F) (r2549 : Seg16.relationRow2549 rho) (r2550 : Seg16.relationRow2550 rho) (r2551 : Seg16.relationRow2551 rho) :
    seg16Q4Pe91 rho = seg16Q4Pe92 rho * rho 14155 ∧
    seg16Q4Il91 rho = seg16Q4Il92 rho + seg16Q4Pe92 rho * (1 - rho 14155) -
      seg16Q4Il92 rho * (seg16Q4Pe92 rho * (1 - rho 14155)) := by
  constructor
  · exact seg16Q4Step91Pe rho r2551
  · rw [seg16Q4Step91Acc rho, seg16Q4Step91L rho r2549, seg16Q4Step91IlMul rho r2550, seg16Q4Step91L rho r2549]

theorem seg16_q4_chunk91 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 92 (seg16Q4PeState rho 92) (seg16Q4IlState rho 92) := by
  have htail := seg16_q4_chunk90 rho h k hk
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2549, r2550, r2551, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 91 ≤ n → n < 92 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 91 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step91 rho r2549 r2550 r2551
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 91 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
