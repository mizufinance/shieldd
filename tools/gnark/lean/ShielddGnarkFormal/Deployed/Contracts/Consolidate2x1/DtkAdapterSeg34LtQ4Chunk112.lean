import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk111

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step112L (rho : Nat -> Seg34.F) (r2500 : Seg34.relationRow2500 rho) :
    rho 33774 = seg34Q4Pe113 rho * (1 - rho 32876) := by
  unfold Seg34.relationRow2500 at r2500
  unfold seg34Q4Pe113
  linear_combination -r2500

theorem seg34Q4Step112IlMul (rho : Nat -> Seg34.F) (r2501 : Seg34.relationRow2501 rho) :
    rho 33775 = seg34Q4Il113 rho * (rho 33774) := by
  unfold Seg34.relationRow2501 at r2501
  rw [seg34Q4Il113Atoms rho]
  unfold seg34Q4IlAtom0 seg34Q4IlAtom1 seg34Q4IlAtom2 seg34Q4IlAtom3 seg34Q4IlAtom4 seg34Q4IlAtom5 seg34Q4IlAtom6 seg34Q4IlAtom7
  linear_combination -r2501

theorem seg34Q4Step112Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il112 rho = seg34Q4Il113 rho + (rho 33774) - (rho 33775) := by
  have hstate : seg34Q4Il112 rho = seg34Q4Il113 rho + seg34Q4IlAtom8 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom8
  ring

theorem seg34Q4Step112Pe (rho : Nat -> Seg34.F) (r2502 : Seg34.relationRow2502 rho) :
    seg34Q4Pe112 rho = seg34Q4Pe113 rho * rho 32876 := by
  unfold Seg34.relationRow2502 at r2502
  unfold seg34Q4Pe112 seg34Q4Pe113
  linear_combination -r2502

theorem seg34Q4Step112 (rho : Nat -> Seg34.F) (r2500 : Seg34.relationRow2500 rho) (r2501 : Seg34.relationRow2501 rho) (r2502 : Seg34.relationRow2502 rho) :
    seg34Q4Pe112 rho = seg34Q4Pe113 rho * rho 32876 ∧
    seg34Q4Il112 rho = seg34Q4Il113 rho + seg34Q4Pe113 rho * (1 - rho 32876) -
      seg34Q4Il113 rho * (seg34Q4Pe113 rho * (1 - rho 32876)) := by
  constructor
  · exact seg34Q4Step112Pe rho r2502
  · rw [seg34Q4Step112Acc rho, seg34Q4Step112L rho r2500, seg34Q4Step112IlMul rho r2501, seg34Q4Step112L rho r2500]

theorem seg34_q4_chunk112 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 113 (seg34Q4PeState rho 113) (seg34Q4IlState rho 113) := by
  have htail := seg34_q4_chunk111 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2500, r2501, r2502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 112 ≤ n → n < 113 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 112 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step112 rho r2500 r2501 r2502
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 112 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
