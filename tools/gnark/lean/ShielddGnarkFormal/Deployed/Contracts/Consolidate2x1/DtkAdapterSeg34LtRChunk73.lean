import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk72

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep73L (rho : Nat -> Seg34.F) (r2171 : Seg34.relationRow2171 rho) :
    rho 33446 = seg34RPe74 rho * (1 - rho 32837) := by
  unfold Seg34.relationRow2171 at r2171
  unfold seg34RPe74
  linear_combination -r2171

theorem seg34RStep73IlMul (rho : Nat -> Seg34.F) (r2172 : Seg34.relationRow2172 rho) :
    rho 33447 = seg34RIl74 rho * (rho 33446) := by
  unfold Seg34.relationRow2172 at r2172
  rw [seg34RStep73IlLc rho] at r2172
  linear_combination -r2172

theorem seg34RStep73Acc (rho : Nat -> Seg34.F) :
    seg34RIl73 rho = seg34RIl74 rho + (rho 33446) - (rho 33447) := by
  have hstate : seg34RIl73 rho = seg34RIl74 rho + seg34RIlAtom88 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom88
  ring

theorem seg34RStep73Pe (rho : Nat -> Seg34.F) (r2173 : Seg34.relationRow2173 rho) :
    seg34RPe73 rho = seg34RPe74 rho * rho 32837 := by
  unfold Seg34.relationRow2173 at r2173
  unfold seg34RPe73 seg34RPe74
  linear_combination -r2173

theorem seg34RStep73 (rho : Nat -> Seg34.F) (r2171 : Seg34.relationRow2171 rho) (r2172 : Seg34.relationRow2172 rho) (r2173 : Seg34.relationRow2173 rho) :
    seg34RPe73 rho = seg34RPe74 rho * rho 32837 ∧
    seg34RIl73 rho = seg34RIl74 rho + seg34RPe74 rho * (1 - rho 32837) -
      seg34RIl74 rho * (seg34RPe74 rho * (1 - rho 32837)) := by
  constructor
  · exact seg34RStep73Pe rho r2173
  · rw [seg34RStep73Acc rho, seg34RStep73L rho r2171, seg34RStep73IlMul rho r2172, seg34RStep73L rho r2171]

theorem seg34_r_chunk73 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 74 (seg34RPeState rho 74) (seg34RIlState rho 74) := by
  have htail := seg34_r_chunk72 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2171, r2172, r2173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 73 ≤ n → n < 74 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 73 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep73 rho r2171 r2172 r2173
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 73 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
