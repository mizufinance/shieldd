import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk103

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep104L (rho : Nat -> Seg34.F) (r2108 : Seg34.relationRow2108 rho) :
    rho 33383 = seg34RPe105 rho * (1 - rho 32868) := by
  unfold Seg34.relationRow2108 at r2108
  unfold seg34RPe105
  linear_combination -r2108

theorem seg34RStep104IlMul (rho : Nat -> Seg34.F) (r2109 : Seg34.relationRow2109 rho) :
    rho 33384 = seg34RIl105 rho * (rho 33383) := by
  unfold Seg34.relationRow2109 at r2109
  rw [seg34RStep104IlLc rho] at r2109
  linear_combination -r2109

theorem seg34RStep104Acc (rho : Nat -> Seg34.F) :
    seg34RIl104 rho = seg34RIl105 rho + (rho 33383) - (rho 33384) := by
  have hstate : seg34RIl104 rho = seg34RIl105 rho + seg34RIlAtom71 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom71
  ring

theorem seg34RStep104Pe (rho : Nat -> Seg34.F) (r2110 : Seg34.relationRow2110 rho) :
    seg34RPe104 rho = seg34RPe105 rho * rho 32868 := by
  unfold Seg34.relationRow2110 at r2110
  unfold seg34RPe104 seg34RPe105
  linear_combination -r2110

theorem seg34RStep104 (rho : Nat -> Seg34.F) (r2108 : Seg34.relationRow2108 rho) (r2109 : Seg34.relationRow2109 rho) (r2110 : Seg34.relationRow2110 rho) :
    seg34RPe104 rho = seg34RPe105 rho * rho 32868 ∧
    seg34RIl104 rho = seg34RIl105 rho + seg34RPe105 rho * (1 - rho 32868) -
      seg34RIl105 rho * (seg34RPe105 rho * (1 - rho 32868)) := by
  constructor
  · exact seg34RStep104Pe rho r2110
  · rw [seg34RStep104Acc rho, seg34RStep104L rho r2108, seg34RStep104IlMul rho r2109, seg34RStep104L rho r2108]

theorem seg34_r_chunk104 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 105 (seg34RPeState rho 105) (seg34RIlState rho 105) := by
  have htail := seg34_r_chunk103 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2108, r2109, r2110, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 104 ≤ n → n < 105 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 104 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep104 rho r2108 r2109 r2110
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 104 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
