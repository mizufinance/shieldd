import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk138

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep139L (rho : Nat -> Seg34.F) (r2049 : Seg34.relationRow2049 rho) :
    rho 33324 = seg34RPe140 rho * (1 - rho 32903) := by
  unfold Seg34.relationRow2049 at r2049
  unfold seg34RPe140
  linear_combination -r2049

theorem seg34RStep139IlMul (rho : Nat -> Seg34.F) (r2050 : Seg34.relationRow2050 rho) :
    rho 33325 = seg34RIl140 rho * (rho 33324) := by
  unfold Seg34.relationRow2050 at r2050
  rw [seg34RStep139IlLc rho] at r2050
  linear_combination -r2050

theorem seg34RStep139Acc (rho : Nat -> Seg34.F) :
    seg34RIl139 rho = seg34RIl140 rho + (rho 33324) - (rho 33325) := by
  have hstate : seg34RIl139 rho = seg34RIl140 rho + seg34RIlAtom58 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom58
  ring

theorem seg34RStep139Pe (rho : Nat -> Seg34.F) (r2051 : Seg34.relationRow2051 rho) :
    seg34RPe139 rho = seg34RPe140 rho * rho 32903 := by
  unfold Seg34.relationRow2051 at r2051
  unfold seg34RPe139 seg34RPe140
  linear_combination -r2051

theorem seg34RStep139 (rho : Nat -> Seg34.F) (r2049 : Seg34.relationRow2049 rho) (r2050 : Seg34.relationRow2050 rho) (r2051 : Seg34.relationRow2051 rho) :
    seg34RPe139 rho = seg34RPe140 rho * rho 32903 ∧
    seg34RIl139 rho = seg34RIl140 rho + seg34RPe140 rho * (1 - rho 32903) -
      seg34RIl140 rho * (seg34RPe140 rho * (1 - rho 32903)) := by
  constructor
  · exact seg34RStep139Pe rho r2051
  · rw [seg34RStep139Acc rho, seg34RStep139L rho r2049, seg34RStep139IlMul rho r2050, seg34RStep139L rho r2049]

theorem seg34_r_chunk139 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 140 (seg34RPeState rho 140) (seg34RIlState rho 140) := by
  have htail := seg34_r_chunk138 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2049, r2050, r2051, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 139 ≤ n → n < 140 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 139 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep139 rho r2049 r2050 r2051
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 139 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
