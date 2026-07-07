import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step2L (rho : Nat -> Seg34.F) (r2708 : Seg34.relationRow2708 rho) :
    rho 33982 = seg34Q4Pe3 rho * (1 - rho 32766) := by
  unfold Seg34.relationRow2708 at r2708
  unfold seg34Q4Pe3
  linear_combination -r2708

theorem seg34Q4Step2IlMul (rho : Nat -> Seg34.F) (r2709 : Seg34.relationRow2709 rho) :
    rho 33983 = seg34Q4Il3 rho * (rho 33982) := by
  unfold Seg34.relationRow2709 at r2709
  rw [seg34Q4Step2IlLc rho] at r2709
  linear_combination -r2709

theorem seg34Q4Step2Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il2 rho = seg34Q4Il3 rho + (rho 33982) - (rho 33983) := by
  have hstate : seg34Q4Il2 rho = seg34Q4Il3 rho + seg34Q4IlAtom60 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom60
  ring

theorem seg34Q4Step2Pe (rho : Nat -> Seg34.F) (r2710 : Seg34.relationRow2710 rho) :
    seg34Q4Pe2 rho = seg34Q4Pe3 rho * rho 32766 := by
  unfold Seg34.relationRow2710 at r2710
  unfold seg34Q4Pe2 seg34Q4Pe3
  linear_combination -r2710

theorem seg34Q4Step2 (rho : Nat -> Seg34.F) (r2708 : Seg34.relationRow2708 rho) (r2709 : Seg34.relationRow2709 rho) (r2710 : Seg34.relationRow2710 rho) :
    seg34Q4Pe2 rho = seg34Q4Pe3 rho * rho 32766 ∧
    seg34Q4Il2 rho = seg34Q4Il3 rho + seg34Q4Pe3 rho * (1 - rho 32766) -
      seg34Q4Il3 rho * (seg34Q4Pe3 rho * (1 - rho 32766)) := by
  constructor
  · exact seg34Q4Step2Pe rho r2710
  · rw [seg34Q4Step2Acc rho, seg34Q4Step2L rho r2708, seg34Q4Step2IlMul rho r2709, seg34Q4Step2L rho r2708]

theorem seg34_q4_chunk2 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 3 (seg34Q4PeState rho 3) (seg34Q4IlState rho 3) := by
  have htail := seg34_q4_chunk1 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2708, r2709, r2710, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 2 ≤ n → n < 3 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 2 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step2 rho r2708 r2709 r2710
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 2 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
