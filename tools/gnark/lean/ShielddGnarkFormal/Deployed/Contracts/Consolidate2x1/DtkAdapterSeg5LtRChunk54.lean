import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk53

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep54L (rho : Nat -> Seg5.F) (r2216 : Seg5.relationRow2216 rho) :
    rho 1914 = seg5RPe55 rho * (1 - rho 1241) := by
  unfold Seg5.relationRow2216 at r2216
  unfold seg5RPe55
  linear_combination -r2216

theorem seg5RStep54IlMul (rho : Nat -> Seg5.F) (r2217 : Seg5.relationRow2217 rho) :
    rho 1915 = seg5RIl55 rho * (rho 1914) := by
  unfold Seg5.relationRow2217 at r2217
  rw [seg5RStep54IlLc rho] at r2217
  linear_combination -r2217

theorem seg5RStep54Acc (rho : Nat -> Seg5.F) :
    seg5RIl54 rho = seg5RIl55 rho + (rho 1914) - (rho 1915) := by
  have hstate : seg5RIl54 rho = seg5RIl55 rho + seg5RIlAtom101 rho + (-1 : Seg5.F) * seg5RIlAtom102 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom101 seg5RIlAtom102
  ring

theorem seg5RStep54Pe (rho : Nat -> Seg5.F) (r2218 : Seg5.relationRow2218 rho) :
    seg5RPe54 rho = seg5RPe55 rho * rho 1241 := by
  unfold Seg5.relationRow2218 at r2218
  unfold seg5RPe54 seg5RPe55
  linear_combination -r2218

theorem seg5RStep54 (rho : Nat -> Seg5.F) (r2216 : Seg5.relationRow2216 rho) (r2217 : Seg5.relationRow2217 rho) (r2218 : Seg5.relationRow2218 rho) :
    seg5RPe54 rho = seg5RPe55 rho * rho 1241 ∧
    seg5RIl54 rho = seg5RIl55 rho + seg5RPe55 rho * (1 - rho 1241) -
      seg5RIl55 rho * (seg5RPe55 rho * (1 - rho 1241)) := by
  constructor
  · exact seg5RStep54Pe rho r2218
  · rw [seg5RStep54Acc rho, seg5RStep54L rho r2216, seg5RStep54IlMul rho r2217, seg5RStep54L rho r2216]

theorem seg5_r_chunk54 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 55 (seg5RPeState rho 55) (seg5RIlState rho 55) := by
  have htail := seg5_r_chunk53 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2216, r2217, r2218, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 54 ≤ n → n < 55 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 54 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep54 rho r2216 r2217 r2218
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 54 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
