import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk38

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep39L (rho : Nat -> Seg34.F) (r2251 : Seg34.relationRow2251 rho) :
    rho 33526 = seg34RPe40 rho * (1 - rho 32803) := by
  unfold Seg34.relationRow2251 at r2251
  unfold seg34RPe40
  linear_combination -r2251

theorem seg34RStep39IlMul (rho : Nat -> Seg34.F) (r2252 : Seg34.relationRow2252 rho) :
    rho 33527 = seg34RIl40 rho * (rho 33526) := by
  unfold Seg34.relationRow2252 at r2252
  rw [seg34RStep39IlLc rho] at r2252
  linear_combination -r2252

theorem seg34RStep39Acc (rho : Nat -> Seg34.F) :
    seg34RIl39 rho = seg34RIl40 rho + (rho 33526) - (rho 33527) := by
  have hstate : seg34RIl39 rho = seg34RIl40 rho + seg34RIlAtom112 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom112
  ring

theorem seg34RStep39Pe (rho : Nat -> Seg34.F) (r2253 : Seg34.relationRow2253 rho) :
    seg34RPe39 rho = seg34RPe40 rho * rho 32803 := by
  unfold Seg34.relationRow2253 at r2253
  unfold seg34RPe39 seg34RPe40
  linear_combination -r2253

theorem seg34RStep39 (rho : Nat -> Seg34.F) (r2251 : Seg34.relationRow2251 rho) (r2252 : Seg34.relationRow2252 rho) (r2253 : Seg34.relationRow2253 rho) :
    seg34RPe39 rho = seg34RPe40 rho * rho 32803 ∧
    seg34RIl39 rho = seg34RIl40 rho + seg34RPe40 rho * (1 - rho 32803) -
      seg34RIl40 rho * (seg34RPe40 rho * (1 - rho 32803)) := by
  constructor
  · exact seg34RStep39Pe rho r2253
  · rw [seg34RStep39Acc rho, seg34RStep39L rho r2251, seg34RStep39IlMul rho r2252, seg34RStep39L rho r2251]

theorem seg34_r_chunk39 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 40 (seg34RPeState rho 40) (seg34RIlState rho 40) := by
  have htail := seg34_r_chunk38 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2251, r2252, r2253, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 39 ≤ n → n < 40 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 39 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep39 rho r2251 r2252 r2253
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 39 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
