import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk120

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep121L (rho : Nat -> Seg34.F) (r2075 : Seg34.relationRow2075 rho) :
    rho 33350 = seg34RPe122 rho * (1 - rho 32885) := by
  unfold Seg34.relationRow2075 at r2075
  unfold seg34RPe122
  linear_combination -r2075

theorem seg34RStep121IlMul (rho : Nat -> Seg34.F) (r2076 : Seg34.relationRow2076 rho) :
    rho 33351 = seg34RIl122 rho * (rho 33350) := by
  unfold Seg34.relationRow2076 at r2076
  rw [seg34RStep121IlLc rho] at r2076
  linear_combination -r2076

theorem seg34RStep121Acc (rho : Nat -> Seg34.F) :
    seg34RIl121 rho = seg34RIl122 rho + (rho 33350) - (rho 33351) := by
  have hstate : seg34RIl121 rho = seg34RIl122 rho + seg34RIlAtom62 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom62
  ring

theorem seg34RStep121Pe (rho : Nat -> Seg34.F) (r2077 : Seg34.relationRow2077 rho) :
    seg34RPe121 rho = seg34RPe122 rho * rho 32885 := by
  unfold Seg34.relationRow2077 at r2077
  unfold seg34RPe121 seg34RPe122
  linear_combination -r2077

theorem seg34RStep121 (rho : Nat -> Seg34.F) (r2075 : Seg34.relationRow2075 rho) (r2076 : Seg34.relationRow2076 rho) (r2077 : Seg34.relationRow2077 rho) :
    seg34RPe121 rho = seg34RPe122 rho * rho 32885 ∧
    seg34RIl121 rho = seg34RIl122 rho + seg34RPe122 rho * (1 - rho 32885) -
      seg34RIl122 rho * (seg34RPe122 rho * (1 - rho 32885)) := by
  constructor
  · exact seg34RStep121Pe rho r2077
  · rw [seg34RStep121Acc rho, seg34RStep121L rho r2075, seg34RStep121IlMul rho r2076, seg34RStep121L rho r2075]

theorem seg34_r_chunk121 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 122 (seg34RPeState rho 122) (seg34RIlState rho 122) := by
  have htail := seg34_r_chunk120 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2075, r2076, r2077, _, _⟩
  have hsteps : ∀ n, 121 ≤ n → n < 122 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 121 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep121 rho r2075 r2076 r2077
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 121 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
