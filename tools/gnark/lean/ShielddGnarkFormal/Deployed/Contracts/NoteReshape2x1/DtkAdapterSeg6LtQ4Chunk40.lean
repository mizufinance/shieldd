import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk39

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step40L (rho : Nat -> Seg6.F) (r2644 : Seg6.relationRow2644 rho) :
    rho 3044 = seg6Q4Pe41 rho * (1 - rho 1930) := by
  unfold Seg6.relationRow2644 at r2644
  unfold seg6Q4Pe41
  linear_combination -r2644

theorem seg6Q4Step40IlMul (rho : Nat -> Seg6.F) (r2645 : Seg6.relationRow2645 rho) :
    rho 3045 = seg6Q4Il41 rho * (rho 3044) := by
  unfold Seg6.relationRow2645 at r2645
  rw [seg6Q4Step40IlLc rho] at r2645
  linear_combination -r2645

theorem seg6Q4Step40Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il40 rho = seg6Q4Il41 rho + (rho 3044) - (rho 3045) := by
  have hstate : seg6Q4Il40 rho = seg6Q4Il41 rho + seg6Q4IlAtom46 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom46
  ring

theorem seg6Q4Step40Pe (rho : Nat -> Seg6.F) (r2646 : Seg6.relationRow2646 rho) :
    seg6Q4Pe40 rho = seg6Q4Pe41 rho * rho 1930 := by
  unfold Seg6.relationRow2646 at r2646
  unfold seg6Q4Pe40 seg6Q4Pe41
  linear_combination -r2646

theorem seg6Q4Step40 (rho : Nat -> Seg6.F) (r2644 : Seg6.relationRow2644 rho) (r2645 : Seg6.relationRow2645 rho) (r2646 : Seg6.relationRow2646 rho) :
    seg6Q4Pe40 rho = seg6Q4Pe41 rho * rho 1930 ∧
    seg6Q4Il40 rho = seg6Q4Il41 rho + seg6Q4Pe41 rho * (1 - rho 1930) -
      seg6Q4Il41 rho * (seg6Q4Pe41 rho * (1 - rho 1930)) := by
  constructor
  · exact seg6Q4Step40Pe rho r2646
  · rw [seg6Q4Step40Acc rho, seg6Q4Step40L rho r2644, seg6Q4Step40IlMul rho r2645, seg6Q4Step40L rho r2644]

theorem seg6_q4_chunk40 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 41 (seg6Q4PeState rho 41) (seg6Q4IlState rho 41) := by
  have htail := seg6_q4_chunk39 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, r2644, r2645, r2646, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 40 ≤ n → n < 41 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 40 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step40 rho r2644 r2645 r2646
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 40 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
