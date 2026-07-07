import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk122

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step123L (rho : Nat -> Seg16.F) (r2474 : Seg16.relationRow2474 rho) :
    rho 15048 = seg16Q4Pe124 rho * (1 - rho 14187) := by
  unfold Seg16.relationRow2474 at r2474
  unfold seg16Q4Pe124
  linear_combination -r2474

theorem seg16Q4Step123IlMul (rho : Nat -> Seg16.F)  :
    (0 : Seg16.F) = seg16Q4Il124 rho * (rho 15048) := by
  rw [seg16Q4Il124Atoms rho]
  ring

theorem seg16Q4Step123Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il123 rho = seg16Q4Il124 rho + (rho 15048) - ((0 : Seg16.F)) := by
  have hstate : seg16Q4Il123 rho = seg16Q4Il124 rho + seg16Q4IlAtom0 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom0
  ring

theorem seg16Q4Step123Pe (rho : Nat -> Seg16.F) (r2475 : Seg16.relationRow2475 rho) :
    seg16Q4Pe123 rho = seg16Q4Pe124 rho * rho 14187 := by
  unfold Seg16.relationRow2475 at r2475
  unfold seg16Q4Pe123 seg16Q4Pe124
  linear_combination -r2475

theorem seg16Q4Step123 (rho : Nat -> Seg16.F) (r2474 : Seg16.relationRow2474 rho) (r2475 : Seg16.relationRow2475 rho) :
    seg16Q4Pe123 rho = seg16Q4Pe124 rho * rho 14187 ∧
    seg16Q4Il123 rho = seg16Q4Il124 rho + seg16Q4Pe124 rho * (1 - rho 14187) -
      seg16Q4Il124 rho * (seg16Q4Pe124 rho * (1 - rho 14187)) := by
  constructor
  · exact seg16Q4Step123Pe rho r2475
  · rw [seg16Q4Step123Acc rho, seg16Q4Step123L rho r2474, seg16Q4Step123IlMul rho, seg16Q4Step123L rho r2474]

theorem seg16_q4_chunk123 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 124 (seg16Q4PeState rho 124) (seg16Q4IlState rho 124) := by
  have htail := seg16_q4_chunk122 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2474, r2475, _, _, _, _⟩
  have hsteps : ∀ n, 123 ≤ n → n < 124 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 123 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step123 rho r2474 r2475
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 123 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
