import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk64

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep65L (rho : Nat -> Seg34.F) (r2193 : Seg34.relationRow2193 rho) :
    rho 33468 = seg34RPe66 rho * (1 - rho 32829) := by
  unfold Seg34.relationRow2193 at r2193
  unfold seg34RPe66
  linear_combination -r2193

theorem seg34RStep65IlMul (rho : Nat -> Seg34.F) (r2194 : Seg34.relationRow2194 rho) :
    rho 33469 = seg34RIl66 rho * (rho 33468) := by
  unfold Seg34.relationRow2194 at r2194
  rw [seg34RStep65IlLc rho] at r2194
  linear_combination -r2194

theorem seg34RStep65Acc (rho : Nat -> Seg34.F) :
    seg34RIl65 rho = seg34RIl66 rho + (rho 33468) - (rho 33469) := by
  have hstate : seg34RIl65 rho = seg34RIl66 rho + seg34RIlAtom95 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom95
  ring

theorem seg34RStep65Pe (rho : Nat -> Seg34.F) (r2195 : Seg34.relationRow2195 rho) :
    seg34RPe65 rho = seg34RPe66 rho * rho 32829 := by
  unfold Seg34.relationRow2195 at r2195
  unfold seg34RPe65 seg34RPe66
  linear_combination -r2195

theorem seg34RStep65 (rho : Nat -> Seg34.F) (r2193 : Seg34.relationRow2193 rho) (r2194 : Seg34.relationRow2194 rho) (r2195 : Seg34.relationRow2195 rho) :
    seg34RPe65 rho = seg34RPe66 rho * rho 32829 ∧
    seg34RIl65 rho = seg34RIl66 rho + seg34RPe66 rho * (1 - rho 32829) -
      seg34RIl66 rho * (seg34RPe66 rho * (1 - rho 32829)) := by
  constructor
  · exact seg34RStep65Pe rho r2195
  · rw [seg34RStep65Acc rho, seg34RStep65L rho r2193, seg34RStep65IlMul rho r2194, seg34RStep65L rho r2193]

theorem seg34_r_chunk65 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 66 (seg34RPeState rho 66) (seg34RIlState rho 66) := by
  have htail := seg34_r_chunk64 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2193, r2194, r2195, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 65 ≤ n → n < 66 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 65 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep65 rho r2193 r2194 r2195
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 65 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
