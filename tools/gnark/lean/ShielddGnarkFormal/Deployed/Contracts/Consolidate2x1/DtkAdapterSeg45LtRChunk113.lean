import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk112

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep113L (rho : Nat -> Seg45.F) (r2089 : Seg45.relationRow2089 rho) :
    rho 40320 = seg45RPe114 rho * (1 - rho 39833) := by
  unfold Seg45.relationRow2089 at r2089
  unfold seg45RPe114
  linear_combination -r2089

theorem seg45RStep113IlMul (rho : Nat -> Seg45.F) (r2090 : Seg45.relationRow2090 rho) :
    rho 40321 = seg45RIl114 rho * (rho 40320) := by
  unfold Seg45.relationRow2090 at r2090
  rw [seg45RStep113IlLc rho] at r2090
  linear_combination -r2090

theorem seg45RStep113Acc (rho : Nat -> Seg45.F) :
    seg45RIl113 rho = seg45RIl114 rho + (rho 40320) - (rho 40321) := by
  have hstate : seg45RIl113 rho = seg45RIl114 rho + seg45RIlAtom65 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom65
  ring

theorem seg45RStep113Pe (rho : Nat -> Seg45.F) (r2091 : Seg45.relationRow2091 rho) :
    seg45RPe113 rho = seg45RPe114 rho * rho 39833 := by
  unfold Seg45.relationRow2091 at r2091
  unfold seg45RPe113 seg45RPe114
  linear_combination -r2091

theorem seg45RStep113 (rho : Nat -> Seg45.F) (r2089 : Seg45.relationRow2089 rho) (r2090 : Seg45.relationRow2090 rho) (r2091 : Seg45.relationRow2091 rho) :
    seg45RPe113 rho = seg45RPe114 rho * rho 39833 ∧
    seg45RIl113 rho = seg45RIl114 rho + seg45RPe114 rho * (1 - rho 39833) -
      seg45RIl114 rho * (seg45RPe114 rho * (1 - rho 39833)) := by
  constructor
  · exact seg45RStep113Pe rho r2091
  · rw [seg45RStep113Acc rho, seg45RStep113L rho r2089, seg45RStep113IlMul rho r2090, seg45RStep113L rho r2089]

theorem seg45_r_chunk113 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 114 (seg45RPeState rho 114) (seg45RIlState rho 114) := by
  have htail := seg45_r_chunk112 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, r2089, r2090, r2091, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 113 ≤ n → n < 114 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 113 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep113 rho r2089 r2090 r2091
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 113 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
