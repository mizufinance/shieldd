import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk81

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step82L (rho : Nat -> Seg6.F) (r2568 : Seg6.relationRow2568 rho) :
    rho 2968 = seg6Q4Pe83 rho * (1 - rho 1972) := by
  unfold Seg6.relationRow2568 at r2568
  unfold seg6Q4Pe83
  linear_combination -r2568

theorem seg6Q4Step82IlMul (rho : Nat -> Seg6.F) (r2569 : Seg6.relationRow2569 rho) :
    rho 2969 = seg6Q4Il83 rho * (rho 2968) := by
  unfold Seg6.relationRow2569 at r2569
  rw [seg6Q4Step82IlLc rho] at r2569
  linear_combination -r2569

theorem seg6Q4Step82Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il82 rho = seg6Q4Il83 rho + (rho 2968) - (rho 2969) := by
  have hstate : seg6Q4Il82 rho = seg6Q4Il83 rho + seg6Q4IlAtom28 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom28
  ring

theorem seg6Q4Step82Pe (rho : Nat -> Seg6.F) (r2570 : Seg6.relationRow2570 rho) :
    seg6Q4Pe82 rho = seg6Q4Pe83 rho * rho 1972 := by
  unfold Seg6.relationRow2570 at r2570
  unfold seg6Q4Pe82 seg6Q4Pe83
  linear_combination -r2570

theorem seg6Q4Step82 (rho : Nat -> Seg6.F) (r2568 : Seg6.relationRow2568 rho) (r2569 : Seg6.relationRow2569 rho) (r2570 : Seg6.relationRow2570 rho) :
    seg6Q4Pe82 rho = seg6Q4Pe83 rho * rho 1972 ∧
    seg6Q4Il82 rho = seg6Q4Il83 rho + seg6Q4Pe83 rho * (1 - rho 1972) -
      seg6Q4Il83 rho * (seg6Q4Pe83 rho * (1 - rho 1972)) := by
  constructor
  · exact seg6Q4Step82Pe rho r2570
  · rw [seg6Q4Step82Acc rho, seg6Q4Step82L rho r2568, seg6Q4Step82IlMul rho r2569, seg6Q4Step82L rho r2568]

theorem seg6_q4_chunk82 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 83 (seg6Q4PeState rho 83) (seg6Q4IlState rho 83) := by
  have htail := seg6_q4_chunk81 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, r2568, r2569, r2570, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 82 ≤ n → n < 83 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 82 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step82 rho r2568 r2569 r2570
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 82 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
