import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk97

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step98L (rho : Nat -> Seg16.F) (r2530 : Seg16.relationRow2530 rho) :
    rho 15104 = seg16Q4Pe99 rho * (1 - rho 14162) := by
  unfold Seg16.relationRow2530 at r2530
  unfold seg16Q4Pe99
  linear_combination -r2530

theorem seg16Q4Step98IlMul (rho : Nat -> Seg16.F) (r2531 : Seg16.relationRow2531 rho) :
    rho 15105 = seg16Q4Il99 rho * (rho 15104) := by
  unfold Seg16.relationRow2531 at r2531
  rw [seg16Q4Il99Atoms rho]
  unfold seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  linear_combination -r2531

theorem seg16Q4Step98Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il98 rho = seg16Q4Il99 rho + (rho 15104) - (rho 15105) := by
  have hstate : seg16Q4Il98 rho = seg16Q4Il99 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom16 seg16Q4IlAtom17
  ring

theorem seg16Q4Step98Pe (rho : Nat -> Seg16.F) (r2532 : Seg16.relationRow2532 rho) :
    seg16Q4Pe98 rho = seg16Q4Pe99 rho * rho 14162 := by
  unfold Seg16.relationRow2532 at r2532
  unfold seg16Q4Pe98 seg16Q4Pe99
  linear_combination -r2532

theorem seg16Q4Step98 (rho : Nat -> Seg16.F) (r2530 : Seg16.relationRow2530 rho) (r2531 : Seg16.relationRow2531 rho) (r2532 : Seg16.relationRow2532 rho) :
    seg16Q4Pe98 rho = seg16Q4Pe99 rho * rho 14162 ∧
    seg16Q4Il98 rho = seg16Q4Il99 rho + seg16Q4Pe99 rho * (1 - rho 14162) -
      seg16Q4Il99 rho * (seg16Q4Pe99 rho * (1 - rho 14162)) := by
  constructor
  · exact seg16Q4Step98Pe rho r2532
  · rw [seg16Q4Step98Acc rho, seg16Q4Step98L rho r2530, seg16Q4Step98IlMul rho r2531, seg16Q4Step98L rho r2530]

theorem seg16_q4_chunk98 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 99 (seg16Q4PeState rho 99) (seg16Q4IlState rho 99) := by
  have htail := seg16_q4_chunk97 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2530, r2531, r2532, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 98 ≤ n → n < 99 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 98 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step98 rho r2530 r2531 r2532
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 98 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
