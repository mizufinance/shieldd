import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk96

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step97L (rho : Nat -> Seg34.F) (r2533 : Seg34.relationRow2533 rho) :
    rho 33807 = seg34Q4Pe98 rho * (1 - rho 32861) := by
  unfold Seg34.relationRow2533 at r2533
  unfold seg34Q4Pe98
  linear_combination -r2533

theorem seg34Q4Step97IlMul (rho : Nat -> Seg34.F) (r2534 : Seg34.relationRow2534 rho) :
    rho 33808 = seg34Q4Il98 rho * (rho 33807) := by
  unfold Seg34.relationRow2534 at r2534
  rw [seg34Q4Step97IlLc rho] at r2534
  linear_combination -r2534

theorem seg34Q4Step97Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il97 rho = seg34Q4Il98 rho + (rho 33807) - (rho 33808) := by
  have hstate : seg34Q4Il97 rho = seg34Q4Il98 rho + seg34Q4IlAtom18 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom18
  ring

theorem seg34Q4Step97Pe (rho : Nat -> Seg34.F) (r2535 : Seg34.relationRow2535 rho) :
    seg34Q4Pe97 rho = seg34Q4Pe98 rho * rho 32861 := by
  unfold Seg34.relationRow2535 at r2535
  unfold seg34Q4Pe97 seg34Q4Pe98
  linear_combination -r2535

theorem seg34Q4Step97 (rho : Nat -> Seg34.F) (r2533 : Seg34.relationRow2533 rho) (r2534 : Seg34.relationRow2534 rho) (r2535 : Seg34.relationRow2535 rho) :
    seg34Q4Pe97 rho = seg34Q4Pe98 rho * rho 32861 ∧
    seg34Q4Il97 rho = seg34Q4Il98 rho + seg34Q4Pe98 rho * (1 - rho 32861) -
      seg34Q4Il98 rho * (seg34Q4Pe98 rho * (1 - rho 32861)) := by
  constructor
  · exact seg34Q4Step97Pe rho r2535
  · rw [seg34Q4Step97Acc rho, seg34Q4Step97L rho r2533, seg34Q4Step97IlMul rho r2534, seg34Q4Step97L rho r2533]

theorem seg34_q4_chunk97 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 98 (seg34Q4PeState rho 98) (seg34Q4IlState rho 98) := by
  have htail := seg34_q4_chunk96 rho h k hk
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2533, r2534, r2535, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 97 ≤ n → n < 98 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 97 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step97 rho r2533 r2534 r2535
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 97 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
