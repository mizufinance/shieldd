import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk240

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep241L (rho : Nat -> Seg16.F) (r1845 : Seg16.relationRow1845 rho) :
    rho 14420 = seg16RPe242 rho * (1 - rho 14305) := by
  unfold Seg16.relationRow1845 at r1845
  unfold seg16RPe242
  linear_combination -r1845

theorem seg16RStep241IlMul (rho : Nat -> Seg16.F) (r1846 : Seg16.relationRow1846 rho) :
    rho 14421 = seg16RIl242 rho * (rho 14420) := by
  unfold Seg16.relationRow1846 at r1846
  rw [seg16RIl242Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom2 seg16RIlAtom3
  linear_combination -r1846

theorem seg16RStep241Acc (rho : Nat -> Seg16.F) :
    seg16RIl241 rho = seg16RIl242 rho + (rho 14420) - (rho 14421) := by
  have hstate : seg16RIl241 rho = seg16RIl242 rho + seg16RIlAtom4 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom4
  ring

theorem seg16RStep241Pe (rho : Nat -> Seg16.F) (r1847 : Seg16.relationRow1847 rho) :
    seg16RPe241 rho = seg16RPe242 rho * rho 14305 := by
  unfold Seg16.relationRow1847 at r1847
  unfold seg16RPe241 seg16RPe242
  linear_combination -r1847

theorem seg16RStep241 (rho : Nat -> Seg16.F) (r1845 : Seg16.relationRow1845 rho) (r1846 : Seg16.relationRow1846 rho) (r1847 : Seg16.relationRow1847 rho) :
    seg16RPe241 rho = seg16RPe242 rho * rho 14305 ∧
    seg16RIl241 rho = seg16RIl242 rho + seg16RPe242 rho * (1 - rho 14305) -
      seg16RIl242 rho * (seg16RPe242 rho * (1 - rho 14305)) := by
  constructor
  · exact seg16RStep241Pe rho r1847
  · rw [seg16RStep241Acc rho, seg16RStep241L rho r1845, seg16RStep241IlMul rho r1846, seg16RStep241L rho r1845]

theorem seg16_r_chunk241 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 242 (seg16RPeState rho 242) (seg16RIlState rho 242) := by
  have htail := seg16_r_chunk240 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, r1845, r1846, r1847, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 241 ≤ n → n < 242 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 241 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep241 rho r1845 r1846 r1847
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 241 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
