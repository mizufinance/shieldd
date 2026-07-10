import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk229

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep230L (rho : Nat -> Seg5.F) (r1868 : Seg5.relationRow1868 rho) :
    rho 1566 = seg5RPe231 rho * (1 - rho 1417) := by
  unfold Seg5.relationRow1868 at r1868
  unfold seg5RPe231
  linear_combination -r1868

theorem seg5RStep230IlMul (rho : Nat -> Seg5.F) (r1869 : Seg5.relationRow1869 rho) :
    rho 1567 = seg5RIl231 rho * (rho 1566) := by
  unfold Seg5.relationRow1869 at r1869
  rw [seg5RIl231Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom2 seg5RIlAtom3 seg5RIlAtom4 seg5RIlAtom5 seg5RIlAtom6 seg5RIlAtom7 seg5RIlAtom8 seg5RIlAtom9
  linear_combination -r1869

theorem seg5RStep230Acc (rho : Nat -> Seg5.F) :
    seg5RIl230 rho = seg5RIl231 rho + (rho 1566) - (rho 1567) := by
  have hstate : seg5RIl230 rho = seg5RIl231 rho + seg5RIlAtom10 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom10
  ring

theorem seg5RStep230Pe (rho : Nat -> Seg5.F) (r1870 : Seg5.relationRow1870 rho) :
    seg5RPe230 rho = seg5RPe231 rho * rho 1417 := by
  unfold Seg5.relationRow1870 at r1870
  unfold seg5RPe230 seg5RPe231
  linear_combination -r1870

theorem seg5RStep230 (rho : Nat -> Seg5.F) (r1868 : Seg5.relationRow1868 rho) (r1869 : Seg5.relationRow1869 rho) (r1870 : Seg5.relationRow1870 rho) :
    seg5RPe230 rho = seg5RPe231 rho * rho 1417 ∧
    seg5RIl230 rho = seg5RIl231 rho + seg5RPe231 rho * (1 - rho 1417) -
      seg5RIl231 rho * (seg5RPe231 rho * (1 - rho 1417)) := by
  constructor
  · exact seg5RStep230Pe rho r1870
  · rw [seg5RStep230Acc rho, seg5RStep230L rho r1868, seg5RStep230IlMul rho r1869, seg5RStep230L rho r1868]

theorem seg5_r_chunk230 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 231 (seg5RPeState rho 231) (seg5RIlState rho 231) := by
  have htail := seg5_r_chunk229 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1868, r1869, r1870, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 230 ≤ n → n < 231 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 230 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep230 rho r1868 r1869 r1870
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 230 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
