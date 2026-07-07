import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk89

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep90L (rho : Nat -> Seg45.F) (r2140 : Seg45.relationRow2140 rho) :
    rho 40371 = seg45RPe91 rho * (1 - rho 39810) := by
  unfold Seg45.relationRow2140 at r2140
  unfold seg45RPe91
  linear_combination -r2140

theorem seg45RStep90IlMul (rho : Nat -> Seg45.F) (r2141 : Seg45.relationRow2141 rho) :
    rho 40372 = seg45RIl91 rho * (rho 40371) := by
  unfold Seg45.relationRow2141 at r2141
  rw [seg45RStep90IlLc rho] at r2141
  linear_combination -r2141

theorem seg45RStep90Acc (rho : Nat -> Seg45.F) :
    seg45RIl90 rho = seg45RIl91 rho + (rho 40371) - (rho 40372) := by
  have hstate : seg45RIl90 rho = seg45RIl91 rho + seg45RIlAtom80 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom80
  ring

theorem seg45RStep90Pe (rho : Nat -> Seg45.F) (r2142 : Seg45.relationRow2142 rho) :
    seg45RPe90 rho = seg45RPe91 rho * rho 39810 := by
  unfold Seg45.relationRow2142 at r2142
  unfold seg45RPe90 seg45RPe91
  linear_combination -r2142

theorem seg45RStep90 (rho : Nat -> Seg45.F) (r2140 : Seg45.relationRow2140 rho) (r2141 : Seg45.relationRow2141 rho) (r2142 : Seg45.relationRow2142 rho) :
    seg45RPe90 rho = seg45RPe91 rho * rho 39810 ∧
    seg45RIl90 rho = seg45RIl91 rho + seg45RPe91 rho * (1 - rho 39810) -
      seg45RIl91 rho * (seg45RPe91 rho * (1 - rho 39810)) := by
  constructor
  · exact seg45RStep90Pe rho r2142
  · rw [seg45RStep90Acc rho, seg45RStep90L rho r2140, seg45RStep90IlMul rho r2141, seg45RStep90L rho r2140]

theorem seg45_r_chunk90 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 91 (seg45RPeState rho 91) (seg45RIlState rho 91) := by
  have htail := seg45_r_chunk89 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2140, r2141, r2142, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 90 ≤ n → n < 91 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 90 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep90 rho r2140 r2141 r2142
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 90 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
