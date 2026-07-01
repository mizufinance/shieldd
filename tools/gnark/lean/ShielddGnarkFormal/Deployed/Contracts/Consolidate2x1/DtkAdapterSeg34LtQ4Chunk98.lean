import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk97

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step98L (rho : Nat -> Seg34.F) (r2530 : Seg34.relationRow2530 rho) :
    rho 33804 = seg34Q4Pe99 rho * (1 - rho 32862) := by
  unfold Seg34.relationRow2530 at r2530
  unfold seg34Q4Pe99
  linear_combination -r2530

theorem seg34Q4Step98IlMul (rho : Nat -> Seg34.F) (r2531 : Seg34.relationRow2531 rho) :
    rho 33805 = seg34Q4Il99 rho * (rho 33804) := by
  unfold Seg34.relationRow2531 at r2531
  rw [seg34Q4Il99Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom10 seg34Q4IlAtom11 seg34Q4IlAtom12 seg34Q4IlAtom13 seg34Q4IlAtom14 seg34Q4IlAtom15 seg34Q4IlAtom2 seg34Q4IlAtom3 seg34Q4IlAtom4 seg34Q4IlAtom5 seg34Q4IlAtom6 seg34Q4IlAtom7 seg34Q4IlAtom8 seg34Q4IlAtom9
  linear_combination -r2531

theorem seg34Q4Step98Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il98 rho = seg34Q4Il99 rho + (rho 33804) - (rho 33805) := by
  have hstate : seg34Q4Il98 rho = seg34Q4Il99 rho + seg34Q4IlAtom16 rho + (-1 : Seg34.F) * seg34Q4IlAtom17 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom16 seg34Q4IlAtom17
  ring

theorem seg34Q4Step98Pe (rho : Nat -> Seg34.F) (r2532 : Seg34.relationRow2532 rho) :
    seg34Q4Pe98 rho = seg34Q4Pe99 rho * rho 32862 := by
  unfold Seg34.relationRow2532 at r2532
  unfold seg34Q4Pe98 seg34Q4Pe99
  linear_combination -r2532

theorem seg34Q4Step98 (rho : Nat -> Seg34.F) (r2530 : Seg34.relationRow2530 rho) (r2531 : Seg34.relationRow2531 rho) (r2532 : Seg34.relationRow2532 rho) :
    seg34Q4Pe98 rho = seg34Q4Pe99 rho * rho 32862 ∧
    seg34Q4Il98 rho = seg34Q4Il99 rho + seg34Q4Pe99 rho * (1 - rho 32862) -
      seg34Q4Il99 rho * (seg34Q4Pe99 rho * (1 - rho 32862)) := by
  constructor
  · exact seg34Q4Step98Pe rho r2532
  · rw [seg34Q4Step98Acc rho, seg34Q4Step98L rho r2530, seg34Q4Step98IlMul rho r2531, seg34Q4Step98L rho r2530]

theorem seg34_q4_chunk98 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 99 (seg34Q4PeState rho 99) (seg34Q4IlState rho 99) := by
  have htail := seg34_q4_chunk97 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2530, r2531, r2532, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 98 ≤ n → n < 99 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 98 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step98 rho r2530 r2531 r2532
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 98 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
