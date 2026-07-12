import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk110

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step111L (rho : Nat -> Seg6.F) (r2503 : Seg6.relationRow2503 rho) :
    rho 2903 = seg6Q4Pe112 rho * (1 - rho 2001) := by
  unfold Seg6.relationRow2503 at r2503
  unfold seg6Q4Pe112
  linear_combination -r2503

theorem seg6Q4Step111IlMul (rho : Nat -> Seg6.F) (r2504 : Seg6.relationRow2504 rho) :
    rho 2904 = seg6Q4Il112 rho * (rho 2903) := by
  unfold Seg6.relationRow2504 at r2504
  rw [seg6Q4Il112Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8
  linear_combination -r2504

theorem seg6Q4Step111Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il111 rho = seg6Q4Il112 rho + (rho 2903) - (rho 2904) := by
  have hstate : seg6Q4Il111 rho = seg6Q4Il112 rho + seg6Q4IlAtom9 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom9
  ring

theorem seg6Q4Step111Pe (rho : Nat -> Seg6.F) (r2505 : Seg6.relationRow2505 rho) :
    seg6Q4Pe111 rho = seg6Q4Pe112 rho * rho 2001 := by
  unfold Seg6.relationRow2505 at r2505
  unfold seg6Q4Pe111 seg6Q4Pe112
  linear_combination -r2505

theorem seg6Q4Step111 (rho : Nat -> Seg6.F) (r2503 : Seg6.relationRow2503 rho) (r2504 : Seg6.relationRow2504 rho) (r2505 : Seg6.relationRow2505 rho) :
    seg6Q4Pe111 rho = seg6Q4Pe112 rho * rho 2001 ∧
    seg6Q4Il111 rho = seg6Q4Il112 rho + seg6Q4Pe112 rho * (1 - rho 2001) -
      seg6Q4Il112 rho * (seg6Q4Pe112 rho * (1 - rho 2001)) := by
  constructor
  · exact seg6Q4Step111Pe rho r2505
  · rw [seg6Q4Step111Acc rho, seg6Q4Step111L rho r2503, seg6Q4Step111IlMul rho r2504, seg6Q4Step111L rho r2503]

theorem seg6_q4_chunk111 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 112 (seg6Q4PeState rho 112) (seg6Q4IlState rho 112) := by
  have htail := seg6_q4_chunk110 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2503, r2504, r2505, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 111 ≤ n → n < 112 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 111 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step111 rho r2503 r2504 r2505
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 111 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
