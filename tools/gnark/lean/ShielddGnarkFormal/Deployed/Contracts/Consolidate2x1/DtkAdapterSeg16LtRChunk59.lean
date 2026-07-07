import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk58

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep59L (rho : Nat -> Seg16.F) (r2207 : Seg16.relationRow2207 rho) :
    rho 14782 = seg16RPe60 rho * (1 - rho 14123) := by
  unfold Seg16.relationRow2207 at r2207
  unfold seg16RPe60
  linear_combination -r2207

theorem seg16RStep59IlMul (rho : Nat -> Seg16.F) (r2208 : Seg16.relationRow2208 rho) :
    rho 14783 = seg16RIl60 rho * (rho 14782) := by
  unfold Seg16.relationRow2208 at r2208
  rw [seg16RStep59IlLc rho] at r2208
  linear_combination -r2208

theorem seg16RStep59Acc (rho : Nat -> Seg16.F) :
    seg16RIl59 rho = seg16RIl60 rho + (rho 14782) - (rho 14783) := by
  have hstate : seg16RIl59 rho = seg16RIl60 rho + seg16RIlAtom99 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom99
  ring

theorem seg16RStep59Pe (rho : Nat -> Seg16.F) (r2209 : Seg16.relationRow2209 rho) :
    seg16RPe59 rho = seg16RPe60 rho * rho 14123 := by
  unfold Seg16.relationRow2209 at r2209
  unfold seg16RPe59 seg16RPe60
  linear_combination -r2209

theorem seg16RStep59 (rho : Nat -> Seg16.F) (r2207 : Seg16.relationRow2207 rho) (r2208 : Seg16.relationRow2208 rho) (r2209 : Seg16.relationRow2209 rho) :
    seg16RPe59 rho = seg16RPe60 rho * rho 14123 ∧
    seg16RIl59 rho = seg16RIl60 rho + seg16RPe60 rho * (1 - rho 14123) -
      seg16RIl60 rho * (seg16RPe60 rho * (1 - rho 14123)) := by
  constructor
  · exact seg16RStep59Pe rho r2209
  · rw [seg16RStep59Acc rho, seg16RStep59L rho r2207, seg16RStep59IlMul rho r2208, seg16RStep59L rho r2207]

theorem seg16_r_chunk59 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 60 (seg16RPeState rho 60) (seg16RIlState rho 60) := by
  have htail := seg16_r_chunk58 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2207, r2208, r2209, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 59 ≤ n → n < 60 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 59 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep59 rho r2207 r2208 r2209
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 59 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
