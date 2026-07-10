import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk235

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep236L (rho : Nat -> Seg5.F) (r1856 : Seg5.relationRow1856 rho) :
    rho 1554 = seg5RPe237 rho * (1 - rho 1423) := by
  unfold Seg5.relationRow1856 at r1856
  unfold seg5RPe237
  linear_combination -r1856

theorem seg5RStep236IlMul (rho : Nat -> Seg5.F) (r1857 : Seg5.relationRow1857 rho) :
    rho 1555 = seg5RIl237 rho * (rho 1554) := by
  unfold Seg5.relationRow1857 at r1857
  rw [seg5RIl237Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom2 seg5RIlAtom3 seg5RIlAtom4 seg5RIlAtom5 seg5RIlAtom6
  linear_combination -r1857

theorem seg5RStep236Acc (rho : Nat -> Seg5.F) :
    seg5RIl236 rho = seg5RIl237 rho + (rho 1554) - (rho 1555) := by
  have hstate : seg5RIl236 rho = seg5RIl237 rho + seg5RIlAtom7 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom7
  ring

theorem seg5RStep236Pe (rho : Nat -> Seg5.F) (r1858 : Seg5.relationRow1858 rho) :
    seg5RPe236 rho = seg5RPe237 rho * rho 1423 := by
  unfold Seg5.relationRow1858 at r1858
  unfold seg5RPe236 seg5RPe237
  linear_combination -r1858

theorem seg5RStep236 (rho : Nat -> Seg5.F) (r1856 : Seg5.relationRow1856 rho) (r1857 : Seg5.relationRow1857 rho) (r1858 : Seg5.relationRow1858 rho) :
    seg5RPe236 rho = seg5RPe237 rho * rho 1423 ∧
    seg5RIl236 rho = seg5RIl237 rho + seg5RPe237 rho * (1 - rho 1423) -
      seg5RIl237 rho * (seg5RPe237 rho * (1 - rho 1423)) := by
  constructor
  · exact seg5RStep236Pe rho r1858
  · rw [seg5RStep236Acc rho, seg5RStep236L rho r1856, seg5RStep236IlMul rho r1857, seg5RStep236L rho r1856]

theorem seg5_r_chunk236 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 237 (seg5RPeState rho 237) (seg5RIlState rho 237) := by
  have htail := seg5_r_chunk235 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1856, r1857, r1858, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 236 ≤ n → n < 237 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 236 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep236 rho r1856 r1857 r1858
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 236 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
