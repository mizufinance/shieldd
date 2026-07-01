import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep95L (rho : Nat -> Seg45.F) (r2131 : Seg45.relationRow2131 rho) :
    rho 40362 = seg45RPe96 rho * (1 - rho 39815) := by
  unfold Seg45.relationRow2131 at r2131
  unfold seg45RPe96
  linear_combination -r2131

theorem seg45RStep95IlMul (rho : Nat -> Seg45.F) (r2132 : Seg45.relationRow2132 rho) :
    rho 40363 = seg45RIl96 rho * (rho 40362) := by
  unfold Seg45.relationRow2132 at r2132
  rw [seg45RStep95IlLc rho] at r2132
  linear_combination -r2132

theorem seg45RStep95Acc (rho : Nat -> Seg45.F) :
    seg45RIl95 rho = seg45RIl96 rho + (rho 40362) - (rho 40363) := by
  have hstate : seg45RIl95 rho = seg45RIl96 rho + seg45RIlAtom78 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom78
  ring

theorem seg45RStep95Pe (rho : Nat -> Seg45.F) (r2133 : Seg45.relationRow2133 rho) :
    seg45RPe95 rho = seg45RPe96 rho * rho 39815 := by
  unfold Seg45.relationRow2133 at r2133
  unfold seg45RPe95 seg45RPe96
  linear_combination -r2133

theorem seg45RStep95 (rho : Nat -> Seg45.F) (r2131 : Seg45.relationRow2131 rho) (r2132 : Seg45.relationRow2132 rho) (r2133 : Seg45.relationRow2133 rho) :
    seg45RPe95 rho = seg45RPe96 rho * rho 39815 ∧
    seg45RIl95 rho = seg45RIl96 rho + seg45RPe96 rho * (1 - rho 39815) -
      seg45RIl96 rho * (seg45RPe96 rho * (1 - rho 39815)) := by
  constructor
  · exact seg45RStep95Pe rho r2133
  · rw [seg45RStep95Acc rho, seg45RStep95L rho r2131, seg45RStep95IlMul rho r2132, seg45RStep95L rho r2131]

theorem seg45_r_chunk95 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 96 (seg45RPeState rho 96) (seg45RIlState rho 96) := by
  have htail := seg45_r_chunk94 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2131, r2132, r2133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 95 ≤ n → n < 96 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 95 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep95 rho r2131 r2132 r2133
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 95 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
