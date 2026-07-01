import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk224

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep225L (rho : Nat -> Seg45.F) (r1879 : Seg45.relationRow1879 rho) :
    rho 40110 = seg45RPe226 rho * (1 - rho 39945) := by
  unfold Seg45.relationRow1879 at r1879
  unfold seg45RPe226
  linear_combination -r1879

theorem seg45RStep225IlMul (rho : Nat -> Seg45.F) (r1880 : Seg45.relationRow1880 rho) :
    rho 40111 = seg45RIl226 rho * (rho 40110) := by
  unfold Seg45.relationRow1880 at r1880
  rw [seg45RIl226Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom10 seg45RIlAtom11 seg45RIlAtom12 seg45RIlAtom2 seg45RIlAtom3 seg45RIlAtom4 seg45RIlAtom5 seg45RIlAtom6 seg45RIlAtom7 seg45RIlAtom8 seg45RIlAtom9
  linear_combination -r1880

theorem seg45RStep225Acc (rho : Nat -> Seg45.F) :
    seg45RIl225 rho = seg45RIl226 rho + (rho 40110) - (rho 40111) := by
  have hstate : seg45RIl225 rho = seg45RIl226 rho + seg45RIlAtom13 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom13
  ring

theorem seg45RStep225Pe (rho : Nat -> Seg45.F) (r1881 : Seg45.relationRow1881 rho) :
    seg45RPe225 rho = seg45RPe226 rho * rho 39945 := by
  unfold Seg45.relationRow1881 at r1881
  unfold seg45RPe225 seg45RPe226
  linear_combination -r1881

theorem seg45RStep225 (rho : Nat -> Seg45.F) (r1879 : Seg45.relationRow1879 rho) (r1880 : Seg45.relationRow1880 rho) (r1881 : Seg45.relationRow1881 rho) :
    seg45RPe225 rho = seg45RPe226 rho * rho 39945 ∧
    seg45RIl225 rho = seg45RIl226 rho + seg45RPe226 rho * (1 - rho 39945) -
      seg45RIl226 rho * (seg45RPe226 rho * (1 - rho 39945)) := by
  constructor
  · exact seg45RStep225Pe rho r1881
  · rw [seg45RStep225Acc rho, seg45RStep225L rho r1879, seg45RStep225IlMul rho r1880, seg45RStep225L rho r1879]

theorem seg45_r_chunk225 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 226 (seg45RPeState rho 226) (seg45RIlState rho 226) := by
  have htail := seg45_r_chunk224 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1879, r1880, r1881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 225 ≤ n → n < 226 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 225 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep225 rho r1879 r1880 r1881
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 225 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
