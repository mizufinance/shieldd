import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk111

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step112L (rho : Nat -> Seg16.F) (r2500 : Seg16.relationRow2500 rho) :
    rho 15074 = seg16Q4Pe113 rho * (1 - rho 14176) := by
  unfold Seg16.relationRow2500 at r2500
  unfold seg16Q4Pe113
  linear_combination -r2500

theorem seg16Q4Step112IlMul (rho : Nat -> Seg16.F) (r2501 : Seg16.relationRow2501 rho) :
    rho 15075 = seg16Q4Il113 rho * (rho 15074) := by
  unfold Seg16.relationRow2501 at r2501
  rw [seg16Q4Il113Atoms rho]
  unfold seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7
  linear_combination -r2501

theorem seg16Q4Step112Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il112 rho = seg16Q4Il113 rho + (rho 15074) - (rho 15075) := by
  have hstate : seg16Q4Il112 rho = seg16Q4Il113 rho + seg16Q4IlAtom8 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom8
  ring

theorem seg16Q4Step112Pe (rho : Nat -> Seg16.F) (r2502 : Seg16.relationRow2502 rho) :
    seg16Q4Pe112 rho = seg16Q4Pe113 rho * rho 14176 := by
  unfold Seg16.relationRow2502 at r2502
  unfold seg16Q4Pe112 seg16Q4Pe113
  linear_combination -r2502

theorem seg16Q4Step112 (rho : Nat -> Seg16.F) (r2500 : Seg16.relationRow2500 rho) (r2501 : Seg16.relationRow2501 rho) (r2502 : Seg16.relationRow2502 rho) :
    seg16Q4Pe112 rho = seg16Q4Pe113 rho * rho 14176 ∧
    seg16Q4Il112 rho = seg16Q4Il113 rho + seg16Q4Pe113 rho * (1 - rho 14176) -
      seg16Q4Il113 rho * (seg16Q4Pe113 rho * (1 - rho 14176)) := by
  constructor
  · exact seg16Q4Step112Pe rho r2502
  · rw [seg16Q4Step112Acc rho, seg16Q4Step112L rho r2500, seg16Q4Step112IlMul rho r2501, seg16Q4Step112L rho r2500]

theorem seg16_q4_chunk112 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 113 (seg16Q4PeState rho 113) (seg16Q4IlState rho 113) := by
  have htail := seg16_q4_chunk111 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2500, r2501, r2502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 112 ≤ n → n < 113 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 112 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step112 rho r2500 r2501 r2502
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 112 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
