import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk117

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step118L (rho : Nat -> Seg6.F) (r2486 : Seg6.relationRow2486 rho) :
    rho 2886 = seg6Q4Pe119 rho * (1 - rho 2008) := by
  unfold Seg6.relationRow2486 at r2486
  unfold seg6Q4Pe119
  linear_combination -r2486

theorem seg6Q4Step118IlMul (rho : Nat -> Seg6.F) (r2487 : Seg6.relationRow2487 rho) :
    rho 2887 = seg6Q4Il119 rho * (rho 2886) := by
  unfold Seg6.relationRow2487 at r2487
  rw [seg6Q4Il119Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom2 seg6Q4IlAtom3
  linear_combination -r2487

theorem seg6Q4Step118Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il118 rho = seg6Q4Il119 rho + (rho 2886) - (rho 2887) := by
  have hstate : seg6Q4Il118 rho = seg6Q4Il119 rho + seg6Q4IlAtom4 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom4
  ring

theorem seg6Q4Step118Pe (rho : Nat -> Seg6.F) (r2488 : Seg6.relationRow2488 rho) :
    seg6Q4Pe118 rho = seg6Q4Pe119 rho * rho 2008 := by
  unfold Seg6.relationRow2488 at r2488
  unfold seg6Q4Pe118 seg6Q4Pe119
  linear_combination -r2488

theorem seg6Q4Step118 (rho : Nat -> Seg6.F) (r2486 : Seg6.relationRow2486 rho) (r2487 : Seg6.relationRow2487 rho) (r2488 : Seg6.relationRow2488 rho) :
    seg6Q4Pe118 rho = seg6Q4Pe119 rho * rho 2008 ∧
    seg6Q4Il118 rho = seg6Q4Il119 rho + seg6Q4Pe119 rho * (1 - rho 2008) -
      seg6Q4Il119 rho * (seg6Q4Pe119 rho * (1 - rho 2008)) := by
  constructor
  · exact seg6Q4Step118Pe rho r2488
  · rw [seg6Q4Step118Acc rho, seg6Q4Step118L rho r2486, seg6Q4Step118IlMul rho r2487, seg6Q4Step118L rho r2486]

theorem seg6_q4_chunk118 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 119 (seg6Q4PeState rho 119) (seg6Q4IlState rho 119) := by
  have htail := seg6_q4_chunk117 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, r2486, r2487, r2488, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 118 ≤ n → n < 119 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 118 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step118 rho r2486 r2487 r2488
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 118 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
