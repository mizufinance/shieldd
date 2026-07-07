import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk111

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step112L (rho : Nat -> Seg45.F) (r2500 : Seg45.relationRow2500 rho) :
    rho 40730 = seg45Q4Pe113 rho * (1 - rho 39832) := by
  unfold Seg45.relationRow2500 at r2500
  unfold seg45Q4Pe113
  linear_combination -r2500

theorem seg45Q4Step112IlMul (rho : Nat -> Seg45.F) (r2501 : Seg45.relationRow2501 rho) :
    rho 40731 = seg45Q4Il113 rho * (rho 40730) := by
  unfold Seg45.relationRow2501 at r2501
  rw [seg45Q4Il113Atoms rho]
  unfold seg45Q4IlAtom0 seg45Q4IlAtom1 seg45Q4IlAtom2 seg45Q4IlAtom3 seg45Q4IlAtom4 seg45Q4IlAtom5 seg45Q4IlAtom6 seg45Q4IlAtom7
  linear_combination -r2501

theorem seg45Q4Step112Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il112 rho = seg45Q4Il113 rho + (rho 40730) - (rho 40731) := by
  have hstate : seg45Q4Il112 rho = seg45Q4Il113 rho + seg45Q4IlAtom8 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom8
  ring

theorem seg45Q4Step112Pe (rho : Nat -> Seg45.F) (r2502 : Seg45.relationRow2502 rho) :
    seg45Q4Pe112 rho = seg45Q4Pe113 rho * rho 39832 := by
  unfold Seg45.relationRow2502 at r2502
  unfold seg45Q4Pe112 seg45Q4Pe113
  linear_combination -r2502

theorem seg45Q4Step112 (rho : Nat -> Seg45.F) (r2500 : Seg45.relationRow2500 rho) (r2501 : Seg45.relationRow2501 rho) (r2502 : Seg45.relationRow2502 rho) :
    seg45Q4Pe112 rho = seg45Q4Pe113 rho * rho 39832 ∧
    seg45Q4Il112 rho = seg45Q4Il113 rho + seg45Q4Pe113 rho * (1 - rho 39832) -
      seg45Q4Il113 rho * (seg45Q4Pe113 rho * (1 - rho 39832)) := by
  constructor
  · exact seg45Q4Step112Pe rho r2502
  · rw [seg45Q4Step112Acc rho, seg45Q4Step112L rho r2500, seg45Q4Step112IlMul rho r2501, seg45Q4Step112L rho r2500]

theorem seg45_q4_chunk112 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 113 (seg45Q4PeState rho 113) (seg45Q4IlState rho 113) := by
  have htail := seg45_q4_chunk111 rho h k hk
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2500, r2501, r2502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 112 ≤ n → n < 113 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 112 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step112 rho r2500 r2501 r2502
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 112 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
