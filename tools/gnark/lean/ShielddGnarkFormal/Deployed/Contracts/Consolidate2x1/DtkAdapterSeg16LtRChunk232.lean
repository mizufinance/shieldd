import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk231

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep232L (rho : Nat -> Seg16.F) (r1864 : Seg16.relationRow1864 rho) :
    rho 14439 = seg16RPe233 rho * (1 - rho 14296) := by
  unfold Seg16.relationRow1864 at r1864
  unfold seg16RPe233
  linear_combination -r1864

theorem seg16RStep232IlMul (rho : Nat -> Seg16.F) (r1865 : Seg16.relationRow1865 rho) :
    rho 14440 = seg16RIl233 rho * (rho 14439) := by
  unfold Seg16.relationRow1865 at r1865
  rw [seg16RIl233Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom2 seg16RIlAtom3 seg16RIlAtom4 seg16RIlAtom5 seg16RIlAtom6 seg16RIlAtom7 seg16RIlAtom8
  linear_combination -r1865

theorem seg16RStep232Acc (rho : Nat -> Seg16.F) :
    seg16RIl232 rho = seg16RIl233 rho + (rho 14439) - (rho 14440) := by
  have hstate : seg16RIl232 rho = seg16RIl233 rho + seg16RIlAtom9 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom9
  ring

theorem seg16RStep232Pe (rho : Nat -> Seg16.F) (r1866 : Seg16.relationRow1866 rho) :
    seg16RPe232 rho = seg16RPe233 rho * rho 14296 := by
  unfold Seg16.relationRow1866 at r1866
  unfold seg16RPe232 seg16RPe233
  linear_combination -r1866

theorem seg16RStep232 (rho : Nat -> Seg16.F) (r1864 : Seg16.relationRow1864 rho) (r1865 : Seg16.relationRow1865 rho) (r1866 : Seg16.relationRow1866 rho) :
    seg16RPe232 rho = seg16RPe233 rho * rho 14296 ∧
    seg16RIl232 rho = seg16RIl233 rho + seg16RPe233 rho * (1 - rho 14296) -
      seg16RIl233 rho * (seg16RPe233 rho * (1 - rho 14296)) := by
  constructor
  · exact seg16RStep232Pe rho r1866
  · rw [seg16RStep232Acc rho, seg16RStep232L rho r1864, seg16RStep232IlMul rho r1865, seg16RStep232L rho r1864]

theorem seg16_r_chunk232 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 233 (seg16RPeState rho 233) (seg16RIlState rho 233) := by
  have htail := seg16_r_chunk231 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1864, r1865, r1866, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 232 ≤ n → n < 233 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 232 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep232 rho r1864 r1865 r1866
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 232 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
