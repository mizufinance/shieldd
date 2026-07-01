import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep15L (rho : Nat -> Seg34.F) (r2303 : Seg34.relationRow2303 rho) :
    rho 33578 = seg34RPe16 rho * (1 - rho 32779) := by
  unfold Seg34.relationRow2303 at r2303
  unfold seg34RPe16
  linear_combination -r2303

theorem seg34RStep15IlMul (rho : Nat -> Seg34.F) (r2304 : Seg34.relationRow2304 rho) :
    rho 33579 = seg34RIl16 rho * (rho 33578) := by
  unfold Seg34.relationRow2304 at r2304
  rw [seg34RStep15IlLc rho] at r2304
  linear_combination -r2304

theorem seg34RStep15Acc (rho : Nat -> Seg34.F) :
    seg34RIl15 rho = seg34RIl16 rho + (rho 33578) - (rho 33579) := by
  have hstate : seg34RIl15 rho = seg34RIl16 rho + seg34RIlAtom127 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom127
  ring

theorem seg34RStep15Pe (rho : Nat -> Seg34.F) (r2305 : Seg34.relationRow2305 rho) :
    seg34RPe15 rho = seg34RPe16 rho * rho 32779 := by
  unfold Seg34.relationRow2305 at r2305
  unfold seg34RPe15 seg34RPe16
  linear_combination -r2305

theorem seg34RStep15 (rho : Nat -> Seg34.F) (r2303 : Seg34.relationRow2303 rho) (r2304 : Seg34.relationRow2304 rho) (r2305 : Seg34.relationRow2305 rho) :
    seg34RPe15 rho = seg34RPe16 rho * rho 32779 ∧
    seg34RIl15 rho = seg34RIl16 rho + seg34RPe16 rho * (1 - rho 32779) -
      seg34RIl16 rho * (seg34RPe16 rho * (1 - rho 32779)) := by
  constructor
  · exact seg34RStep15Pe rho r2305
  · rw [seg34RStep15Acc rho, seg34RStep15L rho r2303, seg34RStep15IlMul rho r2304, seg34RStep15L rho r2303]

theorem seg34_r_chunk15 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 16 (seg34RPeState rho 16) (seg34RIlState rho 16) := by
  have htail := seg34_r_chunk14 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2303, r2304, r2305, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 15 ≤ n → n < 16 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 15 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep15 rho r2303 r2304 r2305
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 15 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
