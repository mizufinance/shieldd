import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk237

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep238L (rho : Nat -> Seg16.F) (r1852 : Seg16.relationRow1852 rho) :
    rho 14427 = seg16RPe239 rho * (1 - rho 14302) := by
  unfold Seg16.relationRow1852 at r1852
  unfold seg16RPe239
  linear_combination -r1852

theorem seg16RStep238IlMul (rho : Nat -> Seg16.F) (r1853 : Seg16.relationRow1853 rho) :
    rho 14428 = seg16RIl239 rho * (rho 14427) := by
  unfold Seg16.relationRow1853 at r1853
  rw [seg16RIl239Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom2 seg16RIlAtom3 seg16RIlAtom4 seg16RIlAtom5
  linear_combination -r1853

theorem seg16RStep238Acc (rho : Nat -> Seg16.F) :
    seg16RIl238 rho = seg16RIl239 rho + (rho 14427) - (rho 14428) := by
  have hstate : seg16RIl238 rho = seg16RIl239 rho + seg16RIlAtom6 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom6
  ring

theorem seg16RStep238Pe (rho : Nat -> Seg16.F) (r1854 : Seg16.relationRow1854 rho) :
    seg16RPe238 rho = seg16RPe239 rho * rho 14302 := by
  unfold Seg16.relationRow1854 at r1854
  unfold seg16RPe238 seg16RPe239
  linear_combination -r1854

theorem seg16RStep238 (rho : Nat -> Seg16.F) (r1852 : Seg16.relationRow1852 rho) (r1853 : Seg16.relationRow1853 rho) (r1854 : Seg16.relationRow1854 rho) :
    seg16RPe238 rho = seg16RPe239 rho * rho 14302 ∧
    seg16RIl238 rho = seg16RIl239 rho + seg16RPe239 rho * (1 - rho 14302) -
      seg16RIl239 rho * (seg16RPe239 rho * (1 - rho 14302)) := by
  constructor
  · exact seg16RStep238Pe rho r1854
  · rw [seg16RStep238Acc rho, seg16RStep238L rho r1852, seg16RStep238IlMul rho r1853, seg16RStep238L rho r1852]

theorem seg16_r_chunk238 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 239 (seg16RPeState rho 239) (seg16RIlState rho 239) := by
  have htail := seg16_r_chunk237 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r1852, r1853, r1854, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 238 ≤ n → n < 239 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 238 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep238 rho r1852 r1853 r1854
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 238 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
