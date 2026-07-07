import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk48

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep49L (rho : Nat -> Seg45.F) (r2227 : Seg45.relationRow2227 rho) :
    rho 40458 = seg45RPe50 rho * (1 - rho 39769) := by
  unfold Seg45.relationRow2227 at r2227
  unfold seg45RPe50
  linear_combination -r2227

theorem seg45RStep49IlMul (rho : Nat -> Seg45.F) (r2228 : Seg45.relationRow2228 rho) :
    rho 40459 = seg45RIl50 rho * (rho 40458) := by
  unfold Seg45.relationRow2228 at r2228
  rw [seg45RStep49IlLc rho] at r2228
  linear_combination -r2228

theorem seg45RStep49Acc (rho : Nat -> Seg45.F) :
    seg45RIl49 rho = seg45RIl50 rho + (rho 40458) - (rho 40459) := by
  have hstate : seg45RIl49 rho = seg45RIl50 rho + seg45RIlAtom105 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom105
  ring

theorem seg45RStep49Pe (rho : Nat -> Seg45.F) (r2229 : Seg45.relationRow2229 rho) :
    seg45RPe49 rho = seg45RPe50 rho * rho 39769 := by
  unfold Seg45.relationRow2229 at r2229
  unfold seg45RPe49 seg45RPe50
  linear_combination -r2229

theorem seg45RStep49 (rho : Nat -> Seg45.F) (r2227 : Seg45.relationRow2227 rho) (r2228 : Seg45.relationRow2228 rho) (r2229 : Seg45.relationRow2229 rho) :
    seg45RPe49 rho = seg45RPe50 rho * rho 39769 ∧
    seg45RIl49 rho = seg45RIl50 rho + seg45RPe50 rho * (1 - rho 39769) -
      seg45RIl50 rho * (seg45RPe50 rho * (1 - rho 39769)) := by
  constructor
  · exact seg45RStep49Pe rho r2229
  · rw [seg45RStep49Acc rho, seg45RStep49L rho r2227, seg45RStep49IlMul rho r2228, seg45RStep49L rho r2227]

theorem seg45_r_chunk49 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 50 (seg45RPeState rho 50) (seg45RIlState rho 50) := by
  have htail := seg45_r_chunk48 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2227, r2228, r2229, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 49 ≤ n → n < 50 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 49 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep49 rho r2227 r2228 r2229
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 49 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
