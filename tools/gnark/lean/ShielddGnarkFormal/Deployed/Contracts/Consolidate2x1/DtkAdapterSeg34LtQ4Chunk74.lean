import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk73

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step74L (rho : Nat -> Seg34.F) (r2586 : Seg34.relationRow2586 rho) :
    rho 33860 = seg34Q4Pe75 rho * (1 - rho 32838) := by
  unfold Seg34.relationRow2586 at r2586
  unfold seg34Q4Pe75
  linear_combination -r2586

theorem seg34Q4Step74IlMul (rho : Nat -> Seg34.F) (r2587 : Seg34.relationRow2587 rho) :
    rho 33861 = seg34Q4Il75 rho * (rho 33860) := by
  unfold Seg34.relationRow2587 at r2587
  rw [seg34Q4Step74IlLc rho] at r2587
  linear_combination -r2587

theorem seg34Q4Step74Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il74 rho = seg34Q4Il75 rho + (rho 33860) - (rho 33861) := by
  have hstate : seg34Q4Il74 rho = seg34Q4Il75 rho + seg34Q4IlAtom33 rho + (-1 : Seg34.F) * seg34Q4IlAtom34 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom33 seg34Q4IlAtom34
  ring

theorem seg34Q4Step74Pe (rho : Nat -> Seg34.F) (r2588 : Seg34.relationRow2588 rho) :
    seg34Q4Pe74 rho = seg34Q4Pe75 rho * rho 32838 := by
  unfold Seg34.relationRow2588 at r2588
  unfold seg34Q4Pe74 seg34Q4Pe75
  linear_combination -r2588

theorem seg34Q4Step74 (rho : Nat -> Seg34.F) (r2586 : Seg34.relationRow2586 rho) (r2587 : Seg34.relationRow2587 rho) (r2588 : Seg34.relationRow2588 rho) :
    seg34Q4Pe74 rho = seg34Q4Pe75 rho * rho 32838 ∧
    seg34Q4Il74 rho = seg34Q4Il75 rho + seg34Q4Pe75 rho * (1 - rho 32838) -
      seg34Q4Il75 rho * (seg34Q4Pe75 rho * (1 - rho 32838)) := by
  constructor
  · exact seg34Q4Step74Pe rho r2588
  · rw [seg34Q4Step74Acc rho, seg34Q4Step74L rho r2586, seg34Q4Step74IlMul rho r2587, seg34Q4Step74L rho r2586]

theorem seg34_q4_chunk74 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 75 (seg34Q4PeState rho 75) (seg34Q4IlState rho 75) := by
  have htail := seg34_q4_chunk73 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2586, r2587, r2588, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 74 ≤ n → n < 75 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 74 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step74 rho r2586 r2587 r2588
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 74 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
