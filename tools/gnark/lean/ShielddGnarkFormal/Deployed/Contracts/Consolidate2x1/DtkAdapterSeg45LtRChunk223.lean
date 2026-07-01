import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk222

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep223L (rho : Nat -> Seg45.F) (r1885 : Seg45.relationRow1885 rho) :
    rho 40116 = seg45RPe224 rho * (1 - rho 39943) := by
  unfold Seg45.relationRow1885 at r1885
  unfold seg45RPe224
  linear_combination -r1885

theorem seg45RStep223IlMul (rho : Nat -> Seg45.F) (r1886 : Seg45.relationRow1886 rho) :
    rho 40117 = seg45RIl224 rho * (rho 40116) := by
  unfold Seg45.relationRow1886 at r1886
  rw [seg45RIl224Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom10 seg45RIlAtom11 seg45RIlAtom12 seg45RIlAtom13 seg45RIlAtom14 seg45RIlAtom2 seg45RIlAtom3 seg45RIlAtom4 seg45RIlAtom5 seg45RIlAtom6 seg45RIlAtom7 seg45RIlAtom8 seg45RIlAtom9
  linear_combination -r1886

theorem seg45RStep223Acc (rho : Nat -> Seg45.F) :
    seg45RIl223 rho = seg45RIl224 rho + (rho 40116) - (rho 40117) := by
  have hstate : seg45RIl223 rho = seg45RIl224 rho + seg45RIlAtom15 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom15
  ring

theorem seg45RStep223Pe (rho : Nat -> Seg45.F) (r1887 : Seg45.relationRow1887 rho) :
    seg45RPe223 rho = seg45RPe224 rho * rho 39943 := by
  unfold Seg45.relationRow1887 at r1887
  unfold seg45RPe223 seg45RPe224
  linear_combination -r1887

theorem seg45RStep223 (rho : Nat -> Seg45.F) (r1885 : Seg45.relationRow1885 rho) (r1886 : Seg45.relationRow1886 rho) (r1887 : Seg45.relationRow1887 rho) :
    seg45RPe223 rho = seg45RPe224 rho * rho 39943 ∧
    seg45RIl223 rho = seg45RIl224 rho + seg45RPe224 rho * (1 - rho 39943) -
      seg45RIl224 rho * (seg45RPe224 rho * (1 - rho 39943)) := by
  constructor
  · exact seg45RStep223Pe rho r1887
  · rw [seg45RStep223Acc rho, seg45RStep223L rho r1885, seg45RStep223IlMul rho r1886, seg45RStep223L rho r1885]

theorem seg45_r_chunk223 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 224 (seg45RPeState rho 224) (seg45RIlState rho 224) := by
  have htail := seg45_r_chunk222 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1885, r1886, r1887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 223 ≤ n → n < 224 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 223 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep223 rho r1885 r1886 r1887
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 223 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
