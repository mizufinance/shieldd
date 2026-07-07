import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk32

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep33L (rho : Nat -> Seg16.F) (r2263 : Seg16.relationRow2263 rho) :
    rho 14838 = seg16RPe34 rho * (1 - rho 14097) := by
  unfold Seg16.relationRow2263 at r2263
  unfold seg16RPe34
  linear_combination -r2263

theorem seg16RStep33IlMul (rho : Nat -> Seg16.F) (r2264 : Seg16.relationRow2264 rho) :
    rho 14839 = seg16RIl34 rho * (rho 14838) := by
  unfold Seg16.relationRow2264 at r2264
  rw [seg16RStep33IlLc rho] at r2264
  linear_combination -r2264

theorem seg16RStep33Acc (rho : Nat -> Seg16.F) :
    seg16RIl33 rho = seg16RIl34 rho + (rho 14838) - (rho 14839) := by
  have hstate : seg16RIl33 rho = seg16RIl34 rho + seg16RIlAtom115 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom115
  ring

theorem seg16RStep33Pe (rho : Nat -> Seg16.F) (r2265 : Seg16.relationRow2265 rho) :
    seg16RPe33 rho = seg16RPe34 rho * rho 14097 := by
  unfold Seg16.relationRow2265 at r2265
  unfold seg16RPe33 seg16RPe34
  linear_combination -r2265

theorem seg16RStep33 (rho : Nat -> Seg16.F) (r2263 : Seg16.relationRow2263 rho) (r2264 : Seg16.relationRow2264 rho) (r2265 : Seg16.relationRow2265 rho) :
    seg16RPe33 rho = seg16RPe34 rho * rho 14097 ∧
    seg16RIl33 rho = seg16RIl34 rho + seg16RPe34 rho * (1 - rho 14097) -
      seg16RIl34 rho * (seg16RPe34 rho * (1 - rho 14097)) := by
  constructor
  · exact seg16RStep33Pe rho r2265
  · rw [seg16RStep33Acc rho, seg16RStep33L rho r2263, seg16RStep33IlMul rho r2264, seg16RStep33L rho r2263]

theorem seg16_r_chunk33 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 34 (seg16RPeState rho 34) (seg16RIlState rho 34) := by
  have htail := seg16_r_chunk32 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2263, r2264, r2265, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 33 ≤ n → n < 34 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 33 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep33 rho r2263 r2264 r2265
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 33 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
