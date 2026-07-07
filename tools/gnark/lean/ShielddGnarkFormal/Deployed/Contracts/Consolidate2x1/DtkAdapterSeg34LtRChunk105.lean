import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk104

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep105L (rho : Nat -> Seg34.F) (r2105 : Seg34.relationRow2105 rho) :
    rho 33380 = seg34RPe106 rho * (1 - rho 32869) := by
  unfold Seg34.relationRow2105 at r2105
  unfold seg34RPe106
  linear_combination -r2105

theorem seg34RStep105IlMul (rho : Nat -> Seg34.F) (r2106 : Seg34.relationRow2106 rho) :
    rho 33381 = seg34RIl106 rho * (rho 33380) := by
  unfold Seg34.relationRow2106 at r2106
  rw [seg34RStep105IlLc rho] at r2106
  linear_combination -r2106

theorem seg34RStep105Acc (rho : Nat -> Seg34.F) :
    seg34RIl105 rho = seg34RIl106 rho + (rho 33380) - (rho 33381) := by
  have hstate : seg34RIl105 rho = seg34RIl106 rho + seg34RIlAtom70 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom70
  ring

theorem seg34RStep105Pe (rho : Nat -> Seg34.F) (r2107 : Seg34.relationRow2107 rho) :
    seg34RPe105 rho = seg34RPe106 rho * rho 32869 := by
  unfold Seg34.relationRow2107 at r2107
  unfold seg34RPe105 seg34RPe106
  linear_combination -r2107

theorem seg34RStep105 (rho : Nat -> Seg34.F) (r2105 : Seg34.relationRow2105 rho) (r2106 : Seg34.relationRow2106 rho) (r2107 : Seg34.relationRow2107 rho) :
    seg34RPe105 rho = seg34RPe106 rho * rho 32869 ∧
    seg34RIl105 rho = seg34RIl106 rho + seg34RPe106 rho * (1 - rho 32869) -
      seg34RIl106 rho * (seg34RPe106 rho * (1 - rho 32869)) := by
  constructor
  · exact seg34RStep105Pe rho r2107
  · rw [seg34RStep105Acc rho, seg34RStep105L rho r2105, seg34RStep105IlMul rho r2106, seg34RStep105L rho r2105]

theorem seg34_r_chunk105 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 106 (seg34RPeState rho 106) (seg34RIlState rho 106) := by
  have htail := seg34_r_chunk104 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2105, r2106, r2107, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 105 ≤ n → n < 106 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 105 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep105 rho r2105 r2106 r2107
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 105 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
