import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk89

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep90L (rho : Nat -> Seg34.F) (r2140 : Seg34.relationRow2140 rho) :
    rho 33415 = seg34RPe91 rho * (1 - rho 32854) := by
  unfold Seg34.relationRow2140 at r2140
  unfold seg34RPe91
  linear_combination -r2140

theorem seg34RStep90IlMul (rho : Nat -> Seg34.F) (r2141 : Seg34.relationRow2141 rho) :
    rho 33416 = seg34RIl91 rho * (rho 33415) := by
  unfold Seg34.relationRow2141 at r2141
  rw [seg34RStep90IlLc rho] at r2141
  linear_combination -r2141

theorem seg34RStep90Acc (rho : Nat -> Seg34.F) :
    seg34RIl90 rho = seg34RIl91 rho + (rho 33415) - (rho 33416) := by
  have hstate : seg34RIl90 rho = seg34RIl91 rho + seg34RIlAtom80 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom80
  ring

theorem seg34RStep90Pe (rho : Nat -> Seg34.F) (r2142 : Seg34.relationRow2142 rho) :
    seg34RPe90 rho = seg34RPe91 rho * rho 32854 := by
  unfold Seg34.relationRow2142 at r2142
  unfold seg34RPe90 seg34RPe91
  linear_combination -r2142

theorem seg34RStep90 (rho : Nat -> Seg34.F) (r2140 : Seg34.relationRow2140 rho) (r2141 : Seg34.relationRow2141 rho) (r2142 : Seg34.relationRow2142 rho) :
    seg34RPe90 rho = seg34RPe91 rho * rho 32854 ∧
    seg34RIl90 rho = seg34RIl91 rho + seg34RPe91 rho * (1 - rho 32854) -
      seg34RIl91 rho * (seg34RPe91 rho * (1 - rho 32854)) := by
  constructor
  · exact seg34RStep90Pe rho r2142
  · rw [seg34RStep90Acc rho, seg34RStep90L rho r2140, seg34RStep90IlMul rho r2141, seg34RStep90L rho r2140]

theorem seg34_r_chunk90 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 91 (seg34RPeState rho 91) (seg34RIlState rho 91) := by
  have htail := seg34_r_chunk89 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2140, r2141, r2142, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 90 ≤ n → n < 91 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 90 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep90 rho r2140 r2141 r2142
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 90 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
