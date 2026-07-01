import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk177

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep178L (rho : Nat -> Seg34.F) (r1970 : Seg34.relationRow1970 rho) :
    rho 33245 = seg34RPe179 rho * (1 - rho 32942) := by
  unfold Seg34.relationRow1970 at r1970
  unfold seg34RPe179
  linear_combination -r1970

theorem seg34RStep178IlMul (rho : Nat -> Seg34.F) (r1971 : Seg34.relationRow1971 rho) :
    rho 33246 = seg34RIl179 rho * (rho 33245) := by
  unfold Seg34.relationRow1971 at r1971
  rw [seg34RStep178IlLc rho] at r1971
  linear_combination -r1971

theorem seg34RStep178Acc (rho : Nat -> Seg34.F) :
    seg34RIl178 rho = seg34RIl179 rho + (rho 33245) - (rho 33246) := by
  have hstate : seg34RIl178 rho = seg34RIl179 rho + seg34RIlAtom37 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom37
  ring

theorem seg34RStep178Pe (rho : Nat -> Seg34.F) (r1972 : Seg34.relationRow1972 rho) :
    seg34RPe178 rho = seg34RPe179 rho * rho 32942 := by
  unfold Seg34.relationRow1972 at r1972
  unfold seg34RPe178 seg34RPe179
  linear_combination -r1972

theorem seg34RStep178 (rho : Nat -> Seg34.F) (r1970 : Seg34.relationRow1970 rho) (r1971 : Seg34.relationRow1971 rho) (r1972 : Seg34.relationRow1972 rho) :
    seg34RPe178 rho = seg34RPe179 rho * rho 32942 ∧
    seg34RIl178 rho = seg34RIl179 rho + seg34RPe179 rho * (1 - rho 32942) -
      seg34RIl179 rho * (seg34RPe179 rho * (1 - rho 32942)) := by
  constructor
  · exact seg34RStep178Pe rho r1972
  · rw [seg34RStep178Acc rho, seg34RStep178L rho r1970, seg34RStep178IlMul rho r1971, seg34RStep178L rho r1970]

theorem seg34_r_chunk178 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 179 (seg34RPeState rho 179) (seg34RIlState rho 179) := by
  have htail := seg34_r_chunk177 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1970, r1971, r1972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 178 ≤ n → n < 179 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 178 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep178 rho r1970 r1971 r1972
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 178 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
