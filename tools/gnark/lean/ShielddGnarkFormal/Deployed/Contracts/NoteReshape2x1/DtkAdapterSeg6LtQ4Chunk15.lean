import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step15L (rho : Nat -> Seg6.F) (r2689 : Seg6.relationRow2689 rho) :
    rho 3083 = seg6Q4Pe16 rho * (1 - rho 1899) := by
  unfold Seg6.relationRow2689 at r2689
  unfold seg6Q4Pe16
  linear_combination -r2689

theorem seg6Q4Step15IlMul (rho : Nat -> Seg6.F) (r2690 : Seg6.relationRow2690 rho) :
    rho 3084 = seg6Q4Il16 rho * (rho 3083) := by
  unfold Seg6.relationRow2690 at r2690
  rw [seg6Q4Step15IlLc rho] at r2690
  linear_combination -r2690

theorem seg6Q4Step15Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il15 rho = seg6Q4Il16 rho + (rho 3083) - (rho 3084) := by
  have hstate : seg6Q4Il15 rho = seg6Q4Il16 rho + seg6Q4IlAtom57 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom57
  ring

theorem seg6Q4Step15Pe (rho : Nat -> Seg6.F) (r2691 : Seg6.relationRow2691 rho) :
    seg6Q4Pe15 rho = seg6Q4Pe16 rho * rho 1899 := by
  unfold Seg6.relationRow2691 at r2691
  unfold seg6Q4Pe15 seg6Q4Pe16
  linear_combination -r2691

theorem seg6Q4Step15 (rho : Nat -> Seg6.F) (r2689 : Seg6.relationRow2689 rho) (r2690 : Seg6.relationRow2690 rho) (r2691 : Seg6.relationRow2691 rho) :
    seg6Q4Pe15 rho = seg6Q4Pe16 rho * rho 1899 ∧
    seg6Q4Il15 rho = seg6Q4Il16 rho + seg6Q4Pe16 rho * (1 - rho 1899) -
      seg6Q4Il16 rho * (seg6Q4Pe16 rho * (1 - rho 1899)) := by
  constructor
  · exact seg6Q4Step15Pe rho r2691
  · rw [seg6Q4Step15Acc rho, seg6Q4Step15L rho r2689, seg6Q4Step15IlMul rho r2690, seg6Q4Step15L rho r2689]

theorem seg6_q4_chunk15 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 16 (seg6Q4PeState rho 16) (seg6Q4IlState rho 16) := by
  have htail := seg6_q4_chunk14 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2689, r2690, r2691, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 15 ≤ n → n < 16 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 15 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step15 rho r2689 r2690 r2691
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 15 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
