import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk235

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep236L (rho : Nat -> Seg16.F) (r1856 : Seg16.relationRow1856 rho) :
    rho 14431 = seg16RPe237 rho * (1 - rho 14300) := by
  unfold Seg16.relationRow1856 at r1856
  unfold seg16RPe237
  linear_combination -r1856

theorem seg16RStep236IlMul (rho : Nat -> Seg16.F) (r1857 : Seg16.relationRow1857 rho) :
    rho 14432 = seg16RIl237 rho * (rho 14431) := by
  unfold Seg16.relationRow1857 at r1857
  rw [seg16RIl237Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom2 seg16RIlAtom3 seg16RIlAtom4 seg16RIlAtom5 seg16RIlAtom6
  linear_combination -r1857

theorem seg16RStep236Acc (rho : Nat -> Seg16.F) :
    seg16RIl236 rho = seg16RIl237 rho + (rho 14431) - (rho 14432) := by
  have hstate : seg16RIl236 rho = seg16RIl237 rho + seg16RIlAtom7 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom7
  ring

theorem seg16RStep236Pe (rho : Nat -> Seg16.F) (r1858 : Seg16.relationRow1858 rho) :
    seg16RPe236 rho = seg16RPe237 rho * rho 14300 := by
  unfold Seg16.relationRow1858 at r1858
  unfold seg16RPe236 seg16RPe237
  linear_combination -r1858

theorem seg16RStep236 (rho : Nat -> Seg16.F) (r1856 : Seg16.relationRow1856 rho) (r1857 : Seg16.relationRow1857 rho) (r1858 : Seg16.relationRow1858 rho) :
    seg16RPe236 rho = seg16RPe237 rho * rho 14300 ∧
    seg16RIl236 rho = seg16RIl237 rho + seg16RPe237 rho * (1 - rho 14300) -
      seg16RIl237 rho * (seg16RPe237 rho * (1 - rho 14300)) := by
  constructor
  · exact seg16RStep236Pe rho r1858
  · rw [seg16RStep236Acc rho, seg16RStep236L rho r1856, seg16RStep236IlMul rho r1857, seg16RStep236L rho r1856]

theorem seg16_r_chunk236 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 237 (seg16RPeState rho 237) (seg16RIlState rho 237) := by
  have htail := seg16_r_chunk235 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1856, r1857, r1858, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 236 ≤ n → n < 237 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 236 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep236 rho r1856 r1857 r1858
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 236 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
