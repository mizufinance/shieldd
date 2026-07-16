import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk237

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep238L (rho : Nat -> Seg6.F) (r1852 : Seg6.relationRow1852 rho) :
    rho 2253 = seg6RPe239 rho * (1 - rho 2128) := by
  unfold Seg6.relationRow1852 at r1852
  unfold seg6RPe239
  linear_combination -r1852

theorem seg6RStep238IlMul (rho : Nat -> Seg6.F) (r1853 : Seg6.relationRow1853 rho) :
    rho 2254 = seg6RIl239 rho * (rho 2253) := by
  unfold Seg6.relationRow1853 at r1853
  rw [seg6RIl239Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom2 seg6RIlAtom3 seg6RIlAtom4 seg6RIlAtom5
  linear_combination -r1853

theorem seg6RStep238Acc (rho : Nat -> Seg6.F) :
    seg6RIl238 rho = seg6RIl239 rho + (rho 2253) - (rho 2254) := by
  have hstate : seg6RIl238 rho = seg6RIl239 rho + seg6RIlAtom6 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom6
  ring

theorem seg6RStep238Pe (rho : Nat -> Seg6.F) (r1854 : Seg6.relationRow1854 rho) :
    seg6RPe238 rho = seg6RPe239 rho * rho 2128 := by
  unfold Seg6.relationRow1854 at r1854
  unfold seg6RPe238 seg6RPe239
  linear_combination -r1854

theorem seg6RStep238 (rho : Nat -> Seg6.F) (r1852 : Seg6.relationRow1852 rho) (r1853 : Seg6.relationRow1853 rho) (r1854 : Seg6.relationRow1854 rho) :
    seg6RPe238 rho = seg6RPe239 rho * rho 2128 ∧
    seg6RIl238 rho = seg6RIl239 rho + seg6RPe239 rho * (1 - rho 2128) -
      seg6RIl239 rho * (seg6RPe239 rho * (1 - rho 2128)) := by
  constructor
  · exact seg6RStep238Pe rho r1854
  · rw [seg6RStep238Acc rho, seg6RStep238L rho r1852, seg6RStep238IlMul rho r1853, seg6RStep238L rho r1852]

theorem seg6_r_chunk238 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 239 (seg6RPeState rho 239) (seg6RIlState rho 239) := by
  have htail := seg6_r_chunk237 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r1852, r1853, r1854, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 238 ≤ n → n < 239 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 238 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep238 rho r1852 r1853 r1854
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 238 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
