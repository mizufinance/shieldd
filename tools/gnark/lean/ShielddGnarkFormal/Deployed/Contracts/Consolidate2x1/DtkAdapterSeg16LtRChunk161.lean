import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk160

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep161L (rho : Nat -> Seg16.F) (r2001 : Seg16.relationRow2001 rho) :
    rho 14576 = seg16RPe162 rho * (1 - rho 14225) := by
  unfold Seg16.relationRow2001 at r2001
  unfold seg16RPe162
  linear_combination -r2001

theorem seg16RStep161IlMul (rho : Nat -> Seg16.F) (r2002 : Seg16.relationRow2002 rho) :
    rho 14577 = seg16RIl162 rho * (rho 14576) := by
  unfold Seg16.relationRow2002 at r2002
  rw [seg16RStep161IlLc rho] at r2002
  linear_combination -r2002

theorem seg16RStep161Acc (rho : Nat -> Seg16.F) :
    seg16RIl161 rho = seg16RIl162 rho + (rho 14576) - (rho 14577) := by
  have hstate : seg16RIl161 rho = seg16RIl162 rho + seg16RIlAtom44 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom44
  ring

theorem seg16RStep161Pe (rho : Nat -> Seg16.F) (r2003 : Seg16.relationRow2003 rho) :
    seg16RPe161 rho = seg16RPe162 rho * rho 14225 := by
  unfold Seg16.relationRow2003 at r2003
  unfold seg16RPe161 seg16RPe162
  linear_combination -r2003

theorem seg16RStep161 (rho : Nat -> Seg16.F) (r2001 : Seg16.relationRow2001 rho) (r2002 : Seg16.relationRow2002 rho) (r2003 : Seg16.relationRow2003 rho) :
    seg16RPe161 rho = seg16RPe162 rho * rho 14225 ∧
    seg16RIl161 rho = seg16RIl162 rho + seg16RPe162 rho * (1 - rho 14225) -
      seg16RIl162 rho * (seg16RPe162 rho * (1 - rho 14225)) := by
  constructor
  · exact seg16RStep161Pe rho r2003
  · rw [seg16RStep161Acc rho, seg16RStep161L rho r2001, seg16RStep161IlMul rho r2002, seg16RStep161L rho r2001]

theorem seg16_r_chunk161 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 162 (seg16RPeState rho 162) (seg16RIlState rho 162) := by
  have htail := seg16_r_chunk160 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart25 at p25
  rcases p25 with ⟨_, r2001, r2002, r2003, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 161 ≤ n → n < 162 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 161 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep161 rho r2001 r2002 r2003
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 161 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
