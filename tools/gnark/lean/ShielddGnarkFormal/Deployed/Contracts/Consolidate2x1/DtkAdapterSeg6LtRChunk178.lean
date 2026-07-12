import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk177

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep178L (rho : Nat -> Seg6.F) (r1970 : Seg6.relationRow1970 rho) :
    rho 2371 = seg6RPe179 rho * (1 - rho 2068) := by
  unfold Seg6.relationRow1970 at r1970
  unfold seg6RPe179
  linear_combination -r1970

theorem seg6RStep178IlMul (rho : Nat -> Seg6.F) (r1971 : Seg6.relationRow1971 rho) :
    rho 2372 = seg6RIl179 rho * (rho 2371) := by
  unfold Seg6.relationRow1971 at r1971
  rw [seg6RStep178IlLc rho] at r1971
  linear_combination -r1971

theorem seg6RStep178Acc (rho : Nat -> Seg6.F) :
    seg6RIl178 rho = seg6RIl179 rho + (rho 2371) - (rho 2372) := by
  have hstate : seg6RIl178 rho = seg6RIl179 rho + seg6RIlAtom37 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom37
  ring

theorem seg6RStep178Pe (rho : Nat -> Seg6.F) (r1972 : Seg6.relationRow1972 rho) :
    seg6RPe178 rho = seg6RPe179 rho * rho 2068 := by
  unfold Seg6.relationRow1972 at r1972
  unfold seg6RPe178 seg6RPe179
  linear_combination -r1972

theorem seg6RStep178 (rho : Nat -> Seg6.F) (r1970 : Seg6.relationRow1970 rho) (r1971 : Seg6.relationRow1971 rho) (r1972 : Seg6.relationRow1972 rho) :
    seg6RPe178 rho = seg6RPe179 rho * rho 2068 ∧
    seg6RIl178 rho = seg6RIl179 rho + seg6RPe179 rho * (1 - rho 2068) -
      seg6RIl179 rho * (seg6RPe179 rho * (1 - rho 2068)) := by
  constructor
  · exact seg6RStep178Pe rho r1972
  · rw [seg6RStep178Acc rho, seg6RStep178L rho r1970, seg6RStep178IlMul rho r1971, seg6RStep178L rho r1970]

theorem seg6_r_chunk178 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 179 (seg6RPeState rho 179) (seg6RIlState rho 179) := by
  have htail := seg6_r_chunk177 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1970, r1971, r1972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 178 ≤ n → n < 179 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 178 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep178 rho r1970 r1971 r1972
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 178 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
