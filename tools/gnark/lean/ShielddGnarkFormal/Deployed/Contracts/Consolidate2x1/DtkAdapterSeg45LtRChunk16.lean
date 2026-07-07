import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep16L (rho : Nat -> Seg45.F) (r2300 : Seg45.relationRow2300 rho) :
    rho 40531 = seg45RPe17 rho * (1 - rho 39736) := by
  unfold Seg45.relationRow2300 at r2300
  unfold seg45RPe17
  linear_combination -r2300

theorem seg45RStep16IlMul (rho : Nat -> Seg45.F) (r2301 : Seg45.relationRow2301 rho) :
    rho 40532 = seg45RIl17 rho * (rho 40531) := by
  unfold Seg45.relationRow2301 at r2301
  rw [seg45RStep16IlLc rho] at r2301
  linear_combination -r2301

theorem seg45RStep16Acc (rho : Nat -> Seg45.F) :
    seg45RIl16 rho = seg45RIl17 rho + (rho 40531) - (rho 40532) := by
  have hstate : seg45RIl16 rho = seg45RIl17 rho + seg45RIlAtom126 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom126
  ring

theorem seg45RStep16Pe (rho : Nat -> Seg45.F) (r2302 : Seg45.relationRow2302 rho) :
    seg45RPe16 rho = seg45RPe17 rho * rho 39736 := by
  unfold Seg45.relationRow2302 at r2302
  unfold seg45RPe16 seg45RPe17
  linear_combination -r2302

theorem seg45RStep16 (rho : Nat -> Seg45.F) (r2300 : Seg45.relationRow2300 rho) (r2301 : Seg45.relationRow2301 rho) (r2302 : Seg45.relationRow2302 rho) :
    seg45RPe16 rho = seg45RPe17 rho * rho 39736 ∧
    seg45RIl16 rho = seg45RIl17 rho + seg45RPe17 rho * (1 - rho 39736) -
      seg45RIl17 rho * (seg45RPe17 rho * (1 - rho 39736)) := by
  constructor
  · exact seg45RStep16Pe rho r2302
  · rw [seg45RStep16Acc rho, seg45RStep16L rho r2300, seg45RStep16IlMul rho r2301, seg45RStep16L rho r2300]

theorem seg45_r_chunk16 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 17 (seg45RPeState rho 17) (seg45RIlState rho 17) := by
  have htail := seg45_r_chunk15 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2300, r2301, r2302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 16 ≤ n → n < 17 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 16 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep16 rho r2300 r2301 r2302
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 16 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
