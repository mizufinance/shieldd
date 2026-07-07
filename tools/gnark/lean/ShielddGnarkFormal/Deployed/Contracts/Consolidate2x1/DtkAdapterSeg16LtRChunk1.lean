import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk0

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep1L (rho : Nat -> Seg16.F) (r2339 : Seg16.relationRow2339 rho) :
    rho 14914 = seg16RPe2 rho * (1 - rho 14065) := by
  unfold Seg16.relationRow2339 at r2339
  unfold seg16RPe2
  linear_combination -r2339

theorem seg16RStep1IlMul (rho : Nat -> Seg16.F) (r2340 : Seg16.relationRow2340 rho) :
    rho 14915 = seg16RIl2 rho * (rho 14914) := by
  unfold Seg16.relationRow2340 at r2340
  rw [seg16RStep1IlLc rho] at r2340
  linear_combination -r2340

theorem seg16RStep1Acc (rho : Nat -> Seg16.F) :
    seg16RIl1 rho = seg16RIl2 rho + (rho 14914) - (rho 14915) := by
  have hstate : seg16RIl1 rho = seg16RIl2 rho + seg16RIlAtom139 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom139
  ring

theorem seg16RStep1Pe (rho : Nat -> Seg16.F) (r2341 : Seg16.relationRow2341 rho) :
    seg16RPe1 rho = seg16RPe2 rho * rho 14065 := by
  unfold Seg16.relationRow2341 at r2341
  unfold seg16RPe1 seg16RPe2
  linear_combination -r2341

theorem seg16RStep1 (rho : Nat -> Seg16.F) (r2339 : Seg16.relationRow2339 rho) (r2340 : Seg16.relationRow2340 rho) (r2341 : Seg16.relationRow2341 rho) :
    seg16RPe1 rho = seg16RPe2 rho * rho 14065 ∧
    seg16RIl1 rho = seg16RIl2 rho + seg16RPe2 rho * (1 - rho 14065) -
      seg16RIl2 rho * (seg16RPe2 rho * (1 - rho 14065)) := by
  constructor
  · exact seg16RStep1Pe rho r2341
  · rw [seg16RStep1Acc rho, seg16RStep1L rho r2339, seg16RStep1IlMul rho r2340, seg16RStep1L rho r2339]

theorem seg16_r_chunk1 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 2 (seg16RPeState rho 2) (seg16RIlState rho 2) := by
  have htail := seg16_r_chunk0 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2339, r2340, r2341, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 1 ≤ n → n < 2 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 1 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep1 rho r2339 r2340 r2341
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 1 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
