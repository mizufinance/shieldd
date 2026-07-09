import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk110

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep111L (rho : Nat -> Seg5.F) (r2095 : Seg5.relationRow2095 rho) :
    rho 1793 = seg5RPe112 rho * (1 - rho 1298) := by
  unfold Seg5.relationRow2095 at r2095
  unfold seg5RPe112
  linear_combination -r2095

theorem seg5RStep111IlMul (rho : Nat -> Seg5.F) (r2096 : Seg5.relationRow2096 rho) :
    rho 1794 = seg5RIl112 rho * (rho 1793) := by
  unfold Seg5.relationRow2096 at r2096
  rw [seg5RStep111IlLc rho] at r2096
  linear_combination -r2096

theorem seg5RStep111Acc (rho : Nat -> Seg5.F) :
    seg5RIl111 rho = seg5RIl112 rho + (rho 1793) - (rho 1794) := by
  have hstate : seg5RIl111 rho = seg5RIl112 rho + seg5RIlAtom67 rho + (-1 : Seg5.F) * seg5RIlAtom68 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom67 seg5RIlAtom68
  ring

theorem seg5RStep111Pe (rho : Nat -> Seg5.F) (r2097 : Seg5.relationRow2097 rho) :
    seg5RPe111 rho = seg5RPe112 rho * rho 1298 := by
  unfold Seg5.relationRow2097 at r2097
  unfold seg5RPe111 seg5RPe112
  linear_combination -r2097

theorem seg5RStep111 (rho : Nat -> Seg5.F) (r2095 : Seg5.relationRow2095 rho) (r2096 : Seg5.relationRow2096 rho) (r2097 : Seg5.relationRow2097 rho) :
    seg5RPe111 rho = seg5RPe112 rho * rho 1298 ∧
    seg5RIl111 rho = seg5RIl112 rho + seg5RPe112 rho * (1 - rho 1298) -
      seg5RIl112 rho * (seg5RPe112 rho * (1 - rho 1298)) := by
  constructor
  · exact seg5RStep111Pe rho r2097
  · rw [seg5RStep111Acc rho, seg5RStep111L rho r2095, seg5RStep111IlMul rho r2096, seg5RStep111L rho r2095]

theorem seg5_r_chunk111 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 112 (seg5RPeState rho 112) (seg5RIlState rho 112) := by
  have htail := seg5_r_chunk110 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2095, r2096, r2097, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 111 ≤ n → n < 112 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 111 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep111 rho r2095 r2096 r2097
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 111 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
