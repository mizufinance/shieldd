import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep15L (rho : Nat -> Seg16.F) (r2303 : Seg16.relationRow2303 rho) :
    rho 14878 = seg16RPe16 rho * (1 - rho 14079) := by
  unfold Seg16.relationRow2303 at r2303
  unfold seg16RPe16
  linear_combination -r2303

theorem seg16RStep15IlMul (rho : Nat -> Seg16.F) (r2304 : Seg16.relationRow2304 rho) :
    rho 14879 = seg16RIl16 rho * (rho 14878) := by
  unfold Seg16.relationRow2304 at r2304
  rw [seg16RStep15IlLc rho] at r2304
  linear_combination -r2304

theorem seg16RStep15Acc (rho : Nat -> Seg16.F) :
    seg16RIl15 rho = seg16RIl16 rho + (rho 14878) - (rho 14879) := by
  have hstate : seg16RIl15 rho = seg16RIl16 rho + seg16RIlAtom127 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom127
  ring

theorem seg16RStep15Pe (rho : Nat -> Seg16.F) (r2305 : Seg16.relationRow2305 rho) :
    seg16RPe15 rho = seg16RPe16 rho * rho 14079 := by
  unfold Seg16.relationRow2305 at r2305
  unfold seg16RPe15 seg16RPe16
  linear_combination -r2305

theorem seg16RStep15 (rho : Nat -> Seg16.F) (r2303 : Seg16.relationRow2303 rho) (r2304 : Seg16.relationRow2304 rho) (r2305 : Seg16.relationRow2305 rho) :
    seg16RPe15 rho = seg16RPe16 rho * rho 14079 ∧
    seg16RIl15 rho = seg16RIl16 rho + seg16RPe16 rho * (1 - rho 14079) -
      seg16RIl16 rho * (seg16RPe16 rho * (1 - rho 14079)) := by
  constructor
  · exact seg16RStep15Pe rho r2305
  · rw [seg16RStep15Acc rho, seg16RStep15L rho r2303, seg16RStep15IlMul rho r2304, seg16RStep15L rho r2303]

theorem seg16_r_chunk15 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 16 (seg16RPeState rho 16) (seg16RIlState rho 16) := by
  have htail := seg16_r_chunk14 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2303, r2304, r2305, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 15 ≤ n → n < 16 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 15 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep15 rho r2303 r2304 r2305
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 15 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
