import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk110

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep111L (rho : Nat -> Seg6.F) (r2095 : Seg6.relationRow2095 rho) :
    rho 2496 = seg6RPe112 rho * (1 - rho 2001) := by
  unfold Seg6.relationRow2095 at r2095
  unfold seg6RPe112
  linear_combination -r2095

theorem seg6RStep111IlMul (rho : Nat -> Seg6.F) (r2096 : Seg6.relationRow2096 rho) :
    rho 2497 = seg6RIl112 rho * (rho 2496) := by
  unfold Seg6.relationRow2096 at r2096
  rw [seg6RStep111IlLc rho] at r2096
  linear_combination -r2096

theorem seg6RStep111Acc (rho : Nat -> Seg6.F) :
    seg6RIl111 rho = seg6RIl112 rho + (rho 2496) - (rho 2497) := by
  have hstate : seg6RIl111 rho = seg6RIl112 rho + seg6RIlAtom67 rho + (-1 : Seg6.F) * seg6RIlAtom68 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom67 seg6RIlAtom68
  ring

theorem seg6RStep111Pe (rho : Nat -> Seg6.F) (r2097 : Seg6.relationRow2097 rho) :
    seg6RPe111 rho = seg6RPe112 rho * rho 2001 := by
  unfold Seg6.relationRow2097 at r2097
  unfold seg6RPe111 seg6RPe112
  linear_combination -r2097

theorem seg6RStep111 (rho : Nat -> Seg6.F) (r2095 : Seg6.relationRow2095 rho) (r2096 : Seg6.relationRow2096 rho) (r2097 : Seg6.relationRow2097 rho) :
    seg6RPe111 rho = seg6RPe112 rho * rho 2001 ∧
    seg6RIl111 rho = seg6RIl112 rho + seg6RPe112 rho * (1 - rho 2001) -
      seg6RIl112 rho * (seg6RPe112 rho * (1 - rho 2001)) := by
  constructor
  · exact seg6RStep111Pe rho r2097
  · rw [seg6RStep111Acc rho, seg6RStep111L rho r2095, seg6RStep111IlMul rho r2096, seg6RStep111L rho r2095]

theorem seg6_r_chunk111 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 112 (seg6RPeState rho 112) (seg6RIlState rho 112) := by
  have htail := seg6_r_chunk110 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2095, r2096, r2097, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 111 ≤ n → n < 112 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 111 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep111 rho r2095 r2096 r2097
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 111 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
