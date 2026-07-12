import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk234

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep235L (rho : Nat -> Seg6.F) (r1859 : Seg6.relationRow1859 rho) :
    rho 2260 = seg6RPe236 rho * (1 - rho 2125) := by
  unfold Seg6.relationRow1859 at r1859
  unfold seg6RPe236
  linear_combination -r1859

theorem seg6RStep235IlMul (rho : Nat -> Seg6.F) (r1860 : Seg6.relationRow1860 rho) :
    rho 2261 = seg6RIl236 rho * (rho 2260) := by
  unfold Seg6.relationRow1860 at r1860
  rw [seg6RIl236Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom2 seg6RIlAtom3 seg6RIlAtom4 seg6RIlAtom5 seg6RIlAtom6 seg6RIlAtom7
  linear_combination -r1860

theorem seg6RStep235Acc (rho : Nat -> Seg6.F) :
    seg6RIl235 rho = seg6RIl236 rho + (rho 2260) - (rho 2261) := by
  have hstate : seg6RIl235 rho = seg6RIl236 rho + seg6RIlAtom8 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom8
  ring

theorem seg6RStep235Pe (rho : Nat -> Seg6.F) (r1861 : Seg6.relationRow1861 rho) :
    seg6RPe235 rho = seg6RPe236 rho * rho 2125 := by
  unfold Seg6.relationRow1861 at r1861
  unfold seg6RPe235 seg6RPe236
  linear_combination -r1861

theorem seg6RStep235 (rho : Nat -> Seg6.F) (r1859 : Seg6.relationRow1859 rho) (r1860 : Seg6.relationRow1860 rho) (r1861 : Seg6.relationRow1861 rho) :
    seg6RPe235 rho = seg6RPe236 rho * rho 2125 ∧
    seg6RIl235 rho = seg6RIl236 rho + seg6RPe236 rho * (1 - rho 2125) -
      seg6RIl236 rho * (seg6RPe236 rho * (1 - rho 2125)) := by
  constructor
  · exact seg6RStep235Pe rho r1861
  · rw [seg6RStep235Acc rho, seg6RStep235L rho r1859, seg6RStep235IlMul rho r1860, seg6RStep235L rho r1859]

theorem seg6_r_chunk235 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 236 (seg6RPeState rho 236) (seg6RIlState rho 236) := by
  have htail := seg6_r_chunk234 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1859, r1860, r1861, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 235 ≤ n → n < 236 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 235 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep235 rho r1859 r1860 r1861
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 235 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
