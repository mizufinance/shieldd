import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk38

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep39L (rho : Nat -> Seg45.F) (r2251 : Seg45.relationRow2251 rho) :
    rho 40482 = seg45RPe40 rho * (1 - rho 39759) := by
  unfold Seg45.relationRow2251 at r2251
  unfold seg45RPe40
  linear_combination -r2251

theorem seg45RStep39IlMul (rho : Nat -> Seg45.F) (r2252 : Seg45.relationRow2252 rho) :
    rho 40483 = seg45RIl40 rho * (rho 40482) := by
  unfold Seg45.relationRow2252 at r2252
  rw [seg45RStep39IlLc rho] at r2252
  linear_combination -r2252

theorem seg45RStep39Acc (rho : Nat -> Seg45.F) :
    seg45RIl39 rho = seg45RIl40 rho + (rho 40482) - (rho 40483) := by
  have hstate : seg45RIl39 rho = seg45RIl40 rho + seg45RIlAtom112 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom112
  ring

theorem seg45RStep39Pe (rho : Nat -> Seg45.F) (r2253 : Seg45.relationRow2253 rho) :
    seg45RPe39 rho = seg45RPe40 rho * rho 39759 := by
  unfold Seg45.relationRow2253 at r2253
  unfold seg45RPe39 seg45RPe40
  linear_combination -r2253

theorem seg45RStep39 (rho : Nat -> Seg45.F) (r2251 : Seg45.relationRow2251 rho) (r2252 : Seg45.relationRow2252 rho) (r2253 : Seg45.relationRow2253 rho) :
    seg45RPe39 rho = seg45RPe40 rho * rho 39759 ∧
    seg45RIl39 rho = seg45RIl40 rho + seg45RPe40 rho * (1 - rho 39759) -
      seg45RIl40 rho * (seg45RPe40 rho * (1 - rho 39759)) := by
  constructor
  · exact seg45RStep39Pe rho r2253
  · rw [seg45RStep39Acc rho, seg45RStep39L rho r2251, seg45RStep39IlMul rho r2252, seg45RStep39L rho r2251]

theorem seg45_r_chunk39 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 40 (seg45RPeState rho 40) (seg45RIlState rho 40) := by
  have htail := seg45_r_chunk38 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2251, r2252, r2253, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 39 ≤ n → n < 40 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 39 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep39 rho r2251 r2252 r2253
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 39 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
