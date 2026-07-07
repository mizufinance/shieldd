import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk178

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep179L (rho : Nat -> Seg45.F) (r1967 : Seg45.relationRow1967 rho) :
    rho 40198 = seg45RPe180 rho * (1 - rho 39899) := by
  unfold Seg45.relationRow1967 at r1967
  unfold seg45RPe180
  linear_combination -r1967

theorem seg45RStep179IlMul (rho : Nat -> Seg45.F) (r1968 : Seg45.relationRow1968 rho) :
    rho 40199 = seg45RIl180 rho * (rho 40198) := by
  unfold Seg45.relationRow1968 at r1968
  rw [seg45RStep179IlLc rho] at r1968
  linear_combination -r1968

theorem seg45RStep179Acc (rho : Nat -> Seg45.F) :
    seg45RIl179 rho = seg45RIl180 rho + (rho 40198) - (rho 40199) := by
  have hstate : seg45RIl179 rho = seg45RIl180 rho + seg45RIlAtom36 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom36
  ring

theorem seg45RStep179Pe (rho : Nat -> Seg45.F) (r1969 : Seg45.relationRow1969 rho) :
    seg45RPe179 rho = seg45RPe180 rho * rho 39899 := by
  unfold Seg45.relationRow1969 at r1969
  unfold seg45RPe179 seg45RPe180
  linear_combination -r1969

theorem seg45RStep179 (rho : Nat -> Seg45.F) (r1967 : Seg45.relationRow1967 rho) (r1968 : Seg45.relationRow1968 rho) (r1969 : Seg45.relationRow1969 rho) :
    seg45RPe179 rho = seg45RPe180 rho * rho 39899 ∧
    seg45RIl179 rho = seg45RIl180 rho + seg45RPe180 rho * (1 - rho 39899) -
      seg45RIl180 rho * (seg45RPe180 rho * (1 - rho 39899)) := by
  constructor
  · exact seg45RStep179Pe rho r1969
  · rw [seg45RStep179Acc rho, seg45RStep179L rho r1967, seg45RStep179IlMul rho r1968, seg45RStep179L rho r1967]

theorem seg45_r_chunk179 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 180 (seg45RPeState rho 180) (seg45RIlState rho 180) := by
  have htail := seg45_r_chunk178 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1967, r1968, r1969, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 179 ≤ n → n < 180 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 179 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep179 rho r1967 r1968 r1969
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 179 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
