import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk98

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep99L (rho : Nat -> Seg45.F) (r2119 : Seg45.relationRow2119 rho) :
    rho 40350 = seg45RPe100 rho * (1 - rho 39819) := by
  unfold Seg45.relationRow2119 at r2119
  unfold seg45RPe100
  linear_combination -r2119

theorem seg45RStep99IlMul (rho : Nat -> Seg45.F) (r2120 : Seg45.relationRow2120 rho) :
    rho 40351 = seg45RIl100 rho * (rho 40350) := by
  unfold Seg45.relationRow2120 at r2120
  rw [seg45RStep99IlLc rho] at r2120
  linear_combination -r2120

theorem seg45RStep99Acc (rho : Nat -> Seg45.F) :
    seg45RIl99 rho = seg45RIl100 rho + (rho 40350) - (rho 40351) := by
  have hstate : seg45RIl99 rho = seg45RIl100 rho + seg45RIlAtom74 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom74
  ring

theorem seg45RStep99Pe (rho : Nat -> Seg45.F) (r2121 : Seg45.relationRow2121 rho) :
    seg45RPe99 rho = seg45RPe100 rho * rho 39819 := by
  unfold Seg45.relationRow2121 at r2121
  unfold seg45RPe99 seg45RPe100
  linear_combination -r2121

theorem seg45RStep99 (rho : Nat -> Seg45.F) (r2119 : Seg45.relationRow2119 rho) (r2120 : Seg45.relationRow2120 rho) (r2121 : Seg45.relationRow2121 rho) :
    seg45RPe99 rho = seg45RPe100 rho * rho 39819 ∧
    seg45RIl99 rho = seg45RIl100 rho + seg45RPe100 rho * (1 - rho 39819) -
      seg45RIl100 rho * (seg45RPe100 rho * (1 - rho 39819)) := by
  constructor
  · exact seg45RStep99Pe rho r2121
  · rw [seg45RStep99Acc rho, seg45RStep99L rho r2119, seg45RStep99IlMul rho r2120, seg45RStep99L rho r2119]

theorem seg45_r_chunk99 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 100 (seg45RPeState rho 100) (seg45RIlState rho 100) := by
  have htail := seg45_r_chunk98 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2119, r2120, r2121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 99 ≤ n → n < 100 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 99 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep99 rho r2119 r2120 r2121
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 99 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
