import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk112

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep113L (rho : Nat -> Seg34.F) (r2089 : Seg34.relationRow2089 rho) :
    rho 33364 = seg34RPe114 rho * (1 - rho 32877) := by
  unfold Seg34.relationRow2089 at r2089
  unfold seg34RPe114
  linear_combination -r2089

theorem seg34RStep113IlMul (rho : Nat -> Seg34.F) (r2090 : Seg34.relationRow2090 rho) :
    rho 33365 = seg34RIl114 rho * (rho 33364) := by
  unfold Seg34.relationRow2090 at r2090
  rw [seg34RStep113IlLc rho] at r2090
  linear_combination -r2090

theorem seg34RStep113Acc (rho : Nat -> Seg34.F) :
    seg34RIl113 rho = seg34RIl114 rho + (rho 33364) - (rho 33365) := by
  have hstate : seg34RIl113 rho = seg34RIl114 rho + seg34RIlAtom65 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom65
  ring

theorem seg34RStep113Pe (rho : Nat -> Seg34.F) (r2091 : Seg34.relationRow2091 rho) :
    seg34RPe113 rho = seg34RPe114 rho * rho 32877 := by
  unfold Seg34.relationRow2091 at r2091
  unfold seg34RPe113 seg34RPe114
  linear_combination -r2091

theorem seg34RStep113 (rho : Nat -> Seg34.F) (r2089 : Seg34.relationRow2089 rho) (r2090 : Seg34.relationRow2090 rho) (r2091 : Seg34.relationRow2091 rho) :
    seg34RPe113 rho = seg34RPe114 rho * rho 32877 ∧
    seg34RIl113 rho = seg34RIl114 rho + seg34RPe114 rho * (1 - rho 32877) -
      seg34RIl114 rho * (seg34RPe114 rho * (1 - rho 32877)) := by
  constructor
  · exact seg34RStep113Pe rho r2091
  · rw [seg34RStep113Acc rho, seg34RStep113L rho r2089, seg34RStep113IlMul rho r2090, seg34RStep113L rho r2089]

theorem seg34_r_chunk113 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 114 (seg34RPeState rho 114) (seg34RIlState rho 114) := by
  have htail := seg34_r_chunk112 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, r2089, r2090, r2091, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 113 ≤ n → n < 114 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 113 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep113 rho r2089 r2090 r2091
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 113 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
