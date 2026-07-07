import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk89

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step90L (rho : Nat -> Seg16.F) (r2552 : Seg16.relationRow2552 rho) :
    rho 15126 = seg16Q4Pe91 rho * (1 - rho 14154) := by
  unfold Seg16.relationRow2552 at r2552
  unfold seg16Q4Pe91
  linear_combination -r2552

theorem seg16Q4Step90IlMul (rho : Nat -> Seg16.F) (r2553 : Seg16.relationRow2553 rho) :
    rho 15127 = seg16Q4Il91 rho * (rho 15126) := by
  unfold Seg16.relationRow2553 at r2553
  rw [seg16Q4Step90IlLc rho] at r2553
  linear_combination -r2553

theorem seg16Q4Step90Acc (rho : Nat -> Seg16.F) :
    seg16Q4Il90 rho = seg16Q4Il91 rho + (rho 15126) - (rho 15127) := by
  have hstate : seg16Q4Il90 rho = seg16Q4Il91 rho + seg16Q4IlAtom24 rho := by rfl
  rw [hstate]
  unfold seg16Q4IlAtom24
  ring

theorem seg16Q4Step90Pe (rho : Nat -> Seg16.F) (r2554 : Seg16.relationRow2554 rho) :
    seg16Q4Pe90 rho = seg16Q4Pe91 rho * rho 14154 := by
  unfold Seg16.relationRow2554 at r2554
  unfold seg16Q4Pe90 seg16Q4Pe91
  linear_combination -r2554

theorem seg16Q4Step90 (rho : Nat -> Seg16.F) (r2552 : Seg16.relationRow2552 rho) (r2553 : Seg16.relationRow2553 rho) (r2554 : Seg16.relationRow2554 rho) :
    seg16Q4Pe90 rho = seg16Q4Pe91 rho * rho 14154 ∧
    seg16Q4Il90 rho = seg16Q4Il91 rho + seg16Q4Pe91 rho * (1 - rho 14154) -
      seg16Q4Il91 rho * (seg16Q4Pe91 rho * (1 - rho 14154)) := by
  constructor
  · exact seg16Q4Step90Pe rho r2554
  · rw [seg16Q4Step90Acc rho, seg16Q4Step90L rho r2552, seg16Q4Step90IlMul rho r2553, seg16Q4Step90L rho r2552]

theorem seg16_q4_chunk90 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 91 (seg16Q4PeState rho 91) (seg16Q4IlState rho 91) := by
  have htail := seg16_q4_chunk89 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2552, r2553, r2554, _, _, _, _, _⟩
  have hsteps : ∀ n, 90 ≤ n → n < 91 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 90 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step90 rho r2552 r2553 r2554
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 90 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
