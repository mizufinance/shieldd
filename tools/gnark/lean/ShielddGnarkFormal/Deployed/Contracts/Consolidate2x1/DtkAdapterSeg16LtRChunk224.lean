import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk223

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep224L (rho : Nat -> Seg16.F) (r1882 : Seg16.relationRow1882 rho) :
    rho 14457 = seg16RPe225 rho * (1 - rho 14288) := by
  unfold Seg16.relationRow1882 at r1882
  unfold seg16RPe225
  linear_combination -r1882

theorem seg16RStep224IlMul (rho : Nat -> Seg16.F) (r1883 : Seg16.relationRow1883 rho) :
    rho 14458 = seg16RIl225 rho * (rho 14457) := by
  unfold Seg16.relationRow1883 at r1883
  rw [seg16RIl225Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom10 seg16RIlAtom11 seg16RIlAtom12 seg16RIlAtom13 seg16RIlAtom2 seg16RIlAtom3 seg16RIlAtom4 seg16RIlAtom5 seg16RIlAtom6 seg16RIlAtom7 seg16RIlAtom8 seg16RIlAtom9
  linear_combination -r1883

theorem seg16RStep224Acc (rho : Nat -> Seg16.F) :
    seg16RIl224 rho = seg16RIl225 rho + (rho 14457) - (rho 14458) := by
  have hstate : seg16RIl224 rho = seg16RIl225 rho + seg16RIlAtom14 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom14
  ring

theorem seg16RStep224Pe (rho : Nat -> Seg16.F) (r1884 : Seg16.relationRow1884 rho) :
    seg16RPe224 rho = seg16RPe225 rho * rho 14288 := by
  unfold Seg16.relationRow1884 at r1884
  unfold seg16RPe224 seg16RPe225
  linear_combination -r1884

theorem seg16RStep224 (rho : Nat -> Seg16.F) (r1882 : Seg16.relationRow1882 rho) (r1883 : Seg16.relationRow1883 rho) (r1884 : Seg16.relationRow1884 rho) :
    seg16RPe224 rho = seg16RPe225 rho * rho 14288 ∧
    seg16RIl224 rho = seg16RIl225 rho + seg16RPe225 rho * (1 - rho 14288) -
      seg16RIl225 rho * (seg16RPe225 rho * (1 - rho 14288)) := by
  constructor
  · exact seg16RStep224Pe rho r1884
  · rw [seg16RStep224Acc rho, seg16RStep224L rho r1882, seg16RStep224IlMul rho r1883, seg16RStep224L rho r1882]

theorem seg16_r_chunk224 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 225 (seg16RPeState rho 225) (seg16RIlState rho 225) := by
  have htail := seg16_r_chunk223 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1882, r1883, r1884, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 224 ≤ n → n < 225 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 224 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep224 rho r1882 r1883 r1884
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 224 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
