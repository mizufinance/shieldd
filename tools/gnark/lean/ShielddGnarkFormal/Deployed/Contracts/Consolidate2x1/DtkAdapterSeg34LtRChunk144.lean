import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk143

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep144L (rho : Nat -> Seg34.F) (r2036 : Seg34.relationRow2036 rho) :
    rho 33311 = seg34RPe145 rho * (1 - rho 32908) := by
  unfold Seg34.relationRow2036 at r2036
  unfold seg34RPe145
  linear_combination -r2036

theorem seg34RStep144IlMul (rho : Nat -> Seg34.F) (r2037 : Seg34.relationRow2037 rho) :
    rho 33312 = seg34RIl145 rho * (rho 33311) := by
  unfold Seg34.relationRow2037 at r2037
  rw [seg34RStep144IlLc rho] at r2037
  linear_combination -r2037

theorem seg34RStep144Acc (rho : Nat -> Seg34.F) :
    seg34RIl144 rho = seg34RIl145 rho + (rho 33311) - (rho 33312) := by
  have hstate : seg34RIl144 rho = seg34RIl145 rho + seg34RIlAtom54 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom54
  ring

theorem seg34RStep144Pe (rho : Nat -> Seg34.F) (r2038 : Seg34.relationRow2038 rho) :
    seg34RPe144 rho = seg34RPe145 rho * rho 32908 := by
  unfold Seg34.relationRow2038 at r2038
  unfold seg34RPe144 seg34RPe145
  linear_combination -r2038

theorem seg34RStep144 (rho : Nat -> Seg34.F) (r2036 : Seg34.relationRow2036 rho) (r2037 : Seg34.relationRow2037 rho) (r2038 : Seg34.relationRow2038 rho) :
    seg34RPe144 rho = seg34RPe145 rho * rho 32908 ∧
    seg34RIl144 rho = seg34RIl145 rho + seg34RPe145 rho * (1 - rho 32908) -
      seg34RIl145 rho * (seg34RPe145 rho * (1 - rho 32908)) := by
  constructor
  · exact seg34RStep144Pe rho r2038
  · rw [seg34RStep144Acc rho, seg34RStep144L rho r2036, seg34RStep144IlMul rho r2037, seg34RStep144L rho r2036]

theorem seg34_r_chunk144 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 145 (seg34RPeState rho 145) (seg34RIlState rho 145) := by
  have htail := seg34_r_chunk143 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2036, r2037, r2038, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 144 ≤ n → n < 145 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 144 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep144 rho r2036 r2037 r2038
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 144 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
