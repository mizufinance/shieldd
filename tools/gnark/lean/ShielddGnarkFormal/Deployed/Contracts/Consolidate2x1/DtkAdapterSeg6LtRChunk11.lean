import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk10

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep11L (rho : Nat -> Seg6.F) (r2313 : Seg6.relationRow2313 rho) :
    rho 2714 = seg6RPe12 rho * (1 - rho 1901) := by
  unfold Seg6.relationRow2313 at r2313
  unfold seg6RPe12
  linear_combination -r2313

theorem seg6RStep11IlMul (rho : Nat -> Seg6.F) (r2314 : Seg6.relationRow2314 rho) :
    rho 2715 = seg6RIl12 rho * (rho 2714) := by
  unfold Seg6.relationRow2314 at r2314
  rw [seg6RStep11IlLc rho] at r2314
  linear_combination -r2314

theorem seg6RStep11Acc (rho : Nat -> Seg6.F) :
    seg6RIl11 rho = seg6RIl12 rho + (rho 2714) - (rho 2715) := by
  have hstate : seg6RIl11 rho = seg6RIl12 rho + seg6RIlAtom130 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom130
  ring

theorem seg6RStep11Pe (rho : Nat -> Seg6.F) (r2315 : Seg6.relationRow2315 rho) :
    seg6RPe11 rho = seg6RPe12 rho * rho 1901 := by
  unfold Seg6.relationRow2315 at r2315
  unfold seg6RPe11 seg6RPe12
  linear_combination -r2315

theorem seg6RStep11 (rho : Nat -> Seg6.F) (r2313 : Seg6.relationRow2313 rho) (r2314 : Seg6.relationRow2314 rho) (r2315 : Seg6.relationRow2315 rho) :
    seg6RPe11 rho = seg6RPe12 rho * rho 1901 ∧
    seg6RIl11 rho = seg6RIl12 rho + seg6RPe12 rho * (1 - rho 1901) -
      seg6RIl12 rho * (seg6RPe12 rho * (1 - rho 1901)) := by
  constructor
  · exact seg6RStep11Pe rho r2315
  · rw [seg6RStep11Acc rho, seg6RStep11L rho r2313, seg6RStep11IlMul rho r2314, seg6RStep11L rho r2313]

theorem seg6_r_chunk11 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 12 (seg6RPeState rho 12) (seg6RIlState rho 12) := by
  have htail := seg6_r_chunk10 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2313, r2314, r2315, _, _, _, _⟩
  have hsteps : ∀ n, 11 ≤ n → n < 12 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 11 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep11 rho r2313 r2314 r2315
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 11 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
