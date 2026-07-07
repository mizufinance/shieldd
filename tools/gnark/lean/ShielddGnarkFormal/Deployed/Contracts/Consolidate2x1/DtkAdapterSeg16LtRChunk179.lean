import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk178

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep179L (rho : Nat -> Seg16.F) (r1967 : Seg16.relationRow1967 rho) :
    rho 14542 = seg16RPe180 rho * (1 - rho 14243) := by
  unfold Seg16.relationRow1967 at r1967
  unfold seg16RPe180
  linear_combination -r1967

theorem seg16RStep179IlMul (rho : Nat -> Seg16.F) (r1968 : Seg16.relationRow1968 rho) :
    rho 14543 = seg16RIl180 rho * (rho 14542) := by
  unfold Seg16.relationRow1968 at r1968
  rw [seg16RStep179IlLc rho] at r1968
  linear_combination -r1968

theorem seg16RStep179Acc (rho : Nat -> Seg16.F) :
    seg16RIl179 rho = seg16RIl180 rho + (rho 14542) - (rho 14543) := by
  have hstate : seg16RIl179 rho = seg16RIl180 rho + seg16RIlAtom36 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom36
  ring

theorem seg16RStep179Pe (rho : Nat -> Seg16.F) (r1969 : Seg16.relationRow1969 rho) :
    seg16RPe179 rho = seg16RPe180 rho * rho 14243 := by
  unfold Seg16.relationRow1969 at r1969
  unfold seg16RPe179 seg16RPe180
  linear_combination -r1969

theorem seg16RStep179 (rho : Nat -> Seg16.F) (r1967 : Seg16.relationRow1967 rho) (r1968 : Seg16.relationRow1968 rho) (r1969 : Seg16.relationRow1969 rho) :
    seg16RPe179 rho = seg16RPe180 rho * rho 14243 ∧
    seg16RIl179 rho = seg16RIl180 rho + seg16RPe180 rho * (1 - rho 14243) -
      seg16RIl180 rho * (seg16RPe180 rho * (1 - rho 14243)) := by
  constructor
  · exact seg16RStep179Pe rho r1969
  · rw [seg16RStep179Acc rho, seg16RStep179L rho r1967, seg16RStep179IlMul rho r1968, seg16RStep179L rho r1967]

theorem seg16_r_chunk179 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 180 (seg16RPeState rho 180) (seg16RIlState rho 180) := by
  have htail := seg16_r_chunk178 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1967, r1968, r1969, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 179 ≤ n → n < 180 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 179 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep179 rho r1967 r1968 r1969
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 179 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
