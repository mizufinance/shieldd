import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk97

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step98L (rho : Nat -> Seg6.F) (r2530 : Seg6.relationRow2530 rho) :
    rho 2924 = seg6Q4Pe99 rho * (1 - rho 1982) := by
  unfold Seg6.relationRow2530 at r2530
  unfold seg6Q4Pe99
  linear_combination -r2530

theorem seg6Q4Step98IlMul (rho : Nat -> Seg6.F) (r2531 : Seg6.relationRow2531 rho) :
    rho 2925 = seg6Q4Il99 rho * (rho 2924) := by
  unfold Seg6.relationRow2531 at r2531
  rw [seg6Q4Il99Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  linear_combination -r2531

theorem seg6Q4Step98Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il98 rho = seg6Q4Il99 rho + (rho 2924) - (rho 2925) := by
  have hstate : seg6Q4Il98 rho = seg6Q4Il99 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom16 seg6Q4IlAtom17
  ring

theorem seg6Q4Step98Pe (rho : Nat -> Seg6.F) (r2532 : Seg6.relationRow2532 rho) :
    seg6Q4Pe98 rho = seg6Q4Pe99 rho * rho 1982 := by
  unfold Seg6.relationRow2532 at r2532
  unfold seg6Q4Pe98 seg6Q4Pe99
  linear_combination -r2532

theorem seg6Q4Step98 (rho : Nat -> Seg6.F) (r2530 : Seg6.relationRow2530 rho) (r2531 : Seg6.relationRow2531 rho) (r2532 : Seg6.relationRow2532 rho) :
    seg6Q4Pe98 rho = seg6Q4Pe99 rho * rho 1982 ∧
    seg6Q4Il98 rho = seg6Q4Il99 rho + seg6Q4Pe99 rho * (1 - rho 1982) -
      seg6Q4Il99 rho * (seg6Q4Pe99 rho * (1 - rho 1982)) := by
  constructor
  · exact seg6Q4Step98Pe rho r2532
  · rw [seg6Q4Step98Acc rho, seg6Q4Step98L rho r2530, seg6Q4Step98IlMul rho r2531, seg6Q4Step98L rho r2530]

theorem seg6_q4_chunk98 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 99 (seg6Q4PeState rho 99) (seg6Q4IlState rho 99) := by
  have htail := seg6_q4_chunk97 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2530, r2531, r2532, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 98 ≤ n → n < 99 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 98 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step98 rho r2530 r2531 r2532
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 98 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
