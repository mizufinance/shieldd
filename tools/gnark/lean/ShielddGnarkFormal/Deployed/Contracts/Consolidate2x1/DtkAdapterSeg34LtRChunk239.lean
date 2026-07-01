import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk238

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep239L (rho : Nat -> Seg34.F) (r1849 : Seg34.relationRow1849 rho) :
    rho 33124 = seg34RPe240 rho * (1 - rho 33003) := by
  unfold Seg34.relationRow1849 at r1849
  unfold seg34RPe240
  linear_combination -r1849

theorem seg34RStep239IlMul (rho : Nat -> Seg34.F) (r1850 : Seg34.relationRow1850 rho) :
    rho 33125 = seg34RIl240 rho * (rho 33124) := by
  unfold Seg34.relationRow1850 at r1850
  rw [seg34RIl240Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1 seg34RIlAtom2 seg34RIlAtom3 seg34RIlAtom4
  linear_combination -r1850

theorem seg34RStep239Acc (rho : Nat -> Seg34.F) :
    seg34RIl239 rho = seg34RIl240 rho + (rho 33124) - (rho 33125) := by
  have hstate : seg34RIl239 rho = seg34RIl240 rho + seg34RIlAtom5 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom5
  ring

theorem seg34RStep239Pe (rho : Nat -> Seg34.F) (r1851 : Seg34.relationRow1851 rho) :
    seg34RPe239 rho = seg34RPe240 rho * rho 33003 := by
  unfold Seg34.relationRow1851 at r1851
  unfold seg34RPe239 seg34RPe240
  linear_combination -r1851

theorem seg34RStep239 (rho : Nat -> Seg34.F) (r1849 : Seg34.relationRow1849 rho) (r1850 : Seg34.relationRow1850 rho) (r1851 : Seg34.relationRow1851 rho) :
    seg34RPe239 rho = seg34RPe240 rho * rho 33003 ∧
    seg34RIl239 rho = seg34RIl240 rho + seg34RPe240 rho * (1 - rho 33003) -
      seg34RIl240 rho * (seg34RPe240 rho * (1 - rho 33003)) := by
  constructor
  · exact seg34RStep239Pe rho r1851
  · rw [seg34RStep239Acc rho, seg34RStep239L rho r1849, seg34RStep239IlMul rho r1850, seg34RStep239L rho r1849]

theorem seg34_r_chunk239 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 240 (seg34RPeState rho 240) (seg34RIlState rho 240) := by
  have htail := seg34_r_chunk238 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, r1849, r1850, r1851, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 239 ≤ n → n < 240 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 239 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep239 rho r1849 r1850 r1851
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 239 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
