import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk55

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep56L (rho : Nat -> Seg45.F) (r2212 : Seg45.relationRow2212 rho) :
    rho 40443 = seg45RPe57 rho * (1 - rho 39776) := by
  unfold Seg45.relationRow2212 at r2212
  unfold seg45RPe57
  linear_combination -r2212

theorem seg45RStep56IlMul (rho : Nat -> Seg45.F) (r2213 : Seg45.relationRow2213 rho) :
    rho 40444 = seg45RIl57 rho * (rho 40443) := by
  unfold Seg45.relationRow2213 at r2213
  rw [seg45RStep56IlLc rho] at r2213
  linear_combination -r2213

theorem seg45RStep56Acc (rho : Nat -> Seg45.F) :
    seg45RIl56 rho = seg45RIl57 rho + (rho 40443) - (rho 40444) := by
  have hstate : seg45RIl56 rho = seg45RIl57 rho + seg45RIlAtom100 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom100
  ring

theorem seg45RStep56Pe (rho : Nat -> Seg45.F) (r2214 : Seg45.relationRow2214 rho) :
    seg45RPe56 rho = seg45RPe57 rho * rho 39776 := by
  unfold Seg45.relationRow2214 at r2214
  unfold seg45RPe56 seg45RPe57
  linear_combination -r2214

theorem seg45RStep56 (rho : Nat -> Seg45.F) (r2212 : Seg45.relationRow2212 rho) (r2213 : Seg45.relationRow2213 rho) (r2214 : Seg45.relationRow2214 rho) :
    seg45RPe56 rho = seg45RPe57 rho * rho 39776 ∧
    seg45RIl56 rho = seg45RIl57 rho + seg45RPe57 rho * (1 - rho 39776) -
      seg45RIl57 rho * (seg45RPe57 rho * (1 - rho 39776)) := by
  constructor
  · exact seg45RStep56Pe rho r2214
  · rw [seg45RStep56Acc rho, seg45RStep56L rho r2212, seg45RStep56IlMul rho r2213, seg45RStep56L rho r2212]

theorem seg45_r_chunk56 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 57 (seg45RPeState rho 57) (seg45RIlState rho 57) := by
  have htail := seg45_r_chunk55 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2212, r2213, r2214, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 56 ≤ n → n < 57 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 56 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep56 rho r2212 r2213 r2214
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 56 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
