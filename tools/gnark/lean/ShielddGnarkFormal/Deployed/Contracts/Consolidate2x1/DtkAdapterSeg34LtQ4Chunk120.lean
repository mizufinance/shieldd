import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk119

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step120L (rho : Nat -> Seg34.F) (r2482 : Seg34.relationRow2482 rho) :
    rho 33756 = seg34Q4Pe121 rho * (1 - rho 32884) := by
  unfold Seg34.relationRow2482 at r2482
  unfold seg34Q4Pe121
  linear_combination -r2482

theorem seg34Q4Step120IlMul (rho : Nat -> Seg34.F) (r2483 : Seg34.relationRow2483 rho) :
    rho 33757 = seg34Q4Il121 rho * (rho 33756) := by
  unfold Seg34.relationRow2483 at r2483
  rw [seg34Q4Il121Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom2
  linear_combination -r2483

theorem seg34Q4Step120Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il120 rho = seg34Q4Il121 rho + (rho 33756) - (rho 33757) := by
  have hstate : seg34Q4Il120 rho = seg34Q4Il121 rho + seg34Q4IlAtom3 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom3
  ring

theorem seg34Q4Step120Pe (rho : Nat -> Seg34.F) (r2484 : Seg34.relationRow2484 rho) :
    seg34Q4Pe120 rho = seg34Q4Pe121 rho * rho 32884 := by
  unfold Seg34.relationRow2484 at r2484
  unfold seg34Q4Pe120 seg34Q4Pe121
  linear_combination -r2484

theorem seg34Q4Step120 (rho : Nat -> Seg34.F) (r2482 : Seg34.relationRow2482 rho) (r2483 : Seg34.relationRow2483 rho) (r2484 : Seg34.relationRow2484 rho) :
    seg34Q4Pe120 rho = seg34Q4Pe121 rho * rho 32884 ∧
    seg34Q4Il120 rho = seg34Q4Il121 rho + seg34Q4Pe121 rho * (1 - rho 32884) -
      seg34Q4Il121 rho * (seg34Q4Pe121 rho * (1 - rho 32884)) := by
  constructor
  · exact seg34Q4Step120Pe rho r2484
  · rw [seg34Q4Step120Acc rho, seg34Q4Step120L rho r2482, seg34Q4Step120IlMul rho r2483, seg34Q4Step120L rho r2482]

theorem seg34_q4_chunk120 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 121 (seg34Q4PeState rho 121) (seg34Q4IlState rho 121) := by
  have htail := seg34_q4_chunk119 rho h k hk
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
  rcases p31 with ⟨_, _, r2482, r2483, r2484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 120 ≤ n → n < 121 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 120 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step120 rho r2482 r2483 r2484
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 120 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
