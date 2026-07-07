import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk3

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep4L (rho : Nat -> Seg34.F) (r2330 : Seg34.relationRow2330 rho) :
    rho 33605 = seg34RPe5 rho * (1 - rho 32768) := by
  unfold Seg34.relationRow2330 at r2330
  unfold seg34RPe5
  linear_combination -r2330

theorem seg34RStep4IlMul (rho : Nat -> Seg34.F) (r2331 : Seg34.relationRow2331 rho) :
    rho 33606 = seg34RIl5 rho * (rho 33605) := by
  unfold Seg34.relationRow2331 at r2331
  rw [seg34RStep4IlLc rho] at r2331
  linear_combination -r2331

theorem seg34RStep4Acc (rho : Nat -> Seg34.F) :
    seg34RIl4 rho = seg34RIl5 rho + (rho 33605) - (rho 33606) := by
  have hstate : seg34RIl4 rho = seg34RIl5 rho + seg34RIlAtom135 rho + (-1 : Seg34.F) * seg34RIlAtom136 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom135 seg34RIlAtom136
  ring

theorem seg34RStep4Pe (rho : Nat -> Seg34.F) (r2332 : Seg34.relationRow2332 rho) :
    seg34RPe4 rho = seg34RPe5 rho * rho 32768 := by
  unfold Seg34.relationRow2332 at r2332
  unfold seg34RPe4 seg34RPe5
  linear_combination -r2332

theorem seg34RStep4 (rho : Nat -> Seg34.F) (r2330 : Seg34.relationRow2330 rho) (r2331 : Seg34.relationRow2331 rho) (r2332 : Seg34.relationRow2332 rho) :
    seg34RPe4 rho = seg34RPe5 rho * rho 32768 ∧
    seg34RIl4 rho = seg34RIl5 rho + seg34RPe5 rho * (1 - rho 32768) -
      seg34RIl5 rho * (seg34RPe5 rho * (1 - rho 32768)) := by
  constructor
  · exact seg34RStep4Pe rho r2332
  · rw [seg34RStep4Acc rho, seg34RStep4L rho r2330, seg34RStep4IlMul rho r2331, seg34RStep4L rho r2330]

theorem seg34_r_chunk4 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 5 (seg34RPeState rho 5) (seg34RIlState rho 5) := by
  have htail := seg34_r_chunk3 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, r2330, r2331, r2332, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 4 ≤ n → n < 5 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 4 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep4 rho r2330 r2331 r2332
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 4 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
