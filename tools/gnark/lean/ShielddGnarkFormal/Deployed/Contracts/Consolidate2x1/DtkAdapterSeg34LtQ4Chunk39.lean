import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk38

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step39L (rho : Nat -> Seg34.F) (r2647 : Seg34.relationRow2647 rho) :
    rho 33921 = seg34Q4Pe40 rho * (1 - rho 32803) := by
  unfold Seg34.relationRow2647 at r2647
  unfold seg34Q4Pe40
  linear_combination -r2647

theorem seg34Q4Step39IlMul (rho : Nat -> Seg34.F) (r2648 : Seg34.relationRow2648 rho) :
    rho 33922 = seg34Q4Il40 rho * (rho 33921) := by
  unfold Seg34.relationRow2648 at r2648
  rw [seg34Q4Step39IlLc rho] at r2648
  linear_combination -r2648

theorem seg34Q4Step39Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il39 rho = seg34Q4Il40 rho + (rho 33921) - (rho 33922) := by
  have hstate : seg34Q4Il39 rho = seg34Q4Il40 rho + seg34Q4IlAtom47 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom47
  ring

theorem seg34Q4Step39Pe (rho : Nat -> Seg34.F) (r2649 : Seg34.relationRow2649 rho) :
    seg34Q4Pe39 rho = seg34Q4Pe40 rho * rho 32803 := by
  unfold Seg34.relationRow2649 at r2649
  unfold seg34Q4Pe39 seg34Q4Pe40
  linear_combination -r2649

theorem seg34Q4Step39 (rho : Nat -> Seg34.F) (r2647 : Seg34.relationRow2647 rho) (r2648 : Seg34.relationRow2648 rho) (r2649 : Seg34.relationRow2649 rho) :
    seg34Q4Pe39 rho = seg34Q4Pe40 rho * rho 32803 ∧
    seg34Q4Il39 rho = seg34Q4Il40 rho + seg34Q4Pe40 rho * (1 - rho 32803) -
      seg34Q4Il40 rho * (seg34Q4Pe40 rho * (1 - rho 32803)) := by
  constructor
  · exact seg34Q4Step39Pe rho r2649
  · rw [seg34Q4Step39Acc rho, seg34Q4Step39L rho r2647, seg34Q4Step39IlMul rho r2648, seg34Q4Step39L rho r2647]

theorem seg34_q4_chunk39 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 40 (seg34Q4PeState rho 40) (seg34Q4IlState rho 40) := by
  have htail := seg34_q4_chunk38 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, r2647, r2648, r2649, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 39 ≤ n → n < 40 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 39 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step39 rho r2647 r2648 r2649
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 39 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
