import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk103

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep104L (rho : Nat -> Seg45.F) (r2108 : Seg45.relationRow2108 rho) :
    rho 40339 = seg45RPe105 rho * (1 - rho 39824) := by
  unfold Seg45.relationRow2108 at r2108
  unfold seg45RPe105
  linear_combination -r2108

theorem seg45RStep104IlMul (rho : Nat -> Seg45.F) (r2109 : Seg45.relationRow2109 rho) :
    rho 40340 = seg45RIl105 rho * (rho 40339) := by
  unfold Seg45.relationRow2109 at r2109
  rw [seg45RStep104IlLc rho] at r2109
  linear_combination -r2109

theorem seg45RStep104Acc (rho : Nat -> Seg45.F) :
    seg45RIl104 rho = seg45RIl105 rho + (rho 40339) - (rho 40340) := by
  have hstate : seg45RIl104 rho = seg45RIl105 rho + seg45RIlAtom71 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom71
  ring

theorem seg45RStep104Pe (rho : Nat -> Seg45.F) (r2110 : Seg45.relationRow2110 rho) :
    seg45RPe104 rho = seg45RPe105 rho * rho 39824 := by
  unfold Seg45.relationRow2110 at r2110
  unfold seg45RPe104 seg45RPe105
  linear_combination -r2110

theorem seg45RStep104 (rho : Nat -> Seg45.F) (r2108 : Seg45.relationRow2108 rho) (r2109 : Seg45.relationRow2109 rho) (r2110 : Seg45.relationRow2110 rho) :
    seg45RPe104 rho = seg45RPe105 rho * rho 39824 ∧
    seg45RIl104 rho = seg45RIl105 rho + seg45RPe105 rho * (1 - rho 39824) -
      seg45RIl105 rho * (seg45RPe105 rho * (1 - rho 39824)) := by
  constructor
  · exact seg45RStep104Pe rho r2110
  · rw [seg45RStep104Acc rho, seg45RStep104L rho r2108, seg45RStep104IlMul rho r2109, seg45RStep104L rho r2108]

theorem seg45_r_chunk104 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 105 (seg45RPeState rho 105) (seg45RIlState rho 105) := by
  have htail := seg45_r_chunk103 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2108, r2109, r2110, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 104 ≤ n → n < 105 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 104 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep104 rho r2108 r2109 r2110
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 104 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
