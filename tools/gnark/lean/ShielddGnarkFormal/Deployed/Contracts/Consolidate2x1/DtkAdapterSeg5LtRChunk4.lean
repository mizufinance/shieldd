import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep4L (rho : Nat -> Seg5.F) (r2330 : Seg5.relationRow2330 rho) :
    rho 2028 = seg5RPe5 rho * (1 - rho 1191) := by
  unfold Seg5.relationRow2330 at r2330
  unfold seg5RPe5
  linear_combination -r2330

theorem seg5RStep4IlMul (rho : Nat -> Seg5.F) (r2331 : Seg5.relationRow2331 rho) :
    rho 2029 = seg5RIl5 rho * (rho 2028) := by
  unfold Seg5.relationRow2331 at r2331
  rw [seg5RStep4IlLc rho] at r2331
  linear_combination -r2331

theorem seg5RStep4Acc (rho : Nat -> Seg5.F) :
    seg5RIl4 rho = seg5RIl5 rho + (rho 2028) - (rho 2029) := by
  have hstate : seg5RIl4 rho = seg5RIl5 rho + seg5RIlAtom135 rho + (-1 : Seg5.F) * seg5RIlAtom136 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom135 seg5RIlAtom136
  ring

theorem seg5RStep4Pe (rho : Nat -> Seg5.F) (r2332 : Seg5.relationRow2332 rho) :
    seg5RPe4 rho = seg5RPe5 rho * rho 1191 := by
  unfold Seg5.relationRow2332 at r2332
  unfold seg5RPe4 seg5RPe5
  linear_combination -r2332

theorem seg5RStep4 (rho : Nat -> Seg5.F) (r2330 : Seg5.relationRow2330 rho) (r2331 : Seg5.relationRow2331 rho) (r2332 : Seg5.relationRow2332 rho) :
    seg5RPe4 rho = seg5RPe5 rho * rho 1191 ∧
    seg5RIl4 rho = seg5RIl5 rho + seg5RPe5 rho * (1 - rho 1191) -
      seg5RIl5 rho * (seg5RPe5 rho * (1 - rho 1191)) := by
  constructor
  · exact seg5RStep4Pe rho r2332
  · rw [seg5RStep4Acc rho, seg5RStep4L rho r2330, seg5RStep4IlMul rho r2331, seg5RStep4L rho r2330]

theorem seg5_r_chunk4 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 5 (seg5RPeState rho 5) (seg5RIlState rho 5) := by
  have htail := seg5_r_chunk3 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, r2330, r2331, r2332, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 4 ≤ n → n < 5 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 4 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep4 rho r2330 r2331 r2332
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 4 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
