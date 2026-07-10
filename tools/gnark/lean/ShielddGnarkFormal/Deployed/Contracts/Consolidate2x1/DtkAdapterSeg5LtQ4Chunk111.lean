import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk110

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step111L (rho : Nat -> Seg5.F) (r2503 : Seg5.relationRow2503 rho) :
    rho 2200 = seg5Q4Pe112 rho * (1 - rho 1298) := by
  unfold Seg5.relationRow2503 at r2503
  unfold seg5Q4Pe112
  linear_combination -r2503

theorem seg5Q4Step111IlMul (rho : Nat -> Seg5.F) (r2504 : Seg5.relationRow2504 rho) :
    rho 2201 = seg5Q4Il112 rho * (rho 2200) := by
  unfold Seg5.relationRow2504 at r2504
  rw [seg5Q4Il112Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7 seg5Q4IlAtom8
  linear_combination -r2504

theorem seg5Q4Step111Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il111 rho = seg5Q4Il112 rho + (rho 2200) - (rho 2201) := by
  have hstate : seg5Q4Il111 rho = seg5Q4Il112 rho + seg5Q4IlAtom9 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom9
  ring

theorem seg5Q4Step111Pe (rho : Nat -> Seg5.F) (r2505 : Seg5.relationRow2505 rho) :
    seg5Q4Pe111 rho = seg5Q4Pe112 rho * rho 1298 := by
  unfold Seg5.relationRow2505 at r2505
  unfold seg5Q4Pe111 seg5Q4Pe112
  linear_combination -r2505

theorem seg5Q4Step111 (rho : Nat -> Seg5.F) (r2503 : Seg5.relationRow2503 rho) (r2504 : Seg5.relationRow2504 rho) (r2505 : Seg5.relationRow2505 rho) :
    seg5Q4Pe111 rho = seg5Q4Pe112 rho * rho 1298 ∧
    seg5Q4Il111 rho = seg5Q4Il112 rho + seg5Q4Pe112 rho * (1 - rho 1298) -
      seg5Q4Il112 rho * (seg5Q4Pe112 rho * (1 - rho 1298)) := by
  constructor
  · exact seg5Q4Step111Pe rho r2505
  · rw [seg5Q4Step111Acc rho, seg5Q4Step111L rho r2503, seg5Q4Step111IlMul rho r2504, seg5Q4Step111L rho r2503]

theorem seg5_q4_chunk111 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 112 (seg5Q4PeState rho 112) (seg5Q4IlState rho 112) := by
  have htail := seg5_q4_chunk110 rho h k hk
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2503, r2504, r2505, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 111 ≤ n → n < 112 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 111 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step111 rho r2503 r2504 r2505
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 111 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
