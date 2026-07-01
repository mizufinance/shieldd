import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk102

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep103L (rho : Nat -> Seg34.F) (r2111 : Seg34.relationRow2111 rho) :
    rho 33386 = seg34RPe104 rho * (1 - rho 32867) := by
  unfold Seg34.relationRow2111 at r2111
  unfold seg34RPe104
  linear_combination -r2111

theorem seg34RStep103IlMul (rho : Nat -> Seg34.F) (r2112 : Seg34.relationRow2112 rho) :
    rho 33387 = seg34RIl104 rho * (rho 33386) := by
  unfold Seg34.relationRow2112 at r2112
  rw [seg34RStep103IlLc rho] at r2112
  linear_combination -r2112

theorem seg34RStep103Acc (rho : Nat -> Seg34.F) :
    seg34RIl103 rho = seg34RIl104 rho + (rho 33386) - (rho 33387) := by
  have hstate : seg34RIl103 rho = seg34RIl104 rho + seg34RIlAtom72 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom72
  ring

theorem seg34RStep103Pe (rho : Nat -> Seg34.F) (r2113 : Seg34.relationRow2113 rho) :
    seg34RPe103 rho = seg34RPe104 rho * rho 32867 := by
  unfold Seg34.relationRow2113 at r2113
  unfold seg34RPe103 seg34RPe104
  linear_combination -r2113

theorem seg34RStep103 (rho : Nat -> Seg34.F) (r2111 : Seg34.relationRow2111 rho) (r2112 : Seg34.relationRow2112 rho) (r2113 : Seg34.relationRow2113 rho) :
    seg34RPe103 rho = seg34RPe104 rho * rho 32867 ∧
    seg34RIl103 rho = seg34RIl104 rho + seg34RPe104 rho * (1 - rho 32867) -
      seg34RIl104 rho * (seg34RPe104 rho * (1 - rho 32867)) := by
  constructor
  · exact seg34RStep103Pe rho r2113
  · rw [seg34RStep103Acc rho, seg34RStep103L rho r2111, seg34RStep103IlMul rho r2112, seg34RStep103L rho r2111]

theorem seg34_r_chunk103 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 104 (seg34RPeState rho 104) (seg34RIlState rho 104) := by
  have htail := seg34_r_chunk102 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2111, r2112, r2113, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 103 ≤ n → n < 104 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 103 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep103 rho r2111 r2112 r2113
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 103 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
