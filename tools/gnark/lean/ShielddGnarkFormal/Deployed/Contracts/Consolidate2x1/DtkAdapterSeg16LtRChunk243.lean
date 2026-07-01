import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk242

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep243L (rho : Nat -> Seg16.F) (r1841 : Seg16.relationRow1841 rho) :
    rho 14416 = seg16RPe244 rho * (1 - rho 14307) := by
  unfold Seg16.relationRow1841 at r1841
  unfold seg16RPe244
  linear_combination -r1841

theorem seg16RStep243IlMul (rho : Nat -> Seg16.F) (r1842 : Seg16.relationRow1842 rho) :
    rho 14417 = seg16RIl244 rho * (rho 14416) := by
  unfold Seg16.relationRow1842 at r1842
  rw [seg16RIl244Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom2
  linear_combination -r1842

theorem seg16RStep243Acc (rho : Nat -> Seg16.F) :
    seg16RIl243 rho = seg16RIl244 rho + (rho 14416) - (rho 14417) := by
  have hstate : seg16RIl243 rho = seg16RIl244 rho + seg16RIlAtom3 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom3
  ring

theorem seg16RStep243Pe (rho : Nat -> Seg16.F) (r1843 : Seg16.relationRow1843 rho) :
    seg16RPe243 rho = seg16RPe244 rho * rho 14307 := by
  unfold Seg16.relationRow1843 at r1843
  unfold seg16RPe243 seg16RPe244
  linear_combination -r1843

theorem seg16RStep243 (rho : Nat -> Seg16.F) (r1841 : Seg16.relationRow1841 rho) (r1842 : Seg16.relationRow1842 rho) (r1843 : Seg16.relationRow1843 rho) :
    seg16RPe243 rho = seg16RPe244 rho * rho 14307 ∧
    seg16RIl243 rho = seg16RIl244 rho + seg16RPe244 rho * (1 - rho 14307) -
      seg16RIl244 rho * (seg16RPe244 rho * (1 - rho 14307)) := by
  constructor
  · exact seg16RStep243Pe rho r1843
  · rw [seg16RStep243Acc rho, seg16RStep243L rho r1841, seg16RStep243IlMul rho r1842, seg16RStep243L rho r1841]

theorem seg16_r_chunk243 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 244 (seg16RPeState rho 244) (seg16RIlState rho 244) := by
  have htail := seg16_r_chunk242 rho h k hq4
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
  rcases p23 with ⟨_, r1841, r1842, r1843, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 243 ≤ n → n < 244 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 243 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep243 rho r1841 r1842 r1843
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 243 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
