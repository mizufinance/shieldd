import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk168

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep169L (rho : Nat -> Seg34.F) (r1985 : Seg34.relationRow1985 rho) :
    rho 33260 = seg34RPe170 rho * (1 - rho 32933) := by
  unfold Seg34.relationRow1985 at r1985
  unfold seg34RPe170
  linear_combination -r1985

theorem seg34RStep169IlMul (rho : Nat -> Seg34.F) (r1986 : Seg34.relationRow1986 rho) :
    rho 33261 = seg34RIl170 rho * (rho 33260) := by
  unfold Seg34.relationRow1986 at r1986
  rw [seg34RStep169IlLc rho] at r1986
  linear_combination -r1986

theorem seg34RStep169Acc (rho : Nat -> Seg34.F) :
    seg34RIl169 rho = seg34RIl170 rho + (rho 33260) - (rho 33261) := by
  have hstate : seg34RIl169 rho = seg34RIl170 rho + seg34RIlAtom40 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom40
  ring

theorem seg34RStep169Pe (rho : Nat -> Seg34.F) (r1987 : Seg34.relationRow1987 rho) :
    seg34RPe169 rho = seg34RPe170 rho * rho 32933 := by
  unfold Seg34.relationRow1987 at r1987
  unfold seg34RPe169 seg34RPe170
  linear_combination -r1987

theorem seg34RStep169 (rho : Nat -> Seg34.F) (r1985 : Seg34.relationRow1985 rho) (r1986 : Seg34.relationRow1986 rho) (r1987 : Seg34.relationRow1987 rho) :
    seg34RPe169 rho = seg34RPe170 rho * rho 32933 ∧
    seg34RIl169 rho = seg34RIl170 rho + seg34RPe170 rho * (1 - rho 32933) -
      seg34RIl170 rho * (seg34RPe170 rho * (1 - rho 32933)) := by
  constructor
  · exact seg34RStep169Pe rho r1987
  · rw [seg34RStep169Acc rho, seg34RStep169L rho r1985, seg34RStep169IlMul rho r1986, seg34RStep169L rho r1985]

theorem seg34_r_chunk169 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 170 (seg34RPeState rho 170) (seg34RIlState rho 170) := by
  have htail := seg34_r_chunk168 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1985, r1986, r1987, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 169 ≤ n → n < 170 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 169 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep169 rho r1985 r1986 r1987
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 169 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
