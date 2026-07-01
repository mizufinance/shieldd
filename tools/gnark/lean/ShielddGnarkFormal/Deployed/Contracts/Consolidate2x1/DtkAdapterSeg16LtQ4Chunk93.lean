import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk92

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step93L (rho : Nat -> Seg16.F) (r2543 : Seg16.relationRow2543 rho) :
    rho 15117 = seg16Q4Pe94 rho * (1 - rho 14157) := by
  unfold Seg16.relationRow2543 at r2543
  unfold seg16Q4Pe94
  linear_combination -r2543

theorem seg16Q4Step93IlMul (rho : Nat -> Seg16.F) (r2544 : Seg16.relationRow2544 rho) :
    rho 15118 = seg16Q4Il94 rho * (rho 15117) := by
  unfold Seg16.relationRow2544 at r2544
  rw [seg16Q4Step93IlLc rho] at r2544
  linear_combination -r2544

theorem seg16Q4Step93Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il93 rho = seg16Q4Il94 rho + (rho 15117) - (rho 15118) := by
  have hstate : seg16Q4Il93 rho = seg16Q4Il94 rho + seg16Q4IlAtom21 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom21
  ring

theorem seg16Q4Step93Pe (rho : Nat -> Seg16.F) (r2545 : Seg16.relationRow2545 rho) :
    seg16Q4Pe93 rho = seg16Q4Pe94 rho * rho 14157 := by
  unfold Seg16.relationRow2545 at r2545
  unfold seg16Q4Pe93 seg16Q4Pe94
  linear_combination -r2545

theorem seg16Q4Step93 (rho : Nat -> Seg16.F) (r2543 : Seg16.relationRow2543 rho) (r2544 : Seg16.relationRow2544 rho) (r2545 : Seg16.relationRow2545 rho) :
    seg16Q4Pe93 rho = seg16Q4Pe94 rho * rho 14157 ∧
    seg16Q4Il93 rho = seg16Q4Il94 rho + seg16Q4Pe94 rho * (1 - rho 14157) -
      seg16Q4Il94 rho * (seg16Q4Pe94 rho * (1 - rho 14157)) := by
  constructor
  · exact seg16Q4Step93Pe rho r2545
  · rw [seg16Q4Step93Acc rho, seg16Q4Step93L rho r2543, seg16Q4Step93IlMul rho r2544, seg16Q4Step93L rho r2543]

theorem seg16_q4_chunk93 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 94 (seg16Q4PeState rho 94) (seg16Q4IlState rho 94) := by
  have htail := seg16_q4_chunk92 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2543, r2544, r2545, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 93 ≤ n → n < 94 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 93 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step93 rho r2543 r2544 r2545
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 93 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
