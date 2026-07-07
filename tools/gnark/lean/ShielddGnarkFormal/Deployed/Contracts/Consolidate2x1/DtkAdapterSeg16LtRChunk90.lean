import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk89

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep90L (rho : Nat -> Seg16.F) (r2140 : Seg16.relationRow2140 rho) :
    rho 14715 = seg16RPe91 rho * (1 - rho 14154) := by
  unfold Seg16.relationRow2140 at r2140
  unfold seg16RPe91
  linear_combination -r2140

theorem seg16RStep90IlMul (rho : Nat -> Seg16.F) (r2141 : Seg16.relationRow2141 rho) :
    rho 14716 = seg16RIl91 rho * (rho 14715) := by
  unfold Seg16.relationRow2141 at r2141
  rw [seg16RStep90IlLc rho] at r2141
  linear_combination -r2141

theorem seg16RStep90Acc (rho : Nat -> Seg16.F) :
    seg16RIl90 rho = seg16RIl91 rho + (rho 14715) - (rho 14716) := by
  have hstate : seg16RIl90 rho = seg16RIl91 rho + seg16RIlAtom80 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom80
  ring

theorem seg16RStep90Pe (rho : Nat -> Seg16.F) (r2142 : Seg16.relationRow2142 rho) :
    seg16RPe90 rho = seg16RPe91 rho * rho 14154 := by
  unfold Seg16.relationRow2142 at r2142
  unfold seg16RPe90 seg16RPe91
  linear_combination -r2142

theorem seg16RStep90 (rho : Nat -> Seg16.F) (r2140 : Seg16.relationRow2140 rho) (r2141 : Seg16.relationRow2141 rho) (r2142 : Seg16.relationRow2142 rho) :
    seg16RPe90 rho = seg16RPe91 rho * rho 14154 ∧
    seg16RIl90 rho = seg16RIl91 rho + seg16RPe91 rho * (1 - rho 14154) -
      seg16RIl91 rho * (seg16RPe91 rho * (1 - rho 14154)) := by
  constructor
  · exact seg16RStep90Pe rho r2142
  · rw [seg16RStep90Acc rho, seg16RStep90L rho r2140, seg16RStep90IlMul rho r2141, seg16RStep90L rho r2140]

theorem seg16_r_chunk90 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 91 (seg16RPeState rho 91) (seg16RIlState rho 91) := by
  have htail := seg16_r_chunk89 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2140, r2141, r2142, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 90 ≤ n → n < 91 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 90 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep90 rho r2140 r2141 r2142
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 90 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
