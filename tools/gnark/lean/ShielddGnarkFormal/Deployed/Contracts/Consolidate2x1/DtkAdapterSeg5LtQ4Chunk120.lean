import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk119

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step120L (rho : Nat -> Seg5.F) (r2482 : Seg5.relationRow2482 rho) :
    rho 2179 = seg5Q4Pe121 rho * (1 - rho 1307) := by
  unfold Seg5.relationRow2482 at r2482
  unfold seg5Q4Pe121
  linear_combination -r2482

theorem seg5Q4Step120IlMul (rho : Nat -> Seg5.F) (r2483 : Seg5.relationRow2483 rho) :
    rho 2180 = seg5Q4Il121 rho * (rho 2179) := by
  unfold Seg5.relationRow2483 at r2483
  rw [seg5Q4Il121Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom2
  linear_combination -r2483

theorem seg5Q4Step120Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il120 rho = seg5Q4Il121 rho + (rho 2179) - (rho 2180) := by
  have hstate : seg5Q4Il120 rho = seg5Q4Il121 rho + seg5Q4IlAtom3 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom3
  ring

theorem seg5Q4Step120Pe (rho : Nat -> Seg5.F) (r2484 : Seg5.relationRow2484 rho) :
    seg5Q4Pe120 rho = seg5Q4Pe121 rho * rho 1307 := by
  unfold Seg5.relationRow2484 at r2484
  unfold seg5Q4Pe120 seg5Q4Pe121
  linear_combination -r2484

theorem seg5Q4Step120 (rho : Nat -> Seg5.F) (r2482 : Seg5.relationRow2482 rho) (r2483 : Seg5.relationRow2483 rho) (r2484 : Seg5.relationRow2484 rho) :
    seg5Q4Pe120 rho = seg5Q4Pe121 rho * rho 1307 ∧
    seg5Q4Il120 rho = seg5Q4Il121 rho + seg5Q4Pe121 rho * (1 - rho 1307) -
      seg5Q4Il121 rho * (seg5Q4Pe121 rho * (1 - rho 1307)) := by
  constructor
  · exact seg5Q4Step120Pe rho r2484
  · rw [seg5Q4Step120Acc rho, seg5Q4Step120L rho r2482, seg5Q4Step120IlMul rho r2483, seg5Q4Step120L rho r2482]

theorem seg5_q4_chunk120 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 121 (seg5Q4PeState rho 121) (seg5Q4IlState rho 121) := by
  have htail := seg5_q4_chunk119 rho h k hk
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart31 at p31
  rcases p31 with ⟨_, _, r2482, r2483, r2484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 120 ≤ n → n < 121 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 120 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step120 rho r2482 r2483 r2484
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 120 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
