import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep14L (rho : Nat -> Seg34.F) (r2306 : Seg34.relationRow2306 rho) :
    rho 33581 = seg34RPe15 rho * (1 - rho 32778) := by
  unfold Seg34.relationRow2306 at r2306
  unfold seg34RPe15
  linear_combination -r2306

theorem seg34RStep14IlMul (rho : Nat -> Seg34.F) (r2307 : Seg34.relationRow2307 rho) :
    rho 33582 = seg34RIl15 rho * (rho 33581) := by
  unfold Seg34.relationRow2307 at r2307
  rw [seg34RStep14IlLc rho] at r2307
  linear_combination -r2307

theorem seg34RStep14Acc (rho : Nat -> Seg34.F) :
    seg34RIl14 rho = seg34RIl15 rho + (rho 33581) - (rho 33582) := by
  have hstate : seg34RIl14 rho = seg34RIl15 rho + seg34RIlAtom128 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom128
  ring

theorem seg34RStep14Pe (rho : Nat -> Seg34.F) (r2308 : Seg34.relationRow2308 rho) :
    seg34RPe14 rho = seg34RPe15 rho * rho 32778 := by
  unfold Seg34.relationRow2308 at r2308
  unfold seg34RPe14 seg34RPe15
  linear_combination -r2308

theorem seg34RStep14 (rho : Nat -> Seg34.F) (r2306 : Seg34.relationRow2306 rho) (r2307 : Seg34.relationRow2307 rho) (r2308 : Seg34.relationRow2308 rho) :
    seg34RPe14 rho = seg34RPe15 rho * rho 32778 ∧
    seg34RIl14 rho = seg34RIl15 rho + seg34RPe15 rho * (1 - rho 32778) -
      seg34RIl15 rho * (seg34RPe15 rho * (1 - rho 32778)) := by
  constructor
  · exact seg34RStep14Pe rho r2308
  · rw [seg34RStep14Acc rho, seg34RStep14L rho r2306, seg34RStep14IlMul rho r2307, seg34RStep14L rho r2306]

theorem seg34_r_chunk14 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 15 (seg34RPeState rho 15) (seg34RIlState rho 15) := by
  have htail := seg34_r_chunk13 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2306, r2307, r2308, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 14 ≤ n → n < 15 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 14 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep14 rho r2306 r2307 r2308
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 14 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
