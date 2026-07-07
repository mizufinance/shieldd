import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk225

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep226L (rho : Nat -> Seg45.F) (r1876 : Seg45.relationRow1876 rho) :
    rho 40107 = seg45RPe227 rho * (1 - rho 39946) := by
  unfold Seg45.relationRow1876 at r1876
  unfold seg45RPe227
  linear_combination -r1876

theorem seg45RStep226IlMul (rho : Nat -> Seg45.F) (r1877 : Seg45.relationRow1877 rho) :
    rho 40108 = seg45RIl227 rho * (rho 40107) := by
  unfold Seg45.relationRow1877 at r1877
  rw [seg45RIl227Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom10 seg45RIlAtom11 seg45RIlAtom2 seg45RIlAtom3 seg45RIlAtom4 seg45RIlAtom5 seg45RIlAtom6 seg45RIlAtom7 seg45RIlAtom8 seg45RIlAtom9
  linear_combination -r1877

theorem seg45RStep226Acc (rho : Nat -> Seg45.F) :
    seg45RIl226 rho = seg45RIl227 rho + (rho 40107) - (rho 40108) := by
  have hstate : seg45RIl226 rho = seg45RIl227 rho + seg45RIlAtom12 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom12
  ring

theorem seg45RStep226Pe (rho : Nat -> Seg45.F) (r1878 : Seg45.relationRow1878 rho) :
    seg45RPe226 rho = seg45RPe227 rho * rho 39946 := by
  unfold Seg45.relationRow1878 at r1878
  unfold seg45RPe226 seg45RPe227
  linear_combination -r1878

theorem seg45RStep226 (rho : Nat -> Seg45.F) (r1876 : Seg45.relationRow1876 rho) (r1877 : Seg45.relationRow1877 rho) (r1878 : Seg45.relationRow1878 rho) :
    seg45RPe226 rho = seg45RPe227 rho * rho 39946 ∧
    seg45RIl226 rho = seg45RIl227 rho + seg45RPe227 rho * (1 - rho 39946) -
      seg45RIl227 rho * (seg45RPe227 rho * (1 - rho 39946)) := by
  constructor
  · exact seg45RStep226Pe rho r1878
  · rw [seg45RStep226Acc rho, seg45RStep226L rho r1876, seg45RStep226IlMul rho r1877, seg45RStep226L rho r1876]

theorem seg45_r_chunk226 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 227 (seg45RPeState rho 227) (seg45RIlState rho 227) := by
  have htail := seg45_r_chunk225 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1876, r1877, r1878, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 226 ≤ n → n < 227 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 226 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep226 rho r1876 r1877 r1878
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 226 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
