import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk143

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep144L (rho : Nat -> Seg5.F) (r2036 : Seg5.relationRow2036 rho) :
    rho 1734 = seg5RPe145 rho * (1 - rho 1331) := by
  unfold Seg5.relationRow2036 at r2036
  unfold seg5RPe145
  linear_combination -r2036

theorem seg5RStep144IlMul (rho : Nat -> Seg5.F) (r2037 : Seg5.relationRow2037 rho) :
    rho 1735 = seg5RIl145 rho * (rho 1734) := by
  unfold Seg5.relationRow2037 at r2037
  rw [seg5RStep144IlLc rho] at r2037
  linear_combination -r2037

theorem seg5RStep144Acc (rho : Nat -> Seg5.F) :
    seg5RIl144 rho = seg5RIl145 rho + (rho 1734) - (rho 1735) := by
  have hstate : seg5RIl144 rho = seg5RIl145 rho + seg5RIlAtom54 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom54
  ring

theorem seg5RStep144Pe (rho : Nat -> Seg5.F) (r2038 : Seg5.relationRow2038 rho) :
    seg5RPe144 rho = seg5RPe145 rho * rho 1331 := by
  unfold Seg5.relationRow2038 at r2038
  unfold seg5RPe144 seg5RPe145
  linear_combination -r2038

theorem seg5RStep144 (rho : Nat -> Seg5.F) (r2036 : Seg5.relationRow2036 rho) (r2037 : Seg5.relationRow2037 rho) (r2038 : Seg5.relationRow2038 rho) :
    seg5RPe144 rho = seg5RPe145 rho * rho 1331 ∧
    seg5RIl144 rho = seg5RIl145 rho + seg5RPe145 rho * (1 - rho 1331) -
      seg5RIl145 rho * (seg5RPe145 rho * (1 - rho 1331)) := by
  constructor
  · exact seg5RStep144Pe rho r2038
  · rw [seg5RStep144Acc rho, seg5RStep144L rho r2036, seg5RStep144IlMul rho r2037, seg5RStep144L rho r2036]

theorem seg5_r_chunk144 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 145 (seg5RPeState rho 145) (seg5RIlState rho 145) := by
  have htail := seg5_r_chunk143 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2036, r2037, r2038, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 144 ≤ n → n < 145 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 144 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep144 rho r2036 r2037 r2038
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 144 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
