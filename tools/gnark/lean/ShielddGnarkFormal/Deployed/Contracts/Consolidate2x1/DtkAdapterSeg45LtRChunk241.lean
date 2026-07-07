import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk240

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep241L (rho : Nat -> Seg45.F) (r1845 : Seg45.relationRow1845 rho) :
    rho 40076 = seg45RPe242 rho * (1 - rho 39961) := by
  unfold Seg45.relationRow1845 at r1845
  unfold seg45RPe242
  linear_combination -r1845

theorem seg45RStep241IlMul (rho : Nat -> Seg45.F) (r1846 : Seg45.relationRow1846 rho) :
    rho 40077 = seg45RIl242 rho * (rho 40076) := by
  unfold Seg45.relationRow1846 at r1846
  rw [seg45RIl242Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom2 seg45RIlAtom3
  linear_combination -r1846

theorem seg45RStep241Acc (rho : Nat -> Seg45.F) :
    seg45RIl241 rho = seg45RIl242 rho + (rho 40076) - (rho 40077) := by
  have hstate : seg45RIl241 rho = seg45RIl242 rho + seg45RIlAtom4 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom4
  ring

theorem seg45RStep241Pe (rho : Nat -> Seg45.F) (r1847 : Seg45.relationRow1847 rho) :
    seg45RPe241 rho = seg45RPe242 rho * rho 39961 := by
  unfold Seg45.relationRow1847 at r1847
  unfold seg45RPe241 seg45RPe242
  linear_combination -r1847

theorem seg45RStep241 (rho : Nat -> Seg45.F) (r1845 : Seg45.relationRow1845 rho) (r1846 : Seg45.relationRow1846 rho) (r1847 : Seg45.relationRow1847 rho) :
    seg45RPe241 rho = seg45RPe242 rho * rho 39961 ∧
    seg45RIl241 rho = seg45RIl242 rho + seg45RPe242 rho * (1 - rho 39961) -
      seg45RIl242 rho * (seg45RPe242 rho * (1 - rho 39961)) := by
  constructor
  · exact seg45RStep241Pe rho r1847
  · rw [seg45RStep241Acc rho, seg45RStep241L rho r1845, seg45RStep241IlMul rho r1846, seg45RStep241L rho r1845]

theorem seg45_r_chunk241 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 242 (seg45RPeState rho 242) (seg45RIlState rho 242) := by
  have htail := seg45_r_chunk240 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, r1845, r1846, r1847, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 241 ≤ n → n < 242 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 241 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep241 rho r1845 r1846 r1847
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 241 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
