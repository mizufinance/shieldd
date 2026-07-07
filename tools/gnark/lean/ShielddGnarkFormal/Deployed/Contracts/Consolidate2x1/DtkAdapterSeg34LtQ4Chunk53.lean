import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk52

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step53L (rho : Nat -> Seg34.F) (r2619 : Seg34.relationRow2619 rho) :
    rho 33893 = seg34Q4Pe54 rho * (1 - rho 32817) := by
  unfold Seg34.relationRow2619 at r2619
  unfold seg34Q4Pe54
  linear_combination -r2619

theorem seg34Q4Step53IlMul (rho : Nat -> Seg34.F) (r2620 : Seg34.relationRow2620 rho) :
    rho 33894 = seg34Q4Il54 rho * (rho 33893) := by
  unfold Seg34.relationRow2620 at r2620
  rw [seg34Q4Step53IlLc rho] at r2620
  linear_combination -r2620

theorem seg34Q4Step53Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il53 rho = seg34Q4Il54 rho + (rho 33893) - (rho 33894) := by
  have hstate : seg34Q4Il53 rho = seg34Q4Il54 rho + seg34Q4IlAtom40 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom40
  ring

theorem seg34Q4Step53Pe (rho : Nat -> Seg34.F) (r2621 : Seg34.relationRow2621 rho) :
    seg34Q4Pe53 rho = seg34Q4Pe54 rho * rho 32817 := by
  unfold Seg34.relationRow2621 at r2621
  unfold seg34Q4Pe53 seg34Q4Pe54
  linear_combination -r2621

theorem seg34Q4Step53 (rho : Nat -> Seg34.F) (r2619 : Seg34.relationRow2619 rho) (r2620 : Seg34.relationRow2620 rho) (r2621 : Seg34.relationRow2621 rho) :
    seg34Q4Pe53 rho = seg34Q4Pe54 rho * rho 32817 ∧
    seg34Q4Il53 rho = seg34Q4Il54 rho + seg34Q4Pe54 rho * (1 - rho 32817) -
      seg34Q4Il54 rho * (seg34Q4Pe54 rho * (1 - rho 32817)) := by
  constructor
  · exact seg34Q4Step53Pe rho r2621
  · rw [seg34Q4Step53Acc rho, seg34Q4Step53L rho r2619, seg34Q4Step53IlMul rho r2620, seg34Q4Step53L rho r2619]

theorem seg34_q4_chunk53 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 54 (seg34Q4PeState rho 54) (seg34Q4IlState rho 54) := by
  have htail := seg34_q4_chunk52 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2619, r2620, r2621, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 53 ≤ n → n < 54 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 53 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step53 rho r2619 r2620 r2621
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 53 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
