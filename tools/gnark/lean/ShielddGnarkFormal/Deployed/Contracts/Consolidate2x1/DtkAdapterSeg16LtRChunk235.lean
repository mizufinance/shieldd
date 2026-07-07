import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk234

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep235L (rho : Nat -> Seg16.F) (r1859 : Seg16.relationRow1859 rho) :
    rho 14434 = seg16RPe236 rho * (1 - rho 14299) := by
  unfold Seg16.relationRow1859 at r1859
  unfold seg16RPe236
  linear_combination -r1859

theorem seg16RStep235IlMul (rho : Nat -> Seg16.F) (r1860 : Seg16.relationRow1860 rho) :
    rho 14435 = seg16RIl236 rho * (rho 14434) := by
  unfold Seg16.relationRow1860 at r1860
  rw [seg16RIl236Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom2 seg16RIlAtom3 seg16RIlAtom4 seg16RIlAtom5 seg16RIlAtom6 seg16RIlAtom7
  linear_combination -r1860

theorem seg16RStep235Acc (rho : Nat -> Seg16.F) :
    seg16RIl235 rho = seg16RIl236 rho + (rho 14434) - (rho 14435) := by
  have hstate : seg16RIl235 rho = seg16RIl236 rho + seg16RIlAtom8 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom8
  ring

theorem seg16RStep235Pe (rho : Nat -> Seg16.F) (r1861 : Seg16.relationRow1861 rho) :
    seg16RPe235 rho = seg16RPe236 rho * rho 14299 := by
  unfold Seg16.relationRow1861 at r1861
  unfold seg16RPe235 seg16RPe236
  linear_combination -r1861

theorem seg16RStep235 (rho : Nat -> Seg16.F) (r1859 : Seg16.relationRow1859 rho) (r1860 : Seg16.relationRow1860 rho) (r1861 : Seg16.relationRow1861 rho) :
    seg16RPe235 rho = seg16RPe236 rho * rho 14299 ∧
    seg16RIl235 rho = seg16RIl236 rho + seg16RPe236 rho * (1 - rho 14299) -
      seg16RIl236 rho * (seg16RPe236 rho * (1 - rho 14299)) := by
  constructor
  · exact seg16RStep235Pe rho r1861
  · rw [seg16RStep235Acc rho, seg16RStep235L rho r1859, seg16RStep235IlMul rho r1860, seg16RStep235L rho r1859]

theorem seg16_r_chunk235 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 236 (seg16RPeState rho 236) (seg16RIlState rho 236) := by
  have htail := seg16_r_chunk234 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1859, r1860, r1861, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 235 ≤ n → n < 236 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 235 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep235 rho r1859 r1860 r1861
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 235 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
