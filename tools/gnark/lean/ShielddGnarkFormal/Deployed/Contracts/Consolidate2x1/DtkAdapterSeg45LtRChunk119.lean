import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk118

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep119L (rho : Nat -> Seg45.F) (r2079 : Seg45.relationRow2079 rho) :
    rho 40310 = seg45RPe120 rho * (1 - rho 39839) := by
  unfold Seg45.relationRow2079 at r2079
  unfold seg45RPe120
  linear_combination -r2079

theorem seg45RStep119IlMul (rho : Nat -> Seg45.F) (r2080 : Seg45.relationRow2080 rho) :
    rho 40311 = seg45RIl120 rho * (rho 40310) := by
  unfold Seg45.relationRow2080 at r2080
  rw [seg45RStep119IlLc rho] at r2080
  linear_combination -r2080

theorem seg45RStep119Acc (rho : Nat -> Seg45.F) :
    seg45RIl119 rho = seg45RIl120 rho + (rho 40310) - (rho 40311) := by
  have hstate : seg45RIl119 rho = seg45RIl120 rho + seg45RIlAtom63 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom63
  ring

theorem seg45RStep119Pe (rho : Nat -> Seg45.F) (r2081 : Seg45.relationRow2081 rho) :
    seg45RPe119 rho = seg45RPe120 rho * rho 39839 := by
  unfold Seg45.relationRow2081 at r2081
  unfold seg45RPe119 seg45RPe120
  linear_combination -r2081

theorem seg45RStep119 (rho : Nat -> Seg45.F) (r2079 : Seg45.relationRow2079 rho) (r2080 : Seg45.relationRow2080 rho) (r2081 : Seg45.relationRow2081 rho) :
    seg45RPe119 rho = seg45RPe120 rho * rho 39839 ∧
    seg45RIl119 rho = seg45RIl120 rho + seg45RPe120 rho * (1 - rho 39839) -
      seg45RIl120 rho * (seg45RPe120 rho * (1 - rho 39839)) := by
  constructor
  · exact seg45RStep119Pe rho r2081
  · rw [seg45RStep119Acc rho, seg45RStep119L rho r2079, seg45RStep119IlMul rho r2080, seg45RStep119L rho r2079]

theorem seg45_r_chunk119 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 120 (seg45RPeState rho 120) (seg45RIlState rho 120) := by
  have htail := seg45_r_chunk118 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2079⟩
  unfold Seg45.relationPart26 at p26
  rcases p26 with ⟨r2080, r2081, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 119 ≤ n → n < 120 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 119 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep119 rho r2079 r2080 r2081
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 119 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
