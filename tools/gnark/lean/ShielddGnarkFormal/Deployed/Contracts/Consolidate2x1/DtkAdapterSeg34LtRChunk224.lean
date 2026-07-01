import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk223

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep224L (rho : Nat -> Seg34.F) (r1882 : Seg34.relationRow1882 rho) :
    rho 33157 = seg34RPe225 rho * (1 - rho 32988) := by
  unfold Seg34.relationRow1882 at r1882
  unfold seg34RPe225
  linear_combination -r1882

theorem seg34RStep224IlMul (rho : Nat -> Seg34.F) (r1883 : Seg34.relationRow1883 rho) :
    rho 33158 = seg34RIl225 rho * (rho 33157) := by
  unfold Seg34.relationRow1883 at r1883
  rw [seg34RIl225Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1 seg34RIlAtom10 seg34RIlAtom11 seg34RIlAtom12 seg34RIlAtom13 seg34RIlAtom2 seg34RIlAtom3 seg34RIlAtom4 seg34RIlAtom5 seg34RIlAtom6 seg34RIlAtom7 seg34RIlAtom8 seg34RIlAtom9
  linear_combination -r1883

theorem seg34RStep224Acc (rho : Nat -> Seg34.F) :
    seg34RIl224 rho = seg34RIl225 rho + (rho 33157) - (rho 33158) := by
  have hstate : seg34RIl224 rho = seg34RIl225 rho + seg34RIlAtom14 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom14
  ring

theorem seg34RStep224Pe (rho : Nat -> Seg34.F) (r1884 : Seg34.relationRow1884 rho) :
    seg34RPe224 rho = seg34RPe225 rho * rho 32988 := by
  unfold Seg34.relationRow1884 at r1884
  unfold seg34RPe224 seg34RPe225
  linear_combination -r1884

theorem seg34RStep224 (rho : Nat -> Seg34.F) (r1882 : Seg34.relationRow1882 rho) (r1883 : Seg34.relationRow1883 rho) (r1884 : Seg34.relationRow1884 rho) :
    seg34RPe224 rho = seg34RPe225 rho * rho 32988 ∧
    seg34RIl224 rho = seg34RIl225 rho + seg34RPe225 rho * (1 - rho 32988) -
      seg34RIl225 rho * (seg34RPe225 rho * (1 - rho 32988)) := by
  constructor
  · exact seg34RStep224Pe rho r1884
  · rw [seg34RStep224Acc rho, seg34RStep224L rho r1882, seg34RStep224IlMul rho r1883, seg34RStep224L rho r1882]

theorem seg34_r_chunk224 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 225 (seg34RPeState rho 225) (seg34RIlState rho 225) := by
  have htail := seg34_r_chunk223 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1882, r1883, r1884, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 224 ≤ n → n < 225 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 224 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep224 rho r1882 r1883 r1884
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 224 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
