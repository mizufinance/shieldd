import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep243L (rho : Nat -> Seg34.F) (r1841 : Seg34.relationRow1841 rho) :
    rho 33116 = seg34RPe244 rho * (1 - rho 33007) := by
  unfold Seg34.relationRow1841 at r1841
  unfold seg34RPe244
  linear_combination -r1841

theorem seg34RStep243IlMul (rho : Nat -> Seg34.F) (r1842 : Seg34.relationRow1842 rho) :
    rho 33117 = seg34RIl244 rho * (rho 33116) := by
  unfold Seg34.relationRow1842 at r1842
  rw [seg34RIl244Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1 seg34RIlAtom2
  linear_combination -r1842

theorem seg34RStep243Acc (rho : Nat -> Seg34.F) :
    seg34RIl243 rho = seg34RIl244 rho + (rho 33116) - (rho 33117) := by
  have hstate : seg34RIl243 rho = seg34RIl244 rho + seg34RIlAtom3 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom3
  ring

theorem seg34RStep243Pe (rho : Nat -> Seg34.F) (r1843 : Seg34.relationRow1843 rho) :
    seg34RPe243 rho = seg34RPe244 rho * rho 33007 := by
  unfold Seg34.relationRow1843 at r1843
  unfold seg34RPe243 seg34RPe244
  linear_combination -r1843

theorem seg34RStep243 (rho : Nat -> Seg34.F) (r1841 : Seg34.relationRow1841 rho) (r1842 : Seg34.relationRow1842 rho) (r1843 : Seg34.relationRow1843 rho) :
    seg34RPe243 rho = seg34RPe244 rho * rho 33007 ∧
    seg34RIl243 rho = seg34RIl244 rho + seg34RPe244 rho * (1 - rho 33007) -
      seg34RIl244 rho * (seg34RPe244 rho * (1 - rho 33007)) := by
  constructor
  · exact seg34RStep243Pe rho r1843
  · rw [seg34RStep243Acc rho, seg34RStep243L rho r1841, seg34RStep243IlMul rho r1842, seg34RStep243L rho r1841]

theorem seg34_r_chunk243 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 244 (seg34RPeState rho 244) (seg34RIlState rho 244) := by
  have htail := seg34_r_chunk242 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart23 at p23
  rcases p23 with ⟨_, r1841, r1842, r1843, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 243 ≤ n → n < 244 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 243 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep243 rho r1841 r1842 r1843
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 243 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
