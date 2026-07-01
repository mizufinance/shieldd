import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk104

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep105L (rho : Nat -> Seg45.F) (r2105 : Seg45.relationRow2105 rho) :
    rho 40336 = seg45RPe106 rho * (1 - rho 39825) := by
  unfold Seg45.relationRow2105 at r2105
  unfold seg45RPe106
  linear_combination -r2105

theorem seg45RStep105IlMul (rho : Nat -> Seg45.F) (r2106 : Seg45.relationRow2106 rho) :
    rho 40337 = seg45RIl106 rho * (rho 40336) := by
  unfold Seg45.relationRow2106 at r2106
  rw [seg45RStep105IlLc rho] at r2106
  linear_combination -r2106

theorem seg45RStep105Acc (rho : Nat -> Seg45.F) :
    seg45RIl105 rho = seg45RIl106 rho + (rho 40336) - (rho 40337) := by
  have hstate : seg45RIl105 rho = seg45RIl106 rho + seg45RIlAtom70 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom70
  ring

theorem seg45RStep105Pe (rho : Nat -> Seg45.F) (r2107 : Seg45.relationRow2107 rho) :
    seg45RPe105 rho = seg45RPe106 rho * rho 39825 := by
  unfold Seg45.relationRow2107 at r2107
  unfold seg45RPe105 seg45RPe106
  linear_combination -r2107

theorem seg45RStep105 (rho : Nat -> Seg45.F) (r2105 : Seg45.relationRow2105 rho) (r2106 : Seg45.relationRow2106 rho) (r2107 : Seg45.relationRow2107 rho) :
    seg45RPe105 rho = seg45RPe106 rho * rho 39825 ∧
    seg45RIl105 rho = seg45RIl106 rho + seg45RPe106 rho * (1 - rho 39825) -
      seg45RIl106 rho * (seg45RPe106 rho * (1 - rho 39825)) := by
  constructor
  · exact seg45RStep105Pe rho r2107
  · rw [seg45RStep105Acc rho, seg45RStep105L rho r2105, seg45RStep105IlMul rho r2106, seg45RStep105L rho r2105]

theorem seg45_r_chunk105 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 106 (seg45RPeState rho 106) (seg45RIlState rho 106) := by
  have htail := seg45_r_chunk104 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2105, r2106, r2107, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 105 ≤ n → n < 106 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 105 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep105 rho r2105 r2106 r2107
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 105 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
