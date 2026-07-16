import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk90

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step91L (rho : Nat -> Seg6.F) (r2549 : Seg6.relationRow2549 rho) :
    rho 2949 = seg6Q4Pe92 rho * (1 - rho 1981) := by
  unfold Seg6.relationRow2549 at r2549
  unfold seg6Q4Pe92
  linear_combination -r2549

theorem seg6Q4Step91IlMul (rho : Nat -> Seg6.F) (r2550 : Seg6.relationRow2550 rho) :
    rho 2950 = seg6Q4Il92 rho * (rho 2949) := by
  unfold Seg6.relationRow2550 at r2550
  rw [seg6Q4Step91IlLc rho] at r2550
  linear_combination -r2550

theorem seg6Q4Step91Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il91 rho = seg6Q4Il92 rho + (rho 2949) - (rho 2950) := by
  have hstate : seg6Q4Il91 rho = seg6Q4Il92 rho + seg6Q4IlAtom23 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom23
  ring

theorem seg6Q4Step91Pe (rho : Nat -> Seg6.F) (r2551 : Seg6.relationRow2551 rho) :
    seg6Q4Pe91 rho = seg6Q4Pe92 rho * rho 1981 := by
  unfold Seg6.relationRow2551 at r2551
  unfold seg6Q4Pe91 seg6Q4Pe92
  linear_combination -r2551

theorem seg6Q4Step91 (rho : Nat -> Seg6.F) (r2549 : Seg6.relationRow2549 rho) (r2550 : Seg6.relationRow2550 rho) (r2551 : Seg6.relationRow2551 rho) :
    seg6Q4Pe91 rho = seg6Q4Pe92 rho * rho 1981 ∧
    seg6Q4Il91 rho = seg6Q4Il92 rho + seg6Q4Pe92 rho * (1 - rho 1981) -
      seg6Q4Il92 rho * (seg6Q4Pe92 rho * (1 - rho 1981)) := by
  constructor
  · exact seg6Q4Step91Pe rho r2551
  · rw [seg6Q4Step91Acc rho, seg6Q4Step91L rho r2549, seg6Q4Step91IlMul rho r2550, seg6Q4Step91L rho r2549]

theorem seg6_q4_chunk91 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 92 (seg6Q4PeState rho 92) (seg6Q4IlState rho 92) := by
  have htail := seg6_q4_chunk90 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2549, r2550, r2551, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 91 ≤ n → n < 92 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 91 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step91 rho r2549 r2550 r2551
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 91 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
