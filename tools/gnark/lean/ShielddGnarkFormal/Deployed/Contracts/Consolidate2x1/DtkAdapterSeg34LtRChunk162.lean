import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk161

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep162L (rho : Nat -> Seg34.F) (r1998 : Seg34.relationRow1998 rho) :
    rho 33273 = seg34RPe163 rho * (1 - rho 32926) := by
  unfold Seg34.relationRow1998 at r1998
  unfold seg34RPe163
  linear_combination -r1998

theorem seg34RStep162IlMul (rho : Nat -> Seg34.F) (r1999 : Seg34.relationRow1999 rho) :
    rho 33274 = seg34RIl163 rho * (rho 33273) := by
  unfold Seg34.relationRow1999 at r1999
  rw [seg34RStep162IlLc rho] at r1999
  linear_combination -r1999

theorem seg34RStep162Acc (rho : Nat -> Seg34.F) :
    seg34RIl162 rho = seg34RIl163 rho + (rho 33273) - (rho 33274) := by
  have hstate : seg34RIl162 rho = seg34RIl163 rho + seg34RIlAtom43 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom43
  ring

theorem seg34RStep162Pe (rho : Nat -> Seg34.F) (r2000 : Seg34.relationRow2000 rho) :
    seg34RPe162 rho = seg34RPe163 rho * rho 32926 := by
  unfold Seg34.relationRow2000 at r2000
  unfold seg34RPe162 seg34RPe163
  linear_combination -r2000

theorem seg34RStep162 (rho : Nat -> Seg34.F) (r1998 : Seg34.relationRow1998 rho) (r1999 : Seg34.relationRow1999 rho) (r2000 : Seg34.relationRow2000 rho) :
    seg34RPe162 rho = seg34RPe163 rho * rho 32926 ∧
    seg34RIl162 rho = seg34RIl163 rho + seg34RPe163 rho * (1 - rho 32926) -
      seg34RIl163 rho * (seg34RPe163 rho * (1 - rho 32926)) := by
  constructor
  · exact seg34RStep162Pe rho r2000
  · rw [seg34RStep162Acc rho, seg34RStep162L rho r1998, seg34RStep162IlMul rho r1999, seg34RStep162L rho r1998]

theorem seg34_r_chunk162 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 163 (seg34RPeState rho 163) (seg34RIlState rho 163) := by
  have htail := seg34_r_chunk161 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1998, r1999⟩
  unfold Seg34.relationPart25 at p25
  rcases p25 with ⟨r2000, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 162 ≤ n → n < 163 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 162 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep162 rho r1998 r1999 r2000
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 162 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
