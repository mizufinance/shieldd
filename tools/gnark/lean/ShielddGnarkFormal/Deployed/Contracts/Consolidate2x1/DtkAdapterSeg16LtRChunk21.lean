import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep21L (rho : Nat -> Seg16.F) (r2285 : Seg16.relationRow2285 rho) :
    rho 14860 = seg16RPe22 rho * (1 - rho 14085) := by
  unfold Seg16.relationRow2285 at r2285
  unfold seg16RPe22
  linear_combination -r2285

theorem seg16RStep21IlMul (rho : Nat -> Seg16.F) (r2286 : Seg16.relationRow2286 rho) :
    rho 14861 = seg16RIl22 rho * (rho 14860) := by
  unfold Seg16.relationRow2286 at r2286
  rw [seg16RStep21IlLc rho] at r2286
  linear_combination -r2286

theorem seg16RStep21Acc (rho : Nat -> Seg16.F) :
    seg16RIl21 rho = seg16RIl22 rho + (rho 14860) - (rho 14861) := by
  have hstate : seg16RIl21 rho = seg16RIl22 rho + seg16RIlAtom121 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom121
  ring

theorem seg16RStep21Pe (rho : Nat -> Seg16.F) (r2287 : Seg16.relationRow2287 rho) :
    seg16RPe21 rho = seg16RPe22 rho * rho 14085 := by
  unfold Seg16.relationRow2287 at r2287
  unfold seg16RPe21 seg16RPe22
  linear_combination -r2287

theorem seg16RStep21 (rho : Nat -> Seg16.F) (r2285 : Seg16.relationRow2285 rho) (r2286 : Seg16.relationRow2286 rho) (r2287 : Seg16.relationRow2287 rho) :
    seg16RPe21 rho = seg16RPe22 rho * rho 14085 ∧
    seg16RIl21 rho = seg16RIl22 rho + seg16RPe22 rho * (1 - rho 14085) -
      seg16RIl22 rho * (seg16RPe22 rho * (1 - rho 14085)) := by
  constructor
  · exact seg16RStep21Pe rho r2287
  · rw [seg16RStep21Acc rho, seg16RStep21L rho r2285, seg16RStep21IlMul rho r2286, seg16RStep21L rho r2285]

theorem seg16_r_chunk21 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 22 (seg16RPeState rho 22) (seg16RIlState rho 22) := by
  have htail := seg16_r_chunk20 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2285, r2286, r2287, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 21 ≤ n → n < 22 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 21 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep21 rho r2285 r2286 r2287
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 21 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
