import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep7L (rho : Nat -> Seg45.F) (r2321 : Seg45.relationRow2321 rho) :
    rho 40552 = seg45RPe8 rho * (1 - rho 39727) := by
  unfold Seg45.relationRow2321 at r2321
  unfold seg45RPe8
  linear_combination -r2321

theorem seg45RStep7IlMul (rho : Nat -> Seg45.F) (r2322 : Seg45.relationRow2322 rho) :
    rho 40553 = seg45RIl8 rho * (rho 40552) := by
  unfold Seg45.relationRow2322 at r2322
  rw [seg45RStep7IlLc rho] at r2322
  linear_combination -r2322

theorem seg45RStep7Acc (rho : Nat -> Seg45.F) :
    seg45RIl7 rho = seg45RIl8 rho + (rho 40552) - (rho 40553) := by
  have hstate : seg45RIl7 rho = seg45RIl8 rho + seg45RIlAtom132 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom132
  ring

theorem seg45RStep7Pe (rho : Nat -> Seg45.F) (r2323 : Seg45.relationRow2323 rho) :
    seg45RPe7 rho = seg45RPe8 rho * rho 39727 := by
  unfold Seg45.relationRow2323 at r2323
  unfold seg45RPe7 seg45RPe8
  linear_combination -r2323

theorem seg45RStep7 (rho : Nat -> Seg45.F) (r2321 : Seg45.relationRow2321 rho) (r2322 : Seg45.relationRow2322 rho) (r2323 : Seg45.relationRow2323 rho) :
    seg45RPe7 rho = seg45RPe8 rho * rho 39727 ∧
    seg45RIl7 rho = seg45RIl8 rho + seg45RPe8 rho * (1 - rho 39727) -
      seg45RIl8 rho * (seg45RPe8 rho * (1 - rho 39727)) := by
  constructor
  · exact seg45RStep7Pe rho r2323
  · rw [seg45RStep7Acc rho, seg45RStep7L rho r2321, seg45RStep7IlMul rho r2322, seg45RStep7L rho r2321]

theorem seg45_r_chunk7 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 8 (seg45RPeState rho 8) (seg45RIlState rho 8) := by
  have htail := seg45_r_chunk6 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart29 at p29
  rcases p29 with ⟨_, r2321, r2322, r2323, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 7 ≤ n → n < 8 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 7 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep7 rho r2321 r2322 r2323
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 7 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
