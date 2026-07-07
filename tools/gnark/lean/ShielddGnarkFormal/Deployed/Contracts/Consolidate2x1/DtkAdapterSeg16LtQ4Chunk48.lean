import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk47

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step48L (rho : Nat -> Seg16.F) (r2628 : Seg16.relationRow2628 rho) :
    rho 15202 = seg16Q4Pe49 rho * (1 - rho 14112) := by
  unfold Seg16.relationRow2628 at r2628
  unfold seg16Q4Pe49
  linear_combination -r2628

theorem seg16Q4Step48IlMul (rho : Nat -> Seg16.F) (r2629 : Seg16.relationRow2629 rho) :
    rho 15203 = seg16Q4Il49 rho * (rho 15202) := by
  unfold Seg16.relationRow2629 at r2629
  rw [seg16Q4Step48IlLc rho] at r2629
  linear_combination -r2629

theorem seg16Q4Step48Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il48 rho = seg16Q4Il49 rho + (rho 15202) - (rho 15203) := by
  have hstate : seg16Q4Il48 rho = seg16Q4Il49 rho + seg16Q4IlAtom42 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom42
  ring

theorem seg16Q4Step48Pe (rho : Nat -> Seg16.F) (r2630 : Seg16.relationRow2630 rho) :
    seg16Q4Pe48 rho = seg16Q4Pe49 rho * rho 14112 := by
  unfold Seg16.relationRow2630 at r2630
  unfold seg16Q4Pe48 seg16Q4Pe49
  linear_combination -r2630

theorem seg16Q4Step48 (rho : Nat -> Seg16.F) (r2628 : Seg16.relationRow2628 rho) (r2629 : Seg16.relationRow2629 rho) (r2630 : Seg16.relationRow2630 rho) :
    seg16Q4Pe48 rho = seg16Q4Pe49 rho * rho 14112 ∧
    seg16Q4Il48 rho = seg16Q4Il49 rho + seg16Q4Pe49 rho * (1 - rho 14112) -
      seg16Q4Il49 rho * (seg16Q4Pe49 rho * (1 - rho 14112)) := by
  constructor
  · exact seg16Q4Step48Pe rho r2630
  · rw [seg16Q4Step48Acc rho, seg16Q4Step48L rho r2628, seg16Q4Step48IlMul rho r2629, seg16Q4Step48L rho r2628]

theorem seg16_q4_chunk48 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 49 (seg16Q4PeState rho 49) (seg16Q4IlState rho 49) := by
  have htail := seg16_q4_chunk47 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2628, r2629, r2630, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 48 ≤ n → n < 49 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 48 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step48 rho r2628 r2629 r2630
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 48 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
