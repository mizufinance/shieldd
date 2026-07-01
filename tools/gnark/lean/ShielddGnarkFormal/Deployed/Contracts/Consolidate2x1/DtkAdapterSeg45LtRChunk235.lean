import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk234

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep235L (rho : Nat -> Seg45.F) (r1859 : Seg45.relationRow1859 rho) :
    rho 40090 = seg45RPe236 rho * (1 - rho 39955) := by
  unfold Seg45.relationRow1859 at r1859
  unfold seg45RPe236
  linear_combination -r1859

theorem seg45RStep235IlMul (rho : Nat -> Seg45.F) (r1860 : Seg45.relationRow1860 rho) :
    rho 40091 = seg45RIl236 rho * (rho 40090) := by
  unfold Seg45.relationRow1860 at r1860
  rw [seg45RIl236Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom2 seg45RIlAtom3 seg45RIlAtom4 seg45RIlAtom5 seg45RIlAtom6 seg45RIlAtom7
  linear_combination -r1860

theorem seg45RStep235Acc (rho : Nat -> Seg45.F) :
    seg45RIl235 rho = seg45RIl236 rho + (rho 40090) - (rho 40091) := by
  have hstate : seg45RIl235 rho = seg45RIl236 rho + seg45RIlAtom8 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom8
  ring

theorem seg45RStep235Pe (rho : Nat -> Seg45.F) (r1861 : Seg45.relationRow1861 rho) :
    seg45RPe235 rho = seg45RPe236 rho * rho 39955 := by
  unfold Seg45.relationRow1861 at r1861
  unfold seg45RPe235 seg45RPe236
  linear_combination -r1861

theorem seg45RStep235 (rho : Nat -> Seg45.F) (r1859 : Seg45.relationRow1859 rho) (r1860 : Seg45.relationRow1860 rho) (r1861 : Seg45.relationRow1861 rho) :
    seg45RPe235 rho = seg45RPe236 rho * rho 39955 ∧
    seg45RIl235 rho = seg45RIl236 rho + seg45RPe236 rho * (1 - rho 39955) -
      seg45RIl236 rho * (seg45RPe236 rho * (1 - rho 39955)) := by
  constructor
  · exact seg45RStep235Pe rho r1861
  · rw [seg45RStep235Acc rho, seg45RStep235L rho r1859, seg45RStep235IlMul rho r1860, seg45RStep235L rho r1859]

theorem seg45_r_chunk235 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 236 (seg45RPeState rho 236) (seg45RIlState rho 236) := by
  have htail := seg45_r_chunk234 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1859, r1860, r1861, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 235 ≤ n → n < 236 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 235 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep235 rho r1859 r1860 r1861
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 235 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
