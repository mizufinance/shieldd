import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk103

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep104L (rho : Nat -> Seg5.F) (r2108 : Seg5.relationRow2108 rho) :
    rho 1806 = seg5RPe105 rho * (1 - rho 1291) := by
  unfold Seg5.relationRow2108 at r2108
  unfold seg5RPe105
  linear_combination -r2108

theorem seg5RStep104IlMul (rho : Nat -> Seg5.F) (r2109 : Seg5.relationRow2109 rho) :
    rho 1807 = seg5RIl105 rho * (rho 1806) := by
  unfold Seg5.relationRow2109 at r2109
  rw [seg5RStep104IlLc rho] at r2109
  linear_combination -r2109

theorem seg5RStep104Acc (rho : Nat -> Seg5.F) :
    seg5RIl104 rho = seg5RIl105 rho + (rho 1806) - (rho 1807) := by
  have hstate : seg5RIl104 rho = seg5RIl105 rho + seg5RIlAtom71 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom71
  ring

theorem seg5RStep104Pe (rho : Nat -> Seg5.F) (r2110 : Seg5.relationRow2110 rho) :
    seg5RPe104 rho = seg5RPe105 rho * rho 1291 := by
  unfold Seg5.relationRow2110 at r2110
  unfold seg5RPe104 seg5RPe105
  linear_combination -r2110

theorem seg5RStep104 (rho : Nat -> Seg5.F) (r2108 : Seg5.relationRow2108 rho) (r2109 : Seg5.relationRow2109 rho) (r2110 : Seg5.relationRow2110 rho) :
    seg5RPe104 rho = seg5RPe105 rho * rho 1291 ∧
    seg5RIl104 rho = seg5RIl105 rho + seg5RPe105 rho * (1 - rho 1291) -
      seg5RIl105 rho * (seg5RPe105 rho * (1 - rho 1291)) := by
  constructor
  · exact seg5RStep104Pe rho r2110
  · rw [seg5RStep104Acc rho, seg5RStep104L rho r2108, seg5RStep104IlMul rho r2109, seg5RStep104L rho r2108]

theorem seg5_r_chunk104 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 105 (seg5RPeState rho 105) (seg5RIlState rho 105) := by
  have htail := seg5_r_chunk103 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2108, r2109, r2110, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 104 ≤ n → n < 105 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 104 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep104 rho r2108 r2109 r2110
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 104 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
