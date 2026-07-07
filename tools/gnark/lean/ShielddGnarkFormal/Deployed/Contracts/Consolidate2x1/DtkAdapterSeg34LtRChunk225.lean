import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk224

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep225L (rho : Nat -> Seg34.F) (r1879 : Seg34.relationRow1879 rho) :
    rho 33154 = seg34RPe226 rho * (1 - rho 32989) := by
  unfold Seg34.relationRow1879 at r1879
  unfold seg34RPe226
  linear_combination -r1879

theorem seg34RStep225IlMul (rho : Nat -> Seg34.F) (r1880 : Seg34.relationRow1880 rho) :
    rho 33155 = seg34RIl226 rho * (rho 33154) := by
  unfold Seg34.relationRow1880 at r1880
  rw [seg34RIl226Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1 seg34RIlAtom10 seg34RIlAtom11 seg34RIlAtom12 seg34RIlAtom2 seg34RIlAtom3 seg34RIlAtom4 seg34RIlAtom5 seg34RIlAtom6 seg34RIlAtom7 seg34RIlAtom8 seg34RIlAtom9
  linear_combination -r1880

theorem seg34RStep225Acc (rho : Nat -> Seg34.F) :
    seg34RIl225 rho = seg34RIl226 rho + (rho 33154) - (rho 33155) := by
  have hstate : seg34RIl225 rho = seg34RIl226 rho + seg34RIlAtom13 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom13
  ring

theorem seg34RStep225Pe (rho : Nat -> Seg34.F) (r1881 : Seg34.relationRow1881 rho) :
    seg34RPe225 rho = seg34RPe226 rho * rho 32989 := by
  unfold Seg34.relationRow1881 at r1881
  unfold seg34RPe225 seg34RPe226
  linear_combination -r1881

theorem seg34RStep225 (rho : Nat -> Seg34.F) (r1879 : Seg34.relationRow1879 rho) (r1880 : Seg34.relationRow1880 rho) (r1881 : Seg34.relationRow1881 rho) :
    seg34RPe225 rho = seg34RPe226 rho * rho 32989 ∧
    seg34RIl225 rho = seg34RIl226 rho + seg34RPe226 rho * (1 - rho 32989) -
      seg34RIl226 rho * (seg34RPe226 rho * (1 - rho 32989)) := by
  constructor
  · exact seg34RStep225Pe rho r1881
  · rw [seg34RStep225Acc rho, seg34RStep225L rho r1879, seg34RStep225IlMul rho r1880, seg34RStep225L rho r1879]

theorem seg34_r_chunk225 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 226 (seg34RPeState rho 226) (seg34RIlState rho 226) := by
  have htail := seg34_r_chunk224 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1879, r1880, r1881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 225 ≤ n → n < 226 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 225 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep225 rho r1879 r1880 r1881
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 225 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
