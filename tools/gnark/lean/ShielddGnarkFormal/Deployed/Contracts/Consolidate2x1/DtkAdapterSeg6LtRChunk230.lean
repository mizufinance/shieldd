import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk229

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep230L (rho : Nat -> Seg6.F) (r1868 : Seg6.relationRow1868 rho) :
    rho 2269 = seg6RPe231 rho * (1 - rho 2120) := by
  unfold Seg6.relationRow1868 at r1868
  unfold seg6RPe231
  linear_combination -r1868

theorem seg6RStep230IlMul (rho : Nat -> Seg6.F) (r1869 : Seg6.relationRow1869 rho) :
    rho 2270 = seg6RIl231 rho * (rho 2269) := by
  unfold Seg6.relationRow1869 at r1869
  rw [seg6RIl231Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom2 seg6RIlAtom3 seg6RIlAtom4 seg6RIlAtom5 seg6RIlAtom6 seg6RIlAtom7 seg6RIlAtom8 seg6RIlAtom9
  linear_combination -r1869

theorem seg6RStep230Acc (rho : Nat -> Seg6.F) :
    seg6RIl230 rho = seg6RIl231 rho + (rho 2269) - (rho 2270) := by
  have hstate : seg6RIl230 rho = seg6RIl231 rho + seg6RIlAtom10 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom10
  ring

theorem seg6RStep230Pe (rho : Nat -> Seg6.F) (r1870 : Seg6.relationRow1870 rho) :
    seg6RPe230 rho = seg6RPe231 rho * rho 2120 := by
  unfold Seg6.relationRow1870 at r1870
  unfold seg6RPe230 seg6RPe231
  linear_combination -r1870

theorem seg6RStep230 (rho : Nat -> Seg6.F) (r1868 : Seg6.relationRow1868 rho) (r1869 : Seg6.relationRow1869 rho) (r1870 : Seg6.relationRow1870 rho) :
    seg6RPe230 rho = seg6RPe231 rho * rho 2120 ∧
    seg6RIl230 rho = seg6RIl231 rho + seg6RPe231 rho * (1 - rho 2120) -
      seg6RIl231 rho * (seg6RPe231 rho * (1 - rho 2120)) := by
  constructor
  · exact seg6RStep230Pe rho r1870
  · rw [seg6RStep230Acc rho, seg6RStep230L rho r1868, seg6RStep230IlMul rho r1869, seg6RStep230L rho r1868]

theorem seg6_r_chunk230 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 231 (seg6RPeState rho 231) (seg6RIlState rho 231) := by
  have htail := seg6_r_chunk229 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1868, r1869, r1870, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 230 ≤ n → n < 231 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 230 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep230 rho r1868 r1869 r1870
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 230 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
