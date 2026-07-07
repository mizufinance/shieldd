import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk59

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep60L (rho : Nat -> Seg34.F) (r2204 : Seg34.relationRow2204 rho) :
    rho 33479 = seg34RPe61 rho * (1 - rho 32824) := by
  unfold Seg34.relationRow2204 at r2204
  unfold seg34RPe61
  linear_combination -r2204

theorem seg34RStep60IlMul (rho : Nat -> Seg34.F) (r2205 : Seg34.relationRow2205 rho) :
    rho 33480 = seg34RIl61 rho * (rho 33479) := by
  unfold Seg34.relationRow2205 at r2205
  rw [seg34RStep60IlLc rho] at r2205
  linear_combination -r2205

theorem seg34RStep60Acc (rho : Nat -> Seg34.F) :
    seg34RIl60 rho = seg34RIl61 rho + (rho 33479) - (rho 33480) := by
  have hstate : seg34RIl60 rho = seg34RIl61 rho + seg34RIlAtom98 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom98
  ring

theorem seg34RStep60Pe (rho : Nat -> Seg34.F) (r2206 : Seg34.relationRow2206 rho) :
    seg34RPe60 rho = seg34RPe61 rho * rho 32824 := by
  unfold Seg34.relationRow2206 at r2206
  unfold seg34RPe60 seg34RPe61
  linear_combination -r2206

theorem seg34RStep60 (rho : Nat -> Seg34.F) (r2204 : Seg34.relationRow2204 rho) (r2205 : Seg34.relationRow2205 rho) (r2206 : Seg34.relationRow2206 rho) :
    seg34RPe60 rho = seg34RPe61 rho * rho 32824 ∧
    seg34RIl60 rho = seg34RIl61 rho + seg34RPe61 rho * (1 - rho 32824) -
      seg34RIl61 rho * (seg34RPe61 rho * (1 - rho 32824)) := by
  constructor
  · exact seg34RStep60Pe rho r2206
  · rw [seg34RStep60Acc rho, seg34RStep60L rho r2204, seg34RStep60IlMul rho r2205, seg34RStep60L rho r2204]

theorem seg34_r_chunk60 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 61 (seg34RPeState rho 61) (seg34RIlState rho 61) := by
  have htail := seg34_r_chunk59 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2204, r2205, r2206, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 60 ≤ n → n < 61 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 60 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep60 rho r2204 r2205 r2206
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 60 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
