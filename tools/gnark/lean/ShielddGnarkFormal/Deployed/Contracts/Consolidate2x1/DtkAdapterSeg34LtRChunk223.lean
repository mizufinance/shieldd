import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk222

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep223L (rho : Nat -> Seg34.F) (r1885 : Seg34.relationRow1885 rho) :
    rho 33160 = seg34RPe224 rho * (1 - rho 32987) := by
  unfold Seg34.relationRow1885 at r1885
  unfold seg34RPe224
  linear_combination -r1885

theorem seg34RStep223IlMul (rho : Nat -> Seg34.F) (r1886 : Seg34.relationRow1886 rho) :
    rho 33161 = seg34RIl224 rho * (rho 33160) := by
  unfold Seg34.relationRow1886 at r1886
  rw [seg34RIl224Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1 seg34RIlAtom10 seg34RIlAtom11 seg34RIlAtom12 seg34RIlAtom13 seg34RIlAtom14 seg34RIlAtom2 seg34RIlAtom3 seg34RIlAtom4 seg34RIlAtom5 seg34RIlAtom6 seg34RIlAtom7 seg34RIlAtom8 seg34RIlAtom9
  linear_combination -r1886

theorem seg34RStep223Acc (rho : Nat -> Seg34.F) :
    seg34RIl223 rho = seg34RIl224 rho + (rho 33160) - (rho 33161) := by
  have hstate : seg34RIl223 rho = seg34RIl224 rho + seg34RIlAtom15 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom15
  ring

theorem seg34RStep223Pe (rho : Nat -> Seg34.F) (r1887 : Seg34.relationRow1887 rho) :
    seg34RPe223 rho = seg34RPe224 rho * rho 32987 := by
  unfold Seg34.relationRow1887 at r1887
  unfold seg34RPe223 seg34RPe224
  linear_combination -r1887

theorem seg34RStep223 (rho : Nat -> Seg34.F) (r1885 : Seg34.relationRow1885 rho) (r1886 : Seg34.relationRow1886 rho) (r1887 : Seg34.relationRow1887 rho) :
    seg34RPe223 rho = seg34RPe224 rho * rho 32987 ∧
    seg34RIl223 rho = seg34RIl224 rho + seg34RPe224 rho * (1 - rho 32987) -
      seg34RIl224 rho * (seg34RPe224 rho * (1 - rho 32987)) := by
  constructor
  · exact seg34RStep223Pe rho r1887
  · rw [seg34RStep223Acc rho, seg34RStep223L rho r1885, seg34RStep223IlMul rho r1886, seg34RStep223L rho r1885]

theorem seg34_r_chunk223 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 224 (seg34RPeState rho 224) (seg34RIlState rho 224) := by
  have htail := seg34_r_chunk222 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1885, r1886, r1887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 223 ≤ n → n < 224 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 223 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep223 rho r1885 r1886 r1887
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 223 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
