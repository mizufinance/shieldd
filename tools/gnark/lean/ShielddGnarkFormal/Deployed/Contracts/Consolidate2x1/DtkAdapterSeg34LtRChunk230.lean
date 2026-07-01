import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk229

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep230L (rho : Nat -> Seg34.F) (r1868 : Seg34.relationRow1868 rho) :
    rho 33143 = seg34RPe231 rho * (1 - rho 32994) := by
  unfold Seg34.relationRow1868 at r1868
  unfold seg34RPe231
  linear_combination -r1868

theorem seg34RStep230IlMul (rho : Nat -> Seg34.F) (r1869 : Seg34.relationRow1869 rho) :
    rho 33144 = seg34RIl231 rho * (rho 33143) := by
  unfold Seg34.relationRow1869 at r1869
  rw [seg34RIl231Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1 seg34RIlAtom2 seg34RIlAtom3 seg34RIlAtom4 seg34RIlAtom5 seg34RIlAtom6 seg34RIlAtom7 seg34RIlAtom8 seg34RIlAtom9
  linear_combination -r1869

theorem seg34RStep230Acc (rho : Nat -> Seg34.F) :
    seg34RIl230 rho = seg34RIl231 rho + (rho 33143) - (rho 33144) := by
  have hstate : seg34RIl230 rho = seg34RIl231 rho + seg34RIlAtom10 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom10
  ring

theorem seg34RStep230Pe (rho : Nat -> Seg34.F) (r1870 : Seg34.relationRow1870 rho) :
    seg34RPe230 rho = seg34RPe231 rho * rho 32994 := by
  unfold Seg34.relationRow1870 at r1870
  unfold seg34RPe230 seg34RPe231
  linear_combination -r1870

theorem seg34RStep230 (rho : Nat -> Seg34.F) (r1868 : Seg34.relationRow1868 rho) (r1869 : Seg34.relationRow1869 rho) (r1870 : Seg34.relationRow1870 rho) :
    seg34RPe230 rho = seg34RPe231 rho * rho 32994 ∧
    seg34RIl230 rho = seg34RIl231 rho + seg34RPe231 rho * (1 - rho 32994) -
      seg34RIl231 rho * (seg34RPe231 rho * (1 - rho 32994)) := by
  constructor
  · exact seg34RStep230Pe rho r1870
  · rw [seg34RStep230Acc rho, seg34RStep230L rho r1868, seg34RStep230IlMul rho r1869, seg34RStep230L rho r1868]

theorem seg34_r_chunk230 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 231 (seg34RPeState rho 231) (seg34RIlState rho 231) := by
  have htail := seg34_r_chunk229 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1868, r1869, r1870, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 230 ≤ n → n < 231 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 230 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep230 rho r1868 r1869 r1870
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 230 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
