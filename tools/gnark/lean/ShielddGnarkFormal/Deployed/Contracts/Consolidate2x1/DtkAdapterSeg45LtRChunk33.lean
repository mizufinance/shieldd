import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk32

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep33L (rho : Nat -> Seg45.F) (r2263 : Seg45.relationRow2263 rho) :
    rho 40494 = seg45RPe34 rho * (1 - rho 39753) := by
  unfold Seg45.relationRow2263 at r2263
  unfold seg45RPe34
  linear_combination -r2263

theorem seg45RStep33IlMul (rho : Nat -> Seg45.F) (r2264 : Seg45.relationRow2264 rho) :
    rho 40495 = seg45RIl34 rho * (rho 40494) := by
  unfold Seg45.relationRow2264 at r2264
  rw [seg45RStep33IlLc rho] at r2264
  linear_combination -r2264

theorem seg45RStep33Acc (rho : Nat -> Seg45.F) :
    seg45RIl33 rho = seg45RIl34 rho + (rho 40494) - (rho 40495) := by
  have hstate : seg45RIl33 rho = seg45RIl34 rho + seg45RIlAtom115 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom115
  ring

theorem seg45RStep33Pe (rho : Nat -> Seg45.F) (r2265 : Seg45.relationRow2265 rho) :
    seg45RPe33 rho = seg45RPe34 rho * rho 39753 := by
  unfold Seg45.relationRow2265 at r2265
  unfold seg45RPe33 seg45RPe34
  linear_combination -r2265

theorem seg45RStep33 (rho : Nat -> Seg45.F) (r2263 : Seg45.relationRow2263 rho) (r2264 : Seg45.relationRow2264 rho) (r2265 : Seg45.relationRow2265 rho) :
    seg45RPe33 rho = seg45RPe34 rho * rho 39753 ∧
    seg45RIl33 rho = seg45RIl34 rho + seg45RPe34 rho * (1 - rho 39753) -
      seg45RIl34 rho * (seg45RPe34 rho * (1 - rho 39753)) := by
  constructor
  · exact seg45RStep33Pe rho r2265
  · rw [seg45RStep33Acc rho, seg45RStep33L rho r2263, seg45RStep33IlMul rho r2264, seg45RStep33L rho r2263]

theorem seg45_r_chunk33 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 34 (seg45RPeState rho 34) (seg45RIlState rho 34) := by
  have htail := seg45_r_chunk32 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2263, r2264, r2265, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 33 ≤ n → n < 34 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 33 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep33 rho r2263 r2264 r2265
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 33 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
