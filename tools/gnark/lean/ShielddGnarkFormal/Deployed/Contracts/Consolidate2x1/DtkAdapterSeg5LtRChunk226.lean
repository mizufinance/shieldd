import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk225

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep226L (rho : Nat -> Seg5.F) (r1876 : Seg5.relationRow1876 rho) :
    rho 1574 = seg5RPe227 rho * (1 - rho 1413) := by
  unfold Seg5.relationRow1876 at r1876
  unfold seg5RPe227
  linear_combination -r1876

theorem seg5RStep226IlMul (rho : Nat -> Seg5.F) (r1877 : Seg5.relationRow1877 rho) :
    rho 1575 = seg5RIl227 rho * (rho 1574) := by
  unfold Seg5.relationRow1877 at r1877
  rw [seg5RIl227Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom10 seg5RIlAtom11 seg5RIlAtom2 seg5RIlAtom3 seg5RIlAtom4 seg5RIlAtom5 seg5RIlAtom6 seg5RIlAtom7 seg5RIlAtom8 seg5RIlAtom9
  linear_combination -r1877

theorem seg5RStep226Acc (rho : Nat -> Seg5.F) :
    seg5RIl226 rho = seg5RIl227 rho + (rho 1574) - (rho 1575) := by
  have hstate : seg5RIl226 rho = seg5RIl227 rho + seg5RIlAtom12 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom12
  ring

theorem seg5RStep226Pe (rho : Nat -> Seg5.F) (r1878 : Seg5.relationRow1878 rho) :
    seg5RPe226 rho = seg5RPe227 rho * rho 1413 := by
  unfold Seg5.relationRow1878 at r1878
  unfold seg5RPe226 seg5RPe227
  linear_combination -r1878

theorem seg5RStep226 (rho : Nat -> Seg5.F) (r1876 : Seg5.relationRow1876 rho) (r1877 : Seg5.relationRow1877 rho) (r1878 : Seg5.relationRow1878 rho) :
    seg5RPe226 rho = seg5RPe227 rho * rho 1413 ∧
    seg5RIl226 rho = seg5RIl227 rho + seg5RPe227 rho * (1 - rho 1413) -
      seg5RIl227 rho * (seg5RPe227 rho * (1 - rho 1413)) := by
  constructor
  · exact seg5RStep226Pe rho r1878
  · rw [seg5RStep226Acc rho, seg5RStep226L rho r1876, seg5RStep226IlMul rho r1877, seg5RStep226L rho r1876]

theorem seg5_r_chunk226 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 227 (seg5RPeState rho 227) (seg5RIlState rho 227) := by
  have htail := seg5_r_chunk225 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1876, r1877, r1878, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 226 ≤ n → n < 227 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 226 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep226 rho r1876 r1877 r1878
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 226 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
