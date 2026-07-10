import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk138

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep139L (rho : Nat -> Seg5.F) (r2049 : Seg5.relationRow2049 rho) :
    rho 1747 = seg5RPe140 rho * (1 - rho 1326) := by
  unfold Seg5.relationRow2049 at r2049
  unfold seg5RPe140
  linear_combination -r2049

theorem seg5RStep139IlMul (rho : Nat -> Seg5.F) (r2050 : Seg5.relationRow2050 rho) :
    rho 1748 = seg5RIl140 rho * (rho 1747) := by
  unfold Seg5.relationRow2050 at r2050
  rw [seg5RStep139IlLc rho] at r2050
  linear_combination -r2050

theorem seg5RStep139Acc (rho : Nat -> Seg5.F) :
    seg5RIl139 rho = seg5RIl140 rho + (rho 1747) - (rho 1748) := by
  have hstate : seg5RIl139 rho = seg5RIl140 rho + seg5RIlAtom58 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom58
  ring

theorem seg5RStep139Pe (rho : Nat -> Seg5.F) (r2051 : Seg5.relationRow2051 rho) :
    seg5RPe139 rho = seg5RPe140 rho * rho 1326 := by
  unfold Seg5.relationRow2051 at r2051
  unfold seg5RPe139 seg5RPe140
  linear_combination -r2051

theorem seg5RStep139 (rho : Nat -> Seg5.F) (r2049 : Seg5.relationRow2049 rho) (r2050 : Seg5.relationRow2050 rho) (r2051 : Seg5.relationRow2051 rho) :
    seg5RPe139 rho = seg5RPe140 rho * rho 1326 ∧
    seg5RIl139 rho = seg5RIl140 rho + seg5RPe140 rho * (1 - rho 1326) -
      seg5RIl140 rho * (seg5RPe140 rho * (1 - rho 1326)) := by
  constructor
  · exact seg5RStep139Pe rho r2051
  · rw [seg5RStep139Acc rho, seg5RStep139L rho r2049, seg5RStep139IlMul rho r2050, seg5RStep139L rho r2049]

theorem seg5_r_chunk139 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 140 (seg5RPeState rho 140) (seg5RIlState rho 140) := by
  have htail := seg5_r_chunk138 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2049, r2050, r2051, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 139 ≤ n → n < 140 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 139 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep139 rho r2049 r2050 r2051
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 139 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
