import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step25L (rho : Nat -> Seg6.F) (r2675 : Seg6.relationRow2675 rho) :
    rho 3075 = seg6Q4Pe26 rho * (1 - rho 1915) := by
  unfold Seg6.relationRow2675 at r2675
  unfold seg6Q4Pe26
  linear_combination -r2675

theorem seg6Q4Step25IlMul (rho : Nat -> Seg6.F) (r2676 : Seg6.relationRow2676 rho) :
    rho 3076 = seg6Q4Il26 rho * (rho 3075) := by
  unfold Seg6.relationRow2676 at r2676
  rw [seg6Q4Step25IlLc rho] at r2676
  linear_combination -r2676

theorem seg6Q4Step25Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il25 rho = seg6Q4Il26 rho + (rho 3075) - (rho 3076) := by
  have hstate : seg6Q4Il25 rho = seg6Q4Il26 rho + seg6Q4IlAtom55 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom55
  ring

theorem seg6Q4Step25Pe (rho : Nat -> Seg6.F) (r2677 : Seg6.relationRow2677 rho) :
    seg6Q4Pe25 rho = seg6Q4Pe26 rho * rho 1915 := by
  unfold Seg6.relationRow2677 at r2677
  unfold seg6Q4Pe25 seg6Q4Pe26
  linear_combination -r2677

theorem seg6Q4Step25 (rho : Nat -> Seg6.F) (r2675 : Seg6.relationRow2675 rho) (r2676 : Seg6.relationRow2676 rho) (r2677 : Seg6.relationRow2677 rho) :
    seg6Q4Pe25 rho = seg6Q4Pe26 rho * rho 1915 ∧
    seg6Q4Il25 rho = seg6Q4Il26 rho + seg6Q4Pe26 rho * (1 - rho 1915) -
      seg6Q4Il26 rho * (seg6Q4Pe26 rho * (1 - rho 1915)) := by
  constructor
  · exact seg6Q4Step25Pe rho r2677
  · rw [seg6Q4Step25Acc rho, seg6Q4Step25L rho r2675, seg6Q4Step25IlMul rho r2676, seg6Q4Step25L rho r2675]

theorem seg6_q4_chunk25 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 26 (seg6Q4PeState rho 26) (seg6Q4IlState rho 26) := by
  have htail := seg6_q4_chunk24 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2675, r2676, r2677, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 25 ≤ n → n < 26 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 25 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step25 rho r2675 r2676 r2677
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 25 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
