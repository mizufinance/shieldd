import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk240

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep241L (rho : Nat -> Seg34.F) (r1845 : Seg34.relationRow1845 rho) :
    rho 33120 = seg34RPe242 rho * (1 - rho 33005) := by
  unfold Seg34.relationRow1845 at r1845
  unfold seg34RPe242
  linear_combination -r1845

theorem seg34RStep241IlMul (rho : Nat -> Seg34.F) (r1846 : Seg34.relationRow1846 rho) :
    rho 33121 = seg34RIl242 rho * (rho 33120) := by
  unfold Seg34.relationRow1846 at r1846
  rw [seg34RIl242Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1 seg34RIlAtom2 seg34RIlAtom3
  linear_combination -r1846

theorem seg34RStep241Acc (rho : Nat -> Seg34.F) :
    seg34RIl241 rho = seg34RIl242 rho + (rho 33120) - (rho 33121) := by
  have hstate : seg34RIl241 rho = seg34RIl242 rho + seg34RIlAtom4 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom4
  ring

theorem seg34RStep241Pe (rho : Nat -> Seg34.F) (r1847 : Seg34.relationRow1847 rho) :
    seg34RPe241 rho = seg34RPe242 rho * rho 33005 := by
  unfold Seg34.relationRow1847 at r1847
  unfold seg34RPe241 seg34RPe242
  linear_combination -r1847

theorem seg34RStep241 (rho : Nat -> Seg34.F) (r1845 : Seg34.relationRow1845 rho) (r1846 : Seg34.relationRow1846 rho) (r1847 : Seg34.relationRow1847 rho) :
    seg34RPe241 rho = seg34RPe242 rho * rho 33005 ∧
    seg34RIl241 rho = seg34RIl242 rho + seg34RPe242 rho * (1 - rho 33005) -
      seg34RIl242 rho * (seg34RPe242 rho * (1 - rho 33005)) := by
  constructor
  · exact seg34RStep241Pe rho r1847
  · rw [seg34RStep241Acc rho, seg34RStep241L rho r1845, seg34RStep241IlMul rho r1846, seg34RStep241L rho r1845]

theorem seg34_r_chunk241 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 242 (seg34RPeState rho 242) (seg34RIlState rho 242) := by
  have htail := seg34_r_chunk240 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, r1845, r1846, r1847, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 241 ≤ n → n < 242 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 241 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep241 rho r1845 r1846 r1847
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 241 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
