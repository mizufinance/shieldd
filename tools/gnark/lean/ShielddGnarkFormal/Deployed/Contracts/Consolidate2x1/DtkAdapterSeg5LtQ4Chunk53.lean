import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk52

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step53L (rho : Nat -> Seg5.F) (r2619 : Seg5.relationRow2619 rho) :
    rho 2316 = seg5Q4Pe54 rho * (1 - rho 1240) := by
  unfold Seg5.relationRow2619 at r2619
  unfold seg5Q4Pe54
  linear_combination -r2619

theorem seg5Q4Step53IlMul (rho : Nat -> Seg5.F) (r2620 : Seg5.relationRow2620 rho) :
    rho 2317 = seg5Q4Il54 rho * (rho 2316) := by
  unfold Seg5.relationRow2620 at r2620
  rw [seg5Q4Step53IlLc rho] at r2620
  linear_combination -r2620

theorem seg5Q4Step53Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il53 rho = seg5Q4Il54 rho + (rho 2316) - (rho 2317) := by
  have hstate : seg5Q4Il53 rho = seg5Q4Il54 rho + seg5Q4IlAtom40 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom40
  ring

theorem seg5Q4Step53Pe (rho : Nat -> Seg5.F) (r2621 : Seg5.relationRow2621 rho) :
    seg5Q4Pe53 rho = seg5Q4Pe54 rho * rho 1240 := by
  unfold Seg5.relationRow2621 at r2621
  unfold seg5Q4Pe53 seg5Q4Pe54
  linear_combination -r2621

theorem seg5Q4Step53 (rho : Nat -> Seg5.F) (r2619 : Seg5.relationRow2619 rho) (r2620 : Seg5.relationRow2620 rho) (r2621 : Seg5.relationRow2621 rho) :
    seg5Q4Pe53 rho = seg5Q4Pe54 rho * rho 1240 ∧
    seg5Q4Il53 rho = seg5Q4Il54 rho + seg5Q4Pe54 rho * (1 - rho 1240) -
      seg5Q4Il54 rho * (seg5Q4Pe54 rho * (1 - rho 1240)) := by
  constructor
  · exact seg5Q4Step53Pe rho r2621
  · rw [seg5Q4Step53Acc rho, seg5Q4Step53L rho r2619, seg5Q4Step53IlMul rho r2620, seg5Q4Step53L rho r2619]

theorem seg5_q4_chunk53 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 54 (seg5Q4PeState rho 54) (seg5Q4IlState rho 54) := by
  have htail := seg5_q4_chunk52 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2619, r2620, r2621, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 53 ≤ n → n < 54 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 53 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step53 rho r2619 r2620 r2621
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 53 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
