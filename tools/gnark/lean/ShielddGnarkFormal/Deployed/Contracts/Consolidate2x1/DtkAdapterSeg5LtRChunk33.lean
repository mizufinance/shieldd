import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk32

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep33L (rho : Nat -> Seg5.F) (r2263 : Seg5.relationRow2263 rho) :
    rho 1961 = seg5RPe34 rho * (1 - rho 1220) := by
  unfold Seg5.relationRow2263 at r2263
  unfold seg5RPe34
  linear_combination -r2263

theorem seg5RStep33IlMul (rho : Nat -> Seg5.F) (r2264 : Seg5.relationRow2264 rho) :
    rho 1962 = seg5RIl34 rho * (rho 1961) := by
  unfold Seg5.relationRow2264 at r2264
  rw [seg5RStep33IlLc rho] at r2264
  linear_combination -r2264

theorem seg5RStep33Acc (rho : Nat -> Seg5.F) :
    seg5RIl33 rho = seg5RIl34 rho + (rho 1961) - (rho 1962) := by
  have hstate : seg5RIl33 rho = seg5RIl34 rho + seg5RIlAtom115 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom115
  ring

theorem seg5RStep33Pe (rho : Nat -> Seg5.F) (r2265 : Seg5.relationRow2265 rho) :
    seg5RPe33 rho = seg5RPe34 rho * rho 1220 := by
  unfold Seg5.relationRow2265 at r2265
  unfold seg5RPe33 seg5RPe34
  linear_combination -r2265

theorem seg5RStep33 (rho : Nat -> Seg5.F) (r2263 : Seg5.relationRow2263 rho) (r2264 : Seg5.relationRow2264 rho) (r2265 : Seg5.relationRow2265 rho) :
    seg5RPe33 rho = seg5RPe34 rho * rho 1220 ∧
    seg5RIl33 rho = seg5RIl34 rho + seg5RPe34 rho * (1 - rho 1220) -
      seg5RIl34 rho * (seg5RPe34 rho * (1 - rho 1220)) := by
  constructor
  · exact seg5RStep33Pe rho r2265
  · rw [seg5RStep33Acc rho, seg5RStep33L rho r2263, seg5RStep33IlMul rho r2264, seg5RStep33L rho r2263]

theorem seg5_r_chunk33 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 34 (seg5RPeState rho 34) (seg5RIlState rho 34) := by
  have htail := seg5_r_chunk32 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2263, r2264, r2265, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 33 ≤ n → n < 34 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 33 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep33 rho r2263 r2264 r2265
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 33 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
