import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk79

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step80L (rho : Nat -> Seg6.F) (r2572 : Seg6.relationRow2572 rho) :
    rho 2972 = seg6Q4Pe81 rho * (1 - rho 1970) := by
  unfold Seg6.relationRow2572 at r2572
  unfold seg6Q4Pe81
  linear_combination -r2572

theorem seg6Q4Step80IlMul (rho : Nat -> Seg6.F) (r2573 : Seg6.relationRow2573 rho) :
    rho 2973 = seg6Q4Il81 rho * (rho 2972) := by
  unfold Seg6.relationRow2573 at r2573
  rw [seg6Q4Step80IlLc rho] at r2573
  linear_combination -r2573

theorem seg6Q4Step80Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il80 rho = seg6Q4Il81 rho + (rho 2972) - (rho 2973) := by
  have hstate : seg6Q4Il80 rho = seg6Q4Il81 rho + seg6Q4IlAtom29 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom29
  ring

theorem seg6Q4Step80Pe (rho : Nat -> Seg6.F) (r2574 : Seg6.relationRow2574 rho) :
    seg6Q4Pe80 rho = seg6Q4Pe81 rho * rho 1970 := by
  unfold Seg6.relationRow2574 at r2574
  unfold seg6Q4Pe80 seg6Q4Pe81
  linear_combination -r2574

theorem seg6Q4Step80 (rho : Nat -> Seg6.F) (r2572 : Seg6.relationRow2572 rho) (r2573 : Seg6.relationRow2573 rho) (r2574 : Seg6.relationRow2574 rho) :
    seg6Q4Pe80 rho = seg6Q4Pe81 rho * rho 1970 ∧
    seg6Q4Il80 rho = seg6Q4Il81 rho + seg6Q4Pe81 rho * (1 - rho 1970) -
      seg6Q4Il81 rho * (seg6Q4Pe81 rho * (1 - rho 1970)) := by
  constructor
  · exact seg6Q4Step80Pe rho r2574
  · rw [seg6Q4Step80Acc rho, seg6Q4Step80L rho r2572, seg6Q4Step80IlMul rho r2573, seg6Q4Step80L rho r2572]

theorem seg6_q4_chunk80 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 81 (seg6Q4PeState rho 81) (seg6Q4IlState rho 81) := by
  have htail := seg6_q4_chunk79 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2572, r2573, r2574, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 80 ≤ n → n < 81 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 80 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step80 rho r2572 r2573 r2574
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 80 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
