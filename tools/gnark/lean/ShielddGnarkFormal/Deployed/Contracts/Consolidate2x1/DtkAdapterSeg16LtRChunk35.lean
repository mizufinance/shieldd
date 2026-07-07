import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk34

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep35L (rho : Nat -> Seg16.F) (r2259 : Seg16.relationRow2259 rho) :
    rho 14834 = seg16RPe36 rho * (1 - rho 14099) := by
  unfold Seg16.relationRow2259 at r2259
  unfold seg16RPe36
  linear_combination -r2259

theorem seg16RStep35IlMul (rho : Nat -> Seg16.F) (r2260 : Seg16.relationRow2260 rho) :
    rho 14835 = seg16RIl36 rho * (rho 14834) := by
  unfold Seg16.relationRow2260 at r2260
  rw [seg16RStep35IlLc rho] at r2260
  linear_combination -r2260

theorem seg16RStep35Acc (rho : Nat -> Seg16.F) :
    seg16RIl35 rho = seg16RIl36 rho + (rho 14834) - (rho 14835) := by
  have hstate : seg16RIl35 rho = seg16RIl36 rho + seg16RIlAtom114 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom114
  ring

theorem seg16RStep35Pe (rho : Nat -> Seg16.F) (r2261 : Seg16.relationRow2261 rho) :
    seg16RPe35 rho = seg16RPe36 rho * rho 14099 := by
  unfold Seg16.relationRow2261 at r2261
  unfold seg16RPe35 seg16RPe36
  linear_combination -r2261

theorem seg16RStep35 (rho : Nat -> Seg16.F) (r2259 : Seg16.relationRow2259 rho) (r2260 : Seg16.relationRow2260 rho) (r2261 : Seg16.relationRow2261 rho) :
    seg16RPe35 rho = seg16RPe36 rho * rho 14099 ∧
    seg16RIl35 rho = seg16RIl36 rho + seg16RPe36 rho * (1 - rho 14099) -
      seg16RIl36 rho * (seg16RPe36 rho * (1 - rho 14099)) := by
  constructor
  · exact seg16RStep35Pe rho r2261
  · rw [seg16RStep35Acc rho, seg16RStep35L rho r2259, seg16RStep35IlMul rho r2260, seg16RStep35L rho r2259]

theorem seg16_r_chunk35 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 36 (seg16RPeState rho 36) (seg16RIlState rho 36) := by
  have htail := seg16_r_chunk34 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2259, r2260, r2261, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 35 ≤ n → n < 36 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 35 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep35 rho r2259 r2260 r2261
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 35 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
