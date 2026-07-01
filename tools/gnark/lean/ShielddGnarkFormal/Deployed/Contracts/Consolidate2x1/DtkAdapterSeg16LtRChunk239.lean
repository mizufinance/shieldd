import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk238

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep239L (rho : Nat -> Seg16.F) (r1849 : Seg16.relationRow1849 rho) :
    rho 14424 = seg16RPe240 rho * (1 - rho 14303) := by
  unfold Seg16.relationRow1849 at r1849
  unfold seg16RPe240
  linear_combination -r1849

theorem seg16RStep239IlMul (rho : Nat -> Seg16.F) (r1850 : Seg16.relationRow1850 rho) :
    rho 14425 = seg16RIl240 rho * (rho 14424) := by
  unfold Seg16.relationRow1850 at r1850
  rw [seg16RIl240Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom2 seg16RIlAtom3 seg16RIlAtom4
  linear_combination -r1850

theorem seg16RStep239Acc (rho : Nat -> Seg16.F) :
    seg16RIl239 rho = seg16RIl240 rho + (rho 14424) - (rho 14425) := by
  have hstate : seg16RIl239 rho = seg16RIl240 rho + seg16RIlAtom5 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom5
  ring

theorem seg16RStep239Pe (rho : Nat -> Seg16.F) (r1851 : Seg16.relationRow1851 rho) :
    seg16RPe239 rho = seg16RPe240 rho * rho 14303 := by
  unfold Seg16.relationRow1851 at r1851
  unfold seg16RPe239 seg16RPe240
  linear_combination -r1851

theorem seg16RStep239 (rho : Nat -> Seg16.F) (r1849 : Seg16.relationRow1849 rho) (r1850 : Seg16.relationRow1850 rho) (r1851 : Seg16.relationRow1851 rho) :
    seg16RPe239 rho = seg16RPe240 rho * rho 14303 ∧
    seg16RIl239 rho = seg16RIl240 rho + seg16RPe240 rho * (1 - rho 14303) -
      seg16RIl240 rho * (seg16RPe240 rho * (1 - rho 14303)) := by
  constructor
  · exact seg16RStep239Pe rho r1851
  · rw [seg16RStep239Acc rho, seg16RStep239L rho r1849, seg16RStep239IlMul rho r1850, seg16RStep239L rho r1849]

theorem seg16_r_chunk239 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 240 (seg16RPeState rho 240) (seg16RIlState rho 240) := by
  have htail := seg16_r_chunk238 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, r1849, r1850, r1851, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 239 ≤ n → n < 240 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 239 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep239 rho r1849 r1850 r1851
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 239 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
