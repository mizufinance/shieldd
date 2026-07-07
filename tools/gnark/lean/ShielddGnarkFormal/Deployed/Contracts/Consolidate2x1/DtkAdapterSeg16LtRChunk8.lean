import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk7

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep8L (rho : Nat -> Seg16.F) (r2318 : Seg16.relationRow2318 rho) :
    rho 14893 = seg16RPe9 rho * (1 - rho 14072) := by
  unfold Seg16.relationRow2318 at r2318
  unfold seg16RPe9
  linear_combination -r2318

theorem seg16RStep8IlMul (rho : Nat -> Seg16.F) (r2319 : Seg16.relationRow2319 rho) :
    rho 14894 = seg16RIl9 rho * (rho 14893) := by
  unfold Seg16.relationRow2319 at r2319
  rw [seg16RStep8IlLc rho] at r2319
  linear_combination -r2319

theorem seg16RStep8Acc (rho : Nat -> Seg16.F) :
    seg16RIl8 rho = seg16RIl9 rho + (rho 14893) - (rho 14894) := by
  have hstate : seg16RIl8 rho = seg16RIl9 rho + seg16RIlAtom131 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom131
  ring

theorem seg16RStep8Pe (rho : Nat -> Seg16.F) (r2320 : Seg16.relationRow2320 rho) :
    seg16RPe8 rho = seg16RPe9 rho * rho 14072 := by
  unfold Seg16.relationRow2320 at r2320
  unfold seg16RPe8 seg16RPe9
  linear_combination -r2320

theorem seg16RStep8 (rho : Nat -> Seg16.F) (r2318 : Seg16.relationRow2318 rho) (r2319 : Seg16.relationRow2319 rho) (r2320 : Seg16.relationRow2320 rho) :
    seg16RPe8 rho = seg16RPe9 rho * rho 14072 ∧
    seg16RIl8 rho = seg16RIl9 rho + seg16RPe9 rho * (1 - rho 14072) -
      seg16RIl9 rho * (seg16RPe9 rho * (1 - rho 14072)) := by
  constructor
  · exact seg16RStep8Pe rho r2320
  · rw [seg16RStep8Acc rho, seg16RStep8L rho r2318, seg16RStep8IlMul rho r2319, seg16RStep8L rho r2318]

theorem seg16_r_chunk8 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 9 (seg16RPeState rho 9) (seg16RIlState rho 9) := by
  have htail := seg16_r_chunk7 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2318, r2319⟩
  unfold Seg16.relationPart29 at p29
  rcases p29 with ⟨r2320, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 8 ≤ n → n < 9 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 8 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep8 rho r2318 r2319 r2320
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 8 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
