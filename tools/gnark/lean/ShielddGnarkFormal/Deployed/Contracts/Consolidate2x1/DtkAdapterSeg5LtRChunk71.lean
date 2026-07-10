import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk70

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep71L (rho : Nat -> Seg5.F) (r2175 : Seg5.relationRow2175 rho) :
    rho 1873 = seg5RPe72 rho * (1 - rho 1258) := by
  unfold Seg5.relationRow2175 at r2175
  unfold seg5RPe72
  linear_combination -r2175

theorem seg5RStep71IlMul (rho : Nat -> Seg5.F) (r2176 : Seg5.relationRow2176 rho) :
    rho 1874 = seg5RIl72 rho * (rho 1873) := by
  unfold Seg5.relationRow2176 at r2176
  rw [seg5RStep71IlLc rho] at r2176
  linear_combination -r2176

theorem seg5RStep71Acc (rho : Nat -> Seg5.F) :
    seg5RIl71 rho = seg5RIl72 rho + (rho 1873) - (rho 1874) := by
  have hstate : seg5RIl71 rho = seg5RIl72 rho + seg5RIlAtom89 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom89
  ring

theorem seg5RStep71Pe (rho : Nat -> Seg5.F) (r2177 : Seg5.relationRow2177 rho) :
    seg5RPe71 rho = seg5RPe72 rho * rho 1258 := by
  unfold Seg5.relationRow2177 at r2177
  unfold seg5RPe71 seg5RPe72
  linear_combination -r2177

theorem seg5RStep71 (rho : Nat -> Seg5.F) (r2175 : Seg5.relationRow2175 rho) (r2176 : Seg5.relationRow2176 rho) (r2177 : Seg5.relationRow2177 rho) :
    seg5RPe71 rho = seg5RPe72 rho * rho 1258 ∧
    seg5RIl71 rho = seg5RIl72 rho + seg5RPe72 rho * (1 - rho 1258) -
      seg5RIl72 rho * (seg5RPe72 rho * (1 - rho 1258)) := by
  constructor
  · exact seg5RStep71Pe rho r2177
  · rw [seg5RStep71Acc rho, seg5RStep71L rho r2175, seg5RStep71IlMul rho r2176, seg5RStep71L rho r2175]

theorem seg5_r_chunk71 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 72 (seg5RPeState rho 72) (seg5RIlState rho 72) := by
  have htail := seg5_r_chunk70 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2175, r2176, r2177, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 71 ≤ n → n < 72 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 71 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep71 rho r2175 r2176 r2177
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 71 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
