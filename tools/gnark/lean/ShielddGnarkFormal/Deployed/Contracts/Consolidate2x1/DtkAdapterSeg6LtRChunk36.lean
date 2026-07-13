import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk35

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep36L (rho : Nat -> Seg6.F) (r2256 : Seg6.relationRow2256 rho) :
    rho 2657 = seg6RPe37 rho * (1 - rho 1926) := by
  unfold Seg6.relationRow2256 at r2256
  unfold seg6RPe37
  linear_combination -r2256

theorem seg6RStep36IlMul (rho : Nat -> Seg6.F) (r2257 : Seg6.relationRow2257 rho) :
    rho 2658 = seg6RIl37 rho * (rho 2657) := by
  unfold Seg6.relationRow2257 at r2257
  rw [seg6RStep36IlLc rho] at r2257
  linear_combination -r2257

theorem seg6RStep36Acc (rho : Nat -> Seg6.F) :
    seg6RIl36 rho = seg6RIl37 rho + (rho 2657) - (rho 2658) := by
  have hstate : seg6RIl36 rho = seg6RIl37 rho + seg6RIlAtom113 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom113
  ring

theorem seg6RStep36Pe (rho : Nat -> Seg6.F) (r2258 : Seg6.relationRow2258 rho) :
    seg6RPe36 rho = seg6RPe37 rho * rho 1926 := by
  unfold Seg6.relationRow2258 at r2258
  unfold seg6RPe36 seg6RPe37
  linear_combination -r2258

theorem seg6RStep36 (rho : Nat -> Seg6.F) (r2256 : Seg6.relationRow2256 rho) (r2257 : Seg6.relationRow2257 rho) (r2258 : Seg6.relationRow2258 rho) :
    seg6RPe36 rho = seg6RPe37 rho * rho 1926 ∧
    seg6RIl36 rho = seg6RIl37 rho + seg6RPe37 rho * (1 - rho 1926) -
      seg6RIl37 rho * (seg6RPe37 rho * (1 - rho 1926)) := by
  constructor
  · exact seg6RStep36Pe rho r2258
  · rw [seg6RStep36Acc rho, seg6RStep36L rho r2256, seg6RStep36IlMul rho r2257, seg6RStep36L rho r2256]

theorem seg6_r_chunk36 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 37 (seg6RPeState rho 37) (seg6RIlState rho 37) := by
  have htail := seg6_r_chunk35 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2256, r2257, r2258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 36 ≤ n → n < 37 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 36 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep36 rho r2256 r2257 r2258
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 36 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
