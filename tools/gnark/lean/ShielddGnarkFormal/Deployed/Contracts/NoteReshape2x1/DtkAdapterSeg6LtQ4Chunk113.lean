import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk112

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step113L (rho : Nat -> Seg6.F) (r2497 : Seg6.relationRow2497 rho) :
    rho 2891 = seg6Q4Pe114 rho * (1 - rho 1997) := by
  unfold Seg6.relationRow2497 at r2497
  unfold seg6Q4Pe114
  linear_combination -r2497

theorem seg6Q4Step113IlMul (rho : Nat -> Seg6.F) (r2498 : Seg6.relationRow2498 rho) :
    rho 2892 = seg6Q4Il114 rho * (rho 2891) := by
  unfold Seg6.relationRow2498 at r2498
  rw [seg6Q4Il114Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6
  linear_combination -r2498

theorem seg6Q4Step113Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il113 rho = seg6Q4Il114 rho + (rho 2891) - (rho 2892) := by
  have hstate : seg6Q4Il113 rho = seg6Q4Il114 rho + seg6Q4IlAtom7 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom7
  ring

theorem seg6Q4Step113Pe (rho : Nat -> Seg6.F) (r2499 : Seg6.relationRow2499 rho) :
    seg6Q4Pe113 rho = seg6Q4Pe114 rho * rho 1997 := by
  unfold Seg6.relationRow2499 at r2499
  unfold seg6Q4Pe113 seg6Q4Pe114
  linear_combination -r2499

theorem seg6Q4Step113 (rho : Nat -> Seg6.F) (r2497 : Seg6.relationRow2497 rho) (r2498 : Seg6.relationRow2498 rho) (r2499 : Seg6.relationRow2499 rho) :
    seg6Q4Pe113 rho = seg6Q4Pe114 rho * rho 1997 ∧
    seg6Q4Il113 rho = seg6Q4Il114 rho + seg6Q4Pe114 rho * (1 - rho 1997) -
      seg6Q4Il114 rho * (seg6Q4Pe114 rho * (1 - rho 1997)) := by
  constructor
  · exact seg6Q4Step113Pe rho r2499
  · rw [seg6Q4Step113Acc rho, seg6Q4Step113L rho r2497, seg6Q4Step113IlMul rho r2498, seg6Q4Step113L rho r2497]

theorem seg6_q4_chunk113 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 114 (seg6Q4PeState rho 114) (seg6Q4IlState rho 114) := by
  have htail := seg6_q4_chunk112 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2497, r2498, r2499, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 113 ≤ n → n < 114 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 113 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step113 rho r2497 r2498 r2499
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 113 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
