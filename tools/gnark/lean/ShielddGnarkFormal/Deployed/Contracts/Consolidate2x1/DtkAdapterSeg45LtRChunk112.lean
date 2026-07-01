import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk111

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep112L (rho : Nat -> Seg45.F) (r2092 : Seg45.relationRow2092 rho) :
    rho 40323 = seg45RPe113 rho * (1 - rho 39832) := by
  unfold Seg45.relationRow2092 at r2092
  unfold seg45RPe113
  linear_combination -r2092

theorem seg45RStep112IlMul (rho : Nat -> Seg45.F) (r2093 : Seg45.relationRow2093 rho) :
    rho 40324 = seg45RIl113 rho * (rho 40323) := by
  unfold Seg45.relationRow2093 at r2093
  rw [seg45RStep112IlLc rho] at r2093
  linear_combination -r2093

theorem seg45RStep112Acc (rho : Nat -> Seg45.F) :
    seg45RIl112 rho = seg45RIl113 rho + (rho 40323) - (rho 40324) := by
  have hstate : seg45RIl112 rho = seg45RIl113 rho + seg45RIlAtom66 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom66
  ring

theorem seg45RStep112Pe (rho : Nat -> Seg45.F) (r2094 : Seg45.relationRow2094 rho) :
    seg45RPe112 rho = seg45RPe113 rho * rho 39832 := by
  unfold Seg45.relationRow2094 at r2094
  unfold seg45RPe112 seg45RPe113
  linear_combination -r2094

theorem seg45RStep112 (rho : Nat -> Seg45.F) (r2092 : Seg45.relationRow2092 rho) (r2093 : Seg45.relationRow2093 rho) (r2094 : Seg45.relationRow2094 rho) :
    seg45RPe112 rho = seg45RPe113 rho * rho 39832 ∧
    seg45RIl112 rho = seg45RIl113 rho + seg45RPe113 rho * (1 - rho 39832) -
      seg45RIl113 rho * (seg45RPe113 rho * (1 - rho 39832)) := by
  constructor
  · exact seg45RStep112Pe rho r2094
  · rw [seg45RStep112Acc rho, seg45RStep112L rho r2092, seg45RStep112IlMul rho r2093, seg45RStep112L rho r2092]

theorem seg45_r_chunk112 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 113 (seg45RPeState rho 113) (seg45RIlState rho 113) := by
  have htail := seg45_r_chunk111 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2092, r2093, r2094, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 112 ≤ n → n < 113 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 112 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep112 rho r2092 r2093 r2094
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 112 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
