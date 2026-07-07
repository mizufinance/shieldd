import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk220

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep221L (rho : Nat -> Seg16.F) (r1889 : Seg16.relationRow1889 rho) :
    rho 14464 = seg16RPe222 rho * (1 - rho 14285) := by
  unfold Seg16.relationRow1889 at r1889
  unfold seg16RPe222
  linear_combination -r1889

theorem seg16RStep221IlMul (rho : Nat -> Seg16.F) (r1890 : Seg16.relationRow1890 rho) :
    rho 14465 = seg16RIl222 rho * (rho 14464) := by
  unfold Seg16.relationRow1890 at r1890
  rw [seg16RIl222Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom10 seg16RIlAtom11 seg16RIlAtom12 seg16RIlAtom13 seg16RIlAtom14 seg16RIlAtom15 seg16RIlAtom2 seg16RIlAtom3 seg16RIlAtom4 seg16RIlAtom5 seg16RIlAtom6 seg16RIlAtom7 seg16RIlAtom8 seg16RIlAtom9
  linear_combination -r1890

theorem seg16RStep221Acc (rho : Nat -> Seg16.F) :
    seg16RIl221 rho = seg16RIl222 rho + (rho 14464) - (rho 14465) := by
  have hstate : seg16RIl221 rho = seg16RIl222 rho + seg16RIlAtom16 rho + (-1 : Seg16.F) * seg16RIlAtom17 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom16 seg16RIlAtom17
  ring

theorem seg16RStep221Pe (rho : Nat -> Seg16.F) (r1891 : Seg16.relationRow1891 rho) :
    seg16RPe221 rho = seg16RPe222 rho * rho 14285 := by
  unfold Seg16.relationRow1891 at r1891
  unfold seg16RPe221 seg16RPe222
  linear_combination -r1891

theorem seg16RStep221 (rho : Nat -> Seg16.F) (r1889 : Seg16.relationRow1889 rho) (r1890 : Seg16.relationRow1890 rho) (r1891 : Seg16.relationRow1891 rho) :
    seg16RPe221 rho = seg16RPe222 rho * rho 14285 ∧
    seg16RIl221 rho = seg16RIl222 rho + seg16RPe222 rho * (1 - rho 14285) -
      seg16RIl222 rho * (seg16RPe222 rho * (1 - rho 14285)) := by
  constructor
  · exact seg16RStep221Pe rho r1891
  · rw [seg16RStep221Acc rho, seg16RStep221L rho r1889, seg16RStep221IlMul rho r1890, seg16RStep221L rho r1889]

theorem seg16_r_chunk221 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 222 (seg16RPeState rho 222) (seg16RIlState rho 222) := by
  have htail := seg16_r_chunk220 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1889, r1890, r1891, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 221 ≤ n → n < 222 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 221 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep221 rho r1889 r1890 r1891
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 221 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
