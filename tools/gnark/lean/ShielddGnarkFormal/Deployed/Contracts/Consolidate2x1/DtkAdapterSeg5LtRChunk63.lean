import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk62

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep63L (rho : Nat -> Seg5.F) (r2197 : Seg5.relationRow2197 rho) :
    rho 1895 = seg5RPe64 rho * (1 - rho 1250) := by
  unfold Seg5.relationRow2197 at r2197
  unfold seg5RPe64
  linear_combination -r2197

theorem seg5RStep63IlMul (rho : Nat -> Seg5.F) (r2198 : Seg5.relationRow2198 rho) :
    rho 1896 = seg5RIl64 rho * (rho 1895) := by
  unfold Seg5.relationRow2198 at r2198
  rw [seg5RStep63IlLc rho] at r2198
  linear_combination -r2198

theorem seg5RStep63Acc (rho : Nat -> Seg5.F) :
    seg5RIl63 rho = seg5RIl64 rho + (rho 1895) - (rho 1896) := by
  have hstate : seg5RIl63 rho = seg5RIl64 rho + seg5RIlAtom96 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom96
  ring

theorem seg5RStep63Pe (rho : Nat -> Seg5.F) (r2199 : Seg5.relationRow2199 rho) :
    seg5RPe63 rho = seg5RPe64 rho * rho 1250 := by
  unfold Seg5.relationRow2199 at r2199
  unfold seg5RPe63 seg5RPe64
  linear_combination -r2199

theorem seg5RStep63 (rho : Nat -> Seg5.F) (r2197 : Seg5.relationRow2197 rho) (r2198 : Seg5.relationRow2198 rho) (r2199 : Seg5.relationRow2199 rho) :
    seg5RPe63 rho = seg5RPe64 rho * rho 1250 ∧
    seg5RIl63 rho = seg5RIl64 rho + seg5RPe64 rho * (1 - rho 1250) -
      seg5RIl64 rho * (seg5RPe64 rho * (1 - rho 1250)) := by
  constructor
  · exact seg5RStep63Pe rho r2199
  · rw [seg5RStep63Acc rho, seg5RStep63L rho r2197, seg5RStep63IlMul rho r2198, seg5RStep63L rho r2197]

theorem seg5_r_chunk63 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 64 (seg5RPeState rho 64) (seg5RIlState rho 64) := by
  have htail := seg5_r_chunk62 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2197, r2198, r2199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 63 ≤ n → n < 64 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 63 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep63 rho r2197 r2198 r2199
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 63 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
