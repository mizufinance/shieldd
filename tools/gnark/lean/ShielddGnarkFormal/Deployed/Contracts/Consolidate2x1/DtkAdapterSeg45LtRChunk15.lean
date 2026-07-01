import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep15L (rho : Nat -> Seg45.F) (r2303 : Seg45.relationRow2303 rho) :
    rho 40534 = seg45RPe16 rho * (1 - rho 39735) := by
  unfold Seg45.relationRow2303 at r2303
  unfold seg45RPe16
  linear_combination -r2303

theorem seg45RStep15IlMul (rho : Nat -> Seg45.F) (r2304 : Seg45.relationRow2304 rho) :
    rho 40535 = seg45RIl16 rho * (rho 40534) := by
  unfold Seg45.relationRow2304 at r2304
  rw [seg45RStep15IlLc rho] at r2304
  linear_combination -r2304

theorem seg45RStep15Acc (rho : Nat -> Seg45.F) :
    seg45RIl15 rho = seg45RIl16 rho + (rho 40534) - (rho 40535) := by
  have hstate : seg45RIl15 rho = seg45RIl16 rho + seg45RIlAtom127 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom127
  ring

theorem seg45RStep15Pe (rho : Nat -> Seg45.F) (r2305 : Seg45.relationRow2305 rho) :
    seg45RPe15 rho = seg45RPe16 rho * rho 39735 := by
  unfold Seg45.relationRow2305 at r2305
  unfold seg45RPe15 seg45RPe16
  linear_combination -r2305

theorem seg45RStep15 (rho : Nat -> Seg45.F) (r2303 : Seg45.relationRow2303 rho) (r2304 : Seg45.relationRow2304 rho) (r2305 : Seg45.relationRow2305 rho) :
    seg45RPe15 rho = seg45RPe16 rho * rho 39735 ∧
    seg45RIl15 rho = seg45RIl16 rho + seg45RPe16 rho * (1 - rho 39735) -
      seg45RIl16 rho * (seg45RPe16 rho * (1 - rho 39735)) := by
  constructor
  · exact seg45RStep15Pe rho r2305
  · rw [seg45RStep15Acc rho, seg45RStep15L rho r2303, seg45RStep15IlMul rho r2304, seg45RStep15L rho r2303]

theorem seg45_r_chunk15 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 16 (seg45RPeState rho 16) (seg45RIlState rho 16) := by
  have htail := seg45_r_chunk14 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2303, r2304, r2305, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 15 ≤ n → n < 16 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 15 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep15 rho r2303 r2304 r2305
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 15 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
