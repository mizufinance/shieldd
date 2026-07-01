import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk78

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep79L (rho : Nat -> Seg45.F) (r2161 : Seg45.relationRow2161 rho) :
    rho 40392 = seg45RPe80 rho * (1 - rho 39799) := by
  unfold Seg45.relationRow2161 at r2161
  unfold seg45RPe80
  linear_combination -r2161

theorem seg45RStep79IlMul (rho : Nat -> Seg45.F) (r2162 : Seg45.relationRow2162 rho) :
    rho 40393 = seg45RIl80 rho * (rho 40392) := by
  unfold Seg45.relationRow2162 at r2162
  rw [seg45RStep79IlLc rho] at r2162
  linear_combination -r2162

theorem seg45RStep79Acc (rho : Nat -> Seg45.F) :
    seg45RIl79 rho = seg45RIl80 rho + (rho 40392) - (rho 40393) := by
  have hstate : seg45RIl79 rho = seg45RIl80 rho + seg45RIlAtom86 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom86
  ring

theorem seg45RStep79Pe (rho : Nat -> Seg45.F) (r2163 : Seg45.relationRow2163 rho) :
    seg45RPe79 rho = seg45RPe80 rho * rho 39799 := by
  unfold Seg45.relationRow2163 at r2163
  unfold seg45RPe79 seg45RPe80
  linear_combination -r2163

theorem seg45RStep79 (rho : Nat -> Seg45.F) (r2161 : Seg45.relationRow2161 rho) (r2162 : Seg45.relationRow2162 rho) (r2163 : Seg45.relationRow2163 rho) :
    seg45RPe79 rho = seg45RPe80 rho * rho 39799 ∧
    seg45RIl79 rho = seg45RIl80 rho + seg45RPe80 rho * (1 - rho 39799) -
      seg45RIl80 rho * (seg45RPe80 rho * (1 - rho 39799)) := by
  constructor
  · exact seg45RStep79Pe rho r2163
  · rw [seg45RStep79Acc rho, seg45RStep79L rho r2161, seg45RStep79IlMul rho r2162, seg45RStep79L rho r2161]

theorem seg45_r_chunk79 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 80 (seg45RPeState rho 80) (seg45RIlState rho 80) := by
  have htail := seg45_r_chunk78 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart27 at p27
  rcases p27 with ⟨_, r2161, r2162, r2163, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 79 ≤ n → n < 80 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 79 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep79 rho r2161 r2162 r2163
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 79 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
