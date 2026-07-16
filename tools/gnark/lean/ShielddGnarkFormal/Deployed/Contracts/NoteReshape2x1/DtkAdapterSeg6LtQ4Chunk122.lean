import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk121

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step122L (rho : Nat -> Seg6.F) (r2476 : Seg6.relationRow2476 rho) :
    rho 2876 = seg6Q4Pe123 rho * (1 - rho 2012) := by
  unfold Seg6.relationRow2476 at r2476
  unfold seg6Q4Pe123
  linear_combination -r2476

theorem seg6Q4Step122IlMul (rho : Nat -> Seg6.F) (r2477 : Seg6.relationRow2477 rho) :
    rho 2877 = seg6Q4Il123 rho * (rho 2876) := by
  unfold Seg6.relationRow2477 at r2477
  rw [seg6Q4Il123Atoms rho]
  unfold seg6Q4IlAtom0
  linear_combination -r2477

theorem seg6Q4Step122Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il122 rho = seg6Q4Il123 rho + (rho 2876) - (rho 2877) := by
  have hstate : seg6Q4Il122 rho = seg6Q4Il123 rho + seg6Q4IlAtom1 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom1
  ring

theorem seg6Q4Step122Pe (rho : Nat -> Seg6.F) (r2478 : Seg6.relationRow2478 rho) :
    seg6Q4Pe122 rho = seg6Q4Pe123 rho * rho 2012 := by
  unfold Seg6.relationRow2478 at r2478
  unfold seg6Q4Pe122 seg6Q4Pe123
  linear_combination -r2478

theorem seg6Q4Step122 (rho : Nat -> Seg6.F) (r2476 : Seg6.relationRow2476 rho) (r2477 : Seg6.relationRow2477 rho) (r2478 : Seg6.relationRow2478 rho) :
    seg6Q4Pe122 rho = seg6Q4Pe123 rho * rho 2012 ∧
    seg6Q4Il122 rho = seg6Q4Il123 rho + seg6Q4Pe123 rho * (1 - rho 2012) -
      seg6Q4Il123 rho * (seg6Q4Pe123 rho * (1 - rho 2012)) := by
  constructor
  · exact seg6Q4Step122Pe rho r2478
  · rw [seg6Q4Step122Acc rho, seg6Q4Step122L rho r2476, seg6Q4Step122IlMul rho r2477, seg6Q4Step122L rho r2476]

theorem seg6_q4_chunk122 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 123 (seg6Q4PeState rho 123) (seg6Q4IlState rho 123) := by
  have htail := seg6_q4_chunk121 rho h k hk
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
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2476, r2477, r2478, _⟩
  have hsteps : ∀ n, 122 ≤ n → n < 123 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 122 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step122 rho r2476 r2477 r2478
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 122 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
