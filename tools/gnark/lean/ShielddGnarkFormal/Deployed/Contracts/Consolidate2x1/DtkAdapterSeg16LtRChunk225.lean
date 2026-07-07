import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk224

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep225L (rho : Nat -> Seg16.F) (r1879 : Seg16.relationRow1879 rho) :
    rho 14454 = seg16RPe226 rho * (1 - rho 14289) := by
  unfold Seg16.relationRow1879 at r1879
  unfold seg16RPe226
  linear_combination -r1879

theorem seg16RStep225IlMul (rho : Nat -> Seg16.F) (r1880 : Seg16.relationRow1880 rho) :
    rho 14455 = seg16RIl226 rho * (rho 14454) := by
  unfold Seg16.relationRow1880 at r1880
  rw [seg16RIl226Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom10 seg16RIlAtom11 seg16RIlAtom12 seg16RIlAtom2 seg16RIlAtom3 seg16RIlAtom4 seg16RIlAtom5 seg16RIlAtom6 seg16RIlAtom7 seg16RIlAtom8 seg16RIlAtom9
  linear_combination -r1880

theorem seg16RStep225Acc (rho : Nat -> Seg16.F) :
    seg16RIl225 rho = seg16RIl226 rho + (rho 14454) - (rho 14455) := by
  have hstate : seg16RIl225 rho = seg16RIl226 rho + seg16RIlAtom13 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom13
  ring

theorem seg16RStep225Pe (rho : Nat -> Seg16.F) (r1881 : Seg16.relationRow1881 rho) :
    seg16RPe225 rho = seg16RPe226 rho * rho 14289 := by
  unfold Seg16.relationRow1881 at r1881
  unfold seg16RPe225 seg16RPe226
  linear_combination -r1881

theorem seg16RStep225 (rho : Nat -> Seg16.F) (r1879 : Seg16.relationRow1879 rho) (r1880 : Seg16.relationRow1880 rho) (r1881 : Seg16.relationRow1881 rho) :
    seg16RPe225 rho = seg16RPe226 rho * rho 14289 ∧
    seg16RIl225 rho = seg16RIl226 rho + seg16RPe226 rho * (1 - rho 14289) -
      seg16RIl226 rho * (seg16RPe226 rho * (1 - rho 14289)) := by
  constructor
  · exact seg16RStep225Pe rho r1881
  · rw [seg16RStep225Acc rho, seg16RStep225L rho r1879, seg16RStep225IlMul rho r1880, seg16RStep225L rho r1879]

theorem seg16_r_chunk225 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 226 (seg16RPeState rho 226) (seg16RIlState rho 226) := by
  have htail := seg16_r_chunk224 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1879, r1880, r1881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 225 ≤ n → n < 226 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 225 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep225 rho r1879 r1880 r1881
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 225 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
