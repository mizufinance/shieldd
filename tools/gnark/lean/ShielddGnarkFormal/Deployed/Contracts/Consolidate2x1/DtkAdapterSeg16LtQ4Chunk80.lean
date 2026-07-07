import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk79

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step80L (rho : Nat -> Seg16.F) (r2572 : Seg16.relationRow2572 rho) :
    rho 15146 = seg16Q4Pe81 rho * (1 - rho 14144) := by
  unfold Seg16.relationRow2572 at r2572
  unfold seg16Q4Pe81
  linear_combination -r2572

theorem seg16Q4Step80IlMul (rho : Nat -> Seg16.F) (r2573 : Seg16.relationRow2573 rho) :
    rho 15147 = seg16Q4Il81 rho * (rho 15146) := by
  unfold Seg16.relationRow2573 at r2573
  rw [seg16Q4Step80IlLc rho] at r2573
  linear_combination -r2573

theorem seg16Q4Step80Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il80 rho = seg16Q4Il81 rho + (rho 15146) - (rho 15147) := by
  have hstate : seg16Q4Il80 rho = seg16Q4Il81 rho + seg16Q4IlAtom29 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom29
  ring

theorem seg16Q4Step80Pe (rho : Nat -> Seg16.F) (r2574 : Seg16.relationRow2574 rho) :
    seg16Q4Pe80 rho = seg16Q4Pe81 rho * rho 14144 := by
  unfold Seg16.relationRow2574 at r2574
  unfold seg16Q4Pe80 seg16Q4Pe81
  linear_combination -r2574

theorem seg16Q4Step80 (rho : Nat -> Seg16.F) (r2572 : Seg16.relationRow2572 rho) (r2573 : Seg16.relationRow2573 rho) (r2574 : Seg16.relationRow2574 rho) :
    seg16Q4Pe80 rho = seg16Q4Pe81 rho * rho 14144 ∧
    seg16Q4Il80 rho = seg16Q4Il81 rho + seg16Q4Pe81 rho * (1 - rho 14144) -
      seg16Q4Il81 rho * (seg16Q4Pe81 rho * (1 - rho 14144)) := by
  constructor
  · exact seg16Q4Step80Pe rho r2574
  · rw [seg16Q4Step80Acc rho, seg16Q4Step80L rho r2572, seg16Q4Step80IlMul rho r2573, seg16Q4Step80L rho r2572]

theorem seg16_q4_chunk80 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 81 (seg16Q4PeState rho 81) (seg16Q4IlState rho 81) := by
  have htail := seg16_q4_chunk79 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2572, r2573, r2574, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 80 ≤ n → n < 81 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 80 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step80 rho r2572 r2573 r2574
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 80 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
