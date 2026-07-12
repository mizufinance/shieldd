import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk32

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep33L (rho : Nat -> Seg6.F) (r2263 : Seg6.relationRow2263 rho) :
    rho 2664 = seg6RPe34 rho * (1 - rho 1923) := by
  unfold Seg6.relationRow2263 at r2263
  unfold seg6RPe34
  linear_combination -r2263

theorem seg6RStep33IlMul (rho : Nat -> Seg6.F) (r2264 : Seg6.relationRow2264 rho) :
    rho 2665 = seg6RIl34 rho * (rho 2664) := by
  unfold Seg6.relationRow2264 at r2264
  rw [seg6RStep33IlLc rho] at r2264
  linear_combination -r2264

theorem seg6RStep33Acc (rho : Nat -> Seg6.F) :
    seg6RIl33 rho = seg6RIl34 rho + (rho 2664) - (rho 2665) := by
  have hstate : seg6RIl33 rho = seg6RIl34 rho + seg6RIlAtom115 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom115
  ring

theorem seg6RStep33Pe (rho : Nat -> Seg6.F) (r2265 : Seg6.relationRow2265 rho) :
    seg6RPe33 rho = seg6RPe34 rho * rho 1923 := by
  unfold Seg6.relationRow2265 at r2265
  unfold seg6RPe33 seg6RPe34
  linear_combination -r2265

theorem seg6RStep33 (rho : Nat -> Seg6.F) (r2263 : Seg6.relationRow2263 rho) (r2264 : Seg6.relationRow2264 rho) (r2265 : Seg6.relationRow2265 rho) :
    seg6RPe33 rho = seg6RPe34 rho * rho 1923 ∧
    seg6RIl33 rho = seg6RIl34 rho + seg6RPe34 rho * (1 - rho 1923) -
      seg6RIl34 rho * (seg6RPe34 rho * (1 - rho 1923)) := by
  constructor
  · exact seg6RStep33Pe rho r2265
  · rw [seg6RStep33Acc rho, seg6RStep33L rho r2263, seg6RStep33IlMul rho r2264, seg6RStep33L rho r2263]

theorem seg6_r_chunk33 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 34 (seg6RPeState rho 34) (seg6RIlState rho 34) := by
  have htail := seg6_r_chunk32 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2263, r2264, r2265, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 33 ≤ n → n < 34 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 33 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep33 rho r2263 r2264 r2265
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 33 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
