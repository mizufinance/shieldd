import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk161

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep162L (rho : Nat -> Seg45.F) (r1998 : Seg45.relationRow1998 rho) :
    rho 40229 = seg45RPe163 rho * (1 - rho 39882) := by
  unfold Seg45.relationRow1998 at r1998
  unfold seg45RPe163
  linear_combination -r1998

theorem seg45RStep162IlMul (rho : Nat -> Seg45.F) (r1999 : Seg45.relationRow1999 rho) :
    rho 40230 = seg45RIl163 rho * (rho 40229) := by
  unfold Seg45.relationRow1999 at r1999
  rw [seg45RStep162IlLc rho] at r1999
  linear_combination -r1999

theorem seg45RStep162Acc (rho : Nat -> Seg45.F) :
    seg45RIl162 rho = seg45RIl163 rho + (rho 40229) - (rho 40230) := by
  have hstate : seg45RIl162 rho = seg45RIl163 rho + seg45RIlAtom43 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom43
  ring

theorem seg45RStep162Pe (rho : Nat -> Seg45.F) (r2000 : Seg45.relationRow2000 rho) :
    seg45RPe162 rho = seg45RPe163 rho * rho 39882 := by
  unfold Seg45.relationRow2000 at r2000
  unfold seg45RPe162 seg45RPe163
  linear_combination -r2000

theorem seg45RStep162 (rho : Nat -> Seg45.F) (r1998 : Seg45.relationRow1998 rho) (r1999 : Seg45.relationRow1999 rho) (r2000 : Seg45.relationRow2000 rho) :
    seg45RPe162 rho = seg45RPe163 rho * rho 39882 ∧
    seg45RIl162 rho = seg45RIl163 rho + seg45RPe163 rho * (1 - rho 39882) -
      seg45RIl163 rho * (seg45RPe163 rho * (1 - rho 39882)) := by
  constructor
  · exact seg45RStep162Pe rho r2000
  · rw [seg45RStep162Acc rho, seg45RStep162L rho r1998, seg45RStep162IlMul rho r1999, seg45RStep162L rho r1998]

theorem seg45_r_chunk162 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 163 (seg45RPeState rho 163) (seg45RIlState rho 163) := by
  have htail := seg45_r_chunk161 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1998, r1999⟩
  unfold Seg45.relationPart25 at p25
  rcases p25 with ⟨r2000, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 162 ≤ n → n < 163 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 162 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep162 rho r1998 r1999 r2000
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 162 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
