import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk87

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step88L (rho : Nat -> Seg45.F) (r2558 : Seg45.relationRow2558 rho) :
    rho 40788 = seg45Q4Pe89 rho * (1 - rho 39808) := by
  unfold Seg45.relationRow2558 at r2558
  unfold seg45Q4Pe89
  linear_combination -r2558

theorem seg45Q4Step88IlMul (rho : Nat -> Seg45.F) (r2559 : Seg45.relationRow2559 rho) :
    rho 40789 = seg45Q4Il89 rho * (rho 40788) := by
  unfold Seg45.relationRow2559 at r2559
  rw [seg45Q4Step88IlLc rho] at r2559
  linear_combination -r2559

theorem seg45Q4Step88Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il88 rho = seg45Q4Il89 rho + (rho 40788) - (rho 40789) := by
  have hstate : seg45Q4Il88 rho = seg45Q4Il89 rho + seg45Q4IlAtom26 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom26
  ring

theorem seg45Q4Step88Pe (rho : Nat -> Seg45.F) (r2560 : Seg45.relationRow2560 rho) :
    seg45Q4Pe88 rho = seg45Q4Pe89 rho * rho 39808 := by
  unfold Seg45.relationRow2560 at r2560
  unfold seg45Q4Pe88 seg45Q4Pe89
  linear_combination -r2560

theorem seg45Q4Step88 (rho : Nat -> Seg45.F) (r2558 : Seg45.relationRow2558 rho) (r2559 : Seg45.relationRow2559 rho) (r2560 : Seg45.relationRow2560 rho) :
    seg45Q4Pe88 rho = seg45Q4Pe89 rho * rho 39808 ∧
    seg45Q4Il88 rho = seg45Q4Il89 rho + seg45Q4Pe89 rho * (1 - rho 39808) -
      seg45Q4Il89 rho * (seg45Q4Pe89 rho * (1 - rho 39808)) := by
  constructor
  · exact seg45Q4Step88Pe rho r2560
  · rw [seg45Q4Step88Acc rho, seg45Q4Step88L rho r2558, seg45Q4Step88IlMul rho r2559, seg45Q4Step88L rho r2558]

theorem seg45_q4_chunk88 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 89 (seg45Q4PeState rho 89) (seg45Q4IlState rho 89) := by
  have htail := seg45_q4_chunk87 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2558, r2559⟩
  unfold Seg45.relationPart32 at p32
  rcases p32 with ⟨r2560, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 88 ≤ n → n < 89 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 88 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step88 rho r2558 r2559 r2560
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 88 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
