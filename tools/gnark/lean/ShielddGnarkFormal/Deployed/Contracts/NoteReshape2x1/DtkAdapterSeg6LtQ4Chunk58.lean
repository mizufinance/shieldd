import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk57

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step58L (rho : Nat -> Seg6.F) (r2610 : Seg6.relationRow2610 rho) :
    rho 3010 = seg6Q4Pe59 rho * (1 - rho 1948) := by
  unfold Seg6.relationRow2610 at r2610
  unfold seg6Q4Pe59
  linear_combination -r2610

theorem seg6Q4Step58IlMul (rho : Nat -> Seg6.F) (r2611 : Seg6.relationRow2611 rho) :
    rho 3011 = seg6Q4Il59 rho * (rho 3010) := by
  unfold Seg6.relationRow2611 at r2611
  rw [seg6Q4Step58IlLc rho] at r2611
  linear_combination -r2611

theorem seg6Q4Step58Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il58 rho = seg6Q4Il59 rho + (rho 3010) - (rho 3011) := by
  have hstate : seg6Q4Il58 rho = seg6Q4Il59 rho + seg6Q4IlAtom38 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom38
  ring

theorem seg6Q4Step58Pe (rho : Nat -> Seg6.F) (r2612 : Seg6.relationRow2612 rho) :
    seg6Q4Pe58 rho = seg6Q4Pe59 rho * rho 1948 := by
  unfold Seg6.relationRow2612 at r2612
  unfold seg6Q4Pe58 seg6Q4Pe59
  linear_combination -r2612

theorem seg6Q4Step58 (rho : Nat -> Seg6.F) (r2610 : Seg6.relationRow2610 rho) (r2611 : Seg6.relationRow2611 rho) (r2612 : Seg6.relationRow2612 rho) :
    seg6Q4Pe58 rho = seg6Q4Pe59 rho * rho 1948 ∧
    seg6Q4Il58 rho = seg6Q4Il59 rho + seg6Q4Pe59 rho * (1 - rho 1948) -
      seg6Q4Il59 rho * (seg6Q4Pe59 rho * (1 - rho 1948)) := by
  constructor
  · exact seg6Q4Step58Pe rho r2612
  · rw [seg6Q4Step58Acc rho, seg6Q4Step58L rho r2610, seg6Q4Step58IlMul rho r2611, seg6Q4Step58L rho r2610]

theorem seg6_q4_chunk58 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 59 (seg6Q4PeState rho 59) (seg6Q4IlState rho 59) := by
  have htail := seg6_q4_chunk57 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2610, r2611, r2612, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 58 ≤ n → n < 59 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 58 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step58 rho r2610 r2611 r2612
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 58 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
