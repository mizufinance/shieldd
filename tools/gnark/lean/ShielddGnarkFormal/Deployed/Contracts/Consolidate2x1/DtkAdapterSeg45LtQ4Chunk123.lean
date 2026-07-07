import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk122

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step123L (rho : Nat -> Seg45.F) (r2474 : Seg45.relationRow2474 rho) :
    rho 40704 = seg45Q4Pe124 rho * (1 - rho 39843) := by
  unfold Seg45.relationRow2474 at r2474
  unfold seg45Q4Pe124
  linear_combination -r2474

theorem seg45Q4Step123IlMul (rho : Nat -> Seg45.F)  :
    (0 : Seg45.F) = seg45Q4Il124 rho * (rho 40704) := by
  rw [seg45Q4Il124Atoms rho]
  ring

theorem seg45Q4Step123Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il123 rho = seg45Q4Il124 rho + (rho 40704) - ((0 : Seg45.F)) := by
  have hstate : seg45Q4Il123 rho = seg45Q4Il124 rho + seg45Q4IlAtom0 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom0
  ring

theorem seg45Q4Step123Pe (rho : Nat -> Seg45.F) (r2475 : Seg45.relationRow2475 rho) :
    seg45Q4Pe123 rho = seg45Q4Pe124 rho * rho 39843 := by
  unfold Seg45.relationRow2475 at r2475
  unfold seg45Q4Pe123 seg45Q4Pe124
  linear_combination -r2475

theorem seg45Q4Step123 (rho : Nat -> Seg45.F) (r2474 : Seg45.relationRow2474 rho) (r2475 : Seg45.relationRow2475 rho) :
    seg45Q4Pe123 rho = seg45Q4Pe124 rho * rho 39843 ∧
    seg45Q4Il123 rho = seg45Q4Il124 rho + seg45Q4Pe124 rho * (1 - rho 39843) -
      seg45Q4Il124 rho * (seg45Q4Pe124 rho * (1 - rho 39843)) := by
  constructor
  · exact seg45Q4Step123Pe rho r2475
  · rw [seg45Q4Step123Acc rho, seg45Q4Step123L rho r2474, seg45Q4Step123IlMul rho, seg45Q4Step123L rho r2474]

theorem seg45_q4_chunk123 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 124 (seg45Q4PeState rho 124) (seg45Q4IlState rho 124) := by
  have htail := seg45_q4_chunk122 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2474, r2475, _, _, _, _⟩
  have hsteps : ∀ n, 123 ≤ n → n < 124 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 123 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step123 rho r2474 r2475
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 123 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
