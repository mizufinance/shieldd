import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk123

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep124L (rho : Nat -> Seg45.F) (r2070 : Seg45.relationRow2070 rho) :
    rho 40301 = seg45RPe125 rho * (1 - rho 39844) := by
  unfold Seg45.relationRow2070 at r2070
  unfold seg45RPe125
  linear_combination -r2070

theorem seg45RStep124IlMul (rho : Nat -> Seg45.F) (r2071 : Seg45.relationRow2071 rho) :
    rho 40302 = seg45RIl125 rho * (rho 40301) := by
  unfold Seg45.relationRow2071 at r2071
  rw [seg45RStep124IlLc rho] at r2071
  linear_combination -r2071

theorem seg45RStep124Acc (rho : Nat -> Seg45.F) :
    seg45RIl124 rho = seg45RIl125 rho + (rho 40301) - (rho 40302) := by
  have hstate : seg45RIl124 rho = seg45RIl125 rho + seg45RIlAtom61 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom61
  ring

theorem seg45RStep124Pe (rho : Nat -> Seg45.F) (r2072 : Seg45.relationRow2072 rho) :
    seg45RPe124 rho = seg45RPe125 rho * rho 39844 := by
  unfold Seg45.relationRow2072 at r2072
  unfold seg45RPe124 seg45RPe125
  linear_combination -r2072

theorem seg45RStep124 (rho : Nat -> Seg45.F) (r2070 : Seg45.relationRow2070 rho) (r2071 : Seg45.relationRow2071 rho) (r2072 : Seg45.relationRow2072 rho) :
    seg45RPe124 rho = seg45RPe125 rho * rho 39844 ∧
    seg45RIl124 rho = seg45RIl125 rho + seg45RPe125 rho * (1 - rho 39844) -
      seg45RIl125 rho * (seg45RPe125 rho * (1 - rho 39844)) := by
  constructor
  · exact seg45RStep124Pe rho r2072
  · rw [seg45RStep124Acc rho, seg45RStep124L rho r2070, seg45RStep124IlMul rho r2071, seg45RStep124L rho r2070]

theorem seg45_r_chunk124 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 125 (seg45RPeState rho 125) (seg45RIlState rho 125) := by
  have htail := seg45_r_chunk123 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2070, r2071, r2072, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 124 ≤ n → n < 125 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 124 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep124 rho r2070 r2071 r2072
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 124 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
