import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk122

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step123L (rho : Nat -> Seg34.F) (r2474 : Seg34.relationRow2474 rho) :
    rho 33748 = seg34Q4Pe124 rho * (1 - rho 32887) := by
  unfold Seg34.relationRow2474 at r2474
  unfold seg34Q4Pe124
  linear_combination -r2474

theorem seg34Q4Step123IlMul (rho : Nat -> Seg34.F)  :
    (0 : Seg34.F) = seg34Q4Il124 rho * (rho 33748) := by
  rw [seg34Q4Il124Atoms rho]
  ring

theorem seg34Q4Step123Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il123 rho = seg34Q4Il124 rho + (rho 33748) - ((0 : Seg34.F)) := by
  have hstate : seg34Q4Il123 rho = seg34Q4Il124 rho + seg34Q4IlAtom0 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom0
  ring

theorem seg34Q4Step123Pe (rho : Nat -> Seg34.F) (r2475 : Seg34.relationRow2475 rho) :
    seg34Q4Pe123 rho = seg34Q4Pe124 rho * rho 32887 := by
  unfold Seg34.relationRow2475 at r2475
  unfold seg34Q4Pe123 seg34Q4Pe124
  linear_combination -r2475

theorem seg34Q4Step123 (rho : Nat -> Seg34.F) (r2474 : Seg34.relationRow2474 rho) (r2475 : Seg34.relationRow2475 rho) :
    seg34Q4Pe123 rho = seg34Q4Pe124 rho * rho 32887 ∧
    seg34Q4Il123 rho = seg34Q4Il124 rho + seg34Q4Pe124 rho * (1 - rho 32887) -
      seg34Q4Il124 rho * (seg34Q4Pe124 rho * (1 - rho 32887)) := by
  constructor
  · exact seg34Q4Step123Pe rho r2475
  · rw [seg34Q4Step123Acc rho, seg34Q4Step123L rho r2474, seg34Q4Step123IlMul rho, seg34Q4Step123L rho r2474]

theorem seg34_q4_chunk123 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 124 (seg34Q4PeState rho 124) (seg34Q4IlState rho 124) := by
  have htail := seg34_q4_chunk122 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2474, r2475, _, _, _, _⟩
  have hsteps : ∀ n, 123 ≤ n → n < 124 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 123 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step123 rho r2474 r2475
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 123 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
