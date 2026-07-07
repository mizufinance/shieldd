import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk159

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep160L (rho : Nat -> Seg16.F) (r2004 : Seg16.relationRow2004 rho) :
    rho 14579 = seg16RPe161 rho * (1 - rho 14224) := by
  unfold Seg16.relationRow2004 at r2004
  unfold seg16RPe161
  linear_combination -r2004

theorem seg16RStep160IlMul (rho : Nat -> Seg16.F) (r2005 : Seg16.relationRow2005 rho) :
    rho 14580 = seg16RIl161 rho * (rho 14579) := by
  unfold Seg16.relationRow2005 at r2005
  rw [seg16RStep160IlLc rho] at r2005
  linear_combination -r2005

theorem seg16RStep160Acc (rho : Nat -> Seg16.F) :
    seg16RIl160 rho = seg16RIl161 rho + (rho 14579) - (rho 14580) := by
  have hstate : seg16RIl160 rho = seg16RIl161 rho + seg16RIlAtom45 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom45
  ring

theorem seg16RStep160Pe (rho : Nat -> Seg16.F) (r2006 : Seg16.relationRow2006 rho) :
    seg16RPe160 rho = seg16RPe161 rho * rho 14224 := by
  unfold Seg16.relationRow2006 at r2006
  unfold seg16RPe160 seg16RPe161
  linear_combination -r2006

theorem seg16RStep160 (rho : Nat -> Seg16.F) (r2004 : Seg16.relationRow2004 rho) (r2005 : Seg16.relationRow2005 rho) (r2006 : Seg16.relationRow2006 rho) :
    seg16RPe160 rho = seg16RPe161 rho * rho 14224 ∧
    seg16RIl160 rho = seg16RIl161 rho + seg16RPe161 rho * (1 - rho 14224) -
      seg16RIl161 rho * (seg16RPe161 rho * (1 - rho 14224)) := by
  constructor
  · exact seg16RStep160Pe rho r2006
  · rw [seg16RStep160Acc rho, seg16RStep160L rho r2004, seg16RStep160IlMul rho r2005, seg16RStep160L rho r2004]

theorem seg16_r_chunk160 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 161 (seg16RPeState rho 161) (seg16RIlState rho 161) := by
  have htail := seg16_r_chunk159 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, r2004, r2005, r2006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 160 ≤ n → n < 161 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 160 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep160 rho r2004 r2005 r2006
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 160 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
