import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk220

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep221L (rho : Nat -> Seg34.F) (r1889 : Seg34.relationRow1889 rho) :
    rho 33164 = seg34RPe222 rho * (1 - rho 32985) := by
  unfold Seg34.relationRow1889 at r1889
  unfold seg34RPe222
  linear_combination -r1889

theorem seg34RStep221IlMul (rho : Nat -> Seg34.F) (r1890 : Seg34.relationRow1890 rho) :
    rho 33165 = seg34RIl222 rho * (rho 33164) := by
  unfold Seg34.relationRow1890 at r1890
  rw [seg34RIl222Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1 seg34RIlAtom10 seg34RIlAtom11 seg34RIlAtom12 seg34RIlAtom13 seg34RIlAtom14 seg34RIlAtom15 seg34RIlAtom2 seg34RIlAtom3 seg34RIlAtom4 seg34RIlAtom5 seg34RIlAtom6 seg34RIlAtom7 seg34RIlAtom8 seg34RIlAtom9
  linear_combination -r1890

theorem seg34RStep221Acc (rho : Nat -> Seg34.F) :
    seg34RIl221 rho = seg34RIl222 rho + (rho 33164) - (rho 33165) := by
  have hstate : seg34RIl221 rho = seg34RIl222 rho + seg34RIlAtom16 rho + (-1 : Seg34.F) * seg34RIlAtom17 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom16 seg34RIlAtom17
  ring

theorem seg34RStep221Pe (rho : Nat -> Seg34.F) (r1891 : Seg34.relationRow1891 rho) :
    seg34RPe221 rho = seg34RPe222 rho * rho 32985 := by
  unfold Seg34.relationRow1891 at r1891
  unfold seg34RPe221 seg34RPe222
  linear_combination -r1891

theorem seg34RStep221 (rho : Nat -> Seg34.F) (r1889 : Seg34.relationRow1889 rho) (r1890 : Seg34.relationRow1890 rho) (r1891 : Seg34.relationRow1891 rho) :
    seg34RPe221 rho = seg34RPe222 rho * rho 32985 ∧
    seg34RIl221 rho = seg34RIl222 rho + seg34RPe222 rho * (1 - rho 32985) -
      seg34RIl222 rho * (seg34RPe222 rho * (1 - rho 32985)) := by
  constructor
  · exact seg34RStep221Pe rho r1891
  · rw [seg34RStep221Acc rho, seg34RStep221L rho r1889, seg34RStep221IlMul rho r1890, seg34RStep221L rho r1889]

theorem seg34_r_chunk221 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 222 (seg34RPeState rho 222) (seg34RIlState rho 222) := by
  have htail := seg34_r_chunk220 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1889, r1890, r1891, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 221 ≤ n → n < 222 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 221 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep221 rho r1889 r1890 r1891
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 221 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
