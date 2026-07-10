import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk118

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep119L (rho : Nat -> Seg5.F) (r2079 : Seg5.relationRow2079 rho) :
    rho 1777 = seg5RPe120 rho * (1 - rho 1306) := by
  unfold Seg5.relationRow2079 at r2079
  unfold seg5RPe120
  linear_combination -r2079

theorem seg5RStep119IlMul (rho : Nat -> Seg5.F) (r2080 : Seg5.relationRow2080 rho) :
    rho 1778 = seg5RIl120 rho * (rho 1777) := by
  unfold Seg5.relationRow2080 at r2080
  rw [seg5RStep119IlLc rho] at r2080
  linear_combination -r2080

theorem seg5RStep119Acc (rho : Nat -> Seg5.F) :
    seg5RIl119 rho = seg5RIl120 rho + (rho 1777) - (rho 1778) := by
  have hstate : seg5RIl119 rho = seg5RIl120 rho + seg5RIlAtom63 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom63
  ring

theorem seg5RStep119Pe (rho : Nat -> Seg5.F) (r2081 : Seg5.relationRow2081 rho) :
    seg5RPe119 rho = seg5RPe120 rho * rho 1306 := by
  unfold Seg5.relationRow2081 at r2081
  unfold seg5RPe119 seg5RPe120
  linear_combination -r2081

theorem seg5RStep119 (rho : Nat -> Seg5.F) (r2079 : Seg5.relationRow2079 rho) (r2080 : Seg5.relationRow2080 rho) (r2081 : Seg5.relationRow2081 rho) :
    seg5RPe119 rho = seg5RPe120 rho * rho 1306 ∧
    seg5RIl119 rho = seg5RIl120 rho + seg5RPe120 rho * (1 - rho 1306) -
      seg5RIl120 rho * (seg5RPe120 rho * (1 - rho 1306)) := by
  constructor
  · exact seg5RStep119Pe rho r2081
  · rw [seg5RStep119Acc rho, seg5RStep119L rho r2079, seg5RStep119IlMul rho r2080, seg5RStep119L rho r2079]

theorem seg5_r_chunk119 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 120 (seg5RPeState rho 120) (seg5RIlState rho 120) := by
  have htail := seg5_r_chunk118 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2079⟩
  unfold Seg5.relationPart26 at p26
  rcases p26 with ⟨r2080, r2081, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 119 ≤ n → n < 120 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 119 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep119 rho r2079 r2080 r2081
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 119 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
