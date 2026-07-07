import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step25L (rho : Nat -> Seg16.F) (r2675 : Seg16.relationRow2675 rho) :
    rho 15249 = seg16Q4Pe26 rho * (1 - rho 14089) := by
  unfold Seg16.relationRow2675 at r2675
  unfold seg16Q4Pe26
  linear_combination -r2675

theorem seg16Q4Step25IlMul (rho : Nat -> Seg16.F) (r2676 : Seg16.relationRow2676 rho) :
    rho 15250 = seg16Q4Il26 rho * (rho 15249) := by
  unfold Seg16.relationRow2676 at r2676
  rw [seg16Q4Step25IlLc rho] at r2676
  linear_combination -r2676

theorem seg16Q4Step25Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il25 rho = seg16Q4Il26 rho + (rho 15249) - (rho 15250) := by
  have hstate : seg16Q4Il25 rho = seg16Q4Il26 rho + seg16Q4IlAtom55 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom55
  ring

theorem seg16Q4Step25Pe (rho : Nat -> Seg16.F) (r2677 : Seg16.relationRow2677 rho) :
    seg16Q4Pe25 rho = seg16Q4Pe26 rho * rho 14089 := by
  unfold Seg16.relationRow2677 at r2677
  unfold seg16Q4Pe25 seg16Q4Pe26
  linear_combination -r2677

theorem seg16Q4Step25 (rho : Nat -> Seg16.F) (r2675 : Seg16.relationRow2675 rho) (r2676 : Seg16.relationRow2676 rho) (r2677 : Seg16.relationRow2677 rho) :
    seg16Q4Pe25 rho = seg16Q4Pe26 rho * rho 14089 ∧
    seg16Q4Il25 rho = seg16Q4Il26 rho + seg16Q4Pe26 rho * (1 - rho 14089) -
      seg16Q4Il26 rho * (seg16Q4Pe26 rho * (1 - rho 14089)) := by
  constructor
  · exact seg16Q4Step25Pe rho r2677
  · rw [seg16Q4Step25Acc rho, seg16Q4Step25L rho r2675, seg16Q4Step25IlMul rho r2676, seg16Q4Step25L rho r2675]

theorem seg16_q4_chunk25 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 26 (seg16Q4PeState rho 26) (seg16Q4IlState rho 26) := by
  have htail := seg16_q4_chunk24 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2675, r2676, r2677, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 25 ≤ n → n < 26 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 25 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step25 rho r2675 r2676 r2677
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 25 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
