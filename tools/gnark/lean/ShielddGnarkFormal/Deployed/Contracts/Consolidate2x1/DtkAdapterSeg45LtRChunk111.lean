import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk110

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep111L (rho : Nat -> Seg45.F) (r2095 : Seg45.relationRow2095 rho) :
    rho 40326 = seg45RPe112 rho * (1 - rho 39831) := by
  unfold Seg45.relationRow2095 at r2095
  unfold seg45RPe112
  linear_combination -r2095

theorem seg45RStep111IlMul (rho : Nat -> Seg45.F) (r2096 : Seg45.relationRow2096 rho) :
    rho 40327 = seg45RIl112 rho * (rho 40326) := by
  unfold Seg45.relationRow2096 at r2096
  rw [seg45RStep111IlLc rho] at r2096
  linear_combination -r2096

theorem seg45RStep111Acc (rho : Nat -> Seg45.F) :
    seg45RIl111 rho = seg45RIl112 rho + (rho 40326) - (rho 40327) := by
  have hstate : seg45RIl111 rho = seg45RIl112 rho + seg45RIlAtom67 rho + (-1 : Seg45.F) * seg45RIlAtom68 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom67 seg45RIlAtom68
  ring

theorem seg45RStep111Pe (rho : Nat -> Seg45.F) (r2097 : Seg45.relationRow2097 rho) :
    seg45RPe111 rho = seg45RPe112 rho * rho 39831 := by
  unfold Seg45.relationRow2097 at r2097
  unfold seg45RPe111 seg45RPe112
  linear_combination -r2097

theorem seg45RStep111 (rho : Nat -> Seg45.F) (r2095 : Seg45.relationRow2095 rho) (r2096 : Seg45.relationRow2096 rho) (r2097 : Seg45.relationRow2097 rho) :
    seg45RPe111 rho = seg45RPe112 rho * rho 39831 ∧
    seg45RIl111 rho = seg45RIl112 rho + seg45RPe112 rho * (1 - rho 39831) -
      seg45RIl112 rho * (seg45RPe112 rho * (1 - rho 39831)) := by
  constructor
  · exact seg45RStep111Pe rho r2097
  · rw [seg45RStep111Acc rho, seg45RStep111L rho r2095, seg45RStep111IlMul rho r2096, seg45RStep111L rho r2095]

theorem seg45_r_chunk111 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 112 (seg45RPeState rho 112) (seg45RIlState rho 112) := by
  have htail := seg45_r_chunk110 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2095, r2096, r2097, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 111 ≤ n → n < 112 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 111 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep111 rho r2095 r2096 r2097
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 111 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
