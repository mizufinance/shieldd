import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk100

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep101L (rho : Nat -> Seg34.F) (r2115 : Seg34.relationRow2115 rho) :
    rho 33390 = seg34RPe102 rho * (1 - rho 32865) := by
  unfold Seg34.relationRow2115 at r2115
  unfold seg34RPe102
  linear_combination -r2115

theorem seg34RStep101IlMul (rho : Nat -> Seg34.F) (r2116 : Seg34.relationRow2116 rho) :
    rho 33391 = seg34RIl102 rho * (rho 33390) := by
  unfold Seg34.relationRow2116 at r2116
  rw [seg34RStep101IlLc rho] at r2116
  linear_combination -r2116

theorem seg34RStep101Acc (rho : Nat -> Seg34.F) :
    seg34RIl101 rho = seg34RIl102 rho + (rho 33390) - (rho 33391) := by
  have hstate : seg34RIl101 rho = seg34RIl102 rho + seg34RIlAtom73 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom73
  ring

theorem seg34RStep101Pe (rho : Nat -> Seg34.F) (r2117 : Seg34.relationRow2117 rho) :
    seg34RPe101 rho = seg34RPe102 rho * rho 32865 := by
  unfold Seg34.relationRow2117 at r2117
  unfold seg34RPe101 seg34RPe102
  linear_combination -r2117

theorem seg34RStep101 (rho : Nat -> Seg34.F) (r2115 : Seg34.relationRow2115 rho) (r2116 : Seg34.relationRow2116 rho) (r2117 : Seg34.relationRow2117 rho) :
    seg34RPe101 rho = seg34RPe102 rho * rho 32865 ∧
    seg34RIl101 rho = seg34RIl102 rho + seg34RPe102 rho * (1 - rho 32865) -
      seg34RIl102 rho * (seg34RPe102 rho * (1 - rho 32865)) := by
  constructor
  · exact seg34RStep101Pe rho r2117
  · rw [seg34RStep101Acc rho, seg34RStep101L rho r2115, seg34RStep101IlMul rho r2116, seg34RStep101L rho r2115]

theorem seg34_r_chunk101 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 102 (seg34RPeState rho 102) (seg34RIlState rho 102) := by
  have htail := seg34_r_chunk100 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2115, r2116, r2117, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 101 ≤ n → n < 102 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 101 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep101 rho r2115 r2116 r2117
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 101 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
