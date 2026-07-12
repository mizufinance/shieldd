import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk235

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep236L (rho : Nat -> Seg6.F) (r1856 : Seg6.relationRow1856 rho) :
    rho 2257 = seg6RPe237 rho * (1 - rho 2126) := by
  unfold Seg6.relationRow1856 at r1856
  unfold seg6RPe237
  linear_combination -r1856

theorem seg6RStep236IlMul (rho : Nat -> Seg6.F) (r1857 : Seg6.relationRow1857 rho) :
    rho 2258 = seg6RIl237 rho * (rho 2257) := by
  unfold Seg6.relationRow1857 at r1857
  rw [seg6RIl237Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom2 seg6RIlAtom3 seg6RIlAtom4 seg6RIlAtom5 seg6RIlAtom6
  linear_combination -r1857

theorem seg6RStep236Acc (rho : Nat -> Seg6.F) :
    seg6RIl236 rho = seg6RIl237 rho + (rho 2257) - (rho 2258) := by
  have hstate : seg6RIl236 rho = seg6RIl237 rho + seg6RIlAtom7 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom7
  ring

theorem seg6RStep236Pe (rho : Nat -> Seg6.F) (r1858 : Seg6.relationRow1858 rho) :
    seg6RPe236 rho = seg6RPe237 rho * rho 2126 := by
  unfold Seg6.relationRow1858 at r1858
  unfold seg6RPe236 seg6RPe237
  linear_combination -r1858

theorem seg6RStep236 (rho : Nat -> Seg6.F) (r1856 : Seg6.relationRow1856 rho) (r1857 : Seg6.relationRow1857 rho) (r1858 : Seg6.relationRow1858 rho) :
    seg6RPe236 rho = seg6RPe237 rho * rho 2126 ∧
    seg6RIl236 rho = seg6RIl237 rho + seg6RPe237 rho * (1 - rho 2126) -
      seg6RIl237 rho * (seg6RPe237 rho * (1 - rho 2126)) := by
  constructor
  · exact seg6RStep236Pe rho r1858
  · rw [seg6RStep236Acc rho, seg6RStep236L rho r1856, seg6RStep236IlMul rho r1857, seg6RStep236L rho r1856]

theorem seg6_r_chunk236 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 237 (seg6RPeState rho 237) (seg6RIlState rho 237) := by
  have htail := seg6_r_chunk235 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1856, r1857, r1858, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 236 ≤ n → n < 237 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 236 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep236 rho r1856 r1857 r1858
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 236 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
