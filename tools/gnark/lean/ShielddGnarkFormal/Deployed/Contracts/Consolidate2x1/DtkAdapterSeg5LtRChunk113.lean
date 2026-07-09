import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk112

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep113L (rho : Nat -> Seg5.F) (r2089 : Seg5.relationRow2089 rho) :
    rho 1787 = seg5RPe114 rho * (1 - rho 1300) := by
  unfold Seg5.relationRow2089 at r2089
  unfold seg5RPe114
  linear_combination -r2089

theorem seg5RStep113IlMul (rho : Nat -> Seg5.F) (r2090 : Seg5.relationRow2090 rho) :
    rho 1788 = seg5RIl114 rho * (rho 1787) := by
  unfold Seg5.relationRow2090 at r2090
  rw [seg5RStep113IlLc rho] at r2090
  linear_combination -r2090

theorem seg5RStep113Acc (rho : Nat -> Seg5.F) :
    seg5RIl113 rho = seg5RIl114 rho + (rho 1787) - (rho 1788) := by
  have hstate : seg5RIl113 rho = seg5RIl114 rho + seg5RIlAtom65 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom65
  ring

theorem seg5RStep113Pe (rho : Nat -> Seg5.F) (r2091 : Seg5.relationRow2091 rho) :
    seg5RPe113 rho = seg5RPe114 rho * rho 1300 := by
  unfold Seg5.relationRow2091 at r2091
  unfold seg5RPe113 seg5RPe114
  linear_combination -r2091

theorem seg5RStep113 (rho : Nat -> Seg5.F) (r2089 : Seg5.relationRow2089 rho) (r2090 : Seg5.relationRow2090 rho) (r2091 : Seg5.relationRow2091 rho) :
    seg5RPe113 rho = seg5RPe114 rho * rho 1300 ∧
    seg5RIl113 rho = seg5RIl114 rho + seg5RPe114 rho * (1 - rho 1300) -
      seg5RIl114 rho * (seg5RPe114 rho * (1 - rho 1300)) := by
  constructor
  · exact seg5RStep113Pe rho r2091
  · rw [seg5RStep113Acc rho, seg5RStep113L rho r2089, seg5RStep113IlMul rho r2090, seg5RStep113L rho r2089]

theorem seg5_r_chunk113 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 114 (seg5RPeState rho 114) (seg5RIlState rho 114) := by
  have htail := seg5_r_chunk112 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, r2089, r2090, r2091, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 113 ≤ n → n < 114 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 113 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep113 rho r2089 r2090 r2091
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 113 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
