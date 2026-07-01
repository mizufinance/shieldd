import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk110

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step111L (rho : Nat -> Seg34.F) (r2503 : Seg34.relationRow2503 rho) :
    rho 33777 = seg34Q4Pe112 rho * (1 - rho 32875) := by
  unfold Seg34.relationRow2503 at r2503
  unfold seg34Q4Pe112
  linear_combination -r2503

theorem seg34Q4Step111IlMul (rho : Nat -> Seg34.F) (r2504 : Seg34.relationRow2504 rho) :
    rho 33778 = seg34Q4Il112 rho * (rho 33777) := by
  unfold Seg34.relationRow2504 at r2504
  rw [seg34Q4Il112Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom2 seg34Q4IlAtom3 seg34Q4IlAtom4 seg34Q4IlAtom5 seg34Q4IlAtom6 seg34Q4IlAtom7 seg34Q4IlAtom8
  linear_combination -r2504

theorem seg34Q4Step111Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il111 rho = seg34Q4Il112 rho + (rho 33777) - (rho 33778) := by
  have hstate : seg34Q4Il111 rho = seg34Q4Il112 rho + seg34Q4IlAtom9 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom9
  ring

theorem seg34Q4Step111Pe (rho : Nat -> Seg34.F) (r2505 : Seg34.relationRow2505 rho) :
    seg34Q4Pe111 rho = seg34Q4Pe112 rho * rho 32875 := by
  unfold Seg34.relationRow2505 at r2505
  unfold seg34Q4Pe111 seg34Q4Pe112
  linear_combination -r2505

theorem seg34Q4Step111 (rho : Nat -> Seg34.F) (r2503 : Seg34.relationRow2503 rho) (r2504 : Seg34.relationRow2504 rho) (r2505 : Seg34.relationRow2505 rho) :
    seg34Q4Pe111 rho = seg34Q4Pe112 rho * rho 32875 ∧
    seg34Q4Il111 rho = seg34Q4Il112 rho + seg34Q4Pe112 rho * (1 - rho 32875) -
      seg34Q4Il112 rho * (seg34Q4Pe112 rho * (1 - rho 32875)) := by
  constructor
  · exact seg34Q4Step111Pe rho r2505
  · rw [seg34Q4Step111Acc rho, seg34Q4Step111L rho r2503, seg34Q4Step111IlMul rho r2504, seg34Q4Step111L rho r2503]

theorem seg34_q4_chunk111 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 112 (seg34Q4PeState rho 112) (seg34Q4IlState rho 112) := by
  have htail := seg34_q4_chunk110 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2503, r2504, r2505, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 111 ≤ n → n < 112 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 111 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step111 rho r2503 r2504 r2505
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 111 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
