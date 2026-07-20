import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk88

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step89L (rho : Nat -> Seg6.F) (r2555 : Seg6.relationRow2555 rho) :
    rho 2949 = seg6Q4Pe90 rho * (1 - rho 1973) := by
  unfold Seg6.relationRow2555 at r2555
  unfold seg6Q4Pe90
  linear_combination -r2555

theorem seg6Q4Step89IlMul (rho : Nat -> Seg6.F) (r2556 : Seg6.relationRow2556 rho) :
    rho 2950 = seg6Q4Il90 rho * (rho 2949) := by
  unfold Seg6.relationRow2556 at r2556
  rw [seg6Q4Step89IlLc rho] at r2556
  linear_combination -r2556

theorem seg6Q4Step89Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il89 rho = seg6Q4Il90 rho + (rho 2949) - (rho 2950) := by
  have hstate : seg6Q4Il89 rho = seg6Q4Il90 rho + seg6Q4IlAtom25 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom25
  ring

theorem seg6Q4Step89Pe (rho : Nat -> Seg6.F) (r2557 : Seg6.relationRow2557 rho) :
    seg6Q4Pe89 rho = seg6Q4Pe90 rho * rho 1973 := by
  unfold Seg6.relationRow2557 at r2557
  unfold seg6Q4Pe89 seg6Q4Pe90
  linear_combination -r2557

theorem seg6Q4Step89 (rho : Nat -> Seg6.F) (r2555 : Seg6.relationRow2555 rho) (r2556 : Seg6.relationRow2556 rho) (r2557 : Seg6.relationRow2557 rho) :
    seg6Q4Pe89 rho = seg6Q4Pe90 rho * rho 1973 ∧
    seg6Q4Il89 rho = seg6Q4Il90 rho + seg6Q4Pe90 rho * (1 - rho 1973) -
      seg6Q4Il90 rho * (seg6Q4Pe90 rho * (1 - rho 1973)) := by
  constructor
  · exact seg6Q4Step89Pe rho r2557
  · rw [seg6Q4Step89Acc rho, seg6Q4Step89L rho r2555, seg6Q4Step89IlMul rho r2556, seg6Q4Step89L rho r2555]

theorem seg6_q4_chunk89 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 90 (seg6Q4PeState rho 90) (seg6Q4IlState rho 90) := by
  have htail := seg6_q4_chunk88 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2555, r2556, r2557, _, _⟩
  have hsteps : ∀ n, 89 ≤ n → n < 90 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 89 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step89 rho r2555 r2556 r2557
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 89 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
