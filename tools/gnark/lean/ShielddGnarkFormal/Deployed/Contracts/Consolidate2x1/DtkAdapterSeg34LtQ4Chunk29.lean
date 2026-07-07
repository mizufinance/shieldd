import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk28

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step29L (rho : Nat -> Seg34.F) (r2667 : Seg34.relationRow2667 rho) :
    rho 33941 = seg34Q4Pe30 rho * (1 - rho 32793) := by
  unfold Seg34.relationRow2667 at r2667
  unfold seg34Q4Pe30
  linear_combination -r2667

theorem seg34Q4Step29IlMul (rho : Nat -> Seg34.F) (r2668 : Seg34.relationRow2668 rho) :
    rho 33942 = seg34Q4Il30 rho * (rho 33941) := by
  unfold Seg34.relationRow2668 at r2668
  rw [seg34Q4Step29IlLc rho] at r2668
  linear_combination -r2668

theorem seg34Q4Step29Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il29 rho = seg34Q4Il30 rho + (rho 33941) - (rho 33942) := by
  have hstate : seg34Q4Il29 rho = seg34Q4Il30 rho + seg34Q4IlAtom53 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom53
  ring

theorem seg34Q4Step29Pe (rho : Nat -> Seg34.F) (r2669 : Seg34.relationRow2669 rho) :
    seg34Q4Pe29 rho = seg34Q4Pe30 rho * rho 32793 := by
  unfold Seg34.relationRow2669 at r2669
  unfold seg34Q4Pe29 seg34Q4Pe30
  linear_combination -r2669

theorem seg34Q4Step29 (rho : Nat -> Seg34.F) (r2667 : Seg34.relationRow2667 rho) (r2668 : Seg34.relationRow2668 rho) (r2669 : Seg34.relationRow2669 rho) :
    seg34Q4Pe29 rho = seg34Q4Pe30 rho * rho 32793 ∧
    seg34Q4Il29 rho = seg34Q4Il30 rho + seg34Q4Pe30 rho * (1 - rho 32793) -
      seg34Q4Il30 rho * (seg34Q4Pe30 rho * (1 - rho 32793)) := by
  constructor
  · exact seg34Q4Step29Pe rho r2669
  · rw [seg34Q4Step29Acc rho, seg34Q4Step29L rho r2667, seg34Q4Step29IlMul rho r2668, seg34Q4Step29L rho r2667]

theorem seg34_q4_chunk29 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 30 (seg34Q4PeState rho 30) (seg34Q4IlState rho 30) := by
  have htail := seg34_q4_chunk28 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2667, r2668, r2669, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 29 ≤ n → n < 30 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 29 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step29 rho r2667 r2668 r2669
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 29 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
