import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk72

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep73L (rho : Nat -> Seg16.F) (r2171 : Seg16.relationRow2171 rho) :
    rho 14746 = seg16RPe74 rho * (1 - rho 14137) := by
  unfold Seg16.relationRow2171 at r2171
  unfold seg16RPe74
  linear_combination -r2171

theorem seg16RStep73IlMul (rho : Nat -> Seg16.F) (r2172 : Seg16.relationRow2172 rho) :
    rho 14747 = seg16RIl74 rho * (rho 14746) := by
  unfold Seg16.relationRow2172 at r2172
  rw [seg16RStep73IlLc rho] at r2172
  linear_combination -r2172

theorem seg16RStep73Acc (rho : Nat -> Seg16.F) :
    seg16RIl73 rho = seg16RIl74 rho + (rho 14746) - (rho 14747) := by
  have hstate : seg16RIl73 rho = seg16RIl74 rho + seg16RIlAtom88 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom88
  ring

theorem seg16RStep73Pe (rho : Nat -> Seg16.F) (r2173 : Seg16.relationRow2173 rho) :
    seg16RPe73 rho = seg16RPe74 rho * rho 14137 := by
  unfold Seg16.relationRow2173 at r2173
  unfold seg16RPe73 seg16RPe74
  linear_combination -r2173

theorem seg16RStep73 (rho : Nat -> Seg16.F) (r2171 : Seg16.relationRow2171 rho) (r2172 : Seg16.relationRow2172 rho) (r2173 : Seg16.relationRow2173 rho) :
    seg16RPe73 rho = seg16RPe74 rho * rho 14137 ∧
    seg16RIl73 rho = seg16RIl74 rho + seg16RPe74 rho * (1 - rho 14137) -
      seg16RIl74 rho * (seg16RPe74 rho * (1 - rho 14137)) := by
  constructor
  · exact seg16RStep73Pe rho r2173
  · rw [seg16RStep73Acc rho, seg16RStep73L rho r2171, seg16RStep73IlMul rho r2172, seg16RStep73L rho r2171]

theorem seg16_r_chunk73 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 74 (seg16RPeState rho 74) (seg16RIlState rho 74) := by
  have htail := seg16_r_chunk72 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, r2171, r2172, r2173, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 73 ≤ n → n < 74 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 73 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep73 rho r2171 r2172 r2173
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 73 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
