import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk238

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep239L (rho : Nat -> Seg6.F) (r1849 : Seg6.relationRow1849 rho) :
    rho 2250 = seg6RPe240 rho * (1 - rho 2129) := by
  unfold Seg6.relationRow1849 at r1849
  unfold seg6RPe240
  linear_combination -r1849

theorem seg6RStep239IlMul (rho : Nat -> Seg6.F) (r1850 : Seg6.relationRow1850 rho) :
    rho 2251 = seg6RIl240 rho * (rho 2250) := by
  unfold Seg6.relationRow1850 at r1850
  rw [seg6RIl240Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom2 seg6RIlAtom3 seg6RIlAtom4
  linear_combination -r1850

theorem seg6RStep239Acc (rho : Nat -> Seg6.F) :
    seg6RIl239 rho = seg6RIl240 rho + (rho 2250) - (rho 2251) := by
  have hstate : seg6RIl239 rho = seg6RIl240 rho + seg6RIlAtom5 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom5
  ring

theorem seg6RStep239Pe (rho : Nat -> Seg6.F) (r1851 : Seg6.relationRow1851 rho) :
    seg6RPe239 rho = seg6RPe240 rho * rho 2129 := by
  unfold Seg6.relationRow1851 at r1851
  unfold seg6RPe239 seg6RPe240
  linear_combination -r1851

theorem seg6RStep239 (rho : Nat -> Seg6.F) (r1849 : Seg6.relationRow1849 rho) (r1850 : Seg6.relationRow1850 rho) (r1851 : Seg6.relationRow1851 rho) :
    seg6RPe239 rho = seg6RPe240 rho * rho 2129 ∧
    seg6RIl239 rho = seg6RIl240 rho + seg6RPe240 rho * (1 - rho 2129) -
      seg6RIl240 rho * (seg6RPe240 rho * (1 - rho 2129)) := by
  constructor
  · exact seg6RStep239Pe rho r1851
  · rw [seg6RStep239Acc rho, seg6RStep239L rho r1849, seg6RStep239IlMul rho r1850, seg6RStep239L rho r1849]

theorem seg6_r_chunk239 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 240 (seg6RPeState rho 240) (seg6RIlState rho 240) := by
  have htail := seg6_r_chunk238 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, r1849, r1850, r1851, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 239 ≤ n → n < 240 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 239 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep239 rho r1849 r1850 r1851
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 239 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
