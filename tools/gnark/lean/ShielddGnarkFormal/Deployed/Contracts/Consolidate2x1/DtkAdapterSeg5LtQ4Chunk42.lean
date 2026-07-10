import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk41

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step42L (rho : Nat -> Seg5.F) (r2640 : Seg5.relationRow2640 rho) :
    rho 2337 = seg5Q4Pe43 rho * (1 - rho 1229) := by
  unfold Seg5.relationRow2640 at r2640
  unfold seg5Q4Pe43
  linear_combination -r2640

theorem seg5Q4Step42IlMul (rho : Nat -> Seg5.F) (r2641 : Seg5.relationRow2641 rho) :
    rho 2338 = seg5Q4Il43 rho * (rho 2337) := by
  unfold Seg5.relationRow2641 at r2641
  rw [seg5Q4Step42IlLc rho] at r2641
  linear_combination -r2641

theorem seg5Q4Step42Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il42 rho = seg5Q4Il43 rho + (rho 2337) - (rho 2338) := by
  have hstate : seg5Q4Il42 rho = seg5Q4Il43 rho + seg5Q4IlAtom45 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom45
  ring

theorem seg5Q4Step42Pe (rho : Nat -> Seg5.F) (r2642 : Seg5.relationRow2642 rho) :
    seg5Q4Pe42 rho = seg5Q4Pe43 rho * rho 1229 := by
  unfold Seg5.relationRow2642 at r2642
  unfold seg5Q4Pe42 seg5Q4Pe43
  linear_combination -r2642

theorem seg5Q4Step42 (rho : Nat -> Seg5.F) (r2640 : Seg5.relationRow2640 rho) (r2641 : Seg5.relationRow2641 rho) (r2642 : Seg5.relationRow2642 rho) :
    seg5Q4Pe42 rho = seg5Q4Pe43 rho * rho 1229 ∧
    seg5Q4Il42 rho = seg5Q4Il43 rho + seg5Q4Pe43 rho * (1 - rho 1229) -
      seg5Q4Il43 rho * (seg5Q4Pe43 rho * (1 - rho 1229)) := by
  constructor
  · exact seg5Q4Step42Pe rho r2642
  · rw [seg5Q4Step42Acc rho, seg5Q4Step42L rho r2640, seg5Q4Step42IlMul rho r2641, seg5Q4Step42L rho r2640]

theorem seg5_q4_chunk42 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 43 (seg5Q4PeState rho 43) (seg5Q4IlState rho 43) := by
  have htail := seg5_q4_chunk41 rho h k hk
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart33 at p33
  rcases p33 with ⟨r2640, r2641, r2642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 42 ≤ n → n < 43 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 42 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step42 rho r2640 r2641 r2642
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 42 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
