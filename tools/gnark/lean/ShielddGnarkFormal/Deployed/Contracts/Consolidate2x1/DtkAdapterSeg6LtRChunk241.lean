import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk240

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep241L (rho : Nat -> Seg6.F) (r1845 : Seg6.relationRow1845 rho) :
    rho 2246 = seg6RPe242 rho * (1 - rho 2131) := by
  unfold Seg6.relationRow1845 at r1845
  unfold seg6RPe242
  linear_combination -r1845

theorem seg6RStep241IlMul (rho : Nat -> Seg6.F) (r1846 : Seg6.relationRow1846 rho) :
    rho 2247 = seg6RIl242 rho * (rho 2246) := by
  unfold Seg6.relationRow1846 at r1846
  rw [seg6RIl242Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom2 seg6RIlAtom3
  linear_combination -r1846

theorem seg6RStep241Acc (rho : Nat -> Seg6.F) :
    seg6RIl241 rho = seg6RIl242 rho + (rho 2246) - (rho 2247) := by
  have hstate : seg6RIl241 rho = seg6RIl242 rho + seg6RIlAtom4 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom4
  ring

theorem seg6RStep241Pe (rho : Nat -> Seg6.F) (r1847 : Seg6.relationRow1847 rho) :
    seg6RPe241 rho = seg6RPe242 rho * rho 2131 := by
  unfold Seg6.relationRow1847 at r1847
  unfold seg6RPe241 seg6RPe242
  linear_combination -r1847

theorem seg6RStep241 (rho : Nat -> Seg6.F) (r1845 : Seg6.relationRow1845 rho) (r1846 : Seg6.relationRow1846 rho) (r1847 : Seg6.relationRow1847 rho) :
    seg6RPe241 rho = seg6RPe242 rho * rho 2131 ∧
    seg6RIl241 rho = seg6RIl242 rho + seg6RPe242 rho * (1 - rho 2131) -
      seg6RIl242 rho * (seg6RPe242 rho * (1 - rho 2131)) := by
  constructor
  · exact seg6RStep241Pe rho r1847
  · rw [seg6RStep241Acc rho, seg6RStep241L rho r1845, seg6RStep241IlMul rho r1846, seg6RStep241L rho r1845]

theorem seg6_r_chunk241 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 242 (seg6RPeState rho 242) (seg6RIlState rho 242) := by
  have htail := seg6_r_chunk240 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, r1845, r1846, r1847, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 241 ≤ n → n < 242 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 241 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep241 rho r1845 r1846 r1847
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 241 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
