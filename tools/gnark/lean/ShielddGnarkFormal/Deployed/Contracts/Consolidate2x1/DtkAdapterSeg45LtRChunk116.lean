import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk115

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep116L (rho : Nat -> Seg45.F) (r2084 : Seg45.relationRow2084 rho) :
    rho 40315 = seg45RPe117 rho * (1 - rho 39836) := by
  unfold Seg45.relationRow2084 at r2084
  unfold seg45RPe117
  linear_combination -r2084

theorem seg45RStep116IlMul (rho : Nat -> Seg45.F) (r2085 : Seg45.relationRow2085 rho) :
    rho 40316 = seg45RIl117 rho * (rho 40315) := by
  unfold Seg45.relationRow2085 at r2085
  rw [seg45RStep116IlLc rho] at r2085
  linear_combination -r2085

theorem seg45RStep116Acc (rho : Nat -> Seg45.F) :
    seg45RIl116 rho = seg45RIl117 rho + (rho 40315) - (rho 40316) := by
  have hstate : seg45RIl116 rho = seg45RIl117 rho + seg45RIlAtom64 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom64
  ring

theorem seg45RStep116Pe (rho : Nat -> Seg45.F) (r2086 : Seg45.relationRow2086 rho) :
    seg45RPe116 rho = seg45RPe117 rho * rho 39836 := by
  unfold Seg45.relationRow2086 at r2086
  unfold seg45RPe116 seg45RPe117
  linear_combination -r2086

theorem seg45RStep116 (rho : Nat -> Seg45.F) (r2084 : Seg45.relationRow2084 rho) (r2085 : Seg45.relationRow2085 rho) (r2086 : Seg45.relationRow2086 rho) :
    seg45RPe116 rho = seg45RPe117 rho * rho 39836 ∧
    seg45RIl116 rho = seg45RIl117 rho + seg45RPe117 rho * (1 - rho 39836) -
      seg45RIl117 rho * (seg45RPe117 rho * (1 - rho 39836)) := by
  constructor
  · exact seg45RStep116Pe rho r2086
  · rw [seg45RStep116Acc rho, seg45RStep116L rho r2084, seg45RStep116IlMul rho r2085, seg45RStep116L rho r2084]

theorem seg45_r_chunk116 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 117 (seg45RPeState rho 117) (seg45RIlState rho 117) := by
  have htail := seg45_r_chunk115 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, r2084, r2085, r2086, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 116 ≤ n → n < 117 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 116 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep116 rho r2084 r2085 r2086
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 116 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
