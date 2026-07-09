import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk100

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep101L (rho : Nat -> Seg5.F) (r2115 : Seg5.relationRow2115 rho) :
    rho 1813 = seg5RPe102 rho * (1 - rho 1288) := by
  unfold Seg5.relationRow2115 at r2115
  unfold seg5RPe102
  linear_combination -r2115

theorem seg5RStep101IlMul (rho : Nat -> Seg5.F) (r2116 : Seg5.relationRow2116 rho) :
    rho 1814 = seg5RIl102 rho * (rho 1813) := by
  unfold Seg5.relationRow2116 at r2116
  rw [seg5RStep101IlLc rho] at r2116
  linear_combination -r2116

theorem seg5RStep101Acc (rho : Nat -> Seg5.F) :
    seg5RIl101 rho = seg5RIl102 rho + (rho 1813) - (rho 1814) := by
  have hstate : seg5RIl101 rho = seg5RIl102 rho + seg5RIlAtom73 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom73
  ring

theorem seg5RStep101Pe (rho : Nat -> Seg5.F) (r2117 : Seg5.relationRow2117 rho) :
    seg5RPe101 rho = seg5RPe102 rho * rho 1288 := by
  unfold Seg5.relationRow2117 at r2117
  unfold seg5RPe101 seg5RPe102
  linear_combination -r2117

theorem seg5RStep101 (rho : Nat -> Seg5.F) (r2115 : Seg5.relationRow2115 rho) (r2116 : Seg5.relationRow2116 rho) (r2117 : Seg5.relationRow2117 rho) :
    seg5RPe101 rho = seg5RPe102 rho * rho 1288 ∧
    seg5RIl101 rho = seg5RIl102 rho + seg5RPe102 rho * (1 - rho 1288) -
      seg5RIl102 rho * (seg5RPe102 rho * (1 - rho 1288)) := by
  constructor
  · exact seg5RStep101Pe rho r2117
  · rw [seg5RStep101Acc rho, seg5RStep101L rho r2115, seg5RStep101IlMul rho r2116, seg5RStep101L rho r2115]

theorem seg5_r_chunk101 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 102 (seg5RPeState rho 102) (seg5RIlState rho 102) := by
  have htail := seg5_r_chunk100 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2115, r2116, r2117, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 101 ≤ n → n < 102 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 101 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep101 rho r2115 r2116 r2117
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 101 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
