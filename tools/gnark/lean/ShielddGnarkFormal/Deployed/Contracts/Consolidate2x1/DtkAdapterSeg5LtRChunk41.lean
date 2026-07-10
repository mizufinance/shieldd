import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk40

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep41L (rho : Nat -> Seg5.F) (r2247 : Seg5.relationRow2247 rho) :
    rho 1945 = seg5RPe42 rho * (1 - rho 1228) := by
  unfold Seg5.relationRow2247 at r2247
  unfold seg5RPe42
  linear_combination -r2247

theorem seg5RStep41IlMul (rho : Nat -> Seg5.F) (r2248 : Seg5.relationRow2248 rho) :
    rho 1946 = seg5RIl42 rho * (rho 1945) := by
  unfold Seg5.relationRow2248 at r2248
  rw [seg5RStep41IlLc rho] at r2248
  linear_combination -r2248

theorem seg5RStep41Acc (rho : Nat -> Seg5.F) :
    seg5RIl41 rho = seg5RIl42 rho + (rho 1945) - (rho 1946) := by
  have hstate : seg5RIl41 rho = seg5RIl42 rho + seg5RIlAtom111 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom111
  ring

theorem seg5RStep41Pe (rho : Nat -> Seg5.F) (r2249 : Seg5.relationRow2249 rho) :
    seg5RPe41 rho = seg5RPe42 rho * rho 1228 := by
  unfold Seg5.relationRow2249 at r2249
  unfold seg5RPe41 seg5RPe42
  linear_combination -r2249

theorem seg5RStep41 (rho : Nat -> Seg5.F) (r2247 : Seg5.relationRow2247 rho) (r2248 : Seg5.relationRow2248 rho) (r2249 : Seg5.relationRow2249 rho) :
    seg5RPe41 rho = seg5RPe42 rho * rho 1228 ∧
    seg5RIl41 rho = seg5RIl42 rho + seg5RPe42 rho * (1 - rho 1228) -
      seg5RIl42 rho * (seg5RPe42 rho * (1 - rho 1228)) := by
  constructor
  · exact seg5RStep41Pe rho r2249
  · rw [seg5RStep41Acc rho, seg5RStep41L rho r2247, seg5RStep41IlMul rho r2248, seg5RStep41L rho r2247]

theorem seg5_r_chunk41 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 42 (seg5RPeState rho 42) (seg5RIlState rho 42) := by
  have htail := seg5_r_chunk40 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, r2247, r2248, r2249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 41 ≤ n → n < 42 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 41 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep41 rho r2247 r2248 r2249
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 41 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
