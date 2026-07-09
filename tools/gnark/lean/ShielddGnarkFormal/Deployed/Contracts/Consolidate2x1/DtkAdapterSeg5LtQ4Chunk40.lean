import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk39

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step40L (rho : Nat -> Seg5.F) (r2644 : Seg5.relationRow2644 rho) :
    rho 2341 = seg5Q4Pe41 rho * (1 - rho 1227) := by
  unfold Seg5.relationRow2644 at r2644
  unfold seg5Q4Pe41
  linear_combination -r2644

theorem seg5Q4Step40IlMul (rho : Nat -> Seg5.F) (r2645 : Seg5.relationRow2645 rho) :
    rho 2342 = seg5Q4Il41 rho * (rho 2341) := by
  unfold Seg5.relationRow2645 at r2645
  rw [seg5Q4Step40IlLc rho] at r2645
  linear_combination -r2645

theorem seg5Q4Step40Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il40 rho = seg5Q4Il41 rho + (rho 2341) - (rho 2342) := by
  have hstate : seg5Q4Il40 rho = seg5Q4Il41 rho + seg5Q4IlAtom46 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom46
  ring

theorem seg5Q4Step40Pe (rho : Nat -> Seg5.F) (r2646 : Seg5.relationRow2646 rho) :
    seg5Q4Pe40 rho = seg5Q4Pe41 rho * rho 1227 := by
  unfold Seg5.relationRow2646 at r2646
  unfold seg5Q4Pe40 seg5Q4Pe41
  linear_combination -r2646

theorem seg5Q4Step40 (rho : Nat -> Seg5.F) (r2644 : Seg5.relationRow2644 rho) (r2645 : Seg5.relationRow2645 rho) (r2646 : Seg5.relationRow2646 rho) :
    seg5Q4Pe40 rho = seg5Q4Pe41 rho * rho 1227 ∧
    seg5Q4Il40 rho = seg5Q4Il41 rho + seg5Q4Pe41 rho * (1 - rho 1227) -
      seg5Q4Il41 rho * (seg5Q4Pe41 rho * (1 - rho 1227)) := by
  constructor
  · exact seg5Q4Step40Pe rho r2646
  · rw [seg5Q4Step40Acc rho, seg5Q4Step40L rho r2644, seg5Q4Step40IlMul rho r2645, seg5Q4Step40L rho r2644]

theorem seg5_q4_chunk40 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 41 (seg5Q4PeState rho 41) (seg5Q4IlState rho 41) := by
  have htail := seg5_q4_chunk39 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, r2644, r2645, r2646, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 40 ≤ n → n < 41 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 40 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step40 rho r2644 r2645 r2646
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 40 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
