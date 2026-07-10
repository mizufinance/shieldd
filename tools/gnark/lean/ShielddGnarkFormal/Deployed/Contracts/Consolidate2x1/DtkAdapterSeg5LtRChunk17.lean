import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk16

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep17L (rho : Nat -> Seg5.F) (r2297 : Seg5.relationRow2297 rho) :
    rho 1995 = seg5RPe18 rho * (1 - rho 1204) := by
  unfold Seg5.relationRow2297 at r2297
  unfold seg5RPe18
  linear_combination -r2297

theorem seg5RStep17IlMul (rho : Nat -> Seg5.F) (r2298 : Seg5.relationRow2298 rho) :
    rho 1996 = seg5RIl18 rho * (rho 1995) := by
  unfold Seg5.relationRow2298 at r2298
  rw [seg5RStep17IlLc rho] at r2298
  linear_combination -r2298

theorem seg5RStep17Acc (rho : Nat -> Seg5.F) :
    seg5RIl17 rho = seg5RIl18 rho + (rho 1995) - (rho 1996) := by
  have hstate : seg5RIl17 rho = seg5RIl18 rho + seg5RIlAtom125 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom125
  ring

theorem seg5RStep17Pe (rho : Nat -> Seg5.F) (r2299 : Seg5.relationRow2299 rho) :
    seg5RPe17 rho = seg5RPe18 rho * rho 1204 := by
  unfold Seg5.relationRow2299 at r2299
  unfold seg5RPe17 seg5RPe18
  linear_combination -r2299

theorem seg5RStep17 (rho : Nat -> Seg5.F) (r2297 : Seg5.relationRow2297 rho) (r2298 : Seg5.relationRow2298 rho) (r2299 : Seg5.relationRow2299 rho) :
    seg5RPe17 rho = seg5RPe18 rho * rho 1204 ∧
    seg5RIl17 rho = seg5RIl18 rho + seg5RPe18 rho * (1 - rho 1204) -
      seg5RIl18 rho * (seg5RPe18 rho * (1 - rho 1204)) := by
  constructor
  · exact seg5RStep17Pe rho r2299
  · rw [seg5RStep17Acc rho, seg5RStep17L rho r2297, seg5RStep17IlMul rho r2298, seg5RStep17L rho r2297]

theorem seg5_r_chunk17 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 18 (seg5RPeState rho 18) (seg5RIlState rho 18) := by
  have htail := seg5_r_chunk16 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2297, r2298, r2299, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 17 ≤ n → n < 18 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 17 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep17 rho r2297 r2298 r2299
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 17 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
