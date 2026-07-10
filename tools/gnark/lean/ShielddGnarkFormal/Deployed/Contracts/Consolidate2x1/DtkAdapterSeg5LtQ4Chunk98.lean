import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk97

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step98L (rho : Nat -> Seg5.F) (r2530 : Seg5.relationRow2530 rho) :
    rho 2227 = seg5Q4Pe99 rho * (1 - rho 1285) := by
  unfold Seg5.relationRow2530 at r2530
  unfold seg5Q4Pe99
  linear_combination -r2530

theorem seg5Q4Step98IlMul (rho : Nat -> Seg5.F) (r2531 : Seg5.relationRow2531 rho) :
    rho 2228 = seg5Q4Il99 rho * (rho 2227) := by
  unfold Seg5.relationRow2531 at r2531
  rw [seg5Q4Il99Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom10 seg5Q4IlAtom11 seg5Q4IlAtom12 seg5Q4IlAtom13 seg5Q4IlAtom14 seg5Q4IlAtom15 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8 seg5Q4IlAtom9
  linear_combination -r2531

theorem seg5Q4Step98Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il98 rho = seg5Q4Il99 rho + (rho 2227) - (rho 2228) := by
  have hstate : seg5Q4Il98 rho = seg5Q4Il99 rho + seg5Q4IlAtom16 rho + (-1 : Seg5.F) * seg5Q4IlAtom17 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom16 seg5Q4IlAtom17
  ring

theorem seg5Q4Step98Pe (rho : Nat -> Seg5.F) (r2532 : Seg5.relationRow2532 rho) :
    seg5Q4Pe98 rho = seg5Q4Pe99 rho * rho 1285 := by
  unfold Seg5.relationRow2532 at r2532
  unfold seg5Q4Pe98 seg5Q4Pe99
  linear_combination -r2532

theorem seg5Q4Step98 (rho : Nat -> Seg5.F) (r2530 : Seg5.relationRow2530 rho) (r2531 : Seg5.relationRow2531 rho) (r2532 : Seg5.relationRow2532 rho) :
    seg5Q4Pe98 rho = seg5Q4Pe99 rho * rho 1285 ∧
    seg5Q4Il98 rho = seg5Q4Il99 rho + seg5Q4Pe99 rho * (1 - rho 1285) -
      seg5Q4Il99 rho * (seg5Q4Pe99 rho * (1 - rho 1285)) := by
  constructor
  · exact seg5Q4Step98Pe rho r2532
  · rw [seg5Q4Step98Acc rho, seg5Q4Step98L rho r2530, seg5Q4Step98IlMul rho r2531, seg5Q4Step98L rho r2530]

theorem seg5_q4_chunk98 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 99 (seg5Q4PeState rho 99) (seg5Q4IlState rho 99) := by
  have htail := seg5_q4_chunk97 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2530, r2531, r2532, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 98 ≤ n → n < 99 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 98 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step98 rho r2530 r2531 r2532
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 98 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
