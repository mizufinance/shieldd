import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep3L (rho : Nat -> Seg34.F) (r2333 : Seg34.relationRow2333 rho) :
    rho 33608 = seg34RPe4 rho * (1 - rho 32767) := by
  unfold Seg34.relationRow2333 at r2333
  unfold seg34RPe4
  linear_combination -r2333

theorem seg34RStep3IlMul (rho : Nat -> Seg34.F) (r2334 : Seg34.relationRow2334 rho) :
    rho 33609 = seg34RIl4 rho * (rho 33608) := by
  unfold Seg34.relationRow2334 at r2334
  rw [seg34RStep3IlLc rho] at r2334
  linear_combination -r2334

theorem seg34RStep3Acc (rho : Nat -> Seg34.F) :
    seg34RIl3 rho = seg34RIl4 rho + (rho 33608) - (rho 33609) := by
  have hstate : seg34RIl3 rho = seg34RIl4 rho + seg34RIlAtom137 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom137
  ring

theorem seg34RStep3Pe (rho : Nat -> Seg34.F) (r2335 : Seg34.relationRow2335 rho) :
    seg34RPe3 rho = seg34RPe4 rho * rho 32767 := by
  unfold Seg34.relationRow2335 at r2335
  unfold seg34RPe3 seg34RPe4
  linear_combination -r2335

theorem seg34RStep3 (rho : Nat -> Seg34.F) (r2333 : Seg34.relationRow2333 rho) (r2334 : Seg34.relationRow2334 rho) (r2335 : Seg34.relationRow2335 rho) :
    seg34RPe3 rho = seg34RPe4 rho * rho 32767 ∧
    seg34RIl3 rho = seg34RIl4 rho + seg34RPe4 rho * (1 - rho 32767) -
      seg34RIl4 rho * (seg34RPe4 rho * (1 - rho 32767)) := by
  constructor
  · exact seg34RStep3Pe rho r2335
  · rw [seg34RStep3Acc rho, seg34RStep3L rho r2333, seg34RStep3IlMul rho r2334, seg34RStep3L rho r2333]

theorem seg34_r_chunk3 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 4 (seg34RPeState rho 4) (seg34RIlState rho 4) := by
  have htail := seg34_r_chunk2 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2333, r2334, r2335, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 3 ≤ n → n < 4 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 3 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep3 rho r2333 r2334 r2335
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 3 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
