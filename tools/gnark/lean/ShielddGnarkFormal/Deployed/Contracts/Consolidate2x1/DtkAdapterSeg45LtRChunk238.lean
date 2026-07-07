import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk237

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep238L (rho : Nat -> Seg45.F) (r1852 : Seg45.relationRow1852 rho) :
    rho 40083 = seg45RPe239 rho * (1 - rho 39958) := by
  unfold Seg45.relationRow1852 at r1852
  unfold seg45RPe239
  linear_combination -r1852

theorem seg45RStep238IlMul (rho : Nat -> Seg45.F) (r1853 : Seg45.relationRow1853 rho) :
    rho 40084 = seg45RIl239 rho * (rho 40083) := by
  unfold Seg45.relationRow1853 at r1853
  rw [seg45RIl239Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom2 seg45RIlAtom3 seg45RIlAtom4 seg45RIlAtom5
  linear_combination -r1853

theorem seg45RStep238Acc (rho : Nat -> Seg45.F) :
    seg45RIl238 rho = seg45RIl239 rho + (rho 40083) - (rho 40084) := by
  have hstate : seg45RIl238 rho = seg45RIl239 rho + seg45RIlAtom6 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom6
  ring

theorem seg45RStep238Pe (rho : Nat -> Seg45.F) (r1854 : Seg45.relationRow1854 rho) :
    seg45RPe238 rho = seg45RPe239 rho * rho 39958 := by
  unfold Seg45.relationRow1854 at r1854
  unfold seg45RPe238 seg45RPe239
  linear_combination -r1854

theorem seg45RStep238 (rho : Nat -> Seg45.F) (r1852 : Seg45.relationRow1852 rho) (r1853 : Seg45.relationRow1853 rho) (r1854 : Seg45.relationRow1854 rho) :
    seg45RPe238 rho = seg45RPe239 rho * rho 39958 ∧
    seg45RIl238 rho = seg45RIl239 rho + seg45RPe239 rho * (1 - rho 39958) -
      seg45RIl239 rho * (seg45RPe239 rho * (1 - rho 39958)) := by
  constructor
  · exact seg45RStep238Pe rho r1854
  · rw [seg45RStep238Acc rho, seg45RStep238L rho r1852, seg45RStep238IlMul rho r1853, seg45RStep238L rho r1852]

theorem seg45_r_chunk238 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 239 (seg45RPeState rho 239) (seg45RIlState rho 239) := by
  have htail := seg45_r_chunk237 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r1852, r1853, r1854, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 238 ≤ n → n < 239 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 238 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep238 rho r1852 r1853 r1854
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 238 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
