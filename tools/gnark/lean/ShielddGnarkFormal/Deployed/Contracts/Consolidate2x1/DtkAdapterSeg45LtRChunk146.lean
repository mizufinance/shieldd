import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk145

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep146L (rho : Nat -> Seg45.F) (r2032 : Seg45.relationRow2032 rho) :
    rho 40263 = seg45RPe147 rho * (1 - rho 39866) := by
  unfold Seg45.relationRow2032 at r2032
  unfold seg45RPe147
  linear_combination -r2032

theorem seg45RStep146IlMul (rho : Nat -> Seg45.F) (r2033 : Seg45.relationRow2033 rho) :
    rho 40264 = seg45RIl147 rho * (rho 40263) := by
  unfold Seg45.relationRow2033 at r2033
  rw [seg45RStep146IlLc rho] at r2033
  linear_combination -r2033

theorem seg45RStep146Acc (rho : Nat -> Seg45.F) :
    seg45RIl146 rho = seg45RIl147 rho + (rho 40263) - (rho 40264) := by
  have hstate : seg45RIl146 rho = seg45RIl147 rho + seg45RIlAtom53 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom53
  ring

theorem seg45RStep146Pe (rho : Nat -> Seg45.F) (r2034 : Seg45.relationRow2034 rho) :
    seg45RPe146 rho = seg45RPe147 rho * rho 39866 := by
  unfold Seg45.relationRow2034 at r2034
  unfold seg45RPe146 seg45RPe147
  linear_combination -r2034

theorem seg45RStep146 (rho : Nat -> Seg45.F) (r2032 : Seg45.relationRow2032 rho) (r2033 : Seg45.relationRow2033 rho) (r2034 : Seg45.relationRow2034 rho) :
    seg45RPe146 rho = seg45RPe147 rho * rho 39866 ∧
    seg45RIl146 rho = seg45RIl147 rho + seg45RPe147 rho * (1 - rho 39866) -
      seg45RIl147 rho * (seg45RPe147 rho * (1 - rho 39866)) := by
  constructor
  · exact seg45RStep146Pe rho r2034
  · rw [seg45RStep146Acc rho, seg45RStep146L rho r2032, seg45RStep146IlMul rho r2033, seg45RStep146L rho r2032]

theorem seg45_r_chunk146 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 147 (seg45RPeState rho 147) (seg45RIlState rho 147) := by
  have htail := seg45_r_chunk145 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2032, r2033, r2034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 146 ≤ n → n < 147 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 146 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep146 rho r2032 r2033 r2034
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 146 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
