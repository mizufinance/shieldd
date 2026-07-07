import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk29

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step30L (rho : Nat -> Seg34.F) (r2664 : Seg34.relationRow2664 rho) :
    rho 33938 = seg34Q4Pe31 rho * (1 - rho 32794) := by
  unfold Seg34.relationRow2664 at r2664
  unfold seg34Q4Pe31
  linear_combination -r2664

theorem seg34Q4Step30IlMul (rho : Nat -> Seg34.F) (r2665 : Seg34.relationRow2665 rho) :
    rho 33939 = seg34Q4Il31 rho * (rho 33938) := by
  unfold Seg34.relationRow2665 at r2665
  rw [seg34Q4Step30IlLc rho] at r2665
  linear_combination -r2665

theorem seg34Q4Step30Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il30 rho = seg34Q4Il31 rho + (rho 33938) - (rho 33939) := by
  have hstate : seg34Q4Il30 rho = seg34Q4Il31 rho + seg34Q4IlAtom52 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom52
  ring

theorem seg34Q4Step30Pe (rho : Nat -> Seg34.F) (r2666 : Seg34.relationRow2666 rho) :
    seg34Q4Pe30 rho = seg34Q4Pe31 rho * rho 32794 := by
  unfold Seg34.relationRow2666 at r2666
  unfold seg34Q4Pe30 seg34Q4Pe31
  linear_combination -r2666

theorem seg34Q4Step30 (rho : Nat -> Seg34.F) (r2664 : Seg34.relationRow2664 rho) (r2665 : Seg34.relationRow2665 rho) (r2666 : Seg34.relationRow2666 rho) :
    seg34Q4Pe30 rho = seg34Q4Pe31 rho * rho 32794 ∧
    seg34Q4Il30 rho = seg34Q4Il31 rho + seg34Q4Pe31 rho * (1 - rho 32794) -
      seg34Q4Il31 rho * (seg34Q4Pe31 rho * (1 - rho 32794)) := by
  constructor
  · exact seg34Q4Step30Pe rho r2666
  · rw [seg34Q4Step30Acc rho, seg34Q4Step30L rho r2664, seg34Q4Step30IlMul rho r2665, seg34Q4Step30L rho r2664]

theorem seg34_q4_chunk30 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 31 (seg34Q4PeState rho 31) (seg34Q4IlState rho 31) := by
  have htail := seg34_q4_chunk29 rho h k hk
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2664, r2665, r2666, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 30 ≤ n → n < 31 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 30 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step30 rho r2664 r2665 r2666
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 30 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
