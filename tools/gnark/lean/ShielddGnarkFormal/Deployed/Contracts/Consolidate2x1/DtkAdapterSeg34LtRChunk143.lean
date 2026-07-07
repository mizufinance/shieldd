import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk142

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep143L (rho : Nat -> Seg34.F) (r2039 : Seg34.relationRow2039 rho) :
    rho 33314 = seg34RPe144 rho * (1 - rho 32907) := by
  unfold Seg34.relationRow2039 at r2039
  unfold seg34RPe144
  linear_combination -r2039

theorem seg34RStep143IlMul (rho : Nat -> Seg34.F) (r2040 : Seg34.relationRow2040 rho) :
    rho 33315 = seg34RIl144 rho * (rho 33314) := by
  unfold Seg34.relationRow2040 at r2040
  rw [seg34RStep143IlLc rho] at r2040
  linear_combination -r2040

theorem seg34RStep143Acc (rho : Nat -> Seg34.F) :
    seg34RIl143 rho = seg34RIl144 rho + (rho 33314) - (rho 33315) := by
  have hstate : seg34RIl143 rho = seg34RIl144 rho + seg34RIlAtom55 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom55
  ring

theorem seg34RStep143Pe (rho : Nat -> Seg34.F) (r2041 : Seg34.relationRow2041 rho) :
    seg34RPe143 rho = seg34RPe144 rho * rho 32907 := by
  unfold Seg34.relationRow2041 at r2041
  unfold seg34RPe143 seg34RPe144
  linear_combination -r2041

theorem seg34RStep143 (rho : Nat -> Seg34.F) (r2039 : Seg34.relationRow2039 rho) (r2040 : Seg34.relationRow2040 rho) (r2041 : Seg34.relationRow2041 rho) :
    seg34RPe143 rho = seg34RPe144 rho * rho 32907 ∧
    seg34RIl143 rho = seg34RIl144 rho + seg34RPe144 rho * (1 - rho 32907) -
      seg34RIl144 rho * (seg34RPe144 rho * (1 - rho 32907)) := by
  constructor
  · exact seg34RStep143Pe rho r2041
  · rw [seg34RStep143Acc rho, seg34RStep143L rho r2039, seg34RStep143IlMul rho r2040, seg34RStep143L rho r2039]

theorem seg34_r_chunk143 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 144 (seg34RPeState rho 144) (seg34RIlState rho 144) := by
  have htail := seg34_r_chunk142 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2039, r2040, r2041, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 143 ≤ n → n < 144 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 143 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep143 rho r2039 r2040 r2041
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 143 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
