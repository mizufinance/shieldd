import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk39

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step40L (rho : Nat -> Seg16.F) (r2644 : Seg16.relationRow2644 rho) :
    rho 15218 = seg16Q4Pe41 rho * (1 - rho 14104) := by
  unfold Seg16.relationRow2644 at r2644
  unfold seg16Q4Pe41
  linear_combination -r2644

theorem seg16Q4Step40IlMul (rho : Nat -> Seg16.F) (r2645 : Seg16.relationRow2645 rho) :
    rho 15219 = seg16Q4Il41 rho * (rho 15218) := by
  unfold Seg16.relationRow2645 at r2645
  rw [seg16Q4Step40IlLc rho] at r2645
  linear_combination -r2645

theorem seg16Q4Step40Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il40 rho = seg16Q4Il41 rho + (rho 15218) - (rho 15219) := by
  have hstate : seg16Q4Il40 rho = seg16Q4Il41 rho + seg16Q4IlAtom46 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom46
  ring

theorem seg16Q4Step40Pe (rho : Nat -> Seg16.F) (r2646 : Seg16.relationRow2646 rho) :
    seg16Q4Pe40 rho = seg16Q4Pe41 rho * rho 14104 := by
  unfold Seg16.relationRow2646 at r2646
  unfold seg16Q4Pe40 seg16Q4Pe41
  linear_combination -r2646

theorem seg16Q4Step40 (rho : Nat -> Seg16.F) (r2644 : Seg16.relationRow2644 rho) (r2645 : Seg16.relationRow2645 rho) (r2646 : Seg16.relationRow2646 rho) :
    seg16Q4Pe40 rho = seg16Q4Pe41 rho * rho 14104 ∧
    seg16Q4Il40 rho = seg16Q4Il41 rho + seg16Q4Pe41 rho * (1 - rho 14104) -
      seg16Q4Il41 rho * (seg16Q4Pe41 rho * (1 - rho 14104)) := by
  constructor
  · exact seg16Q4Step40Pe rho r2646
  · rw [seg16Q4Step40Acc rho, seg16Q4Step40L rho r2644, seg16Q4Step40IlMul rho r2645, seg16Q4Step40L rho r2644]

theorem seg16_q4_chunk40 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 41 (seg16Q4PeState rho 41) (seg16Q4IlState rho 41) := by
  have htail := seg16_q4_chunk39 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, r2644, r2645, r2646, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 40 ≤ n → n < 41 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 40 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step40 rho r2644 r2645 r2646
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 40 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
