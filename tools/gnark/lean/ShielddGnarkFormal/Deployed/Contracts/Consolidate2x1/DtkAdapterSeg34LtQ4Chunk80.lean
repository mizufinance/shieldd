import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk79

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step80L (rho : Nat -> Seg34.F) (r2572 : Seg34.relationRow2572 rho) :
    rho 33846 = seg34Q4Pe81 rho * (1 - rho 32844) := by
  unfold Seg34.relationRow2572 at r2572
  unfold seg34Q4Pe81
  linear_combination -r2572

theorem seg34Q4Step80IlMul (rho : Nat -> Seg34.F) (r2573 : Seg34.relationRow2573 rho) :
    rho 33847 = seg34Q4Il81 rho * (rho 33846) := by
  unfold Seg34.relationRow2573 at r2573
  rw [seg34Q4Step80IlLc rho] at r2573
  linear_combination -r2573

theorem seg34Q4Step80Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il80 rho = seg34Q4Il81 rho + (rho 33846) - (rho 33847) := by
  have hstate : seg34Q4Il80 rho = seg34Q4Il81 rho + seg34Q4IlAtom29 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom29
  ring

theorem seg34Q4Step80Pe (rho : Nat -> Seg34.F) (r2574 : Seg34.relationRow2574 rho) :
    seg34Q4Pe80 rho = seg34Q4Pe81 rho * rho 32844 := by
  unfold Seg34.relationRow2574 at r2574
  unfold seg34Q4Pe80 seg34Q4Pe81
  linear_combination -r2574

theorem seg34Q4Step80 (rho : Nat -> Seg34.F) (r2572 : Seg34.relationRow2572 rho) (r2573 : Seg34.relationRow2573 rho) (r2574 : Seg34.relationRow2574 rho) :
    seg34Q4Pe80 rho = seg34Q4Pe81 rho * rho 32844 ∧
    seg34Q4Il80 rho = seg34Q4Il81 rho + seg34Q4Pe81 rho * (1 - rho 32844) -
      seg34Q4Il81 rho * (seg34Q4Pe81 rho * (1 - rho 32844)) := by
  constructor
  · exact seg34Q4Step80Pe rho r2574
  · rw [seg34Q4Step80Acc rho, seg34Q4Step80L rho r2572, seg34Q4Step80IlMul rho r2573, seg34Q4Step80L rho r2572]

theorem seg34_q4_chunk80 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 81 (seg34Q4PeState rho 81) (seg34Q4IlState rho 81) := by
  have htail := seg34_q4_chunk79 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2572, r2573, r2574, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 80 ≤ n → n < 81 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 80 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step80 rho r2572 r2573 r2574
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 80 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
