import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk110

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step111L (rho : Nat -> Seg16.F) (r2503 : Seg16.relationRow2503 rho) :
    rho 15077 = seg16Q4Pe112 rho * (1 - rho 14175) := by
  unfold Seg16.relationRow2503 at r2503
  unfold seg16Q4Pe112
  linear_combination -r2503

theorem seg16Q4Step111IlMul (rho : Nat -> Seg16.F) (r2504 : Seg16.relationRow2504 rho) :
    rho 15078 = seg16Q4Il112 rho * (rho 15077) := by
  unfold Seg16.relationRow2504 at r2504
  rw [seg16Q4Il112Atoms rho]
  unfold seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8
  linear_combination -r2504

theorem seg16Q4Step111Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il111 rho = seg16Q4Il112 rho + (rho 15077) - (rho 15078) := by
  have hstate : seg16Q4Il111 rho = seg16Q4Il112 rho + seg16Q4IlAtom9 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom9
  ring

theorem seg16Q4Step111Pe (rho : Nat -> Seg16.F) (r2505 : Seg16.relationRow2505 rho) :
    seg16Q4Pe111 rho = seg16Q4Pe112 rho * rho 14175 := by
  unfold Seg16.relationRow2505 at r2505
  unfold seg16Q4Pe111 seg16Q4Pe112
  linear_combination -r2505

theorem seg16Q4Step111 (rho : Nat -> Seg16.F) (r2503 : Seg16.relationRow2503 rho) (r2504 : Seg16.relationRow2504 rho) (r2505 : Seg16.relationRow2505 rho) :
    seg16Q4Pe111 rho = seg16Q4Pe112 rho * rho 14175 ∧
    seg16Q4Il111 rho = seg16Q4Il112 rho + seg16Q4Pe112 rho * (1 - rho 14175) -
      seg16Q4Il112 rho * (seg16Q4Pe112 rho * (1 - rho 14175)) := by
  constructor
  · exact seg16Q4Step111Pe rho r2505
  · rw [seg16Q4Step111Acc rho, seg16Q4Step111L rho r2503, seg16Q4Step111IlMul rho r2504, seg16Q4Step111L rho r2503]

theorem seg16_q4_chunk111 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 112 (seg16Q4PeState rho 112) (seg16Q4IlState rho 112) := by
  have htail := seg16_q4_chunk110 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2503, r2504, r2505, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 111 ≤ n → n < 112 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 111 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step111 rho r2503 r2504 r2505
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 111 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
