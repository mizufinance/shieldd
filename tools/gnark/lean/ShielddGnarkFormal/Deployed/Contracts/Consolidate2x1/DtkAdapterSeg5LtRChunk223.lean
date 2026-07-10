import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk222

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep223L (rho : Nat -> Seg5.F) (r1885 : Seg5.relationRow1885 rho) :
    rho 1583 = seg5RPe224 rho * (1 - rho 1410) := by
  unfold Seg5.relationRow1885 at r1885
  unfold seg5RPe224
  linear_combination -r1885

theorem seg5RStep223IlMul (rho : Nat -> Seg5.F) (r1886 : Seg5.relationRow1886 rho) :
    rho 1584 = seg5RIl224 rho * (rho 1583) := by
  unfold Seg5.relationRow1886 at r1886
  rw [seg5RIl224Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom10 seg5RIlAtom11 seg5RIlAtom12 seg5RIlAtom13 seg5RIlAtom14 seg5RIlAtom2 seg5RIlAtom3 seg5RIlAtom4 seg5RIlAtom5 seg5RIlAtom6 seg5RIlAtom7 seg5RIlAtom8 seg5RIlAtom9
  linear_combination -r1886

theorem seg5RStep223Acc (rho : Nat -> Seg5.F) :
    seg5RIl223 rho = seg5RIl224 rho + (rho 1583) - (rho 1584) := by
  have hstate : seg5RIl223 rho = seg5RIl224 rho + seg5RIlAtom15 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom15
  ring

theorem seg5RStep223Pe (rho : Nat -> Seg5.F) (r1887 : Seg5.relationRow1887 rho) :
    seg5RPe223 rho = seg5RPe224 rho * rho 1410 := by
  unfold Seg5.relationRow1887 at r1887
  unfold seg5RPe223 seg5RPe224
  linear_combination -r1887

theorem seg5RStep223 (rho : Nat -> Seg5.F) (r1885 : Seg5.relationRow1885 rho) (r1886 : Seg5.relationRow1886 rho) (r1887 : Seg5.relationRow1887 rho) :
    seg5RPe223 rho = seg5RPe224 rho * rho 1410 ∧
    seg5RIl223 rho = seg5RIl224 rho + seg5RPe224 rho * (1 - rho 1410) -
      seg5RIl224 rho * (seg5RPe224 rho * (1 - rho 1410)) := by
  constructor
  · exact seg5RStep223Pe rho r1887
  · rw [seg5RStep223Acc rho, seg5RStep223L rho r1885, seg5RStep223IlMul rho r1886, seg5RStep223L rho r1885]

theorem seg5_r_chunk223 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 224 (seg5RPeState rho 224) (seg5RIlState rho 224) := by
  have htail := seg5_r_chunk222 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1885, r1886, r1887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 223 ≤ n → n < 224 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 223 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep223 rho r1885 r1886 r1887
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 223 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
