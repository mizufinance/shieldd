import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk115

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step116L (rho : Nat -> Seg6.F) (r2490 : Seg6.relationRow2490 rho) :
    rho 2890 = seg6Q4Pe117 rho * (1 - rho 2006) := by
  unfold Seg6.relationRow2490 at r2490
  unfold seg6Q4Pe117
  linear_combination -r2490

theorem seg6Q4Step116IlMul (rho : Nat -> Seg6.F) (r2491 : Seg6.relationRow2491 rho) :
    rho 2891 = seg6Q4Il117 rho * (rho 2890) := by
  unfold Seg6.relationRow2491 at r2491
  rw [seg6Q4Il117Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4
  linear_combination -r2491

theorem seg6Q4Step116Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il116 rho = seg6Q4Il117 rho + (rho 2890) - (rho 2891) := by
  have hstate : seg6Q4Il116 rho = seg6Q4Il117 rho + seg6Q4IlAtom5 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom5
  ring

theorem seg6Q4Step116Pe (rho : Nat -> Seg6.F) (r2492 : Seg6.relationRow2492 rho) :
    seg6Q4Pe116 rho = seg6Q4Pe117 rho * rho 2006 := by
  unfold Seg6.relationRow2492 at r2492
  unfold seg6Q4Pe116 seg6Q4Pe117
  linear_combination -r2492

theorem seg6Q4Step116 (rho : Nat -> Seg6.F) (r2490 : Seg6.relationRow2490 rho) (r2491 : Seg6.relationRow2491 rho) (r2492 : Seg6.relationRow2492 rho) :
    seg6Q4Pe116 rho = seg6Q4Pe117 rho * rho 2006 ∧
    seg6Q4Il116 rho = seg6Q4Il117 rho + seg6Q4Pe117 rho * (1 - rho 2006) -
      seg6Q4Il117 rho * (seg6Q4Pe117 rho * (1 - rho 2006)) := by
  constructor
  · exact seg6Q4Step116Pe rho r2492
  · rw [seg6Q4Step116Acc rho, seg6Q4Step116L rho r2490, seg6Q4Step116IlMul rho r2491, seg6Q4Step116L rho r2490]

theorem seg6_q4_chunk116 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 117 (seg6Q4PeState rho 117) (seg6Q4IlState rho 117) := by
  have htail := seg6_q4_chunk115 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, r2490, r2491, r2492, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 116 ≤ n → n < 117 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 116 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step116 rho r2490 r2491 r2492
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 116 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
