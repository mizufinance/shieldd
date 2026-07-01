import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk177

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep178L (rho : Nat -> Seg16.F) (r1970 : Seg16.relationRow1970 rho) :
    rho 14545 = seg16RPe179 rho * (1 - rho 14242) := by
  unfold Seg16.relationRow1970 at r1970
  unfold seg16RPe179
  linear_combination -r1970

theorem seg16RStep178IlMul (rho : Nat -> Seg16.F) (r1971 : Seg16.relationRow1971 rho) :
    rho 14546 = seg16RIl179 rho * (rho 14545) := by
  unfold Seg16.relationRow1971 at r1971
  rw [seg16RStep178IlLc rho] at r1971
  linear_combination -r1971

theorem seg16RStep178Acc (rho : Nat -> Seg16.F) :
    seg16RIl178 rho = seg16RIl179 rho + (rho 14545) - (rho 14546) := by
  have hstate : seg16RIl178 rho = seg16RIl179 rho + seg16RIlAtom37 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom37
  ring

theorem seg16RStep178Pe (rho : Nat -> Seg16.F) (r1972 : Seg16.relationRow1972 rho) :
    seg16RPe178 rho = seg16RPe179 rho * rho 14242 := by
  unfold Seg16.relationRow1972 at r1972
  unfold seg16RPe178 seg16RPe179
  linear_combination -r1972

theorem seg16RStep178 (rho : Nat -> Seg16.F) (r1970 : Seg16.relationRow1970 rho) (r1971 : Seg16.relationRow1971 rho) (r1972 : Seg16.relationRow1972 rho) :
    seg16RPe178 rho = seg16RPe179 rho * rho 14242 ∧
    seg16RIl178 rho = seg16RIl179 rho + seg16RPe179 rho * (1 - rho 14242) -
      seg16RIl179 rho * (seg16RPe179 rho * (1 - rho 14242)) := by
  constructor
  · exact seg16RStep178Pe rho r1972
  · rw [seg16RStep178Acc rho, seg16RStep178L rho r1970, seg16RStep178IlMul rho r1971, seg16RStep178L rho r1970]

theorem seg16_r_chunk178 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 179 (seg16RPeState rho 179) (seg16RIlState rho 179) := by
  have htail := seg16_r_chunk177 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1970, r1971, r1972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 178 ≤ n → n < 179 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 178 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep178 rho r1970 r1971 r1972
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 178 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
