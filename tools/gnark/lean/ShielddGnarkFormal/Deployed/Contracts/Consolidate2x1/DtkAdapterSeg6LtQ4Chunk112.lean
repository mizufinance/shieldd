import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk111

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step112L (rho : Nat -> Seg6.F) (r2500 : Seg6.relationRow2500 rho) :
    rho 2900 = seg6Q4Pe113 rho * (1 - rho 2002) := by
  unfold Seg6.relationRow2500 at r2500
  unfold seg6Q4Pe113
  linear_combination -r2500

theorem seg6Q4Step112IlMul (rho : Nat -> Seg6.F) (r2501 : Seg6.relationRow2501 rho) :
    rho 2901 = seg6Q4Il113 rho * (rho 2900) := by
  unfold Seg6.relationRow2501 at r2501
  rw [seg6Q4Il113Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7
  linear_combination -r2501

theorem seg6Q4Step112Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il112 rho = seg6Q4Il113 rho + (rho 2900) - (rho 2901) := by
  have hstate : seg6Q4Il112 rho = seg6Q4Il113 rho + seg6Q4IlAtom8 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom8
  ring

theorem seg6Q4Step112Pe (rho : Nat -> Seg6.F) (r2502 : Seg6.relationRow2502 rho) :
    seg6Q4Pe112 rho = seg6Q4Pe113 rho * rho 2002 := by
  unfold Seg6.relationRow2502 at r2502
  unfold seg6Q4Pe112 seg6Q4Pe113
  linear_combination -r2502

theorem seg6Q4Step112 (rho : Nat -> Seg6.F) (r2500 : Seg6.relationRow2500 rho) (r2501 : Seg6.relationRow2501 rho) (r2502 : Seg6.relationRow2502 rho) :
    seg6Q4Pe112 rho = seg6Q4Pe113 rho * rho 2002 ∧
    seg6Q4Il112 rho = seg6Q4Il113 rho + seg6Q4Pe113 rho * (1 - rho 2002) -
      seg6Q4Il113 rho * (seg6Q4Pe113 rho * (1 - rho 2002)) := by
  constructor
  · exact seg6Q4Step112Pe rho r2502
  · rw [seg6Q4Step112Acc rho, seg6Q4Step112L rho r2500, seg6Q4Step112IlMul rho r2501, seg6Q4Step112L rho r2500]

theorem seg6_q4_chunk112 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 113 (seg6Q4PeState rho 113) (seg6Q4IlState rho 113) := by
  have htail := seg6_q4_chunk111 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2500, r2501, r2502, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 112 ≤ n → n < 113 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 112 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step112 rho r2500 r2501 r2502
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 112 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
