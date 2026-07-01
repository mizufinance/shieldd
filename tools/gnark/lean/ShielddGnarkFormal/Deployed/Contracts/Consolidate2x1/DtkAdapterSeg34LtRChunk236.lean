import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk235

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep236L (rho : Nat -> Seg34.F) (r1856 : Seg34.relationRow1856 rho) :
    rho 33131 = seg34RPe237 rho * (1 - rho 33000) := by
  unfold Seg34.relationRow1856 at r1856
  unfold seg34RPe237
  linear_combination -r1856

theorem seg34RStep236IlMul (rho : Nat -> Seg34.F) (r1857 : Seg34.relationRow1857 rho) :
    rho 33132 = seg34RIl237 rho * (rho 33131) := by
  unfold Seg34.relationRow1857 at r1857
  rw [seg34RIl237Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1 seg34RIlAtom2 seg34RIlAtom3 seg34RIlAtom4 seg34RIlAtom5 seg34RIlAtom6
  linear_combination -r1857

theorem seg34RStep236Acc (rho : Nat -> Seg34.F) :
    seg34RIl236 rho = seg34RIl237 rho + (rho 33131) - (rho 33132) := by
  have hstate : seg34RIl236 rho = seg34RIl237 rho + seg34RIlAtom7 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom7
  ring

theorem seg34RStep236Pe (rho : Nat -> Seg34.F) (r1858 : Seg34.relationRow1858 rho) :
    seg34RPe236 rho = seg34RPe237 rho * rho 33000 := by
  unfold Seg34.relationRow1858 at r1858
  unfold seg34RPe236 seg34RPe237
  linear_combination -r1858

theorem seg34RStep236 (rho : Nat -> Seg34.F) (r1856 : Seg34.relationRow1856 rho) (r1857 : Seg34.relationRow1857 rho) (r1858 : Seg34.relationRow1858 rho) :
    seg34RPe236 rho = seg34RPe237 rho * rho 33000 ∧
    seg34RIl236 rho = seg34RIl237 rho + seg34RPe237 rho * (1 - rho 33000) -
      seg34RIl237 rho * (seg34RPe237 rho * (1 - rho 33000)) := by
  constructor
  · exact seg34RStep236Pe rho r1858
  · rw [seg34RStep236Acc rho, seg34RStep236L rho r1856, seg34RStep236IlMul rho r1857, seg34RStep236L rho r1856]

theorem seg34_r_chunk236 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 237 (seg34RPeState rho 237) (seg34RIlState rho 237) := by
  have htail := seg34_r_chunk235 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1856, r1857, r1858, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 236 ≤ n → n < 237 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 236 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep236 rho r1856 r1857 r1858
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 236 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
