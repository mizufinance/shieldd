import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk224

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep225L (rho : Nat -> Seg5.F) (r1879 : Seg5.relationRow1879 rho) :
    rho 1577 = seg5RPe226 rho * (1 - rho 1412) := by
  unfold Seg5.relationRow1879 at r1879
  unfold seg5RPe226
  linear_combination -r1879

theorem seg5RStep225IlMul (rho : Nat -> Seg5.F) (r1880 : Seg5.relationRow1880 rho) :
    rho 1578 = seg5RIl226 rho * (rho 1577) := by
  unfold Seg5.relationRow1880 at r1880
  rw [seg5RIl226Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom10 seg5RIlAtom11 seg5RIlAtom12 seg5RIlAtom2 seg5RIlAtom3 seg5RIlAtom4 seg5RIlAtom5 seg5RIlAtom6 seg5RIlAtom7 seg5RIlAtom8 seg5RIlAtom9
  linear_combination -r1880

theorem seg5RStep225Acc (rho : Nat -> Seg5.F) :
    seg5RIl225 rho = seg5RIl226 rho + (rho 1577) - (rho 1578) := by
  have hstate : seg5RIl225 rho = seg5RIl226 rho + seg5RIlAtom13 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom13
  ring

theorem seg5RStep225Pe (rho : Nat -> Seg5.F) (r1881 : Seg5.relationRow1881 rho) :
    seg5RPe225 rho = seg5RPe226 rho * rho 1412 := by
  unfold Seg5.relationRow1881 at r1881
  unfold seg5RPe225 seg5RPe226
  linear_combination -r1881

theorem seg5RStep225 (rho : Nat -> Seg5.F) (r1879 : Seg5.relationRow1879 rho) (r1880 : Seg5.relationRow1880 rho) (r1881 : Seg5.relationRow1881 rho) :
    seg5RPe225 rho = seg5RPe226 rho * rho 1412 ∧
    seg5RIl225 rho = seg5RIl226 rho + seg5RPe226 rho * (1 - rho 1412) -
      seg5RIl226 rho * (seg5RPe226 rho * (1 - rho 1412)) := by
  constructor
  · exact seg5RStep225Pe rho r1881
  · rw [seg5RStep225Acc rho, seg5RStep225L rho r1879, seg5RStep225IlMul rho r1880, seg5RStep225L rho r1879]

theorem seg5_r_chunk225 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 226 (seg5RPeState rho 226) (seg5RIlState rho 226) := by
  have htail := seg5_r_chunk224 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1879, r1880, r1881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 225 ≤ n → n < 226 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 225 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep225 rho r1879 r1880 r1881
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 225 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
