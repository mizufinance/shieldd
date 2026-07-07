import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk35

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step36L (rho : Nat -> Seg16.F) (r2652 : Seg16.relationRow2652 rho) :
    rho 15226 = seg16Q4Pe37 rho * (1 - rho 14100) := by
  unfold Seg16.relationRow2652 at r2652
  unfold seg16Q4Pe37
  linear_combination -r2652

theorem seg16Q4Step36IlMul (rho : Nat -> Seg16.F) (r2653 : Seg16.relationRow2653 rho) :
    rho 15227 = seg16Q4Il37 rho * (rho 15226) := by
  unfold Seg16.relationRow2653 at r2653
  rw [seg16Q4Step36IlLc rho] at r2653
  linear_combination -r2653

theorem seg16Q4Step36Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il36 rho = seg16Q4Il37 rho + (rho 15226) - (rho 15227) := by
  have hstate : seg16Q4Il36 rho = seg16Q4Il37 rho + seg16Q4IlAtom48 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom48
  ring

theorem seg16Q4Step36Pe (rho : Nat -> Seg16.F) (r2654 : Seg16.relationRow2654 rho) :
    seg16Q4Pe36 rho = seg16Q4Pe37 rho * rho 14100 := by
  unfold Seg16.relationRow2654 at r2654
  unfold seg16Q4Pe36 seg16Q4Pe37
  linear_combination -r2654

theorem seg16Q4Step36 (rho : Nat -> Seg16.F) (r2652 : Seg16.relationRow2652 rho) (r2653 : Seg16.relationRow2653 rho) (r2654 : Seg16.relationRow2654 rho) :
    seg16Q4Pe36 rho = seg16Q4Pe37 rho * rho 14100 ∧
    seg16Q4Il36 rho = seg16Q4Il37 rho + seg16Q4Pe37 rho * (1 - rho 14100) -
      seg16Q4Il37 rho * (seg16Q4Pe37 rho * (1 - rho 14100)) := by
  constructor
  · exact seg16Q4Step36Pe rho r2654
  · rw [seg16Q4Step36Acc rho, seg16Q4Step36L rho r2652, seg16Q4Step36IlMul rho r2653, seg16Q4Step36L rho r2652]

theorem seg16_q4_chunk36 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 37 (seg16Q4PeState rho 37) (seg16Q4IlState rho 37) := by
  have htail := seg16_q4_chunk35 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2652, r2653, r2654, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 36 ≤ n → n < 37 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 36 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step36 rho r2652 r2653 r2654
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 36 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
