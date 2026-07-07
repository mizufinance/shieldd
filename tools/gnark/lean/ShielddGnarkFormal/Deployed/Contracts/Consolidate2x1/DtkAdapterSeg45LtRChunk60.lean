import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk59

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep60L (rho : Nat -> Seg45.F) (r2204 : Seg45.relationRow2204 rho) :
    rho 40435 = seg45RPe61 rho * (1 - rho 39780) := by
  unfold Seg45.relationRow2204 at r2204
  unfold seg45RPe61
  linear_combination -r2204

theorem seg45RStep60IlMul (rho : Nat -> Seg45.F) (r2205 : Seg45.relationRow2205 rho) :
    rho 40436 = seg45RIl61 rho * (rho 40435) := by
  unfold Seg45.relationRow2205 at r2205
  rw [seg45RStep60IlLc rho] at r2205
  linear_combination -r2205

theorem seg45RStep60Acc (rho : Nat -> Seg45.F) :
    seg45RIl60 rho = seg45RIl61 rho + (rho 40435) - (rho 40436) := by
  have hstate : seg45RIl60 rho = seg45RIl61 rho + seg45RIlAtom98 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom98
  ring

theorem seg45RStep60Pe (rho : Nat -> Seg45.F) (r2206 : Seg45.relationRow2206 rho) :
    seg45RPe60 rho = seg45RPe61 rho * rho 39780 := by
  unfold Seg45.relationRow2206 at r2206
  unfold seg45RPe60 seg45RPe61
  linear_combination -r2206

theorem seg45RStep60 (rho : Nat -> Seg45.F) (r2204 : Seg45.relationRow2204 rho) (r2205 : Seg45.relationRow2205 rho) (r2206 : Seg45.relationRow2206 rho) :
    seg45RPe60 rho = seg45RPe61 rho * rho 39780 ∧
    seg45RIl60 rho = seg45RIl61 rho + seg45RPe61 rho * (1 - rho 39780) -
      seg45RIl61 rho * (seg45RPe61 rho * (1 - rho 39780)) := by
  constructor
  · exact seg45RStep60Pe rho r2206
  · rw [seg45RStep60Acc rho, seg45RStep60L rho r2204, seg45RStep60IlMul rho r2205, seg45RStep60L rho r2204]

theorem seg45_r_chunk60 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 61 (seg45RPeState rho 61) (seg45RIlState rho 61) := by
  have htail := seg45_r_chunk59 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2204, r2205, r2206, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 60 ≤ n → n < 61 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 60 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep60 rho r2204 r2205 r2206
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 60 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
