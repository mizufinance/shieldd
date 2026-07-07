import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk141

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep142L (rho : Nat -> Seg34.F) (r2042 : Seg34.relationRow2042 rho) :
    rho 33317 = seg34RPe143 rho * (1 - rho 32906) := by
  unfold Seg34.relationRow2042 at r2042
  unfold seg34RPe143
  linear_combination -r2042

theorem seg34RStep142IlMul (rho : Nat -> Seg34.F) (r2043 : Seg34.relationRow2043 rho) :
    rho 33318 = seg34RIl143 rho * (rho 33317) := by
  unfold Seg34.relationRow2043 at r2043
  rw [seg34RStep142IlLc rho] at r2043
  linear_combination -r2043

theorem seg34RStep142Acc (rho : Nat -> Seg34.F) :
    seg34RIl142 rho = seg34RIl143 rho + (rho 33317) - (rho 33318) := by
  have hstate : seg34RIl142 rho = seg34RIl143 rho + seg34RIlAtom56 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom56
  ring

theorem seg34RStep142Pe (rho : Nat -> Seg34.F) (r2044 : Seg34.relationRow2044 rho) :
    seg34RPe142 rho = seg34RPe143 rho * rho 32906 := by
  unfold Seg34.relationRow2044 at r2044
  unfold seg34RPe142 seg34RPe143
  linear_combination -r2044

theorem seg34RStep142 (rho : Nat -> Seg34.F) (r2042 : Seg34.relationRow2042 rho) (r2043 : Seg34.relationRow2043 rho) (r2044 : Seg34.relationRow2044 rho) :
    seg34RPe142 rho = seg34RPe143 rho * rho 32906 ∧
    seg34RIl142 rho = seg34RIl143 rho + seg34RPe143 rho * (1 - rho 32906) -
      seg34RIl143 rho * (seg34RPe143 rho * (1 - rho 32906)) := by
  constructor
  · exact seg34RStep142Pe rho r2044
  · rw [seg34RStep142Acc rho, seg34RStep142L rho r2042, seg34RStep142IlMul rho r2043, seg34RStep142L rho r2042]

theorem seg34_r_chunk142 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 143 (seg34RPeState rho 143) (seg34RIlState rho 143) := by
  have htail := seg34_r_chunk141 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2042, r2043, r2044, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 142 ≤ n → n < 143 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 142 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep142 rho r2042 r2043 r2044
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 142 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
