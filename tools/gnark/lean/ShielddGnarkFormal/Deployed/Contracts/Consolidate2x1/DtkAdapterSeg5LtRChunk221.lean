import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk220

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep221L (rho : Nat -> Seg5.F) (r1889 : Seg5.relationRow1889 rho) :
    rho 1587 = seg5RPe222 rho * (1 - rho 1408) := by
  unfold Seg5.relationRow1889 at r1889
  unfold seg5RPe222
  linear_combination -r1889

theorem seg5RStep221IlMul (rho : Nat -> Seg5.F) (r1890 : Seg5.relationRow1890 rho) :
    rho 1588 = seg5RIl222 rho * (rho 1587) := by
  unfold Seg5.relationRow1890 at r1890
  rw [seg5RIl222Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom10 seg5RIlAtom11 seg5RIlAtom12 seg5RIlAtom13 seg5RIlAtom14 seg5RIlAtom15 seg5RIlAtom2 seg5RIlAtom3 seg5RIlAtom4 seg5RIlAtom5 seg5RIlAtom6 seg5RIlAtom7 seg5RIlAtom8 seg5RIlAtom9
  linear_combination -r1890

theorem seg5RStep221Acc (rho : Nat -> Seg5.F) :
    seg5RIl221 rho = seg5RIl222 rho + (rho 1587) - (rho 1588) := by
  have hstate : seg5RIl221 rho = seg5RIl222 rho + seg5RIlAtom16 rho + (-1 : Seg5.F) * seg5RIlAtom17 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom16 seg5RIlAtom17
  ring

theorem seg5RStep221Pe (rho : Nat -> Seg5.F) (r1891 : Seg5.relationRow1891 rho) :
    seg5RPe221 rho = seg5RPe222 rho * rho 1408 := by
  unfold Seg5.relationRow1891 at r1891
  unfold seg5RPe221 seg5RPe222
  linear_combination -r1891

theorem seg5RStep221 (rho : Nat -> Seg5.F) (r1889 : Seg5.relationRow1889 rho) (r1890 : Seg5.relationRow1890 rho) (r1891 : Seg5.relationRow1891 rho) :
    seg5RPe221 rho = seg5RPe222 rho * rho 1408 ∧
    seg5RIl221 rho = seg5RIl222 rho + seg5RPe222 rho * (1 - rho 1408) -
      seg5RIl222 rho * (seg5RPe222 rho * (1 - rho 1408)) := by
  constructor
  · exact seg5RStep221Pe rho r1891
  · rw [seg5RStep221Acc rho, seg5RStep221L rho r1889, seg5RStep221IlMul rho r1890, seg5RStep221L rho r1889]

theorem seg5_r_chunk221 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 222 (seg5RPeState rho 222) (seg5RIlState rho 222) := by
  have htail := seg5_r_chunk220 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1889, r1890, r1891, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 221 ≤ n → n < 222 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 221 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep221 rho r1889 r1890 r1891
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 221 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
