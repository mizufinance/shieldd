import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk52

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step53L (rho : Nat -> Seg45.F) (r2619 : Seg45.relationRow2619 rho) :
    rho 40849 = seg45Q4Pe54 rho * (1 - rho 39773) := by
  unfold Seg45.relationRow2619 at r2619
  unfold seg45Q4Pe54
  linear_combination -r2619

theorem seg45Q4Step53IlMul (rho : Nat -> Seg45.F) (r2620 : Seg45.relationRow2620 rho) :
    rho 40850 = seg45Q4Il54 rho * (rho 40849) := by
  unfold Seg45.relationRow2620 at r2620
  rw [seg45Q4Step53IlLc rho] at r2620
  linear_combination -r2620

theorem seg45Q4Step53Acc (rho : Nat -> Seg45.F) :
    seg45Q4Il53 rho = seg45Q4Il54 rho + (rho 40849) - (rho 40850) := by
  have hstate : seg45Q4Il53 rho = seg45Q4Il54 rho + seg45Q4IlAtom40 rho := by rfl
  rw [hstate]
  unfold seg45Q4IlAtom40
  ring

theorem seg45Q4Step53Pe (rho : Nat -> Seg45.F) (r2621 : Seg45.relationRow2621 rho) :
    seg45Q4Pe53 rho = seg45Q4Pe54 rho * rho 39773 := by
  unfold Seg45.relationRow2621 at r2621
  unfold seg45Q4Pe53 seg45Q4Pe54
  linear_combination -r2621

theorem seg45Q4Step53 (rho : Nat -> Seg45.F) (r2619 : Seg45.relationRow2619 rho) (r2620 : Seg45.relationRow2620 rho) (r2621 : Seg45.relationRow2621 rho) :
    seg45Q4Pe53 rho = seg45Q4Pe54 rho * rho 39773 ∧
    seg45Q4Il53 rho = seg45Q4Il54 rho + seg45Q4Pe54 rho * (1 - rho 39773) -
      seg45Q4Il54 rho * (seg45Q4Pe54 rho * (1 - rho 39773)) := by
  constructor
  · exact seg45Q4Step53Pe rho r2621
  · rw [seg45Q4Step53Acc rho, seg45Q4Step53L rho r2619, seg45Q4Step53IlMul rho r2620, seg45Q4Step53L rho r2619]

theorem seg45_q4_chunk53 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 54 (seg45Q4PeState rho 54) (seg45Q4IlState rho 54) := by
  have htail := seg45_q4_chunk52 rho h k hk
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2619, r2620, r2621, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 53 ≤ n → n < 54 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 53 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step53 rho r2619 r2620 r2621
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 53 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
