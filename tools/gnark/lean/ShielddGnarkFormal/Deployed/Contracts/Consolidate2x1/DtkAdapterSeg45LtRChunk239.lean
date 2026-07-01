import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk238

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep239L (rho : Nat -> Seg45.F) (r1849 : Seg45.relationRow1849 rho) :
    rho 40080 = seg45RPe240 rho * (1 - rho 39959) := by
  unfold Seg45.relationRow1849 at r1849
  unfold seg45RPe240
  linear_combination -r1849

theorem seg45RStep239IlMul (rho : Nat -> Seg45.F) (r1850 : Seg45.relationRow1850 rho) :
    rho 40081 = seg45RIl240 rho * (rho 40080) := by
  unfold Seg45.relationRow1850 at r1850
  rw [seg45RIl240Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom2 seg45RIlAtom3 seg45RIlAtom4
  linear_combination -r1850

theorem seg45RStep239Acc (rho : Nat -> Seg45.F) :
    seg45RIl239 rho = seg45RIl240 rho + (rho 40080) - (rho 40081) := by
  have hstate : seg45RIl239 rho = seg45RIl240 rho + seg45RIlAtom5 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom5
  ring

theorem seg45RStep239Pe (rho : Nat -> Seg45.F) (r1851 : Seg45.relationRow1851 rho) :
    seg45RPe239 rho = seg45RPe240 rho * rho 39959 := by
  unfold Seg45.relationRow1851 at r1851
  unfold seg45RPe239 seg45RPe240
  linear_combination -r1851

theorem seg45RStep239 (rho : Nat -> Seg45.F) (r1849 : Seg45.relationRow1849 rho) (r1850 : Seg45.relationRow1850 rho) (r1851 : Seg45.relationRow1851 rho) :
    seg45RPe239 rho = seg45RPe240 rho * rho 39959 ∧
    seg45RIl239 rho = seg45RIl240 rho + seg45RPe240 rho * (1 - rho 39959) -
      seg45RIl240 rho * (seg45RPe240 rho * (1 - rho 39959)) := by
  constructor
  · exact seg45RStep239Pe rho r1851
  · rw [seg45RStep239Acc rho, seg45RStep239L rho r1849, seg45RStep239IlMul rho r1850, seg45RStep239L rho r1849]

theorem seg45_r_chunk239 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 240 (seg45RPeState rho 240) (seg45RIlState rho 240) := by
  have htail := seg45_r_chunk238 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, r1849, r1850, r1851, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 239 ≤ n → n < 240 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 239 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep239 rho r1849 r1850 r1851
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 239 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
