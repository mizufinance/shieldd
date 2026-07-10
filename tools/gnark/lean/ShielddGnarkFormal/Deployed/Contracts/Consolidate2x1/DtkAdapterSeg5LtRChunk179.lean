import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk178

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep179L (rho : Nat -> Seg5.F) (r1967 : Seg5.relationRow1967 rho) :
    rho 1665 = seg5RPe180 rho * (1 - rho 1366) := by
  unfold Seg5.relationRow1967 at r1967
  unfold seg5RPe180
  linear_combination -r1967

theorem seg5RStep179IlMul (rho : Nat -> Seg5.F) (r1968 : Seg5.relationRow1968 rho) :
    rho 1666 = seg5RIl180 rho * (rho 1665) := by
  unfold Seg5.relationRow1968 at r1968
  rw [seg5RStep179IlLc rho] at r1968
  linear_combination -r1968

theorem seg5RStep179Acc (rho : Nat -> Seg5.F) :
    seg5RIl179 rho = seg5RIl180 rho + (rho 1665) - (rho 1666) := by
  have hstate : seg5RIl179 rho = seg5RIl180 rho + seg5RIlAtom36 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom36
  ring

theorem seg5RStep179Pe (rho : Nat -> Seg5.F) (r1969 : Seg5.relationRow1969 rho) :
    seg5RPe179 rho = seg5RPe180 rho * rho 1366 := by
  unfold Seg5.relationRow1969 at r1969
  unfold seg5RPe179 seg5RPe180
  linear_combination -r1969

theorem seg5RStep179 (rho : Nat -> Seg5.F) (r1967 : Seg5.relationRow1967 rho) (r1968 : Seg5.relationRow1968 rho) (r1969 : Seg5.relationRow1969 rho) :
    seg5RPe179 rho = seg5RPe180 rho * rho 1366 ∧
    seg5RIl179 rho = seg5RIl180 rho + seg5RPe180 rho * (1 - rho 1366) -
      seg5RIl180 rho * (seg5RPe180 rho * (1 - rho 1366)) := by
  constructor
  · exact seg5RStep179Pe rho r1969
  · rw [seg5RStep179Acc rho, seg5RStep179L rho r1967, seg5RStep179IlMul rho r1968, seg5RStep179L rho r1967]

theorem seg5_r_chunk179 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 180 (seg5RPeState rho 180) (seg5RIlState rho 180) := by
  have htail := seg5_r_chunk178 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1967, r1968, r1969, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 179 ≤ n → n < 180 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 179 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep179 rho r1967 r1968 r1969
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 179 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
