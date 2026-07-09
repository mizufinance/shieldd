import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk64

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep65L (rho : Nat -> Seg5.F) (r2193 : Seg5.relationRow2193 rho) :
    rho 1891 = seg5RPe66 rho * (1 - rho 1252) := by
  unfold Seg5.relationRow2193 at r2193
  unfold seg5RPe66
  linear_combination -r2193

theorem seg5RStep65IlMul (rho : Nat -> Seg5.F) (r2194 : Seg5.relationRow2194 rho) :
    rho 1892 = seg5RIl66 rho * (rho 1891) := by
  unfold Seg5.relationRow2194 at r2194
  rw [seg5RStep65IlLc rho] at r2194
  linear_combination -r2194

theorem seg5RStep65Acc (rho : Nat -> Seg5.F) :
    seg5RIl65 rho = seg5RIl66 rho + (rho 1891) - (rho 1892) := by
  have hstate : seg5RIl65 rho = seg5RIl66 rho + seg5RIlAtom95 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom95
  ring

theorem seg5RStep65Pe (rho : Nat -> Seg5.F) (r2195 : Seg5.relationRow2195 rho) :
    seg5RPe65 rho = seg5RPe66 rho * rho 1252 := by
  unfold Seg5.relationRow2195 at r2195
  unfold seg5RPe65 seg5RPe66
  linear_combination -r2195

theorem seg5RStep65 (rho : Nat -> Seg5.F) (r2193 : Seg5.relationRow2193 rho) (r2194 : Seg5.relationRow2194 rho) (r2195 : Seg5.relationRow2195 rho) :
    seg5RPe65 rho = seg5RPe66 rho * rho 1252 ∧
    seg5RIl65 rho = seg5RIl66 rho + seg5RPe66 rho * (1 - rho 1252) -
      seg5RIl66 rho * (seg5RPe66 rho * (1 - rho 1252)) := by
  constructor
  · exact seg5RStep65Pe rho r2195
  · rw [seg5RStep65Acc rho, seg5RStep65L rho r2193, seg5RStep65IlMul rho r2194, seg5RStep65L rho r2193]

theorem seg5_r_chunk65 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 66 (seg5RPeState rho 66) (seg5RIlState rho 66) := by
  have htail := seg5_r_chunk64 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2193, r2194, r2195, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 65 ≤ n → n < 66 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 65 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep65 rho r2193 r2194 r2195
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 65 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
