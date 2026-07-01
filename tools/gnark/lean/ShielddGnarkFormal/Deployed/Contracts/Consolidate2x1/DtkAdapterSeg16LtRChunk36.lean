import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk35

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep36L (rho : Nat -> Seg16.F) (r2256 : Seg16.relationRow2256 rho) :
    rho 14831 = seg16RPe37 rho * (1 - rho 14100) := by
  unfold Seg16.relationRow2256 at r2256
  unfold seg16RPe37
  linear_combination -r2256

theorem seg16RStep36IlMul (rho : Nat -> Seg16.F) (r2257 : Seg16.relationRow2257 rho) :
    rho 14832 = seg16RIl37 rho * (rho 14831) := by
  unfold Seg16.relationRow2257 at r2257
  rw [seg16RStep36IlLc rho] at r2257
  linear_combination -r2257

theorem seg16RStep36Acc (rho : Nat -> Seg16.F) :
    seg16RIl36 rho = seg16RIl37 rho + (rho 14831) - (rho 14832) := by
  have hstate : seg16RIl36 rho = seg16RIl37 rho + seg16RIlAtom113 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom113
  ring

theorem seg16RStep36Pe (rho : Nat -> Seg16.F) (r2258 : Seg16.relationRow2258 rho) :
    seg16RPe36 rho = seg16RPe37 rho * rho 14100 := by
  unfold Seg16.relationRow2258 at r2258
  unfold seg16RPe36 seg16RPe37
  linear_combination -r2258

theorem seg16RStep36 (rho : Nat -> Seg16.F) (r2256 : Seg16.relationRow2256 rho) (r2257 : Seg16.relationRow2257 rho) (r2258 : Seg16.relationRow2258 rho) :
    seg16RPe36 rho = seg16RPe37 rho * rho 14100 ∧
    seg16RIl36 rho = seg16RIl37 rho + seg16RPe37 rho * (1 - rho 14100) -
      seg16RIl37 rho * (seg16RPe37 rho * (1 - rho 14100)) := by
  constructor
  · exact seg16RStep36Pe rho r2258
  · rw [seg16RStep36Acc rho, seg16RStep36L rho r2256, seg16RStep36IlMul rho r2257, seg16RStep36L rho r2256]

theorem seg16_r_chunk36 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 37 (seg16RPeState rho 37) (seg16RIlState rho 37) := by
  have htail := seg16_r_chunk35 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2256, r2257, r2258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 36 ≤ n → n < 37 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 36 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep36 rho r2256 r2257 r2258
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 36 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
