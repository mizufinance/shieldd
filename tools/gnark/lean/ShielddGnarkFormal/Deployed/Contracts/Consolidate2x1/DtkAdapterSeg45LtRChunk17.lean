import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk16

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep17L (rho : Nat -> Seg45.F) (r2297 : Seg45.relationRow2297 rho) :
    rho 40528 = seg45RPe18 rho * (1 - rho 39737) := by
  unfold Seg45.relationRow2297 at r2297
  unfold seg45RPe18
  linear_combination -r2297

theorem seg45RStep17IlMul (rho : Nat -> Seg45.F) (r2298 : Seg45.relationRow2298 rho) :
    rho 40529 = seg45RIl18 rho * (rho 40528) := by
  unfold Seg45.relationRow2298 at r2298
  rw [seg45RStep17IlLc rho] at r2298
  linear_combination -r2298

theorem seg45RStep17Acc (rho : Nat -> Seg45.F) :
    seg45RIl17 rho = seg45RIl18 rho + (rho 40528) - (rho 40529) := by
  have hstate : seg45RIl17 rho = seg45RIl18 rho + seg45RIlAtom125 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom125
  ring

theorem seg45RStep17Pe (rho : Nat -> Seg45.F) (r2299 : Seg45.relationRow2299 rho) :
    seg45RPe17 rho = seg45RPe18 rho * rho 39737 := by
  unfold Seg45.relationRow2299 at r2299
  unfold seg45RPe17 seg45RPe18
  linear_combination -r2299

theorem seg45RStep17 (rho : Nat -> Seg45.F) (r2297 : Seg45.relationRow2297 rho) (r2298 : Seg45.relationRow2298 rho) (r2299 : Seg45.relationRow2299 rho) :
    seg45RPe17 rho = seg45RPe18 rho * rho 39737 ∧
    seg45RIl17 rho = seg45RIl18 rho + seg45RPe18 rho * (1 - rho 39737) -
      seg45RIl18 rho * (seg45RPe18 rho * (1 - rho 39737)) := by
  constructor
  · exact seg45RStep17Pe rho r2299
  · rw [seg45RStep17Acc rho, seg45RStep17L rho r2297, seg45RStep17IlMul rho r2298, seg45RStep17L rho r2297]

theorem seg45_r_chunk17 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 18 (seg45RPeState rho 18) (seg45RIlState rho 18) := by
  have htail := seg45_r_chunk16 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2297, r2298, r2299, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 17 ≤ n → n < 18 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 17 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep17 rho r2297 r2298 r2299
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 17 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
