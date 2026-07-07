import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk47

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step48L (rho : Nat -> Seg34.F) (r2628 : Seg34.relationRow2628 rho) :
    rho 33902 = seg34Q4Pe49 rho * (1 - rho 32812) := by
  unfold Seg34.relationRow2628 at r2628
  unfold seg34Q4Pe49
  linear_combination -r2628

theorem seg34Q4Step48IlMul (rho : Nat -> Seg34.F) (r2629 : Seg34.relationRow2629 rho) :
    rho 33903 = seg34Q4Il49 rho * (rho 33902) := by
  unfold Seg34.relationRow2629 at r2629
  rw [seg34Q4Step48IlLc rho] at r2629
  linear_combination -r2629

theorem seg34Q4Step48Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il48 rho = seg34Q4Il49 rho + (rho 33902) - (rho 33903) := by
  have hstate : seg34Q4Il48 rho = seg34Q4Il49 rho + seg34Q4IlAtom42 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom42
  ring

theorem seg34Q4Step48Pe (rho : Nat -> Seg34.F) (r2630 : Seg34.relationRow2630 rho) :
    seg34Q4Pe48 rho = seg34Q4Pe49 rho * rho 32812 := by
  unfold Seg34.relationRow2630 at r2630
  unfold seg34Q4Pe48 seg34Q4Pe49
  linear_combination -r2630

theorem seg34Q4Step48 (rho : Nat -> Seg34.F) (r2628 : Seg34.relationRow2628 rho) (r2629 : Seg34.relationRow2629 rho) (r2630 : Seg34.relationRow2630 rho) :
    seg34Q4Pe48 rho = seg34Q4Pe49 rho * rho 32812 ∧
    seg34Q4Il48 rho = seg34Q4Il49 rho + seg34Q4Pe49 rho * (1 - rho 32812) -
      seg34Q4Il49 rho * (seg34Q4Pe49 rho * (1 - rho 32812)) := by
  constructor
  · exact seg34Q4Step48Pe rho r2630
  · rw [seg34Q4Step48Acc rho, seg34Q4Step48L rho r2628, seg34Q4Step48IlMul rho r2629, seg34Q4Step48L rho r2628]

theorem seg34_q4_chunk48 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 49 (seg34Q4PeState rho 49) (seg34Q4IlState rho 49) := by
  have htail := seg34_q4_chunk47 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2628, r2629, r2630, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 48 ≤ n → n < 49 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 48 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step48 rho r2628 r2629 r2630
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 48 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
