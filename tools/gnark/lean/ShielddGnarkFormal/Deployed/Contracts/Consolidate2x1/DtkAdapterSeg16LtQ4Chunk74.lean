import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk73

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step74L (rho : Nat -> Seg16.F) (r2586 : Seg16.relationRow2586 rho) :
    rho 15160 = seg16Q4Pe75 rho * (1 - rho 14138) := by
  unfold Seg16.relationRow2586 at r2586
  unfold seg16Q4Pe75
  linear_combination -r2586

theorem seg16Q4Step74IlMul (rho : Nat -> Seg16.F) (r2587 : Seg16.relationRow2587 rho) :
    rho 15161 = seg16Q4Il75 rho * (rho 15160) := by
  unfold Seg16.relationRow2587 at r2587
  rw [seg16Q4Step74IlLc rho] at r2587
  linear_combination -r2587

theorem seg16Q4Step74Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il74 rho = seg16Q4Il75 rho + (rho 15160) - (rho 15161) := by
  have hstate : seg16Q4Il74 rho = seg16Q4Il75 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom33 seg16Q4IlAtom34
  ring

theorem seg16Q4Step74Pe (rho : Nat -> Seg16.F) (r2588 : Seg16.relationRow2588 rho) :
    seg16Q4Pe74 rho = seg16Q4Pe75 rho * rho 14138 := by
  unfold Seg16.relationRow2588 at r2588
  unfold seg16Q4Pe74 seg16Q4Pe75
  linear_combination -r2588

theorem seg16Q4Step74 (rho : Nat -> Seg16.F) (r2586 : Seg16.relationRow2586 rho) (r2587 : Seg16.relationRow2587 rho) (r2588 : Seg16.relationRow2588 rho) :
    seg16Q4Pe74 rho = seg16Q4Pe75 rho * rho 14138 ∧
    seg16Q4Il74 rho = seg16Q4Il75 rho + seg16Q4Pe75 rho * (1 - rho 14138) -
      seg16Q4Il75 rho * (seg16Q4Pe75 rho * (1 - rho 14138)) := by
  constructor
  · exact seg16Q4Step74Pe rho r2588
  · rw [seg16Q4Step74Acc rho, seg16Q4Step74L rho r2586, seg16Q4Step74IlMul rho r2587, seg16Q4Step74L rho r2586]

theorem seg16_q4_chunk74 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 75 (seg16Q4PeState rho 75) (seg16Q4IlState rho 75) := by
  have htail := seg16_q4_chunk73 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2586, r2587, r2588, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 74 ≤ n → n < 75 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 74 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step74 rho r2586 r2587 r2588
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 74 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
