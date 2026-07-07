import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step2L (rho : Nat -> Seg16.F) (r2708 : Seg16.relationRow2708 rho) :
    rho 15282 = seg16Q4Pe3 rho * (1 - rho 14066) := by
  unfold Seg16.relationRow2708 at r2708
  unfold seg16Q4Pe3
  linear_combination -r2708

theorem seg16Q4Step2IlMul (rho : Nat -> Seg16.F) (r2709 : Seg16.relationRow2709 rho) :
    rho 15283 = seg16Q4Il3 rho * (rho 15282) := by
  unfold Seg16.relationRow2709 at r2709
  rw [seg16Q4Step2IlLc rho] at r2709
  linear_combination -r2709

theorem seg16Q4Step2Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il2 rho = seg16Q4Il3 rho + (rho 15282) - (rho 15283) := by
  have hstate : seg16Q4Il2 rho = seg16Q4Il3 rho + seg16Q4IlAtom60 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom60
  ring

theorem seg16Q4Step2Pe (rho : Nat -> Seg16.F) (r2710 : Seg16.relationRow2710 rho) :
    seg16Q4Pe2 rho = seg16Q4Pe3 rho * rho 14066 := by
  unfold Seg16.relationRow2710 at r2710
  unfold seg16Q4Pe2 seg16Q4Pe3
  linear_combination -r2710

theorem seg16Q4Step2 (rho : Nat -> Seg16.F) (r2708 : Seg16.relationRow2708 rho) (r2709 : Seg16.relationRow2709 rho) (r2710 : Seg16.relationRow2710 rho) :
    seg16Q4Pe2 rho = seg16Q4Pe3 rho * rho 14066 ∧
    seg16Q4Il2 rho = seg16Q4Il3 rho + seg16Q4Pe3 rho * (1 - rho 14066) -
      seg16Q4Il3 rho * (seg16Q4Pe3 rho * (1 - rho 14066)) := by
  constructor
  · exact seg16Q4Step2Pe rho r2710
  · rw [seg16Q4Step2Acc rho, seg16Q4Step2L rho r2708, seg16Q4Step2IlMul rho r2709, seg16Q4Step2L rho r2708]

theorem seg16_q4_chunk2 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 3 (seg16Q4PeState rho 3) (seg16Q4IlState rho 3) := by
  have htail := seg16_q4_chunk1 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2708, r2709, r2710, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 2 ≤ n → n < 3 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 2 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step2 rho r2708 r2709 r2710
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 2 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
