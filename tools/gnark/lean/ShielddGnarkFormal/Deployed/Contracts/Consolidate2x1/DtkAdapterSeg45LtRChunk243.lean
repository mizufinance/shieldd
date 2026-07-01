import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep243L (rho : Nat -> Seg45.F) (r1841 : Seg45.relationRow1841 rho) :
    rho 40072 = seg45RPe244 rho * (1 - rho 39963) := by
  unfold Seg45.relationRow1841 at r1841
  unfold seg45RPe244
  linear_combination -r1841

theorem seg45RStep243IlMul (rho : Nat -> Seg45.F) (r1842 : Seg45.relationRow1842 rho) :
    rho 40073 = seg45RIl244 rho * (rho 40072) := by
  unfold Seg45.relationRow1842 at r1842
  rw [seg45RIl244Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom2
  linear_combination -r1842

theorem seg45RStep243Acc (rho : Nat -> Seg45.F) :
    seg45RIl243 rho = seg45RIl244 rho + (rho 40072) - (rho 40073) := by
  have hstate : seg45RIl243 rho = seg45RIl244 rho + seg45RIlAtom3 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom3
  ring

theorem seg45RStep243Pe (rho : Nat -> Seg45.F) (r1843 : Seg45.relationRow1843 rho) :
    seg45RPe243 rho = seg45RPe244 rho * rho 39963 := by
  unfold Seg45.relationRow1843 at r1843
  unfold seg45RPe243 seg45RPe244
  linear_combination -r1843

theorem seg45RStep243 (rho : Nat -> Seg45.F) (r1841 : Seg45.relationRow1841 rho) (r1842 : Seg45.relationRow1842 rho) (r1843 : Seg45.relationRow1843 rho) :
    seg45RPe243 rho = seg45RPe244 rho * rho 39963 ∧
    seg45RIl243 rho = seg45RIl244 rho + seg45RPe244 rho * (1 - rho 39963) -
      seg45RIl244 rho * (seg45RPe244 rho * (1 - rho 39963)) := by
  constructor
  · exact seg45RStep243Pe rho r1843
  · rw [seg45RStep243Acc rho, seg45RStep243L rho r1841, seg45RStep243IlMul rho r1842, seg45RStep243L rho r1841]

theorem seg45_r_chunk243 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 244 (seg45RPeState rho 244) (seg45RIlState rho 244) := by
  have htail := seg45_r_chunk242 rho h k hq4
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
  rcases p23 with ⟨_, r1841, r1842, r1843, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 243 ≤ n → n < 244 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 243 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep243 rho r1841 r1842 r1843
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 243 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
