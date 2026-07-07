import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk102

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep103L (rho : Nat -> Seg45.F) (r2111 : Seg45.relationRow2111 rho) :
    rho 40342 = seg45RPe104 rho * (1 - rho 39823) := by
  unfold Seg45.relationRow2111 at r2111
  unfold seg45RPe104
  linear_combination -r2111

theorem seg45RStep103IlMul (rho : Nat -> Seg45.F) (r2112 : Seg45.relationRow2112 rho) :
    rho 40343 = seg45RIl104 rho * (rho 40342) := by
  unfold Seg45.relationRow2112 at r2112
  rw [seg45RStep103IlLc rho] at r2112
  linear_combination -r2112

theorem seg45RStep103Acc (rho : Nat -> Seg45.F) :
    seg45RIl103 rho = seg45RIl104 rho + (rho 40342) - (rho 40343) := by
  have hstate : seg45RIl103 rho = seg45RIl104 rho + seg45RIlAtom72 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom72
  ring

theorem seg45RStep103Pe (rho : Nat -> Seg45.F) (r2113 : Seg45.relationRow2113 rho) :
    seg45RPe103 rho = seg45RPe104 rho * rho 39823 := by
  unfold Seg45.relationRow2113 at r2113
  unfold seg45RPe103 seg45RPe104
  linear_combination -r2113

theorem seg45RStep103 (rho : Nat -> Seg45.F) (r2111 : Seg45.relationRow2111 rho) (r2112 : Seg45.relationRow2112 rho) (r2113 : Seg45.relationRow2113 rho) :
    seg45RPe103 rho = seg45RPe104 rho * rho 39823 ∧
    seg45RIl103 rho = seg45RIl104 rho + seg45RPe104 rho * (1 - rho 39823) -
      seg45RIl104 rho * (seg45RPe104 rho * (1 - rho 39823)) := by
  constructor
  · exact seg45RStep103Pe rho r2113
  · rw [seg45RStep103Acc rho, seg45RStep103L rho r2111, seg45RStep103IlMul rho r2112, seg45RStep103L rho r2111]

theorem seg45_r_chunk103 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 104 (seg45RPeState rho 104) (seg45RIlState rho 104) := by
  have htail := seg45_r_chunk102 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2111, r2112, r2113, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 103 ≤ n → n < 104 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 103 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep103 rho r2111 r2112 r2113
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 103 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
