import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk111

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step112L (rho : Nat -> Seg5.F) (r2500 : Seg5.relationRow2500 rho) :
    rho 2197 = seg5Q4Pe113 rho * (1 - rho 1299) := by
  unfold Seg5.relationRow2500 at r2500
  unfold seg5Q4Pe113
  linear_combination -r2500

theorem seg5Q4Step112IlMul (rho : Nat -> Seg5.F) (r2501 : Seg5.relationRow2501 rho) :
    rho 2198 = seg5Q4Il113 rho * (rho 2197) := by
  unfold Seg5.relationRow2501 at r2501
  rw [seg5Q4Il113Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom2 seg5Q4IlAtom3 seg5Q4IlAtom4 seg5Q4IlAtom5 seg5Q4IlAtom6 seg5Q4IlAtom7
  linear_combination -r2501

theorem seg5Q4Step112Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il112 rho = seg5Q4Il113 rho + (rho 2197) - (rho 2198) := by
  have hstate : seg5Q4Il112 rho = seg5Q4Il113 rho + seg5Q4IlAtom8 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom8
  ring

theorem seg5Q4Step112Pe (rho : Nat -> Seg5.F) (r2502 : Seg5.relationRow2502 rho) :
    seg5Q4Pe112 rho = seg5Q4Pe113 rho * rho 1299 := by
  unfold Seg5.relationRow2502 at r2502
  unfold seg5Q4Pe112 seg5Q4Pe113
  linear_combination -r2502

theorem seg5Q4Step112 (rho : Nat -> Seg5.F) (r2500 : Seg5.relationRow2500 rho) (r2501 : Seg5.relationRow2501 rho) (r2502 : Seg5.relationRow2502 rho) :
    seg5Q4Pe112 rho = seg5Q4Pe113 rho * rho 1299 ∧
    seg5Q4Il112 rho = seg5Q4Il113 rho + seg5Q4Pe113 rho * (1 - rho 1299) -
      seg5Q4Il113 rho * (seg5Q4Pe113 rho * (1 - rho 1299)) := by
  constructor
  · exact seg5Q4Step112Pe rho r2502
  · rw [seg5Q4Step112Acc rho, seg5Q4Step112L rho r2500, seg5Q4Step112IlMul rho r2501, seg5Q4Step112L rho r2500]

theorem seg5_q4_chunk112 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 113 (seg5Q4PeState rho 113) (seg5Q4IlState rho 113) := by
  have htail := seg5_q4_chunk111 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2500, r2501, r2502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 112 ≤ n → n < 113 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 112 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step112 rho r2500 r2501 r2502
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 112 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
