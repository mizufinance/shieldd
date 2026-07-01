import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk222

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep223L (rho : Nat -> Seg16.F) (r1885 : Seg16.relationRow1885 rho) :
    rho 14460 = seg16RPe224 rho * (1 - rho 14287) := by
  unfold Seg16.relationRow1885 at r1885
  unfold seg16RPe224
  linear_combination -r1885

theorem seg16RStep223IlMul (rho : Nat -> Seg16.F) (r1886 : Seg16.relationRow1886 rho) :
    rho 14461 = seg16RIl224 rho * (rho 14460) := by
  unfold Seg16.relationRow1886 at r1886
  rw [seg16RIl224Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom10 seg16RIlAtom11 seg16RIlAtom12 seg16RIlAtom13 seg16RIlAtom14 seg16RIlAtom2 seg16RIlAtom3 seg16RIlAtom4 seg16RIlAtom5 seg16RIlAtom6 seg16RIlAtom7 seg16RIlAtom8 seg16RIlAtom9
  linear_combination -r1886

theorem seg16RStep223Acc (rho : Nat -> Seg16.F) :
    seg16RIl223 rho = seg16RIl224 rho + (rho 14460) - (rho 14461) := by
  have hstate : seg16RIl223 rho = seg16RIl224 rho + seg16RIlAtom15 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom15
  ring

theorem seg16RStep223Pe (rho : Nat -> Seg16.F) (r1887 : Seg16.relationRow1887 rho) :
    seg16RPe223 rho = seg16RPe224 rho * rho 14287 := by
  unfold Seg16.relationRow1887 at r1887
  unfold seg16RPe223 seg16RPe224
  linear_combination -r1887

theorem seg16RStep223 (rho : Nat -> Seg16.F) (r1885 : Seg16.relationRow1885 rho) (r1886 : Seg16.relationRow1886 rho) (r1887 : Seg16.relationRow1887 rho) :
    seg16RPe223 rho = seg16RPe224 rho * rho 14287 ∧
    seg16RIl223 rho = seg16RIl224 rho + seg16RPe224 rho * (1 - rho 14287) -
      seg16RIl224 rho * (seg16RPe224 rho * (1 - rho 14287)) := by
  constructor
  · exact seg16RStep223Pe rho r1887
  · rw [seg16RStep223Acc rho, seg16RStep223L rho r1885, seg16RStep223IlMul rho r1886, seg16RStep223L rho r1885]

theorem seg16_r_chunk223 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 224 (seg16RPeState rho 224) (seg16RIlState rho 224) := by
  have htail := seg16_r_chunk222 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1885, r1886, r1887, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 223 ≤ n → n < 224 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 223 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep223 rho r1885 r1886 r1887
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 223 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
