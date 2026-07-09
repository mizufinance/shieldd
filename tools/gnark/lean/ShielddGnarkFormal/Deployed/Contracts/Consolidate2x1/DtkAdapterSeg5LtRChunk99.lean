import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk98

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep99L (rho : Nat -> Seg5.F) (r2119 : Seg5.relationRow2119 rho) :
    rho 1817 = seg5RPe100 rho * (1 - rho 1286) := by
  unfold Seg5.relationRow2119 at r2119
  unfold seg5RPe100
  linear_combination -r2119

theorem seg5RStep99IlMul (rho : Nat -> Seg5.F) (r2120 : Seg5.relationRow2120 rho) :
    rho 1818 = seg5RIl100 rho * (rho 1817) := by
  unfold Seg5.relationRow2120 at r2120
  rw [seg5RStep99IlLc rho] at r2120
  linear_combination -r2120

theorem seg5RStep99Acc (rho : Nat -> Seg5.F) :
    seg5RIl99 rho = seg5RIl100 rho + (rho 1817) - (rho 1818) := by
  have hstate : seg5RIl99 rho = seg5RIl100 rho + seg5RIlAtom74 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom74
  ring

theorem seg5RStep99Pe (rho : Nat -> Seg5.F) (r2121 : Seg5.relationRow2121 rho) :
    seg5RPe99 rho = seg5RPe100 rho * rho 1286 := by
  unfold Seg5.relationRow2121 at r2121
  unfold seg5RPe99 seg5RPe100
  linear_combination -r2121

theorem seg5RStep99 (rho : Nat -> Seg5.F) (r2119 : Seg5.relationRow2119 rho) (r2120 : Seg5.relationRow2120 rho) (r2121 : Seg5.relationRow2121 rho) :
    seg5RPe99 rho = seg5RPe100 rho * rho 1286 ∧
    seg5RIl99 rho = seg5RIl100 rho + seg5RPe100 rho * (1 - rho 1286) -
      seg5RIl100 rho * (seg5RPe100 rho * (1 - rho 1286)) := by
  constructor
  · exact seg5RStep99Pe rho r2121
  · rw [seg5RStep99Acc rho, seg5RStep99L rho r2119, seg5RStep99IlMul rho r2120, seg5RStep99L rho r2119]

theorem seg5_r_chunk99 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 100 (seg5RPeState rho 100) (seg5RIlState rho 100) := by
  have htail := seg5_r_chunk98 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2119, r2120, r2121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 99 ≤ n → n < 100 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 99 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep99 rho r2119 r2120 r2121
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 99 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
