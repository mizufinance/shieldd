import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk138

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep139L (rho : Nat -> Seg45.F) (r2049 : Seg45.relationRow2049 rho) :
    rho 40280 = seg45RPe140 rho * (1 - rho 39859) := by
  unfold Seg45.relationRow2049 at r2049
  unfold seg45RPe140
  linear_combination -r2049

theorem seg45RStep139IlMul (rho : Nat -> Seg45.F) (r2050 : Seg45.relationRow2050 rho) :
    rho 40281 = seg45RIl140 rho * (rho 40280) := by
  unfold Seg45.relationRow2050 at r2050
  rw [seg45RStep139IlLc rho] at r2050
  linear_combination -r2050

theorem seg45RStep139Acc (rho : Nat -> Seg45.F) :
    seg45RIl139 rho = seg45RIl140 rho + (rho 40280) - (rho 40281) := by
  have hstate : seg45RIl139 rho = seg45RIl140 rho + seg45RIlAtom58 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom58
  ring

theorem seg45RStep139Pe (rho : Nat -> Seg45.F) (r2051 : Seg45.relationRow2051 rho) :
    seg45RPe139 rho = seg45RPe140 rho * rho 39859 := by
  unfold Seg45.relationRow2051 at r2051
  unfold seg45RPe139 seg45RPe140
  linear_combination -r2051

theorem seg45RStep139 (rho : Nat -> Seg45.F) (r2049 : Seg45.relationRow2049 rho) (r2050 : Seg45.relationRow2050 rho) (r2051 : Seg45.relationRow2051 rho) :
    seg45RPe139 rho = seg45RPe140 rho * rho 39859 ∧
    seg45RIl139 rho = seg45RIl140 rho + seg45RPe140 rho * (1 - rho 39859) -
      seg45RIl140 rho * (seg45RPe140 rho * (1 - rho 39859)) := by
  constructor
  · exact seg45RStep139Pe rho r2051
  · rw [seg45RStep139Acc rho, seg45RStep139L rho r2049, seg45RStep139IlMul rho r2050, seg45RStep139L rho r2049]

theorem seg45_r_chunk139 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 140 (seg45RPeState rho 140) (seg45RIlState rho 140) := by
  have htail := seg45_r_chunk138 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2049, r2050, r2051, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 139 ≤ n → n < 140 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 139 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep139 rho r2049 r2050 r2051
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 139 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
