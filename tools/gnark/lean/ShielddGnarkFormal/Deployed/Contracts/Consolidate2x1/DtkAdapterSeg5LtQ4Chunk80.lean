import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk79

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step80L (rho : Nat -> Seg5.F) (r2572 : Seg5.relationRow2572 rho) :
    rho 2269 = seg5Q4Pe81 rho * (1 - rho 1267) := by
  unfold Seg5.relationRow2572 at r2572
  unfold seg5Q4Pe81
  linear_combination -r2572

theorem seg5Q4Step80IlMul (rho : Nat -> Seg5.F) (r2573 : Seg5.relationRow2573 rho) :
    rho 2270 = seg5Q4Il81 rho * (rho 2269) := by
  unfold Seg5.relationRow2573 at r2573
  rw [seg5Q4Step80IlLc rho] at r2573
  linear_combination -r2573

theorem seg5Q4Step80Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il80 rho = seg5Q4Il81 rho + (rho 2269) - (rho 2270) := by
  have hstate : seg5Q4Il80 rho = seg5Q4Il81 rho + seg5Q4IlAtom29 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom29
  ring

theorem seg5Q4Step80Pe (rho : Nat -> Seg5.F) (r2574 : Seg5.relationRow2574 rho) :
    seg5Q4Pe80 rho = seg5Q4Pe81 rho * rho 1267 := by
  unfold Seg5.relationRow2574 at r2574
  unfold seg5Q4Pe80 seg5Q4Pe81
  linear_combination -r2574

theorem seg5Q4Step80 (rho : Nat -> Seg5.F) (r2572 : Seg5.relationRow2572 rho) (r2573 : Seg5.relationRow2573 rho) (r2574 : Seg5.relationRow2574 rho) :
    seg5Q4Pe80 rho = seg5Q4Pe81 rho * rho 1267 ∧
    seg5Q4Il80 rho = seg5Q4Il81 rho + seg5Q4Pe81 rho * (1 - rho 1267) -
      seg5Q4Il81 rho * (seg5Q4Pe81 rho * (1 - rho 1267)) := by
  constructor
  · exact seg5Q4Step80Pe rho r2574
  · rw [seg5Q4Step80Acc rho, seg5Q4Step80L rho r2572, seg5Q4Step80IlMul rho r2573, seg5Q4Step80L rho r2572]

theorem seg5_q4_chunk80 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 81 (seg5Q4PeState rho 81) (seg5Q4IlState rho 81) := by
  have htail := seg5_q4_chunk79 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2572, r2573, r2574, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 80 ≤ n → n < 81 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 80 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step80 rho r2572 r2573 r2574
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 80 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
