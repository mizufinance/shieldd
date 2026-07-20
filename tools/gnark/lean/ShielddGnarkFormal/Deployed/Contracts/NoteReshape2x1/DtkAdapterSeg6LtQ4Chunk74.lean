import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk73

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step74L (rho : Nat -> Seg6.F) (r2586 : Seg6.relationRow2586 rho) :
    rho 2980 = seg6Q4Pe75 rho * (1 - rho 1958) := by
  unfold Seg6.relationRow2586 at r2586
  unfold seg6Q4Pe75
  linear_combination -r2586

theorem seg6Q4Step74IlMul (rho : Nat -> Seg6.F) (r2587 : Seg6.relationRow2587 rho) :
    rho 2981 = seg6Q4Il75 rho * (rho 2980) := by
  unfold Seg6.relationRow2587 at r2587
  rw [seg6Q4Step74IlLc rho] at r2587
  linear_combination -r2587

theorem seg6Q4Step74Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il74 rho = seg6Q4Il75 rho + (rho 2980) - (rho 2981) := by
  have hstate : seg6Q4Il74 rho = seg6Q4Il75 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom33 seg6Q4IlAtom34
  ring

theorem seg6Q4Step74Pe (rho : Nat -> Seg6.F) (r2588 : Seg6.relationRow2588 rho) :
    seg6Q4Pe74 rho = seg6Q4Pe75 rho * rho 1958 := by
  unfold Seg6.relationRow2588 at r2588
  unfold seg6Q4Pe74 seg6Q4Pe75
  linear_combination -r2588

theorem seg6Q4Step74 (rho : Nat -> Seg6.F) (r2586 : Seg6.relationRow2586 rho) (r2587 : Seg6.relationRow2587 rho) (r2588 : Seg6.relationRow2588 rho) :
    seg6Q4Pe74 rho = seg6Q4Pe75 rho * rho 1958 ∧
    seg6Q4Il74 rho = seg6Q4Il75 rho + seg6Q4Pe75 rho * (1 - rho 1958) -
      seg6Q4Il75 rho * (seg6Q4Pe75 rho * (1 - rho 1958)) := by
  constructor
  · exact seg6Q4Step74Pe rho r2588
  · rw [seg6Q4Step74Acc rho, seg6Q4Step74L rho r2586, seg6Q4Step74IlMul rho r2587, seg6Q4Step74L rho r2586]

theorem seg6_q4_chunk74 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 75 (seg6Q4PeState rho 75) (seg6Q4IlState rho 75) := by
  have htail := seg6_q4_chunk73 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2586, r2587, r2588, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 74 ≤ n → n < 75 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 74 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step74 rho r2586 r2587 r2588
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 74 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
