import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk81

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step82L (rho : Nat -> Seg16.F) (r2568 : Seg16.relationRow2568 rho) :
    rho 15142 = seg16Q4Pe83 rho * (1 - rho 14146) := by
  unfold Seg16.relationRow2568 at r2568
  unfold seg16Q4Pe83
  linear_combination -r2568

theorem seg16Q4Step82IlMul (rho : Nat -> Seg16.F) (r2569 : Seg16.relationRow2569 rho) :
    rho 15143 = seg16Q4Il83 rho * (rho 15142) := by
  unfold Seg16.relationRow2569 at r2569
  rw [seg16Q4Step82IlLc rho] at r2569
  linear_combination -r2569

theorem seg16Q4Step82Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il82 rho = seg16Q4Il83 rho + (rho 15142) - (rho 15143) := by
  have hstate : seg16Q4Il82 rho = seg16Q4Il83 rho + seg16Q4IlAtom28 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom28
  ring

theorem seg16Q4Step82Pe (rho : Nat -> Seg16.F) (r2570 : Seg16.relationRow2570 rho) :
    seg16Q4Pe82 rho = seg16Q4Pe83 rho * rho 14146 := by
  unfold Seg16.relationRow2570 at r2570
  unfold seg16Q4Pe82 seg16Q4Pe83
  linear_combination -r2570

theorem seg16Q4Step82 (rho : Nat -> Seg16.F) (r2568 : Seg16.relationRow2568 rho) (r2569 : Seg16.relationRow2569 rho) (r2570 : Seg16.relationRow2570 rho) :
    seg16Q4Pe82 rho = seg16Q4Pe83 rho * rho 14146 ∧
    seg16Q4Il82 rho = seg16Q4Il83 rho + seg16Q4Pe83 rho * (1 - rho 14146) -
      seg16Q4Il83 rho * (seg16Q4Pe83 rho * (1 - rho 14146)) := by
  constructor
  · exact seg16Q4Step82Pe rho r2570
  · rw [seg16Q4Step82Acc rho, seg16Q4Step82L rho r2568, seg16Q4Step82IlMul rho r2569, seg16Q4Step82L rho r2568]

theorem seg16_q4_chunk82 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 83 (seg16Q4PeState rho 83) (seg16Q4IlState rho 83) := by
  have htail := seg16_q4_chunk81 rho h k hk
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, r2568, r2569, r2570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 82 ≤ n → n < 83 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 82 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step82 rho r2568 r2569 r2570
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 82 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
