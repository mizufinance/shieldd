import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk50

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep51L (rho : Nat -> Seg34.F) (r2223 : Seg34.relationRow2223 rho) :
    rho 33498 = seg34RPe52 rho * (1 - rho 32815) := by
  unfold Seg34.relationRow2223 at r2223
  unfold seg34RPe52
  linear_combination -r2223

theorem seg34RStep51IlMul (rho : Nat -> Seg34.F) (r2224 : Seg34.relationRow2224 rho) :
    rho 33499 = seg34RIl52 rho * (rho 33498) := by
  unfold Seg34.relationRow2224 at r2224
  rw [seg34RStep51IlLc rho] at r2224
  linear_combination -r2224

theorem seg34RStep51Acc (rho : Nat -> Seg34.F) :
    seg34RIl51 rho = seg34RIl52 rho + (rho 33498) - (rho 33499) := by
  have hstate : seg34RIl51 rho = seg34RIl52 rho + seg34RIlAtom104 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom104
  ring

theorem seg34RStep51Pe (rho : Nat -> Seg34.F) (r2225 : Seg34.relationRow2225 rho) :
    seg34RPe51 rho = seg34RPe52 rho * rho 32815 := by
  unfold Seg34.relationRow2225 at r2225
  unfold seg34RPe51 seg34RPe52
  linear_combination -r2225

theorem seg34RStep51 (rho : Nat -> Seg34.F) (r2223 : Seg34.relationRow2223 rho) (r2224 : Seg34.relationRow2224 rho) (r2225 : Seg34.relationRow2225 rho) :
    seg34RPe51 rho = seg34RPe52 rho * rho 32815 ∧
    seg34RIl51 rho = seg34RIl52 rho + seg34RPe52 rho * (1 - rho 32815) -
      seg34RIl52 rho * (seg34RPe52 rho * (1 - rho 32815)) := by
  constructor
  · exact seg34RStep51Pe rho r2225
  · rw [seg34RStep51Acc rho, seg34RStep51L rho r2223, seg34RStep51IlMul rho r2224, seg34RStep51L rho r2223]

theorem seg34_r_chunk51 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 52 (seg34RPeState rho 52) (seg34RIlState rho 52) := by
  have htail := seg34_r_chunk50 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2223, r2224, r2225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 51 ≤ n → n < 52 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 51 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep51 rho r2223 r2224 r2225
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 51 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
