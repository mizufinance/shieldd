import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk72

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep73L (rho : Nat -> Seg5.F) (r2171 : Seg5.relationRow2171 rho) :
    rho 1869 = seg5RPe74 rho * (1 - rho 1260) := by
  unfold Seg5.relationRow2171 at r2171
  unfold seg5RPe74
  linear_combination -r2171

theorem seg5RStep73IlMul (rho : Nat -> Seg5.F) (r2172 : Seg5.relationRow2172 rho) :
    rho 1870 = seg5RIl74 rho * (rho 1869) := by
  unfold Seg5.relationRow2172 at r2172
  rw [seg5RStep73IlLc rho] at r2172
  linear_combination -r2172

theorem seg5RStep73Acc (rho : Nat -> Seg5.F) :
    seg5RIl73 rho = seg5RIl74 rho + (rho 1869) - (rho 1870) := by
  have hstate : seg5RIl73 rho = seg5RIl74 rho + seg5RIlAtom88 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom88
  ring

theorem seg5RStep73Pe (rho : Nat -> Seg5.F) (r2173 : Seg5.relationRow2173 rho) :
    seg5RPe73 rho = seg5RPe74 rho * rho 1260 := by
  unfold Seg5.relationRow2173 at r2173
  unfold seg5RPe73 seg5RPe74
  linear_combination -r2173

theorem seg5RStep73 (rho : Nat -> Seg5.F) (r2171 : Seg5.relationRow2171 rho) (r2172 : Seg5.relationRow2172 rho) (r2173 : Seg5.relationRow2173 rho) :
    seg5RPe73 rho = seg5RPe74 rho * rho 1260 ∧
    seg5RIl73 rho = seg5RIl74 rho + seg5RPe74 rho * (1 - rho 1260) -
      seg5RIl74 rho * (seg5RPe74 rho * (1 - rho 1260)) := by
  constructor
  · exact seg5RStep73Pe rho r2173
  · rw [seg5RStep73Acc rho, seg5RStep73L rho r2171, seg5RStep73IlMul rho r2172, seg5RStep73L rho r2171]

theorem seg5_r_chunk73 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 74 (seg5RPeState rho 74) (seg5RIlState rho 74) := by
  have htail := seg5_r_chunk72 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2171, r2172, r2173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 73 ≤ n → n < 74 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 73 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep73 rho r2171 r2172 r2173
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 73 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
