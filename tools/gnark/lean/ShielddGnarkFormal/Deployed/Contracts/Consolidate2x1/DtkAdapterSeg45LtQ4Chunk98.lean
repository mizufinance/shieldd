import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk97

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step98L (rho : Nat -> Seg45.F) (r2530 : Seg45.relationRow2530 rho) :
    rho 40760 = seg45Q4Pe99 rho * (1 - rho 39818) := by
  unfold Seg45.relationRow2530 at r2530
  unfold seg45Q4Pe99
  linear_combination -r2530

theorem seg45Q4Step98IlMul (rho : Nat -> Seg45.F) (r2531 : Seg45.relationRow2531 rho) :
    rho 40761 = seg45Q4Il99 rho * (rho 40760) := by
  unfold Seg45.relationRow2531 at r2531
  rw [seg45Q4Il99Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom10 seg45Q4IlAtom11 seg45Q4IlAtom12 seg45Q4IlAtom13 seg45Q4IlAtom14 seg45Q4IlAtom15 seg45Q4IlAtom2 seg45Q4IlAtom3 seg45Q4IlAtom4 seg45Q4IlAtom5 seg45Q4IlAtom6 seg45Q4IlAtom7 seg45Q4IlAtom8 seg45Q4IlAtom9
  linear_combination -r2531

theorem seg45Q4Step98Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il98 rho = seg45Q4Il99 rho + (rho 40760) - (rho 40761) := by
  have hstate : seg45Q4Il98 rho = seg45Q4Il99 rho + seg45Q4IlAtom16 rho + (-1 : Seg45.F) * seg45Q4IlAtom17 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom16 seg45Q4IlAtom17
  ring

theorem seg45Q4Step98Pe (rho : Nat -> Seg45.F) (r2532 : Seg45.relationRow2532 rho) :
    seg45Q4Pe98 rho = seg45Q4Pe99 rho * rho 39818 := by
  unfold Seg45.relationRow2532 at r2532
  unfold seg45Q4Pe98 seg45Q4Pe99
  linear_combination -r2532

theorem seg45Q4Step98 (rho : Nat -> Seg45.F) (r2530 : Seg45.relationRow2530 rho) (r2531 : Seg45.relationRow2531 rho) (r2532 : Seg45.relationRow2532 rho) :
    seg45Q4Pe98 rho = seg45Q4Pe99 rho * rho 39818 ∧
    seg45Q4Il98 rho = seg45Q4Il99 rho + seg45Q4Pe99 rho * (1 - rho 39818) -
      seg45Q4Il99 rho * (seg45Q4Pe99 rho * (1 - rho 39818)) := by
  constructor
  · exact seg45Q4Step98Pe rho r2532
  · rw [seg45Q4Step98Acc rho, seg45Q4Step98L rho r2530, seg45Q4Step98IlMul rho r2531, seg45Q4Step98L rho r2530]

theorem seg45_q4_chunk98 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 99 (seg45Q4PeState rho 99) (seg45Q4IlState rho 99) := by
  have htail := seg45_q4_chunk97 rho h k hk
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2530, r2531, r2532, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 98 ≤ n → n < 99 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 98 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step98 rho r2530 r2531 r2532
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 98 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
