import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk237

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep238L (rho : Nat -> Seg34.F) (r1852 : Seg34.relationRow1852 rho) :
    rho 33127 = seg34RPe239 rho * (1 - rho 33002) := by
  unfold Seg34.relationRow1852 at r1852
  unfold seg34RPe239
  linear_combination -r1852

theorem seg34RStep238IlMul (rho : Nat -> Seg34.F) (r1853 : Seg34.relationRow1853 rho) :
    rho 33128 = seg34RIl239 rho * (rho 33127) := by
  unfold Seg34.relationRow1853 at r1853
  rw [seg34RIl239Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1 seg34RIlAtom2 seg34RIlAtom3 seg34RIlAtom4 seg34RIlAtom5
  linear_combination -r1853

theorem seg34RStep238Acc (rho : Nat -> Seg34.F) :
    seg34RIl238 rho = seg34RIl239 rho + (rho 33127) - (rho 33128) := by
  have hstate : seg34RIl238 rho = seg34RIl239 rho + seg34RIlAtom6 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom6
  ring

theorem seg34RStep238Pe (rho : Nat -> Seg34.F) (r1854 : Seg34.relationRow1854 rho) :
    seg34RPe238 rho = seg34RPe239 rho * rho 33002 := by
  unfold Seg34.relationRow1854 at r1854
  unfold seg34RPe238 seg34RPe239
  linear_combination -r1854

theorem seg34RStep238 (rho : Nat -> Seg34.F) (r1852 : Seg34.relationRow1852 rho) (r1853 : Seg34.relationRow1853 rho) (r1854 : Seg34.relationRow1854 rho) :
    seg34RPe238 rho = seg34RPe239 rho * rho 33002 ∧
    seg34RIl238 rho = seg34RIl239 rho + seg34RPe239 rho * (1 - rho 33002) -
      seg34RIl239 rho * (seg34RPe239 rho * (1 - rho 33002)) := by
  constructor
  · exact seg34RStep238Pe rho r1854
  · rw [seg34RStep238Acc rho, seg34RStep238L rho r1852, seg34RStep238IlMul rho r1853, seg34RStep238L rho r1852]

theorem seg34_r_chunk238 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 239 (seg34RPeState rho 239) (seg34RIlState rho 239) := by
  have htail := seg34_r_chunk237 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r1852, r1853, r1854, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 238 ≤ n → n < 239 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 238 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep238 rho r1852 r1853 r1854
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 238 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
