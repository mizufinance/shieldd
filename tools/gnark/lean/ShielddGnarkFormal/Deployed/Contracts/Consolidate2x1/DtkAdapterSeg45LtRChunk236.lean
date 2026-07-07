import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk235

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep236L (rho : Nat -> Seg45.F) (r1856 : Seg45.relationRow1856 rho) :
    rho 40087 = seg45RPe237 rho * (1 - rho 39956) := by
  unfold Seg45.relationRow1856 at r1856
  unfold seg45RPe237
  linear_combination -r1856

theorem seg45RStep236IlMul (rho : Nat -> Seg45.F) (r1857 : Seg45.relationRow1857 rho) :
    rho 40088 = seg45RIl237 rho * (rho 40087) := by
  unfold Seg45.relationRow1857 at r1857
  rw [seg45RIl237Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom2 seg45RIlAtom3 seg45RIlAtom4 seg45RIlAtom5 seg45RIlAtom6
  linear_combination -r1857

theorem seg45RStep236Acc (rho : Nat -> Seg45.F) :
    seg45RIl236 rho = seg45RIl237 rho + (rho 40087) - (rho 40088) := by
  have hstate : seg45RIl236 rho = seg45RIl237 rho + seg45RIlAtom7 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom7
  ring

theorem seg45RStep236Pe (rho : Nat -> Seg45.F) (r1858 : Seg45.relationRow1858 rho) :
    seg45RPe236 rho = seg45RPe237 rho * rho 39956 := by
  unfold Seg45.relationRow1858 at r1858
  unfold seg45RPe236 seg45RPe237
  linear_combination -r1858

theorem seg45RStep236 (rho : Nat -> Seg45.F) (r1856 : Seg45.relationRow1856 rho) (r1857 : Seg45.relationRow1857 rho) (r1858 : Seg45.relationRow1858 rho) :
    seg45RPe236 rho = seg45RPe237 rho * rho 39956 ∧
    seg45RIl236 rho = seg45RIl237 rho + seg45RPe237 rho * (1 - rho 39956) -
      seg45RIl237 rho * (seg45RPe237 rho * (1 - rho 39956)) := by
  constructor
  · exact seg45RStep236Pe rho r1858
  · rw [seg45RStep236Acc rho, seg45RStep236L rho r1856, seg45RStep236IlMul rho r1857, seg45RStep236L rho r1856]

theorem seg45_r_chunk236 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 237 (seg45RPeState rho 237) (seg45RIlState rho 237) := by
  have htail := seg45_r_chunk235 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1856, r1857, r1858, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 236 ≤ n → n < 237 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 236 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep236 rho r1856 r1857 r1858
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 236 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
