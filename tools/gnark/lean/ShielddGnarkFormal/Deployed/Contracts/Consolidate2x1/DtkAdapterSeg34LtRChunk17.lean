import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk16

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep17L (rho : Nat -> Seg34.F) (r2297 : Seg34.relationRow2297 rho) :
    rho 33572 = seg34RPe18 rho * (1 - rho 32781) := by
  unfold Seg34.relationRow2297 at r2297
  unfold seg34RPe18
  linear_combination -r2297

theorem seg34RStep17IlMul (rho : Nat -> Seg34.F) (r2298 : Seg34.relationRow2298 rho) :
    rho 33573 = seg34RIl18 rho * (rho 33572) := by
  unfold Seg34.relationRow2298 at r2298
  rw [seg34RStep17IlLc rho] at r2298
  linear_combination -r2298

theorem seg34RStep17Acc (rho : Nat -> Seg34.F) :
    seg34RIl17 rho = seg34RIl18 rho + (rho 33572) - (rho 33573) := by
  have hstate : seg34RIl17 rho = seg34RIl18 rho + seg34RIlAtom125 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom125
  ring

theorem seg34RStep17Pe (rho : Nat -> Seg34.F) (r2299 : Seg34.relationRow2299 rho) :
    seg34RPe17 rho = seg34RPe18 rho * rho 32781 := by
  unfold Seg34.relationRow2299 at r2299
  unfold seg34RPe17 seg34RPe18
  linear_combination -r2299

theorem seg34RStep17 (rho : Nat -> Seg34.F) (r2297 : Seg34.relationRow2297 rho) (r2298 : Seg34.relationRow2298 rho) (r2299 : Seg34.relationRow2299 rho) :
    seg34RPe17 rho = seg34RPe18 rho * rho 32781 ∧
    seg34RIl17 rho = seg34RIl18 rho + seg34RPe18 rho * (1 - rho 32781) -
      seg34RIl18 rho * (seg34RPe18 rho * (1 - rho 32781)) := by
  constructor
  · exact seg34RStep17Pe rho r2299
  · rw [seg34RStep17Acc rho, seg34RStep17L rho r2297, seg34RStep17IlMul rho r2298, seg34RStep17L rho r2297]

theorem seg34_r_chunk17 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 18 (seg34RPeState rho 18) (seg34RIlState rho 18) := by
  have htail := seg34_r_chunk16 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2297, r2298, r2299, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 17 ≤ n → n < 18 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 17 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep17 rho r2297 r2298 r2299
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 17 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
