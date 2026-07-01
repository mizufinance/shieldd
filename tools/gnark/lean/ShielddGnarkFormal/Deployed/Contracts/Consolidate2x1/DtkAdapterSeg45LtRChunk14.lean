import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep14L (rho : Nat -> Seg45.F) (r2306 : Seg45.relationRow2306 rho) :
    rho 40537 = seg45RPe15 rho * (1 - rho 39734) := by
  unfold Seg45.relationRow2306 at r2306
  unfold seg45RPe15
  linear_combination -r2306

theorem seg45RStep14IlMul (rho : Nat -> Seg45.F) (r2307 : Seg45.relationRow2307 rho) :
    rho 40538 = seg45RIl15 rho * (rho 40537) := by
  unfold Seg45.relationRow2307 at r2307
  rw [seg45RStep14IlLc rho] at r2307
  linear_combination -r2307

theorem seg45RStep14Acc (rho : Nat -> Seg45.F) :
    seg45RIl14 rho = seg45RIl15 rho + (rho 40537) - (rho 40538) := by
  have hstate : seg45RIl14 rho = seg45RIl15 rho + seg45RIlAtom128 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom128
  ring

theorem seg45RStep14Pe (rho : Nat -> Seg45.F) (r2308 : Seg45.relationRow2308 rho) :
    seg45RPe14 rho = seg45RPe15 rho * rho 39734 := by
  unfold Seg45.relationRow2308 at r2308
  unfold seg45RPe14 seg45RPe15
  linear_combination -r2308

theorem seg45RStep14 (rho : Nat -> Seg45.F) (r2306 : Seg45.relationRow2306 rho) (r2307 : Seg45.relationRow2307 rho) (r2308 : Seg45.relationRow2308 rho) :
    seg45RPe14 rho = seg45RPe15 rho * rho 39734 ∧
    seg45RIl14 rho = seg45RIl15 rho + seg45RPe15 rho * (1 - rho 39734) -
      seg45RIl15 rho * (seg45RPe15 rho * (1 - rho 39734)) := by
  constructor
  · exact seg45RStep14Pe rho r2308
  · rw [seg45RStep14Acc rho, seg45RStep14L rho r2306, seg45RStep14IlMul rho r2307, seg45RStep14L rho r2306]

theorem seg45_r_chunk14 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 15 (seg45RPeState rho 15) (seg45RIlState rho 15) := by
  have htail := seg45_r_chunk13 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2306, r2307, r2308, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 14 ≤ n → n < 15 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 14 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep14 rho r2306 r2307 r2308
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 14 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
