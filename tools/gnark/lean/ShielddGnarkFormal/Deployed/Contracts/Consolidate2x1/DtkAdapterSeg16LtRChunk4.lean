import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep4L (rho : Nat -> Seg16.F) (r2330 : Seg16.relationRow2330 rho) :
    rho 14905 = seg16RPe5 rho * (1 - rho 14068) := by
  unfold Seg16.relationRow2330 at r2330
  unfold seg16RPe5
  linear_combination -r2330

theorem seg16RStep4IlMul (rho : Nat -> Seg16.F) (r2331 : Seg16.relationRow2331 rho) :
    rho 14906 = seg16RIl5 rho * (rho 14905) := by
  unfold Seg16.relationRow2331 at r2331
  rw [seg16RStep4IlLc rho] at r2331
  linear_combination -r2331

theorem seg16RStep4Acc (rho : Nat -> Seg16.F) :
    seg16RIl4 rho = seg16RIl5 rho + (rho 14905) - (rho 14906) := by
  have hstate : seg16RIl4 rho = seg16RIl5 rho + seg16RIlAtom135 rho + (-1 : Seg16.F) * seg16RIlAtom136 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom135 seg16RIlAtom136
  ring

theorem seg16RStep4Pe (rho : Nat -> Seg16.F) (r2332 : Seg16.relationRow2332 rho) :
    seg16RPe4 rho = seg16RPe5 rho * rho 14068 := by
  unfold Seg16.relationRow2332 at r2332
  unfold seg16RPe4 seg16RPe5
  linear_combination -r2332

theorem seg16RStep4 (rho : Nat -> Seg16.F) (r2330 : Seg16.relationRow2330 rho) (r2331 : Seg16.relationRow2331 rho) (r2332 : Seg16.relationRow2332 rho) :
    seg16RPe4 rho = seg16RPe5 rho * rho 14068 ∧
    seg16RIl4 rho = seg16RIl5 rho + seg16RPe5 rho * (1 - rho 14068) -
      seg16RIl5 rho * (seg16RPe5 rho * (1 - rho 14068)) := by
  constructor
  · exact seg16RStep4Pe rho r2332
  · rw [seg16RStep4Acc rho, seg16RStep4L rho r2330, seg16RStep4IlMul rho r2331, seg16RStep4L rho r2330]

theorem seg16_r_chunk4 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 5 (seg16RPeState rho 5) (seg16RIlState rho 5) := by
  have htail := seg16_r_chunk3 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, r2330, r2331, r2332, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 4 ≤ n → n < 5 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 4 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep4 rho r2330 r2331 r2332
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 4 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
