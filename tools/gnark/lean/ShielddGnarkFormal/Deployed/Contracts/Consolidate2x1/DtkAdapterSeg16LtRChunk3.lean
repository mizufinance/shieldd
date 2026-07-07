import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk2

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep3L (rho : Nat -> Seg16.F) (r2333 : Seg16.relationRow2333 rho) :
    rho 14908 = seg16RPe4 rho * (1 - rho 14067) := by
  unfold Seg16.relationRow2333 at r2333
  unfold seg16RPe4
  linear_combination -r2333

theorem seg16RStep3IlMul (rho : Nat -> Seg16.F) (r2334 : Seg16.relationRow2334 rho) :
    rho 14909 = seg16RIl4 rho * (rho 14908) := by
  unfold Seg16.relationRow2334 at r2334
  rw [seg16RStep3IlLc rho] at r2334
  linear_combination -r2334

theorem seg16RStep3Acc (rho : Nat -> Seg16.F) :
    seg16RIl3 rho = seg16RIl4 rho + (rho 14908) - (rho 14909) := by
  have hstate : seg16RIl3 rho = seg16RIl4 rho + seg16RIlAtom137 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom137
  ring

theorem seg16RStep3Pe (rho : Nat -> Seg16.F) (r2335 : Seg16.relationRow2335 rho) :
    seg16RPe3 rho = seg16RPe4 rho * rho 14067 := by
  unfold Seg16.relationRow2335 at r2335
  unfold seg16RPe3 seg16RPe4
  linear_combination -r2335

theorem seg16RStep3 (rho : Nat -> Seg16.F) (r2333 : Seg16.relationRow2333 rho) (r2334 : Seg16.relationRow2334 rho) (r2335 : Seg16.relationRow2335 rho) :
    seg16RPe3 rho = seg16RPe4 rho * rho 14067 ∧
    seg16RIl3 rho = seg16RIl4 rho + seg16RPe4 rho * (1 - rho 14067) -
      seg16RIl4 rho * (seg16RPe4 rho * (1 - rho 14067)) := by
  constructor
  · exact seg16RStep3Pe rho r2335
  · rw [seg16RStep3Acc rho, seg16RStep3L rho r2333, seg16RStep3IlMul rho r2334, seg16RStep3L rho r2333]

theorem seg16_r_chunk3 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 4 (seg16RPeState rho 4) (seg16RIlState rho 4) := by
  have htail := seg16_r_chunk2 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2333, r2334, r2335, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 3 ≤ n → n < 4 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 3 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep3 rho r2333 r2334 r2335
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 3 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
