import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk33

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step34L (rho : Nat -> Seg6.F) (r2656 : Seg6.relationRow2656 rho) :
    rho 3056 = seg6Q4Pe35 rho * (1 - rho 1924) := by
  unfold Seg6.relationRow2656 at r2656
  unfold seg6Q4Pe35
  linear_combination -r2656

theorem seg6Q4Step34IlMul (rho : Nat -> Seg6.F) (r2657 : Seg6.relationRow2657 rho) :
    rho 3057 = seg6Q4Il35 rho * (rho 3056) := by
  unfold Seg6.relationRow2657 at r2657
  rw [seg6Q4Step34IlLc rho] at r2657
  linear_combination -r2657

theorem seg6Q4Step34Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il34 rho = seg6Q4Il35 rho + (rho 3056) - (rho 3057) := by
  have hstate : seg6Q4Il34 rho = seg6Q4Il35 rho + seg6Q4IlAtom49 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom49
  ring

theorem seg6Q4Step34Pe (rho : Nat -> Seg6.F) (r2658 : Seg6.relationRow2658 rho) :
    seg6Q4Pe34 rho = seg6Q4Pe35 rho * rho 1924 := by
  unfold Seg6.relationRow2658 at r2658
  unfold seg6Q4Pe34 seg6Q4Pe35
  linear_combination -r2658

theorem seg6Q4Step34 (rho : Nat -> Seg6.F) (r2656 : Seg6.relationRow2656 rho) (r2657 : Seg6.relationRow2657 rho) (r2658 : Seg6.relationRow2658 rho) :
    seg6Q4Pe34 rho = seg6Q4Pe35 rho * rho 1924 ∧
    seg6Q4Il34 rho = seg6Q4Il35 rho + seg6Q4Pe35 rho * (1 - rho 1924) -
      seg6Q4Il35 rho * (seg6Q4Pe35 rho * (1 - rho 1924)) := by
  constructor
  · exact seg6Q4Step34Pe rho r2658
  · rw [seg6Q4Step34Acc rho, seg6Q4Step34L rho r2656, seg6Q4Step34IlMul rho r2657, seg6Q4Step34L rho r2656]

theorem seg6_q4_chunk34 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 35 (seg6Q4PeState rho 35) (seg6Q4IlState rho 35) := by
  have htail := seg6_q4_chunk33 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2656, r2657, r2658, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 34 ≤ n → n < 35 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 34 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step34 rho r2656 r2657 r2658
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 34 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
