import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk171

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep172L (rho : Nat -> Seg5.F) (r1980 : Seg5.relationRow1980 rho) :
    rho 1678 = seg5RPe173 rho * (1 - rho 1359) := by
  unfold Seg5.relationRow1980 at r1980
  unfold seg5RPe173
  linear_combination -r1980

theorem seg5RStep172IlMul (rho : Nat -> Seg5.F) (r1981 : Seg5.relationRow1981 rho) :
    rho 1679 = seg5RIl173 rho * (rho 1678) := by
  unfold Seg5.relationRow1981 at r1981
  rw [seg5RStep172IlLc rho] at r1981
  linear_combination -r1981

theorem seg5RStep172Acc (rho : Nat -> Seg5.F) :
    seg5RIl172 rho = seg5RIl173 rho + (rho 1678) - (rho 1679) := by
  have hstate : seg5RIl172 rho = seg5RIl173 rho + seg5RIlAtom39 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom39
  ring

theorem seg5RStep172Pe (rho : Nat -> Seg5.F) (r1982 : Seg5.relationRow1982 rho) :
    seg5RPe172 rho = seg5RPe173 rho * rho 1359 := by
  unfold Seg5.relationRow1982 at r1982
  unfold seg5RPe172 seg5RPe173
  linear_combination -r1982

theorem seg5RStep172 (rho : Nat -> Seg5.F) (r1980 : Seg5.relationRow1980 rho) (r1981 : Seg5.relationRow1981 rho) (r1982 : Seg5.relationRow1982 rho) :
    seg5RPe172 rho = seg5RPe173 rho * rho 1359 ∧
    seg5RIl172 rho = seg5RIl173 rho + seg5RPe173 rho * (1 - rho 1359) -
      seg5RIl173 rho * (seg5RPe173 rho * (1 - rho 1359)) := by
  constructor
  · exact seg5RStep172Pe rho r1982
  · rw [seg5RStep172Acc rho, seg5RStep172L rho r1980, seg5RStep172IlMul rho r1981, seg5RStep172L rho r1980]

theorem seg5_r_chunk172 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 173 (seg5RPeState rho 173) (seg5RIlState rho 173) := by
  have htail := seg5_r_chunk171 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1980, r1981, r1982, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 172 ≤ n → n < 173 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 172 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep172 rho r1980 r1981 r1982
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 172 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
