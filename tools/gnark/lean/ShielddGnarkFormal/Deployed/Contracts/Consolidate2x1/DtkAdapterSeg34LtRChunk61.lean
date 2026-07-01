import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk60

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep61L (rho : Nat -> Seg34.F) (r2201 : Seg34.relationRow2201 rho) :
    rho 33476 = seg34RPe62 rho * (1 - rho 32825) := by
  unfold Seg34.relationRow2201 at r2201
  unfold seg34RPe62
  linear_combination -r2201

theorem seg34RStep61IlMul (rho : Nat -> Seg34.F) (r2202 : Seg34.relationRow2202 rho) :
    rho 33477 = seg34RIl62 rho * (rho 33476) := by
  unfold Seg34.relationRow2202 at r2202
  rw [seg34RStep61IlLc rho] at r2202
  linear_combination -r2202

theorem seg34RStep61Acc (rho : Nat -> Seg34.F) :
    seg34RIl61 rho = seg34RIl62 rho + (rho 33476) - (rho 33477) := by
  have hstate : seg34RIl61 rho = seg34RIl62 rho + seg34RIlAtom97 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom97
  ring

theorem seg34RStep61Pe (rho : Nat -> Seg34.F) (r2203 : Seg34.relationRow2203 rho) :
    seg34RPe61 rho = seg34RPe62 rho * rho 32825 := by
  unfold Seg34.relationRow2203 at r2203
  unfold seg34RPe61 seg34RPe62
  linear_combination -r2203

theorem seg34RStep61 (rho : Nat -> Seg34.F) (r2201 : Seg34.relationRow2201 rho) (r2202 : Seg34.relationRow2202 rho) (r2203 : Seg34.relationRow2203 rho) :
    seg34RPe61 rho = seg34RPe62 rho * rho 32825 ∧
    seg34RIl61 rho = seg34RIl62 rho + seg34RPe62 rho * (1 - rho 32825) -
      seg34RIl62 rho * (seg34RPe62 rho * (1 - rho 32825)) := by
  constructor
  · exact seg34RStep61Pe rho r2203
  · rw [seg34RStep61Acc rho, seg34RStep61L rho r2201, seg34RStep61IlMul rho r2202, seg34RStep61L rho r2201]

theorem seg34_r_chunk61 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 62 (seg34RPeState rho 62) (seg34RIlState rho 62) := by
  have htail := seg34_r_chunk60 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2201, r2202, r2203, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 61 ≤ n → n < 62 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 61 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep61 rho r2201 r2202 r2203
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 61 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
