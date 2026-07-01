import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk88

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step89L (rho : Nat -> Seg16.F) (r2555 : Seg16.relationRow2555 rho) :
    rho 15129 = seg16Q4Pe90 rho * (1 - rho 14153) := by
  unfold Seg16.relationRow2555 at r2555
  unfold seg16Q4Pe90
  linear_combination -r2555

theorem seg16Q4Step89IlMul (rho : Nat -> Seg16.F) (r2556 : Seg16.relationRow2556 rho) :
    rho 15130 = seg16Q4Il90 rho * (rho 15129) := by
  unfold Seg16.relationRow2556 at r2556
  rw [seg16Q4Step89IlLc rho] at r2556
  linear_combination -r2556

theorem seg16Q4Step89Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il89 rho = seg16Q4Il90 rho + (rho 15129) - (rho 15130) := by
  have hstate : seg16Q4Il89 rho = seg16Q4Il90 rho + seg16Q4IlAtom25 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom25
  ring

theorem seg16Q4Step89Pe (rho : Nat -> Seg16.F) (r2557 : Seg16.relationRow2557 rho) :
    seg16Q4Pe89 rho = seg16Q4Pe90 rho * rho 14153 := by
  unfold Seg16.relationRow2557 at r2557
  unfold seg16Q4Pe89 seg16Q4Pe90
  linear_combination -r2557

theorem seg16Q4Step89 (rho : Nat -> Seg16.F) (r2555 : Seg16.relationRow2555 rho) (r2556 : Seg16.relationRow2556 rho) (r2557 : Seg16.relationRow2557 rho) :
    seg16Q4Pe89 rho = seg16Q4Pe90 rho * rho 14153 ∧
    seg16Q4Il89 rho = seg16Q4Il90 rho + seg16Q4Pe90 rho * (1 - rho 14153) -
      seg16Q4Il90 rho * (seg16Q4Pe90 rho * (1 - rho 14153)) := by
  constructor
  · exact seg16Q4Step89Pe rho r2557
  · rw [seg16Q4Step89Acc rho, seg16Q4Step89L rho r2555, seg16Q4Step89IlMul rho r2556, seg16Q4Step89L rho r2555]

theorem seg16_q4_chunk89 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 90 (seg16Q4PeState rho 90) (seg16Q4IlState rho 90) := by
  have htail := seg16_q4_chunk88 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2555, r2556, r2557, _, _⟩
  have hsteps : ∀ n, 89 ≤ n → n < 90 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 89 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step89 rho r2555 r2556 r2557
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 89 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
