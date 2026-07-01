import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk38

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step39L (rho : Nat -> Seg16.F) (r2647 : Seg16.relationRow2647 rho) :
    rho 15221 = seg16Q4Pe40 rho * (1 - rho 14103) := by
  unfold Seg16.relationRow2647 at r2647
  unfold seg16Q4Pe40
  linear_combination -r2647

theorem seg16Q4Step39IlMul (rho : Nat -> Seg16.F) (r2648 : Seg16.relationRow2648 rho) :
    rho 15222 = seg16Q4Il40 rho * (rho 15221) := by
  unfold Seg16.relationRow2648 at r2648
  rw [seg16Q4Step39IlLc rho] at r2648
  linear_combination -r2648

theorem seg16Q4Step39Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il39 rho = seg16Q4Il40 rho + (rho 15221) - (rho 15222) := by
  have hstate : seg16Q4Il39 rho = seg16Q4Il40 rho + seg16Q4IlAtom47 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom47
  ring

theorem seg16Q4Step39Pe (rho : Nat -> Seg16.F) (r2649 : Seg16.relationRow2649 rho) :
    seg16Q4Pe39 rho = seg16Q4Pe40 rho * rho 14103 := by
  unfold Seg16.relationRow2649 at r2649
  unfold seg16Q4Pe39 seg16Q4Pe40
  linear_combination -r2649

theorem seg16Q4Step39 (rho : Nat -> Seg16.F) (r2647 : Seg16.relationRow2647 rho) (r2648 : Seg16.relationRow2648 rho) (r2649 : Seg16.relationRow2649 rho) :
    seg16Q4Pe39 rho = seg16Q4Pe40 rho * rho 14103 ∧
    seg16Q4Il39 rho = seg16Q4Il40 rho + seg16Q4Pe40 rho * (1 - rho 14103) -
      seg16Q4Il40 rho * (seg16Q4Pe40 rho * (1 - rho 14103)) := by
  constructor
  · exact seg16Q4Step39Pe rho r2649
  · rw [seg16Q4Step39Acc rho, seg16Q4Step39L rho r2647, seg16Q4Step39IlMul rho r2648, seg16Q4Step39L rho r2647]

theorem seg16_q4_chunk39 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 40 (seg16Q4PeState rho 40) (seg16Q4IlState rho 40) := by
  have htail := seg16_q4_chunk38 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, r2647, r2648, r2649, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 39 ≤ n → n < 40 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 39 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step39 rho r2647 r2648 r2649
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 39 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
