import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk158

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep159L (rho : Nat -> Seg16.F) (r2007 : Seg16.relationRow2007 rho) :
    rho 14582 = seg16RPe160 rho * (1 - rho 14223) := by
  unfold Seg16.relationRow2007 at r2007
  unfold seg16RPe160
  linear_combination -r2007

theorem seg16RStep159IlMul (rho : Nat -> Seg16.F) (r2008 : Seg16.relationRow2008 rho) :
    rho 14583 = seg16RIl160 rho * (rho 14582) := by
  unfold Seg16.relationRow2008 at r2008
  rw [seg16RStep159IlLc rho] at r2008
  linear_combination -r2008

theorem seg16RStep159Acc (rho : Nat -> Seg16.F) :
    seg16RIl159 rho = seg16RIl160 rho + (rho 14582) - (rho 14583) := by
  have hstate : seg16RIl159 rho = seg16RIl160 rho + seg16RIlAtom46 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom46
  ring

theorem seg16RStep159Pe (rho : Nat -> Seg16.F) (r2009 : Seg16.relationRow2009 rho) :
    seg16RPe159 rho = seg16RPe160 rho * rho 14223 := by
  unfold Seg16.relationRow2009 at r2009
  unfold seg16RPe159 seg16RPe160
  linear_combination -r2009

theorem seg16RStep159 (rho : Nat -> Seg16.F) (r2007 : Seg16.relationRow2007 rho) (r2008 : Seg16.relationRow2008 rho) (r2009 : Seg16.relationRow2009 rho) :
    seg16RPe159 rho = seg16RPe160 rho * rho 14223 ∧
    seg16RIl159 rho = seg16RIl160 rho + seg16RPe160 rho * (1 - rho 14223) -
      seg16RIl160 rho * (seg16RPe160 rho * (1 - rho 14223)) := by
  constructor
  · exact seg16RStep159Pe rho r2009
  · rw [seg16RStep159Acc rho, seg16RStep159L rho r2007, seg16RStep159IlMul rho r2008, seg16RStep159L rho r2007]

theorem seg16_r_chunk159 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 160 (seg16RPeState rho 160) (seg16RIlState rho 160) := by
  have htail := seg16_r_chunk158 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, r2007, r2008, r2009, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 159 ≤ n → n < 160 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 159 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep159 rho r2007 r2008 r2009
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 159 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
