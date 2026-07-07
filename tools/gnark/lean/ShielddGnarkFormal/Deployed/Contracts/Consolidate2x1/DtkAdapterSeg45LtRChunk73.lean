import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk72

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep73L (rho : Nat -> Seg45.F) (r2171 : Seg45.relationRow2171 rho) :
    rho 40402 = seg45RPe74 rho * (1 - rho 39793) := by
  unfold Seg45.relationRow2171 at r2171
  unfold seg45RPe74
  linear_combination -r2171

theorem seg45RStep73IlMul (rho : Nat -> Seg45.F) (r2172 : Seg45.relationRow2172 rho) :
    rho 40403 = seg45RIl74 rho * (rho 40402) := by
  unfold Seg45.relationRow2172 at r2172
  rw [seg45RStep73IlLc rho] at r2172
  linear_combination -r2172

theorem seg45RStep73Acc (rho : Nat -> Seg45.F) :
    seg45RIl73 rho = seg45RIl74 rho + (rho 40402) - (rho 40403) := by
  have hstate : seg45RIl73 rho = seg45RIl74 rho + seg45RIlAtom88 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom88
  ring

theorem seg45RStep73Pe (rho : Nat -> Seg45.F) (r2173 : Seg45.relationRow2173 rho) :
    seg45RPe73 rho = seg45RPe74 rho * rho 39793 := by
  unfold Seg45.relationRow2173 at r2173
  unfold seg45RPe73 seg45RPe74
  linear_combination -r2173

theorem seg45RStep73 (rho : Nat -> Seg45.F) (r2171 : Seg45.relationRow2171 rho) (r2172 : Seg45.relationRow2172 rho) (r2173 : Seg45.relationRow2173 rho) :
    seg45RPe73 rho = seg45RPe74 rho * rho 39793 ∧
    seg45RIl73 rho = seg45RIl74 rho + seg45RPe74 rho * (1 - rho 39793) -
      seg45RIl74 rho * (seg45RPe74 rho * (1 - rho 39793)) := by
  constructor
  · exact seg45RStep73Pe rho r2173
  · rw [seg45RStep73Acc rho, seg45RStep73L rho r2171, seg45RStep73IlMul rho r2172, seg45RStep73L rho r2171]

theorem seg45_r_chunk73 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 74 (seg45RPeState rho 74) (seg45RIlState rho 74) := by
  have htail := seg45_r_chunk72 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2171, r2172, r2173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 73 ≤ n → n < 74 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 73 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep73 rho r2171 r2172 r2173
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 73 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
