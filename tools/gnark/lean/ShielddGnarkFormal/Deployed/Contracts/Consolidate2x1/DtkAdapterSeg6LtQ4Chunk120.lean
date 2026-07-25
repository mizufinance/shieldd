import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk119

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step120L (rho : Nat -> Seg6.F) (r2482 : Seg6.relationRow2482 rho) :
    rho 2882 = seg6Q4Pe121 rho * (1 - rho 2010) := by
  unfold Seg6.relationRow2482 at r2482
  unfold seg6Q4Pe121
  linear_combination -r2482

theorem seg6Q4Step120IlMul (rho : Nat -> Seg6.F) (r2483 : Seg6.relationRow2483 rho) :
    rho 2883 = seg6Q4Il121 rho * (rho 2882) := by
  unfold Seg6.relationRow2483 at r2483
  rw [seg6Q4Il121Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom2
  linear_combination -r2483

theorem seg6Q4Step120Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il120 rho = seg6Q4Il121 rho + (rho 2882) - (rho 2883) := by
  have hstate : seg6Q4Il120 rho = seg6Q4Il121 rho + seg6Q4IlAtom3 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom3
  ring

theorem seg6Q4Step120Pe (rho : Nat -> Seg6.F) (r2484 : Seg6.relationRow2484 rho) :
    seg6Q4Pe120 rho = seg6Q4Pe121 rho * rho 2010 := by
  unfold Seg6.relationRow2484 at r2484
  unfold seg6Q4Pe120 seg6Q4Pe121
  linear_combination -r2484

theorem seg6Q4Step120 (rho : Nat -> Seg6.F) (r2482 : Seg6.relationRow2482 rho) (r2483 : Seg6.relationRow2483 rho) (r2484 : Seg6.relationRow2484 rho) :
    seg6Q4Pe120 rho = seg6Q4Pe121 rho * rho 2010 ∧
    seg6Q4Il120 rho = seg6Q4Il121 rho + seg6Q4Pe121 rho * (1 - rho 2010) -
      seg6Q4Il121 rho * (seg6Q4Pe121 rho * (1 - rho 2010)) := by
  constructor
  · exact seg6Q4Step120Pe rho r2484
  · rw [seg6Q4Step120Acc rho, seg6Q4Step120L rho r2482, seg6Q4Step120IlMul rho r2483, seg6Q4Step120L rho r2482]

theorem seg6_q4_chunk120 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 121 (seg6Q4PeState rho 121) (seg6Q4IlState rho 121) := by
  have htail := seg6_q4_chunk119 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart31 at p31
  rcases p31 with ⟨_, _, r2482, r2483, r2484, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 120 ≤ n → n < 121 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 120 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step120 rho r2482 r2483 r2484
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 120 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
