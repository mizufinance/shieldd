import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk160

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep161L (rho : Nat -> Seg45.F) (r2001 : Seg45.relationRow2001 rho) :
    rho 40232 = seg45RPe162 rho * (1 - rho 39881) := by
  unfold Seg45.relationRow2001 at r2001
  unfold seg45RPe162
  linear_combination -r2001

theorem seg45RStep161IlMul (rho : Nat -> Seg45.F) (r2002 : Seg45.relationRow2002 rho) :
    rho 40233 = seg45RIl162 rho * (rho 40232) := by
  unfold Seg45.relationRow2002 at r2002
  rw [seg45RStep161IlLc rho] at r2002
  linear_combination -r2002

theorem seg45RStep161Acc (rho : Nat -> Seg45.F) :
    seg45RIl161 rho = seg45RIl162 rho + (rho 40232) - (rho 40233) := by
  have hstate : seg45RIl161 rho = seg45RIl162 rho + seg45RIlAtom44 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom44
  ring

theorem seg45RStep161Pe (rho : Nat -> Seg45.F) (r2003 : Seg45.relationRow2003 rho) :
    seg45RPe161 rho = seg45RPe162 rho * rho 39881 := by
  unfold Seg45.relationRow2003 at r2003
  unfold seg45RPe161 seg45RPe162
  linear_combination -r2003

theorem seg45RStep161 (rho : Nat -> Seg45.F) (r2001 : Seg45.relationRow2001 rho) (r2002 : Seg45.relationRow2002 rho) (r2003 : Seg45.relationRow2003 rho) :
    seg45RPe161 rho = seg45RPe162 rho * rho 39881 ∧
    seg45RIl161 rho = seg45RIl162 rho + seg45RPe162 rho * (1 - rho 39881) -
      seg45RIl162 rho * (seg45RPe162 rho * (1 - rho 39881)) := by
  constructor
  · exact seg45RStep161Pe rho r2003
  · rw [seg45RStep161Acc rho, seg45RStep161L rho r2001, seg45RStep161IlMul rho r2002, seg45RStep161L rho r2001]

theorem seg45_r_chunk161 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 162 (seg45RPeState rho 162) (seg45RIlState rho 162) := by
  have htail := seg45_r_chunk160 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart25 at p25
  rcases p25 with ⟨_, r2001, r2002, r2003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 161 ≤ n → n < 162 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 161 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep161 rho r2001 r2002 r2003
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 161 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
