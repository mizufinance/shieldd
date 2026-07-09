import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk55

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep56L (rho : Nat -> Seg5.F) (r2212 : Seg5.relationRow2212 rho) :
    rho 1910 = seg5RPe57 rho * (1 - rho 1243) := by
  unfold Seg5.relationRow2212 at r2212
  unfold seg5RPe57
  linear_combination -r2212

theorem seg5RStep56IlMul (rho : Nat -> Seg5.F) (r2213 : Seg5.relationRow2213 rho) :
    rho 1911 = seg5RIl57 rho * (rho 1910) := by
  unfold Seg5.relationRow2213 at r2213
  rw [seg5RStep56IlLc rho] at r2213
  linear_combination -r2213

theorem seg5RStep56Acc (rho : Nat -> Seg5.F) :
    seg5RIl56 rho = seg5RIl57 rho + (rho 1910) - (rho 1911) := by
  have hstate : seg5RIl56 rho = seg5RIl57 rho + seg5RIlAtom100 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom100
  ring

theorem seg5RStep56Pe (rho : Nat -> Seg5.F) (r2214 : Seg5.relationRow2214 rho) :
    seg5RPe56 rho = seg5RPe57 rho * rho 1243 := by
  unfold Seg5.relationRow2214 at r2214
  unfold seg5RPe56 seg5RPe57
  linear_combination -r2214

theorem seg5RStep56 (rho : Nat -> Seg5.F) (r2212 : Seg5.relationRow2212 rho) (r2213 : Seg5.relationRow2213 rho) (r2214 : Seg5.relationRow2214 rho) :
    seg5RPe56 rho = seg5RPe57 rho * rho 1243 ∧
    seg5RIl56 rho = seg5RIl57 rho + seg5RPe57 rho * (1 - rho 1243) -
      seg5RIl57 rho * (seg5RPe57 rho * (1 - rho 1243)) := by
  constructor
  · exact seg5RStep56Pe rho r2214
  · rw [seg5RStep56Acc rho, seg5RStep56L rho r2212, seg5RStep56IlMul rho r2213, seg5RStep56L rho r2212]

theorem seg5_r_chunk56 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 57 (seg5RPeState rho 57) (seg5RIlState rho 57) := by
  have htail := seg5_r_chunk55 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2212, r2213, r2214, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 56 ≤ n → n < 57 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 56 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep56 rho r2212 r2213 r2214
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 56 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
