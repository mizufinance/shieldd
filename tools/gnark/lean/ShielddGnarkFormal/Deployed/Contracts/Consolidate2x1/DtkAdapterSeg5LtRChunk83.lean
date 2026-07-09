import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk82

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep83L (rho : Nat -> Seg5.F) (r2153 : Seg5.relationRow2153 rho) :
    rho 1851 = seg5RPe84 rho * (1 - rho 1270) := by
  unfold Seg5.relationRow2153 at r2153
  unfold seg5RPe84
  linear_combination -r2153

theorem seg5RStep83IlMul (rho : Nat -> Seg5.F) (r2154 : Seg5.relationRow2154 rho) :
    rho 1852 = seg5RIl84 rho * (rho 1851) := by
  unfold Seg5.relationRow2154 at r2154
  rw [seg5RStep83IlLc rho] at r2154
  linear_combination -r2154

theorem seg5RStep83Acc (rho : Nat -> Seg5.F) :
    seg5RIl83 rho = seg5RIl84 rho + (rho 1851) - (rho 1852) := by
  have hstate : seg5RIl83 rho = seg5RIl84 rho + seg5RIlAtom83 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom83
  ring

theorem seg5RStep83Pe (rho : Nat -> Seg5.F) (r2155 : Seg5.relationRow2155 rho) :
    seg5RPe83 rho = seg5RPe84 rho * rho 1270 := by
  unfold Seg5.relationRow2155 at r2155
  unfold seg5RPe83 seg5RPe84
  linear_combination -r2155

theorem seg5RStep83 (rho : Nat -> Seg5.F) (r2153 : Seg5.relationRow2153 rho) (r2154 : Seg5.relationRow2154 rho) (r2155 : Seg5.relationRow2155 rho) :
    seg5RPe83 rho = seg5RPe84 rho * rho 1270 ∧
    seg5RIl83 rho = seg5RIl84 rho + seg5RPe84 rho * (1 - rho 1270) -
      seg5RIl84 rho * (seg5RPe84 rho * (1 - rho 1270)) := by
  constructor
  · exact seg5RStep83Pe rho r2155
  · rw [seg5RStep83Acc rho, seg5RStep83L rho r2153, seg5RStep83IlMul rho r2154, seg5RStep83L rho r2153]

theorem seg5_r_chunk83 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 84 (seg5RPeState rho 84) (seg5RIlState rho 84) := by
  have htail := seg5_r_chunk82 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2153, r2154, r2155, _, _, _, _⟩
  have hsteps : ∀ n, 83 ≤ n → n < 84 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 83 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep83 rho r2153 r2154 r2155
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 83 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
