import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk33

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step34L (rho : Nat -> Seg16.F) (r2656 : Seg16.relationRow2656 rho) :
    rho 15230 = seg16Q4Pe35 rho * (1 - rho 14098) := by
  unfold Seg16.relationRow2656 at r2656
  unfold seg16Q4Pe35
  linear_combination -r2656

theorem seg16Q4Step34IlMul (rho : Nat -> Seg16.F) (r2657 : Seg16.relationRow2657 rho) :
    rho 15231 = seg16Q4Il35 rho * (rho 15230) := by
  unfold Seg16.relationRow2657 at r2657
  rw [seg16Q4Step34IlLc rho] at r2657
  linear_combination -r2657

theorem seg16Q4Step34Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il34 rho = seg16Q4Il35 rho + (rho 15230) - (rho 15231) := by
  have hstate : seg16Q4Il34 rho = seg16Q4Il35 rho + seg16Q4IlAtom49 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom49
  ring

theorem seg16Q4Step34Pe (rho : Nat -> Seg16.F) (r2658 : Seg16.relationRow2658 rho) :
    seg16Q4Pe34 rho = seg16Q4Pe35 rho * rho 14098 := by
  unfold Seg16.relationRow2658 at r2658
  unfold seg16Q4Pe34 seg16Q4Pe35
  linear_combination -r2658

theorem seg16Q4Step34 (rho : Nat -> Seg16.F) (r2656 : Seg16.relationRow2656 rho) (r2657 : Seg16.relationRow2657 rho) (r2658 : Seg16.relationRow2658 rho) :
    seg16Q4Pe34 rho = seg16Q4Pe35 rho * rho 14098 ∧
    seg16Q4Il34 rho = seg16Q4Il35 rho + seg16Q4Pe35 rho * (1 - rho 14098) -
      seg16Q4Il35 rho * (seg16Q4Pe35 rho * (1 - rho 14098)) := by
  constructor
  · exact seg16Q4Step34Pe rho r2658
  · rw [seg16Q4Step34Acc rho, seg16Q4Step34L rho r2656, seg16Q4Step34IlMul rho r2657, seg16Q4Step34L rho r2656]

theorem seg16_q4_chunk34 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 35 (seg16Q4PeState rho 35) (seg16Q4IlState rho 35) := by
  have htail := seg16_q4_chunk33 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2656, r2657, r2658, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 34 ≤ n → n < 35 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 34 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step34 rho r2656 r2657 r2658
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 34 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
