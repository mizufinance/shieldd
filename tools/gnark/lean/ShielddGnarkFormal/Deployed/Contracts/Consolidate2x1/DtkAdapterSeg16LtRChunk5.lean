import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk4

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep5L (rho : Nat -> Seg16.F) (r2327 : Seg16.relationRow2327 rho) :
    rho 14902 = seg16RPe6 rho * (1 - rho 14069) := by
  unfold Seg16.relationRow2327 at r2327
  unfold seg16RPe6
  linear_combination -r2327

theorem seg16RStep5IlMul (rho : Nat -> Seg16.F) (r2328 : Seg16.relationRow2328 rho) :
    rho 14903 = seg16RIl6 rho * (rho 14902) := by
  unfold Seg16.relationRow2328 at r2328
  rw [seg16RStep5IlLc rho] at r2328
  linear_combination -r2328

theorem seg16RStep5Acc (rho : Nat -> Seg16.F) :
    seg16RIl5 rho = seg16RIl6 rho + (rho 14902) - (rho 14903) := by
  have hstate : seg16RIl5 rho = seg16RIl6 rho + seg16RIlAtom134 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom134
  ring

theorem seg16RStep5Pe (rho : Nat -> Seg16.F) (r2329 : Seg16.relationRow2329 rho) :
    seg16RPe5 rho = seg16RPe6 rho * rho 14069 := by
  unfold Seg16.relationRow2329 at r2329
  unfold seg16RPe5 seg16RPe6
  linear_combination -r2329

theorem seg16RStep5 (rho : Nat -> Seg16.F) (r2327 : Seg16.relationRow2327 rho) (r2328 : Seg16.relationRow2328 rho) (r2329 : Seg16.relationRow2329 rho) :
    seg16RPe5 rho = seg16RPe6 rho * rho 14069 ∧
    seg16RIl5 rho = seg16RIl6 rho + seg16RPe6 rho * (1 - rho 14069) -
      seg16RIl6 rho * (seg16RPe6 rho * (1 - rho 14069)) := by
  constructor
  · exact seg16RStep5Pe rho r2329
  · rw [seg16RStep5Acc rho, seg16RStep5L rho r2327, seg16RStep5IlMul rho r2328, seg16RStep5L rho r2327]

theorem seg16_r_chunk5 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 6 (seg16RPeState rho 6) (seg16RIlState rho 6) := by
  have htail := seg16_r_chunk4 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, r2327, r2328, r2329, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 5 ≤ n → n < 6 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 5 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep5 rho r2327 r2328 r2329
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 5 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
