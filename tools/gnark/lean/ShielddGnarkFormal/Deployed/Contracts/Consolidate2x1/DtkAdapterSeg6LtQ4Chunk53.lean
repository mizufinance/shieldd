import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk52

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step53L (rho : Nat -> Seg6.F) (r2619 : Seg6.relationRow2619 rho) :
    rho 3019 = seg6Q4Pe54 rho * (1 - rho 1943) := by
  unfold Seg6.relationRow2619 at r2619
  unfold seg6Q4Pe54
  linear_combination -r2619

theorem seg6Q4Step53IlMul (rho : Nat -> Seg6.F) (r2620 : Seg6.relationRow2620 rho) :
    rho 3020 = seg6Q4Il54 rho * (rho 3019) := by
  unfold Seg6.relationRow2620 at r2620
  rw [seg6Q4Step53IlLc rho] at r2620
  linear_combination -r2620

theorem seg6Q4Step53Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il53 rho = seg6Q4Il54 rho + (rho 3019) - (rho 3020) := by
  have hstate : seg6Q4Il53 rho = seg6Q4Il54 rho + seg6Q4IlAtom40 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom40
  ring

theorem seg6Q4Step53Pe (rho : Nat -> Seg6.F) (r2621 : Seg6.relationRow2621 rho) :
    seg6Q4Pe53 rho = seg6Q4Pe54 rho * rho 1943 := by
  unfold Seg6.relationRow2621 at r2621
  unfold seg6Q4Pe53 seg6Q4Pe54
  linear_combination -r2621

theorem seg6Q4Step53 (rho : Nat -> Seg6.F) (r2619 : Seg6.relationRow2619 rho) (r2620 : Seg6.relationRow2620 rho) (r2621 : Seg6.relationRow2621 rho) :
    seg6Q4Pe53 rho = seg6Q4Pe54 rho * rho 1943 ∧
    seg6Q4Il53 rho = seg6Q4Il54 rho + seg6Q4Pe54 rho * (1 - rho 1943) -
      seg6Q4Il54 rho * (seg6Q4Pe54 rho * (1 - rho 1943)) := by
  constructor
  · exact seg6Q4Step53Pe rho r2621
  · rw [seg6Q4Step53Acc rho, seg6Q4Step53L rho r2619, seg6Q4Step53IlMul rho r2620, seg6Q4Step53L rho r2619]

theorem seg6_q4_chunk53 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 54 (seg6Q4PeState rho 54) (seg6Q4IlState rho 54) := by
  have htail := seg6_q4_chunk52 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2619, r2620, r2621, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 53 ≤ n → n < 54 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 53 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step53 rho r2619 r2620 r2621
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 53 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
