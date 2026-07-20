import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk178

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep179L (rho : Nat -> Seg6.F) (r1967 : Seg6.relationRow1967 rho) :
    rho 2362 = seg6RPe180 rho * (1 - rho 2063) := by
  unfold Seg6.relationRow1967 at r1967
  unfold seg6RPe180
  linear_combination -r1967

theorem seg6RStep179IlMul (rho : Nat -> Seg6.F) (r1968 : Seg6.relationRow1968 rho) :
    rho 2363 = seg6RIl180 rho * (rho 2362) := by
  unfold Seg6.relationRow1968 at r1968
  rw [seg6RStep179IlLc rho] at r1968
  linear_combination -r1968

theorem seg6RStep179Acc (rho : Nat -> Seg6.F) :
    seg6RIl179 rho = seg6RIl180 rho + (rho 2362) - (rho 2363) := by
  have hstate : seg6RIl179 rho = seg6RIl180 rho + seg6RIlAtom36 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom36
  ring

theorem seg6RStep179Pe (rho : Nat -> Seg6.F) (r1969 : Seg6.relationRow1969 rho) :
    seg6RPe179 rho = seg6RPe180 rho * rho 2063 := by
  unfold Seg6.relationRow1969 at r1969
  unfold seg6RPe179 seg6RPe180
  linear_combination -r1969

theorem seg6RStep179 (rho : Nat -> Seg6.F) (r1967 : Seg6.relationRow1967 rho) (r1968 : Seg6.relationRow1968 rho) (r1969 : Seg6.relationRow1969 rho) :
    seg6RPe179 rho = seg6RPe180 rho * rho 2063 ∧
    seg6RIl179 rho = seg6RIl180 rho + seg6RPe180 rho * (1 - rho 2063) -
      seg6RIl180 rho * (seg6RPe180 rho * (1 - rho 2063)) := by
  constructor
  · exact seg6RStep179Pe rho r1969
  · rw [seg6RStep179Acc rho, seg6RStep179L rho r1967, seg6RStep179IlMul rho r1968, seg6RStep179L rho r1967]

theorem seg6_r_chunk179 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 180 (seg6RPeState rho 180) (seg6RIlState rho 180) := by
  have htail := seg6_r_chunk178 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1967, r1968, r1969, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 179 ≤ n → n < 180 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 179 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep179 rho r1967 r1968 r1969
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 179 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
