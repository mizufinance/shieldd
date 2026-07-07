import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk89

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step90L (rho : Nat -> Seg34.F) (r2552 : Seg34.relationRow2552 rho) :
    rho 33826 = seg34Q4Pe91 rho * (1 - rho 32854) := by
  unfold Seg34.relationRow2552 at r2552
  unfold seg34Q4Pe91
  linear_combination -r2552

theorem seg34Q4Step90IlMul (rho : Nat -> Seg34.F) (r2553 : Seg34.relationRow2553 rho) :
    rho 33827 = seg34Q4Il91 rho * (rho 33826) := by
  unfold Seg34.relationRow2553 at r2553
  rw [seg34Q4Step90IlLc rho] at r2553
  linear_combination -r2553

theorem seg34Q4Step90Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il90 rho = seg34Q4Il91 rho + (rho 33826) - (rho 33827) := by
  have hstate : seg34Q4Il90 rho = seg34Q4Il91 rho + seg34Q4IlAtom24 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom24
  ring

theorem seg34Q4Step90Pe (rho : Nat -> Seg34.F) (r2554 : Seg34.relationRow2554 rho) :
    seg34Q4Pe90 rho = seg34Q4Pe91 rho * rho 32854 := by
  unfold Seg34.relationRow2554 at r2554
  unfold seg34Q4Pe90 seg34Q4Pe91
  linear_combination -r2554

theorem seg34Q4Step90 (rho : Nat -> Seg34.F) (r2552 : Seg34.relationRow2552 rho) (r2553 : Seg34.relationRow2553 rho) (r2554 : Seg34.relationRow2554 rho) :
    seg34Q4Pe90 rho = seg34Q4Pe91 rho * rho 32854 ∧
    seg34Q4Il90 rho = seg34Q4Il91 rho + seg34Q4Pe91 rho * (1 - rho 32854) -
      seg34Q4Il91 rho * (seg34Q4Pe91 rho * (1 - rho 32854)) := by
  constructor
  · exact seg34Q4Step90Pe rho r2554
  · rw [seg34Q4Step90Acc rho, seg34Q4Step90L rho r2552, seg34Q4Step90IlMul rho r2553, seg34Q4Step90L rho r2552]

theorem seg34_q4_chunk90 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 91 (seg34Q4PeState rho 91) (seg34Q4IlState rho 91) := by
  have htail := seg34_q4_chunk89 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2552, r2553, r2554, _, _, _, _, _⟩
  have hsteps : ∀ n, 90 ≤ n → n < 91 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 90 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step90 rho r2552 r2553 r2554
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 90 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
