import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk51

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep52L (rho : Nat -> Seg34.F) (r2220 : Seg34.relationRow2220 rho) :
    rho 33495 = seg34RPe53 rho * (1 - rho 32816) := by
  unfold Seg34.relationRow2220 at r2220
  unfold seg34RPe53
  linear_combination -r2220

theorem seg34RStep52IlMul (rho : Nat -> Seg34.F) (r2221 : Seg34.relationRow2221 rho) :
    rho 33496 = seg34RIl53 rho * (rho 33495) := by
  unfold Seg34.relationRow2221 at r2221
  rw [seg34RStep52IlLc rho] at r2221
  linear_combination -r2221

theorem seg34RStep52Acc (rho : Nat -> Seg34.F) :
    seg34RIl52 rho = seg34RIl53 rho + (rho 33495) - (rho 33496) := by
  have hstate : seg34RIl52 rho = seg34RIl53 rho + seg34RIlAtom103 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom103
  ring

theorem seg34RStep52Pe (rho : Nat -> Seg34.F) (r2222 : Seg34.relationRow2222 rho) :
    seg34RPe52 rho = seg34RPe53 rho * rho 32816 := by
  unfold Seg34.relationRow2222 at r2222
  unfold seg34RPe52 seg34RPe53
  linear_combination -r2222

theorem seg34RStep52 (rho : Nat -> Seg34.F) (r2220 : Seg34.relationRow2220 rho) (r2221 : Seg34.relationRow2221 rho) (r2222 : Seg34.relationRow2222 rho) :
    seg34RPe52 rho = seg34RPe53 rho * rho 32816 ∧
    seg34RIl52 rho = seg34RIl53 rho + seg34RPe53 rho * (1 - rho 32816) -
      seg34RIl53 rho * (seg34RPe53 rho * (1 - rho 32816)) := by
  constructor
  · exact seg34RStep52Pe rho r2222
  · rw [seg34RStep52Acc rho, seg34RStep52L rho r2220, seg34RStep52IlMul rho r2221, seg34RStep52L rho r2220]

theorem seg34_r_chunk52 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 53 (seg34RPeState rho 53) (seg34RIlState rho 53) := by
  have htail := seg34_r_chunk51 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2220, r2221, r2222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 52 ≤ n → n < 53 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 52 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep52 rho r2220 r2221 r2222
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 52 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
