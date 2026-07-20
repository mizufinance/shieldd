import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk98

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step99L (rho : Nat -> Seg6.F) (r2527 : Seg6.relationRow2527 rho) :
    rho 2921 = seg6Q4Pe100 rho * (1 - rho 1983) := by
  unfold Seg6.relationRow2527 at r2527
  unfold seg6Q4Pe100
  linear_combination -r2527

theorem seg6Q4Step99IlMul (rho : Nat -> Seg6.F) (r2528 : Seg6.relationRow2528 rho) :
    rho 2922 = seg6Q4Il100 rho * (rho 2921) := by
  unfold Seg6.relationRow2528 at r2528
  rw [seg6Q4Il100Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  linear_combination -r2528

theorem seg6Q4Step99Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il99 rho = seg6Q4Il100 rho + (rho 2921) - (rho 2922) := by
  have hstate : seg6Q4Il99 rho = seg6Q4Il100 rho + seg6Q4IlAtom15 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom15
  ring

theorem seg6Q4Step99Pe (rho : Nat -> Seg6.F) (r2529 : Seg6.relationRow2529 rho) :
    seg6Q4Pe99 rho = seg6Q4Pe100 rho * rho 1983 := by
  unfold Seg6.relationRow2529 at r2529
  unfold seg6Q4Pe99 seg6Q4Pe100
  linear_combination -r2529

theorem seg6Q4Step99 (rho : Nat -> Seg6.F) (r2527 : Seg6.relationRow2527 rho) (r2528 : Seg6.relationRow2528 rho) (r2529 : Seg6.relationRow2529 rho) :
    seg6Q4Pe99 rho = seg6Q4Pe100 rho * rho 1983 ∧
    seg6Q4Il99 rho = seg6Q4Il100 rho + seg6Q4Pe100 rho * (1 - rho 1983) -
      seg6Q4Il100 rho * (seg6Q4Pe100 rho * (1 - rho 1983)) := by
  constructor
  · exact seg6Q4Step99Pe rho r2529
  · rw [seg6Q4Step99Acc rho, seg6Q4Step99L rho r2527, seg6Q4Step99IlMul rho r2528, seg6Q4Step99L rho r2527]

theorem seg6_q4_chunk99 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 100 (seg6Q4PeState rho 100) (seg6Q4IlState rho 100) := by
  have htail := seg6_q4_chunk98 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2527, r2528, r2529, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 99 ≤ n → n < 100 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 99 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step99 rho r2527 r2528 r2529
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 99 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
