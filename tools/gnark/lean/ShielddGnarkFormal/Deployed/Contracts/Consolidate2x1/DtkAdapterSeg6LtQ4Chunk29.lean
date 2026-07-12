import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtQ4Chunk28

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6Q4Step29L (rho : Nat -> Seg6.F) (r2667 : Seg6.relationRow2667 rho) :
    rho 3067 = seg6Q4Pe30 rho * (1 - rho 1919) := by
  unfold Seg6.relationRow2667 at r2667
  unfold seg6Q4Pe30
  linear_combination -r2667

theorem seg6Q4Step29IlMul (rho : Nat -> Seg6.F) (r2668 : Seg6.relationRow2668 rho) :
    rho 3068 = seg6Q4Il30 rho * (rho 3067) := by
  unfold Seg6.relationRow2668 at r2668
  rw [seg6Q4Step29IlLc rho] at r2668
  linear_combination -r2668

theorem seg6Q4Step29Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il29 rho = seg6Q4Il30 rho + (rho 3067) - (rho 3068) := by
  have hstate : seg6Q4Il29 rho = seg6Q4Il30 rho + seg6Q4IlAtom53 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom53
  ring

theorem seg6Q4Step29Pe (rho : Nat -> Seg6.F) (r2669 : Seg6.relationRow2669 rho) :
    seg6Q4Pe29 rho = seg6Q4Pe30 rho * rho 1919 := by
  unfold Seg6.relationRow2669 at r2669
  unfold seg6Q4Pe29 seg6Q4Pe30
  linear_combination -r2669

theorem seg6Q4Step29 (rho : Nat -> Seg6.F) (r2667 : Seg6.relationRow2667 rho) (r2668 : Seg6.relationRow2668 rho) (r2669 : Seg6.relationRow2669 rho) :
    seg6Q4Pe29 rho = seg6Q4Pe30 rho * rho 1919 ∧
    seg6Q4Il29 rho = seg6Q4Il30 rho + seg6Q4Pe30 rho * (1 - rho 1919) -
      seg6Q4Il30 rho * (seg6Q4Pe30 rho * (1 - rho 1919)) := by
  constructor
  · exact seg6Q4Step29Pe rho r2669
  · rw [seg6Q4Step29Acc rho, seg6Q4Step29L rho r2667, seg6Q4Step29IlMul rho r2668, seg6Q4Step29L rho r2667]

theorem seg6_q4_chunk29 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 30 (seg6Q4PeState rho 30) (seg6Q4IlState rho 30) := by
  have htail := seg6_q4_chunk28 rho h k hk
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
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2667, r2668, r2669, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 29 ≤ n → n < 30 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 29 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step29 rho r2667 r2668 r2669
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 29 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
