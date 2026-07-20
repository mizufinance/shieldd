import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk122

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step123L (rho : Nat -> Seg6.F) (r2474 : Seg6.relationRow2474 rho) :
    rho 2868 = seg6Q4Pe124 rho * (1 - rho 2007) := by
  unfold Seg6.relationRow2474 at r2474
  unfold seg6Q4Pe124
  linear_combination -r2474

theorem seg6Q4Step123IlMul (rho : Nat -> Seg6.F)  :
    (0 : Seg6.F) = seg6Q4Il124 rho * (rho 2868) := by
  rw [seg6Q4Il124Atoms rho]
  ring

theorem seg6Q4Step123Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il123 rho = seg6Q4Il124 rho + (rho 2868) - ((0 : Seg6.F)) := by
  have hstate : seg6Q4Il123 rho = seg6Q4Il124 rho + seg6Q4IlAtom0 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom0
  ring

theorem seg6Q4Step123Pe (rho : Nat -> Seg6.F) (r2475 : Seg6.relationRow2475 rho) :
    seg6Q4Pe123 rho = seg6Q4Pe124 rho * rho 2007 := by
  unfold Seg6.relationRow2475 at r2475
  unfold seg6Q4Pe123 seg6Q4Pe124
  linear_combination -r2475

theorem seg6Q4Step123 (rho : Nat -> Seg6.F) (r2474 : Seg6.relationRow2474 rho) (r2475 : Seg6.relationRow2475 rho) :
    seg6Q4Pe123 rho = seg6Q4Pe124 rho * rho 2007 ∧
    seg6Q4Il123 rho = seg6Q4Il124 rho + seg6Q4Pe124 rho * (1 - rho 2007) -
      seg6Q4Il124 rho * (seg6Q4Pe124 rho * (1 - rho 2007)) := by
  constructor
  · exact seg6Q4Step123Pe rho r2475
  · rw [seg6Q4Step123Acc rho, seg6Q4Step123L rho r2474, seg6Q4Step123IlMul rho, seg6Q4Step123L rho r2474]

theorem seg6_q4_chunk123 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 124 (seg6Q4PeState rho 124) (seg6Q4IlState rho 124) := by
  have htail := seg6_q4_chunk122 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2474, r2475, _, _, _, _⟩
  have hsteps : ∀ n, 123 ≤ n → n < 124 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 123 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step123 rho r2474 r2475
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 123 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
