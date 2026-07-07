import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk119

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step120L (rho : Nat -> Seg16.F) (r2482 : Seg16.relationRow2482 rho) :
    rho 15056 = seg16Q4Pe121 rho * (1 - rho 14184) := by
  unfold Seg16.relationRow2482 at r2482
  unfold seg16Q4Pe121
  linear_combination -r2482

theorem seg16Q4Step120IlMul (rho : Nat -> Seg16.F) (r2483 : Seg16.relationRow2483 rho) :
    rho 15057 = seg16Q4Il121 rho * (rho 15056) := by
  unfold Seg16.relationRow2483 at r2483
  rw [seg16Q4Il121Atoms rho]
  unfold seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom2
  linear_combination -r2483

theorem seg16Q4Step120Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il120 rho = seg16Q4Il121 rho + (rho 15056) - (rho 15057) := by
  have hstate : seg16Q4Il120 rho = seg16Q4Il121 rho + seg16Q4IlAtom3 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom3
  ring

theorem seg16Q4Step120Pe (rho : Nat -> Seg16.F) (r2484 : Seg16.relationRow2484 rho) :
    seg16Q4Pe120 rho = seg16Q4Pe121 rho * rho 14184 := by
  unfold Seg16.relationRow2484 at r2484
  unfold seg16Q4Pe120 seg16Q4Pe121
  linear_combination -r2484

theorem seg16Q4Step120 (rho : Nat -> Seg16.F) (r2482 : Seg16.relationRow2482 rho) (r2483 : Seg16.relationRow2483 rho) (r2484 : Seg16.relationRow2484 rho) :
    seg16Q4Pe120 rho = seg16Q4Pe121 rho * rho 14184 ∧
    seg16Q4Il120 rho = seg16Q4Il121 rho + seg16Q4Pe121 rho * (1 - rho 14184) -
      seg16Q4Il121 rho * (seg16Q4Pe121 rho * (1 - rho 14184)) := by
  constructor
  · exact seg16Q4Step120Pe rho r2484
  · rw [seg16Q4Step120Acc rho, seg16Q4Step120L rho r2482, seg16Q4Step120IlMul rho r2483, seg16Q4Step120L rho r2482]

theorem seg16_q4_chunk120 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 121 (seg16Q4PeState rho 121) (seg16Q4IlState rho 121) := by
  have htail := seg16_q4_chunk119 rho h k hk
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
  rcases p31 with ⟨_, _, r2482, r2483, r2484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 120 ≤ n → n < 121 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 120 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step120 rho r2482 r2483 r2484
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 120 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
