import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk102

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep103L (rho : Nat -> Seg5.F) (r2111 : Seg5.relationRow2111 rho) :
    rho 1809 = seg5RPe104 rho * (1 - rho 1290) := by
  unfold Seg5.relationRow2111 at r2111
  unfold seg5RPe104
  linear_combination -r2111

theorem seg5RStep103IlMul (rho : Nat -> Seg5.F) (r2112 : Seg5.relationRow2112 rho) :
    rho 1810 = seg5RIl104 rho * (rho 1809) := by
  unfold Seg5.relationRow2112 at r2112
  rw [seg5RStep103IlLc rho] at r2112
  linear_combination -r2112

theorem seg5RStep103Acc (rho : Nat -> Seg5.F) :
    seg5RIl103 rho = seg5RIl104 rho + (rho 1809) - (rho 1810) := by
  have hstate : seg5RIl103 rho = seg5RIl104 rho + seg5RIlAtom72 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom72
  ring

theorem seg5RStep103Pe (rho : Nat -> Seg5.F) (r2113 : Seg5.relationRow2113 rho) :
    seg5RPe103 rho = seg5RPe104 rho * rho 1290 := by
  unfold Seg5.relationRow2113 at r2113
  unfold seg5RPe103 seg5RPe104
  linear_combination -r2113

theorem seg5RStep103 (rho : Nat -> Seg5.F) (r2111 : Seg5.relationRow2111 rho) (r2112 : Seg5.relationRow2112 rho) (r2113 : Seg5.relationRow2113 rho) :
    seg5RPe103 rho = seg5RPe104 rho * rho 1290 ∧
    seg5RIl103 rho = seg5RIl104 rho + seg5RPe104 rho * (1 - rho 1290) -
      seg5RIl104 rho * (seg5RPe104 rho * (1 - rho 1290)) := by
  constructor
  · exact seg5RStep103Pe rho r2113
  · rw [seg5RStep103Acc rho, seg5RStep103L rho r2111, seg5RStep103IlMul rho r2112, seg5RStep103L rho r2111]

theorem seg5_r_chunk103 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 104 (seg5RPeState rho 104) (seg5RIlState rho 104) := by
  have htail := seg5_r_chunk102 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2111, r2112, r2113, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 103 ≤ n → n < 104 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 103 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep103 rho r2111 r2112 r2113
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 103 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
