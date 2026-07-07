import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk178

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep179L (rho : Nat -> Seg34.F) (r1967 : Seg34.relationRow1967 rho) :
    rho 33242 = seg34RPe180 rho * (1 - rho 32943) := by
  unfold Seg34.relationRow1967 at r1967
  unfold seg34RPe180
  linear_combination -r1967

theorem seg34RStep179IlMul (rho : Nat -> Seg34.F) (r1968 : Seg34.relationRow1968 rho) :
    rho 33243 = seg34RIl180 rho * (rho 33242) := by
  unfold Seg34.relationRow1968 at r1968
  rw [seg34RStep179IlLc rho] at r1968
  linear_combination -r1968

theorem seg34RStep179Acc (rho : Nat -> Seg34.F) :
    seg34RIl179 rho = seg34RIl180 rho + (rho 33242) - (rho 33243) := by
  have hstate : seg34RIl179 rho = seg34RIl180 rho + seg34RIlAtom36 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom36
  ring

theorem seg34RStep179Pe (rho : Nat -> Seg34.F) (r1969 : Seg34.relationRow1969 rho) :
    seg34RPe179 rho = seg34RPe180 rho * rho 32943 := by
  unfold Seg34.relationRow1969 at r1969
  unfold seg34RPe179 seg34RPe180
  linear_combination -r1969

theorem seg34RStep179 (rho : Nat -> Seg34.F) (r1967 : Seg34.relationRow1967 rho) (r1968 : Seg34.relationRow1968 rho) (r1969 : Seg34.relationRow1969 rho) :
    seg34RPe179 rho = seg34RPe180 rho * rho 32943 ∧
    seg34RIl179 rho = seg34RIl180 rho + seg34RPe180 rho * (1 - rho 32943) -
      seg34RIl180 rho * (seg34RPe180 rho * (1 - rho 32943)) := by
  constructor
  · exact seg34RStep179Pe rho r1969
  · rw [seg34RStep179Acc rho, seg34RStep179L rho r1967, seg34RStep179IlMul rho r1968, seg34RStep179L rho r1967]

theorem seg34_r_chunk179 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 180 (seg34RPeState rho 180) (seg34RIlState rho 180) := by
  have htail := seg34_r_chunk178 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1967, r1968, r1969, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 179 ≤ n → n < 180 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 179 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep179 rho r1967 r1968 r1969
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 179 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
