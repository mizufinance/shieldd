import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk40

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep41L (rho : Nat -> Seg45.F) (r2247 : Seg45.relationRow2247 rho) :
    rho 40478 = seg45RPe42 rho * (1 - rho 39761) := by
  unfold Seg45.relationRow2247 at r2247
  unfold seg45RPe42
  linear_combination -r2247

theorem seg45RStep41IlMul (rho : Nat -> Seg45.F) (r2248 : Seg45.relationRow2248 rho) :
    rho 40479 = seg45RIl42 rho * (rho 40478) := by
  unfold Seg45.relationRow2248 at r2248
  rw [seg45RStep41IlLc rho] at r2248
  linear_combination -r2248

theorem seg45RStep41Acc (rho : Nat -> Seg45.F) :
    seg45RIl41 rho = seg45RIl42 rho + (rho 40478) - (rho 40479) := by
  have hstate : seg45RIl41 rho = seg45RIl42 rho + seg45RIlAtom111 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom111
  ring

theorem seg45RStep41Pe (rho : Nat -> Seg45.F) (r2249 : Seg45.relationRow2249 rho) :
    seg45RPe41 rho = seg45RPe42 rho * rho 39761 := by
  unfold Seg45.relationRow2249 at r2249
  unfold seg45RPe41 seg45RPe42
  linear_combination -r2249

theorem seg45RStep41 (rho : Nat -> Seg45.F) (r2247 : Seg45.relationRow2247 rho) (r2248 : Seg45.relationRow2248 rho) (r2249 : Seg45.relationRow2249 rho) :
    seg45RPe41 rho = seg45RPe42 rho * rho 39761 ∧
    seg45RIl41 rho = seg45RIl42 rho + seg45RPe42 rho * (1 - rho 39761) -
      seg45RIl42 rho * (seg45RPe42 rho * (1 - rho 39761)) := by
  constructor
  · exact seg45RStep41Pe rho r2249
  · rw [seg45RStep41Acc rho, seg45RStep41L rho r2247, seg45RStep41IlMul rho r2248, seg45RStep41L rho r2247]

theorem seg45_r_chunk41 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 42 (seg45RPeState rho 42) (seg45RIlState rho 42) := by
  have htail := seg45_r_chunk40 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, r2247, r2248, r2249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 41 ≤ n → n < 42 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 41 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep41 rho r2247 r2248 r2249
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 41 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
