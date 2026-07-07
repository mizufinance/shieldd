import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step25L (rho : Nat -> Seg45.F) (r2675 : Seg45.relationRow2675 rho) :
    rho 40905 = seg45Q4Pe26 rho * (1 - rho 39745) := by
  unfold Seg45.relationRow2675 at r2675
  unfold seg45Q4Pe26
  linear_combination -r2675

theorem seg45Q4Step25IlMul (rho : Nat -> Seg45.F) (r2676 : Seg45.relationRow2676 rho) :
    rho 40906 = seg45Q4Il26 rho * (rho 40905) := by
  unfold Seg45.relationRow2676 at r2676
  rw [seg45Q4Step25IlLc rho] at r2676
  linear_combination -r2676

theorem seg45Q4Step25Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il25 rho = seg45Q4Il26 rho + (rho 40905) - (rho 40906) := by
  have hstate : seg45Q4Il25 rho = seg45Q4Il26 rho + seg45Q4IlAtom55 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom55
  ring

theorem seg45Q4Step25Pe (rho : Nat -> Seg45.F) (r2677 : Seg45.relationRow2677 rho) :
    seg45Q4Pe25 rho = seg45Q4Pe26 rho * rho 39745 := by
  unfold Seg45.relationRow2677 at r2677
  unfold seg45Q4Pe25 seg45Q4Pe26
  linear_combination -r2677

theorem seg45Q4Step25 (rho : Nat -> Seg45.F) (r2675 : Seg45.relationRow2675 rho) (r2676 : Seg45.relationRow2676 rho) (r2677 : Seg45.relationRow2677 rho) :
    seg45Q4Pe25 rho = seg45Q4Pe26 rho * rho 39745 ∧
    seg45Q4Il25 rho = seg45Q4Il26 rho + seg45Q4Pe26 rho * (1 - rho 39745) -
      seg45Q4Il26 rho * (seg45Q4Pe26 rho * (1 - rho 39745)) := by
  constructor
  · exact seg45Q4Step25Pe rho r2677
  · rw [seg45Q4Step25Acc rho, seg45Q4Step25L rho r2675, seg45Q4Step25IlMul rho r2676, seg45Q4Step25L rho r2675]

theorem seg45_q4_chunk25 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 26 (seg45Q4PeState rho 26) (seg45Q4IlState rho 26) := by
  have htail := seg45_q4_chunk24 rho h k hk
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2675, r2676, r2677, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 25 ≤ n → n < 26 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 25 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step25 rho r2675 r2676 r2677
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 25 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
