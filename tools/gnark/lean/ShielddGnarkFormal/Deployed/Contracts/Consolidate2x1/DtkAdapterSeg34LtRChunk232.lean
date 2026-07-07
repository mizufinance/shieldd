import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk231

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep232L (rho : Nat -> Seg34.F) (r1864 : Seg34.relationRow1864 rho) :
    rho 33139 = seg34RPe233 rho * (1 - rho 32996) := by
  unfold Seg34.relationRow1864 at r1864
  unfold seg34RPe233
  linear_combination -r1864

theorem seg34RStep232IlMul (rho : Nat -> Seg34.F) (r1865 : Seg34.relationRow1865 rho) :
    rho 33140 = seg34RIl233 rho * (rho 33139) := by
  unfold Seg34.relationRow1865 at r1865
  rw [seg34RIl233Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1 seg34RIlAtom2 seg34RIlAtom3 seg34RIlAtom4 seg34RIlAtom5 seg34RIlAtom6 seg34RIlAtom7 seg34RIlAtom8
  linear_combination -r1865

theorem seg34RStep232Acc (rho : Nat -> Seg34.F) :
    seg34RIl232 rho = seg34RIl233 rho + (rho 33139) - (rho 33140) := by
  have hstate : seg34RIl232 rho = seg34RIl233 rho + seg34RIlAtom9 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom9
  ring

theorem seg34RStep232Pe (rho : Nat -> Seg34.F) (r1866 : Seg34.relationRow1866 rho) :
    seg34RPe232 rho = seg34RPe233 rho * rho 32996 := by
  unfold Seg34.relationRow1866 at r1866
  unfold seg34RPe232 seg34RPe233
  linear_combination -r1866

theorem seg34RStep232 (rho : Nat -> Seg34.F) (r1864 : Seg34.relationRow1864 rho) (r1865 : Seg34.relationRow1865 rho) (r1866 : Seg34.relationRow1866 rho) :
    seg34RPe232 rho = seg34RPe233 rho * rho 32996 ∧
    seg34RIl232 rho = seg34RIl233 rho + seg34RPe233 rho * (1 - rho 32996) -
      seg34RIl233 rho * (seg34RPe233 rho * (1 - rho 32996)) := by
  constructor
  · exact seg34RStep232Pe rho r1866
  · rw [seg34RStep232Acc rho, seg34RStep232L rho r1864, seg34RStep232IlMul rho r1865, seg34RStep232L rho r1864]

theorem seg34_r_chunk232 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 233 (seg34RPeState rho 233) (seg34RIlState rho 233) := by
  have htail := seg34_r_chunk231 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1864, r1865, r1866, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 232 ≤ n → n < 233 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 232 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep232 rho r1864 r1865 r1866
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 232 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
