import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk47

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step48L (rho : Nat -> Seg5.F) (r2628 : Seg5.relationRow2628 rho) :
    rho 2325 = seg5Q4Pe49 rho * (1 - rho 1235) := by
  unfold Seg5.relationRow2628 at r2628
  unfold seg5Q4Pe49
  linear_combination -r2628

theorem seg5Q4Step48IlMul (rho : Nat -> Seg5.F) (r2629 : Seg5.relationRow2629 rho) :
    rho 2326 = seg5Q4Il49 rho * (rho 2325) := by
  unfold Seg5.relationRow2629 at r2629
  rw [seg5Q4Step48IlLc rho] at r2629
  linear_combination -r2629

theorem seg5Q4Step48Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il48 rho = seg5Q4Il49 rho + (rho 2325) - (rho 2326) := by
  have hstate : seg5Q4Il48 rho = seg5Q4Il49 rho + seg5Q4IlAtom42 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom42
  ring

theorem seg5Q4Step48Pe (rho : Nat -> Seg5.F) (r2630 : Seg5.relationRow2630 rho) :
    seg5Q4Pe48 rho = seg5Q4Pe49 rho * rho 1235 := by
  unfold Seg5.relationRow2630 at r2630
  unfold seg5Q4Pe48 seg5Q4Pe49
  linear_combination -r2630

theorem seg5Q4Step48 (rho : Nat -> Seg5.F) (r2628 : Seg5.relationRow2628 rho) (r2629 : Seg5.relationRow2629 rho) (r2630 : Seg5.relationRow2630 rho) :
    seg5Q4Pe48 rho = seg5Q4Pe49 rho * rho 1235 ∧
    seg5Q4Il48 rho = seg5Q4Il49 rho + seg5Q4Pe49 rho * (1 - rho 1235) -
      seg5Q4Il49 rho * (seg5Q4Pe49 rho * (1 - rho 1235)) := by
  constructor
  · exact seg5Q4Step48Pe rho r2630
  · rw [seg5Q4Step48Acc rho, seg5Q4Step48L rho r2628, seg5Q4Step48IlMul rho r2629, seg5Q4Step48L rho r2628]

theorem seg5_q4_chunk48 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 49 (seg5Q4PeState rho 49) (seg5Q4IlState rho 49) := by
  have htail := seg5_q4_chunk47 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2628, r2629, r2630, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 48 ≤ n → n < 49 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 48 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step48 rho r2628 r2629 r2630
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 48 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
