import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk161

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep162L (rho : Nat -> Seg16.F) (r1998 : Seg16.relationRow1998 rho) :
    rho 14573 = seg16RPe163 rho * (1 - rho 14226) := by
  unfold Seg16.relationRow1998 at r1998
  unfold seg16RPe163
  linear_combination -r1998

theorem seg16RStep162IlMul (rho : Nat -> Seg16.F) (r1999 : Seg16.relationRow1999 rho) :
    rho 14574 = seg16RIl163 rho * (rho 14573) := by
  unfold Seg16.relationRow1999 at r1999
  rw [seg16RStep162IlLc rho] at r1999
  linear_combination -r1999

theorem seg16RStep162Acc (rho : Nat -> Seg16.F) :
    seg16RIl162 rho = seg16RIl163 rho + (rho 14573) - (rho 14574) := by
  have hstate : seg16RIl162 rho = seg16RIl163 rho + seg16RIlAtom43 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom43
  ring

theorem seg16RStep162Pe (rho : Nat -> Seg16.F) (r2000 : Seg16.relationRow2000 rho) :
    seg16RPe162 rho = seg16RPe163 rho * rho 14226 := by
  unfold Seg16.relationRow2000 at r2000
  unfold seg16RPe162 seg16RPe163
  linear_combination -r2000

theorem seg16RStep162 (rho : Nat -> Seg16.F) (r1998 : Seg16.relationRow1998 rho) (r1999 : Seg16.relationRow1999 rho) (r2000 : Seg16.relationRow2000 rho) :
    seg16RPe162 rho = seg16RPe163 rho * rho 14226 ∧
    seg16RIl162 rho = seg16RIl163 rho + seg16RPe163 rho * (1 - rho 14226) -
      seg16RIl163 rho * (seg16RPe163 rho * (1 - rho 14226)) := by
  constructor
  · exact seg16RStep162Pe rho r2000
  · rw [seg16RStep162Acc rho, seg16RStep162L rho r1998, seg16RStep162IlMul rho r1999, seg16RStep162L rho r1998]

theorem seg16_r_chunk162 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 163 (seg16RPeState rho 163) (seg16RIlState rho 163) := by
  have htail := seg16_r_chunk161 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1998, r1999⟩
  unfold Seg16.relationPart25 at p25
  rcases p25 with ⟨r2000, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 162 ≤ n → n < 163 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 162 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep162 rho r1998 r1999 r2000
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 162 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
