import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep15L (rho : Nat -> Seg5.F) (r2303 : Seg5.relationRow2303 rho) :
    rho 2001 = seg5RPe16 rho * (1 - rho 1202) := by
  unfold Seg5.relationRow2303 at r2303
  unfold seg5RPe16
  linear_combination -r2303

theorem seg5RStep15IlMul (rho : Nat -> Seg5.F) (r2304 : Seg5.relationRow2304 rho) :
    rho 2002 = seg5RIl16 rho * (rho 2001) := by
  unfold Seg5.relationRow2304 at r2304
  rw [seg5RStep15IlLc rho] at r2304
  linear_combination -r2304

theorem seg5RStep15Acc (rho : Nat -> Seg5.F) :
    seg5RIl15 rho = seg5RIl16 rho + (rho 2001) - (rho 2002) := by
  have hstate : seg5RIl15 rho = seg5RIl16 rho + seg5RIlAtom127 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom127
  ring

theorem seg5RStep15Pe (rho : Nat -> Seg5.F) (r2305 : Seg5.relationRow2305 rho) :
    seg5RPe15 rho = seg5RPe16 rho * rho 1202 := by
  unfold Seg5.relationRow2305 at r2305
  unfold seg5RPe15 seg5RPe16
  linear_combination -r2305

theorem seg5RStep15 (rho : Nat -> Seg5.F) (r2303 : Seg5.relationRow2303 rho) (r2304 : Seg5.relationRow2304 rho) (r2305 : Seg5.relationRow2305 rho) :
    seg5RPe15 rho = seg5RPe16 rho * rho 1202 ∧
    seg5RIl15 rho = seg5RIl16 rho + seg5RPe16 rho * (1 - rho 1202) -
      seg5RIl16 rho * (seg5RPe16 rho * (1 - rho 1202)) := by
  constructor
  · exact seg5RStep15Pe rho r2305
  · rw [seg5RStep15Acc rho, seg5RStep15L rho r2303, seg5RStep15IlMul rho r2304, seg5RStep15L rho r2303]

theorem seg5_r_chunk15 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 16 (seg5RPeState rho 16) (seg5RIlState rho 16) := by
  have htail := seg5_r_chunk14 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2303, r2304, r2305, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 15 ≤ n → n < 16 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 15 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep15 rho r2303 r2304 r2305
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 15 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
