import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk41

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step42L (rho : Nat -> Seg34.F) (r2640 : Seg34.relationRow2640 rho) :
    rho 33914 = seg34Q4Pe43 rho * (1 - rho 32806) := by
  unfold Seg34.relationRow2640 at r2640
  unfold seg34Q4Pe43
  linear_combination -r2640

theorem seg34Q4Step42IlMul (rho : Nat -> Seg34.F) (r2641 : Seg34.relationRow2641 rho) :
    rho 33915 = seg34Q4Il43 rho * (rho 33914) := by
  unfold Seg34.relationRow2641 at r2641
  rw [seg34Q4Step42IlLc rho] at r2641
  linear_combination -r2641

theorem seg34Q4Step42Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il42 rho = seg34Q4Il43 rho + (rho 33914) - (rho 33915) := by
  have hstate : seg34Q4Il42 rho = seg34Q4Il43 rho + seg34Q4IlAtom45 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom45
  ring

theorem seg34Q4Step42Pe (rho : Nat -> Seg34.F) (r2642 : Seg34.relationRow2642 rho) :
    seg34Q4Pe42 rho = seg34Q4Pe43 rho * rho 32806 := by
  unfold Seg34.relationRow2642 at r2642
  unfold seg34Q4Pe42 seg34Q4Pe43
  linear_combination -r2642

theorem seg34Q4Step42 (rho : Nat -> Seg34.F) (r2640 : Seg34.relationRow2640 rho) (r2641 : Seg34.relationRow2641 rho) (r2642 : Seg34.relationRow2642 rho) :
    seg34Q4Pe42 rho = seg34Q4Pe43 rho * rho 32806 ∧
    seg34Q4Il42 rho = seg34Q4Il43 rho + seg34Q4Pe43 rho * (1 - rho 32806) -
      seg34Q4Il43 rho * (seg34Q4Pe43 rho * (1 - rho 32806)) := by
  constructor
  · exact seg34Q4Step42Pe rho r2642
  · rw [seg34Q4Step42Acc rho, seg34Q4Step42L rho r2640, seg34Q4Step42IlMul rho r2641, seg34Q4Step42L rho r2640]

theorem seg34_q4_chunk42 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 43 (seg34Q4PeState rho 43) (seg34Q4IlState rho 43) := by
  have htail := seg34_q4_chunk41 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart33 at p33
  rcases p33 with ⟨r2640, r2641, r2642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 42 ≤ n → n < 43 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 42 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step42 rho r2640 r2641 r2642
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 42 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
