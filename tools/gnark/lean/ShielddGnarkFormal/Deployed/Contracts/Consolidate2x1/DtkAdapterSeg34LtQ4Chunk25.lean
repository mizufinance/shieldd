import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step25L (rho : Nat -> Seg34.F) (r2675 : Seg34.relationRow2675 rho) :
    rho 33949 = seg34Q4Pe26 rho * (1 - rho 32789) := by
  unfold Seg34.relationRow2675 at r2675
  unfold seg34Q4Pe26
  linear_combination -r2675

theorem seg34Q4Step25IlMul (rho : Nat -> Seg34.F) (r2676 : Seg34.relationRow2676 rho) :
    rho 33950 = seg34Q4Il26 rho * (rho 33949) := by
  unfold Seg34.relationRow2676 at r2676
  rw [seg34Q4Step25IlLc rho] at r2676
  linear_combination -r2676

theorem seg34Q4Step25Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il25 rho = seg34Q4Il26 rho + (rho 33949) - (rho 33950) := by
  have hstate : seg34Q4Il25 rho = seg34Q4Il26 rho + seg34Q4IlAtom55 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom55
  ring

theorem seg34Q4Step25Pe (rho : Nat -> Seg34.F) (r2677 : Seg34.relationRow2677 rho) :
    seg34Q4Pe25 rho = seg34Q4Pe26 rho * rho 32789 := by
  unfold Seg34.relationRow2677 at r2677
  unfold seg34Q4Pe25 seg34Q4Pe26
  linear_combination -r2677

theorem seg34Q4Step25 (rho : Nat -> Seg34.F) (r2675 : Seg34.relationRow2675 rho) (r2676 : Seg34.relationRow2676 rho) (r2677 : Seg34.relationRow2677 rho) :
    seg34Q4Pe25 rho = seg34Q4Pe26 rho * rho 32789 ∧
    seg34Q4Il25 rho = seg34Q4Il26 rho + seg34Q4Pe26 rho * (1 - rho 32789) -
      seg34Q4Il26 rho * (seg34Q4Pe26 rho * (1 - rho 32789)) := by
  constructor
  · exact seg34Q4Step25Pe rho r2677
  · rw [seg34Q4Step25Acc rho, seg34Q4Step25L rho r2675, seg34Q4Step25IlMul rho r2676, seg34Q4Step25L rho r2675]

theorem seg34_q4_chunk25 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 26 (seg34Q4PeState rho 26) (seg34Q4IlState rho 26) := by
  have htail := seg34_q4_chunk24 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2675, r2676, r2677, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 25 ≤ n → n < 26 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 25 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step25 rho r2675 r2676 r2677
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 25 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
