import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk229

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep230L (rho : Nat -> Seg45.F) (r1868 : Seg45.relationRow1868 rho) :
    rho 40099 = seg45RPe231 rho * (1 - rho 39950) := by
  unfold Seg45.relationRow1868 at r1868
  unfold seg45RPe231
  linear_combination -r1868

theorem seg45RStep230IlMul (rho : Nat -> Seg45.F) (r1869 : Seg45.relationRow1869 rho) :
    rho 40100 = seg45RIl231 rho * (rho 40099) := by
  unfold Seg45.relationRow1869 at r1869
  rw [seg45RIl231Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom2 seg45RIlAtom3 seg45RIlAtom4 seg45RIlAtom5 seg45RIlAtom6 seg45RIlAtom7 seg45RIlAtom8 seg45RIlAtom9
  linear_combination -r1869

theorem seg45RStep230Acc (rho : Nat -> Seg45.F) :
    seg45RIl230 rho = seg45RIl231 rho + (rho 40099) - (rho 40100) := by
  have hstate : seg45RIl230 rho = seg45RIl231 rho + seg45RIlAtom10 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom10
  ring

theorem seg45RStep230Pe (rho : Nat -> Seg45.F) (r1870 : Seg45.relationRow1870 rho) :
    seg45RPe230 rho = seg45RPe231 rho * rho 39950 := by
  unfold Seg45.relationRow1870 at r1870
  unfold seg45RPe230 seg45RPe231
  linear_combination -r1870

theorem seg45RStep230 (rho : Nat -> Seg45.F) (r1868 : Seg45.relationRow1868 rho) (r1869 : Seg45.relationRow1869 rho) (r1870 : Seg45.relationRow1870 rho) :
    seg45RPe230 rho = seg45RPe231 rho * rho 39950 ∧
    seg45RIl230 rho = seg45RIl231 rho + seg45RPe231 rho * (1 - rho 39950) -
      seg45RIl231 rho * (seg45RPe231 rho * (1 - rho 39950)) := by
  constructor
  · exact seg45RStep230Pe rho r1870
  · rw [seg45RStep230Acc rho, seg45RStep230L rho r1868, seg45RStep230IlMul rho r1869, seg45RStep230L rho r1868]

theorem seg45_r_chunk230 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 231 (seg45RPeState rho 231) (seg45RIlState rho 231) := by
  have htail := seg45_r_chunk229 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1868, r1869, r1870, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 230 ≤ n → n < 231 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 230 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep230 rho r1868 r1869 r1870
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 230 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
