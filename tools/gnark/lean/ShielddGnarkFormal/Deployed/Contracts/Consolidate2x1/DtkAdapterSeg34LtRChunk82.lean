import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk81

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep82L (rho : Nat -> Seg34.F) (r2156 : Seg34.relationRow2156 rho) :
    rho 33431 = seg34RPe83 rho * (1 - rho 32846) := by
  unfold Seg34.relationRow2156 at r2156
  unfold seg34RPe83
  linear_combination -r2156

theorem seg34RStep82IlMul (rho : Nat -> Seg34.F) (r2157 : Seg34.relationRow2157 rho) :
    rho 33432 = seg34RIl83 rho * (rho 33431) := by
  unfold Seg34.relationRow2157 at r2157
  rw [seg34RStep82IlLc rho] at r2157
  linear_combination -r2157

theorem seg34RStep82Acc (rho : Nat -> Seg34.F) :
    seg34RIl82 rho = seg34RIl83 rho + (rho 33431) - (rho 33432) := by
  have hstate : seg34RIl82 rho = seg34RIl83 rho + seg34RIlAtom84 rho + (-1 : Seg34.F) * seg34RIlAtom85 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom84 seg34RIlAtom85
  ring

theorem seg34RStep82Pe (rho : Nat -> Seg34.F) (r2158 : Seg34.relationRow2158 rho) :
    seg34RPe82 rho = seg34RPe83 rho * rho 32846 := by
  unfold Seg34.relationRow2158 at r2158
  unfold seg34RPe82 seg34RPe83
  linear_combination -r2158

theorem seg34RStep82 (rho : Nat -> Seg34.F) (r2156 : Seg34.relationRow2156 rho) (r2157 : Seg34.relationRow2157 rho) (r2158 : Seg34.relationRow2158 rho) :
    seg34RPe82 rho = seg34RPe83 rho * rho 32846 ∧
    seg34RIl82 rho = seg34RIl83 rho + seg34RPe83 rho * (1 - rho 32846) -
      seg34RIl83 rho * (seg34RPe83 rho * (1 - rho 32846)) := by
  constructor
  · exact seg34RStep82Pe rho r2158
  · rw [seg34RStep82Acc rho, seg34RStep82L rho r2156, seg34RStep82IlMul rho r2157, seg34RStep82L rho r2156]

theorem seg34_r_chunk82 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 83 (seg34RPeState rho 83) (seg34RIlState rho 83) := by
  have htail := seg34_r_chunk81 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2156, r2157, r2158, _⟩
  have hsteps : ∀ n, 82 ≤ n → n < 83 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 82 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep82 rho r2156 r2157 r2158
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 82 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
