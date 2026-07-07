import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk52

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step53L (rho : Nat -> Seg16.F) (r2619 : Seg16.relationRow2619 rho) :
    rho 15193 = seg16Q4Pe54 rho * (1 - rho 14117) := by
  unfold Seg16.relationRow2619 at r2619
  unfold seg16Q4Pe54
  linear_combination -r2619

theorem seg16Q4Step53IlMul (rho : Nat -> Seg16.F) (r2620 : Seg16.relationRow2620 rho) :
    rho 15194 = seg16Q4Il54 rho * (rho 15193) := by
  unfold Seg16.relationRow2620 at r2620
  rw [seg16Q4Step53IlLc rho] at r2620
  linear_combination -r2620

theorem seg16Q4Step53Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il53 rho = seg16Q4Il54 rho + (rho 15193) - (rho 15194) := by
  have hstate : seg16Q4Il53 rho = seg16Q4Il54 rho + seg16Q4IlAtom40 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom40
  ring

theorem seg16Q4Step53Pe (rho : Nat -> Seg16.F) (r2621 : Seg16.relationRow2621 rho) :
    seg16Q4Pe53 rho = seg16Q4Pe54 rho * rho 14117 := by
  unfold Seg16.relationRow2621 at r2621
  unfold seg16Q4Pe53 seg16Q4Pe54
  linear_combination -r2621

theorem seg16Q4Step53 (rho : Nat -> Seg16.F) (r2619 : Seg16.relationRow2619 rho) (r2620 : Seg16.relationRow2620 rho) (r2621 : Seg16.relationRow2621 rho) :
    seg16Q4Pe53 rho = seg16Q4Pe54 rho * rho 14117 ∧
    seg16Q4Il53 rho = seg16Q4Il54 rho + seg16Q4Pe54 rho * (1 - rho 14117) -
      seg16Q4Il54 rho * (seg16Q4Pe54 rho * (1 - rho 14117)) := by
  constructor
  · exact seg16Q4Step53Pe rho r2621
  · rw [seg16Q4Step53Acc rho, seg16Q4Step53L rho r2619, seg16Q4Step53IlMul rho r2620, seg16Q4Step53L rho r2619]

theorem seg16_q4_chunk53 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 54 (seg16Q4PeState rho 54) (seg16Q4IlState rho 54) := by
  have htail := seg16_q4_chunk52 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2619, r2620, r2621, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 53 ≤ n → n < 54 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 53 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step53 rho r2619 r2620 r2621
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 53 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
