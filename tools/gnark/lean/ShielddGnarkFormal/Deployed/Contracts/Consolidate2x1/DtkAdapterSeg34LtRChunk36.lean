import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk35

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep36L (rho : Nat -> Seg34.F) (r2256 : Seg34.relationRow2256 rho) :
    rho 33531 = seg34RPe37 rho * (1 - rho 32800) := by
  unfold Seg34.relationRow2256 at r2256
  unfold seg34RPe37
  linear_combination -r2256

theorem seg34RStep36IlMul (rho : Nat -> Seg34.F) (r2257 : Seg34.relationRow2257 rho) :
    rho 33532 = seg34RIl37 rho * (rho 33531) := by
  unfold Seg34.relationRow2257 at r2257
  rw [seg34RStep36IlLc rho] at r2257
  linear_combination -r2257

theorem seg34RStep36Acc (rho : Nat -> Seg34.F) :
    seg34RIl36 rho = seg34RIl37 rho + (rho 33531) - (rho 33532) := by
  have hstate : seg34RIl36 rho = seg34RIl37 rho + seg34RIlAtom113 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom113
  ring

theorem seg34RStep36Pe (rho : Nat -> Seg34.F) (r2258 : Seg34.relationRow2258 rho) :
    seg34RPe36 rho = seg34RPe37 rho * rho 32800 := by
  unfold Seg34.relationRow2258 at r2258
  unfold seg34RPe36 seg34RPe37
  linear_combination -r2258

theorem seg34RStep36 (rho : Nat -> Seg34.F) (r2256 : Seg34.relationRow2256 rho) (r2257 : Seg34.relationRow2257 rho) (r2258 : Seg34.relationRow2258 rho) :
    seg34RPe36 rho = seg34RPe37 rho * rho 32800 ∧
    seg34RIl36 rho = seg34RIl37 rho + seg34RPe37 rho * (1 - rho 32800) -
      seg34RIl37 rho * (seg34RPe37 rho * (1 - rho 32800)) := by
  constructor
  · exact seg34RStep36Pe rho r2258
  · rw [seg34RStep36Acc rho, seg34RStep36L rho r2256, seg34RStep36IlMul rho r2257, seg34RStep36L rho r2256]

theorem seg34_r_chunk36 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 37 (seg34RPeState rho 37) (seg34RIlState rho 37) := by
  have htail := seg34_r_chunk35 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2256, r2257, r2258, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 36 ≤ n → n < 37 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 36 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep36 rho r2256 r2257 r2258
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 36 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
