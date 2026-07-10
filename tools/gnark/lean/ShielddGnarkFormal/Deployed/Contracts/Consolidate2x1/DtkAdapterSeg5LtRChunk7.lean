import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep7L (rho : Nat -> Seg5.F) (r2321 : Seg5.relationRow2321 rho) :
    rho 2019 = seg5RPe8 rho * (1 - rho 1194) := by
  unfold Seg5.relationRow2321 at r2321
  unfold seg5RPe8
  linear_combination -r2321

theorem seg5RStep7IlMul (rho : Nat -> Seg5.F) (r2322 : Seg5.relationRow2322 rho) :
    rho 2020 = seg5RIl8 rho * (rho 2019) := by
  unfold Seg5.relationRow2322 at r2322
  rw [seg5RStep7IlLc rho] at r2322
  linear_combination -r2322

theorem seg5RStep7Acc (rho : Nat -> Seg5.F) :
    seg5RIl7 rho = seg5RIl8 rho + (rho 2019) - (rho 2020) := by
  have hstate : seg5RIl7 rho = seg5RIl8 rho + seg5RIlAtom132 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom132
  ring

theorem seg5RStep7Pe (rho : Nat -> Seg5.F) (r2323 : Seg5.relationRow2323 rho) :
    seg5RPe7 rho = seg5RPe8 rho * rho 1194 := by
  unfold Seg5.relationRow2323 at r2323
  unfold seg5RPe7 seg5RPe8
  linear_combination -r2323

theorem seg5RStep7 (rho : Nat -> Seg5.F) (r2321 : Seg5.relationRow2321 rho) (r2322 : Seg5.relationRow2322 rho) (r2323 : Seg5.relationRow2323 rho) :
    seg5RPe7 rho = seg5RPe8 rho * rho 1194 ∧
    seg5RIl7 rho = seg5RIl8 rho + seg5RPe8 rho * (1 - rho 1194) -
      seg5RIl8 rho * (seg5RPe8 rho * (1 - rho 1194)) := by
  constructor
  · exact seg5RStep7Pe rho r2323
  · rw [seg5RStep7Acc rho, seg5RStep7L rho r2321, seg5RStep7IlMul rho r2322, seg5RStep7L rho r2321]

theorem seg5_r_chunk7 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 8 (seg5RPeState rho 8) (seg5RIlState rho 8) := by
  have htail := seg5_r_chunk6 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart29 at p29
  rcases p29 with ⟨_, r2321, r2322, r2323, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 7 ≤ n → n < 8 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 7 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep7 rho r2321 r2322 r2323
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 7 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
