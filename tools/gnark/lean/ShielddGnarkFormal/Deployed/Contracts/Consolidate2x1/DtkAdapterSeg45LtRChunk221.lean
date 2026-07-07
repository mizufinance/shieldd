import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk220

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep221L (rho : Nat -> Seg45.F) (r1889 : Seg45.relationRow1889 rho) :
    rho 40120 = seg45RPe222 rho * (1 - rho 39941) := by
  unfold Seg45.relationRow1889 at r1889
  unfold seg45RPe222
  linear_combination -r1889

theorem seg45RStep221IlMul (rho : Nat -> Seg45.F) (r1890 : Seg45.relationRow1890 rho) :
    rho 40121 = seg45RIl222 rho * (rho 40120) := by
  unfold Seg45.relationRow1890 at r1890
  rw [seg45RIl222Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom10 seg45RIlAtom11 seg45RIlAtom12 seg45RIlAtom13 seg45RIlAtom14 seg45RIlAtom15 seg45RIlAtom2 seg45RIlAtom3 seg45RIlAtom4 seg45RIlAtom5 seg45RIlAtom6 seg45RIlAtom7 seg45RIlAtom8 seg45RIlAtom9
  linear_combination -r1890

theorem seg45RStep221Acc (rho : Nat -> Seg45.F) :
    seg45RIl221 rho = seg45RIl222 rho + (rho 40120) - (rho 40121) := by
  have hstate : seg45RIl221 rho = seg45RIl222 rho + seg45RIlAtom16 rho + (-1 : Seg45.F) * seg45RIlAtom17 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom16 seg45RIlAtom17
  ring

theorem seg45RStep221Pe (rho : Nat -> Seg45.F) (r1891 : Seg45.relationRow1891 rho) :
    seg45RPe221 rho = seg45RPe222 rho * rho 39941 := by
  unfold Seg45.relationRow1891 at r1891
  unfold seg45RPe221 seg45RPe222
  linear_combination -r1891

theorem seg45RStep221 (rho : Nat -> Seg45.F) (r1889 : Seg45.relationRow1889 rho) (r1890 : Seg45.relationRow1890 rho) (r1891 : Seg45.relationRow1891 rho) :
    seg45RPe221 rho = seg45RPe222 rho * rho 39941 ∧
    seg45RIl221 rho = seg45RIl222 rho + seg45RPe222 rho * (1 - rho 39941) -
      seg45RIl222 rho * (seg45RPe222 rho * (1 - rho 39941)) := by
  constructor
  · exact seg45RStep221Pe rho r1891
  · rw [seg45RStep221Acc rho, seg45RStep221L rho r1889, seg45RStep221IlMul rho r1890, seg45RStep221L rho r1889]

theorem seg45_r_chunk221 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 222 (seg45RPeState rho 222) (seg45RIlState rho 222) := by
  have htail := seg45_r_chunk220 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1889, r1890, r1891, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 221 ≤ n → n < 222 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 221 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep221 rho r1889 r1890 r1891
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 221 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
