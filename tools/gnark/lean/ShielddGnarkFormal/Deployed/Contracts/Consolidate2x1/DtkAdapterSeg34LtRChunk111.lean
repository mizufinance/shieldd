import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk110

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep111L (rho : Nat -> Seg34.F) (r2095 : Seg34.relationRow2095 rho) :
    rho 33370 = seg34RPe112 rho * (1 - rho 32875) := by
  unfold Seg34.relationRow2095 at r2095
  unfold seg34RPe112
  linear_combination -r2095

theorem seg34RStep111IlMul (rho : Nat -> Seg34.F) (r2096 : Seg34.relationRow2096 rho) :
    rho 33371 = seg34RIl112 rho * (rho 33370) := by
  unfold Seg34.relationRow2096 at r2096
  rw [seg34RStep111IlLc rho] at r2096
  linear_combination -r2096

theorem seg34RStep111Acc (rho : Nat -> Seg34.F) :
    seg34RIl111 rho = seg34RIl112 rho + (rho 33370) - (rho 33371) := by
  have hstate : seg34RIl111 rho = seg34RIl112 rho + seg34RIlAtom67 rho + (-1 : Seg34.F) * seg34RIlAtom68 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom67 seg34RIlAtom68
  ring

theorem seg34RStep111Pe (rho : Nat -> Seg34.F) (r2097 : Seg34.relationRow2097 rho) :
    seg34RPe111 rho = seg34RPe112 rho * rho 32875 := by
  unfold Seg34.relationRow2097 at r2097
  unfold seg34RPe111 seg34RPe112
  linear_combination -r2097

theorem seg34RStep111 (rho : Nat -> Seg34.F) (r2095 : Seg34.relationRow2095 rho) (r2096 : Seg34.relationRow2096 rho) (r2097 : Seg34.relationRow2097 rho) :
    seg34RPe111 rho = seg34RPe112 rho * rho 32875 ∧
    seg34RIl111 rho = seg34RIl112 rho + seg34RPe112 rho * (1 - rho 32875) -
      seg34RIl112 rho * (seg34RPe112 rho * (1 - rho 32875)) := by
  constructor
  · exact seg34RStep111Pe rho r2097
  · rw [seg34RStep111Acc rho, seg34RStep111L rho r2095, seg34RStep111IlMul rho r2096, seg34RStep111L rho r2095]

theorem seg34_r_chunk111 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 112 (seg34RPeState rho 112) (seg34RIlState rho 112) := by
  have htail := seg34_r_chunk110 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2095, r2096, r2097, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 111 ≤ n → n < 112 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 111 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep111 rho r2095 r2096 r2097
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 111 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
