import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk161

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep162L (rho : Nat -> Seg5.F) (r1998 : Seg5.relationRow1998 rho) :
    rho 1696 = seg5RPe163 rho * (1 - rho 1349) := by
  unfold Seg5.relationRow1998 at r1998
  unfold seg5RPe163
  linear_combination -r1998

theorem seg5RStep162IlMul (rho : Nat -> Seg5.F) (r1999 : Seg5.relationRow1999 rho) :
    rho 1697 = seg5RIl163 rho * (rho 1696) := by
  unfold Seg5.relationRow1999 at r1999
  rw [seg5RStep162IlLc rho] at r1999
  linear_combination -r1999

theorem seg5RStep162Acc (rho : Nat -> Seg5.F) :
    seg5RIl162 rho = seg5RIl163 rho + (rho 1696) - (rho 1697) := by
  have hstate : seg5RIl162 rho = seg5RIl163 rho + seg5RIlAtom43 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom43
  ring

theorem seg5RStep162Pe (rho : Nat -> Seg5.F) (r2000 : Seg5.relationRow2000 rho) :
    seg5RPe162 rho = seg5RPe163 rho * rho 1349 := by
  unfold Seg5.relationRow2000 at r2000
  unfold seg5RPe162 seg5RPe163
  linear_combination -r2000

theorem seg5RStep162 (rho : Nat -> Seg5.F) (r1998 : Seg5.relationRow1998 rho) (r1999 : Seg5.relationRow1999 rho) (r2000 : Seg5.relationRow2000 rho) :
    seg5RPe162 rho = seg5RPe163 rho * rho 1349 ∧
    seg5RIl162 rho = seg5RIl163 rho + seg5RPe163 rho * (1 - rho 1349) -
      seg5RIl163 rho * (seg5RPe163 rho * (1 - rho 1349)) := by
  constructor
  · exact seg5RStep162Pe rho r2000
  · rw [seg5RStep162Acc rho, seg5RStep162L rho r1998, seg5RStep162IlMul rho r1999, seg5RStep162L rho r1998]

theorem seg5_r_chunk162 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 163 (seg5RPeState rho 163) (seg5RIlState rho 163) := by
  have htail := seg5_r_chunk161 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1998, r1999⟩
  unfold Seg5.relationPart25 at p25
  rcases p25 with ⟨r2000, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 162 ≤ n → n < 163 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 162 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep162 rho r1998 r1999 r2000
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 162 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
