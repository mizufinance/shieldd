import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk229

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep230L (rho : Nat -> Seg16.F) (r1868 : Seg16.relationRow1868 rho) :
    rho 14443 = seg16RPe231 rho * (1 - rho 14294) := by
  unfold Seg16.relationRow1868 at r1868
  unfold seg16RPe231
  linear_combination -r1868

theorem seg16RStep230IlMul (rho : Nat -> Seg16.F) (r1869 : Seg16.relationRow1869 rho) :
    rho 14444 = seg16RIl231 rho * (rho 14443) := by
  unfold Seg16.relationRow1869 at r1869
  rw [seg16RIl231Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom2 seg16RIlAtom3 seg16RIlAtom4 seg16RIlAtom5 seg16RIlAtom6 seg16RIlAtom7 seg16RIlAtom8 seg16RIlAtom9
  linear_combination -r1869

theorem seg16RStep230Acc (rho : Nat -> Seg16.F) :
    seg16RIl230 rho = seg16RIl231 rho + (rho 14443) - (rho 14444) := by
  have hstate : seg16RIl230 rho = seg16RIl231 rho + seg16RIlAtom10 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom10
  ring

theorem seg16RStep230Pe (rho : Nat -> Seg16.F) (r1870 : Seg16.relationRow1870 rho) :
    seg16RPe230 rho = seg16RPe231 rho * rho 14294 := by
  unfold Seg16.relationRow1870 at r1870
  unfold seg16RPe230 seg16RPe231
  linear_combination -r1870

theorem seg16RStep230 (rho : Nat -> Seg16.F) (r1868 : Seg16.relationRow1868 rho) (r1869 : Seg16.relationRow1869 rho) (r1870 : Seg16.relationRow1870 rho) :
    seg16RPe230 rho = seg16RPe231 rho * rho 14294 ∧
    seg16RIl230 rho = seg16RIl231 rho + seg16RPe231 rho * (1 - rho 14294) -
      seg16RIl231 rho * (seg16RPe231 rho * (1 - rho 14294)) := by
  constructor
  · exact seg16RStep230Pe rho r1870
  · rw [seg16RStep230Acc rho, seg16RStep230L rho r1868, seg16RStep230IlMul rho r1869, seg16RStep230L rho r1868]

theorem seg16_r_chunk230 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 231 (seg16RPeState rho 231) (seg16RIlState rho 231) := by
  have htail := seg16_r_chunk229 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1868, r1869, r1870, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 230 ≤ n → n < 231 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 230 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep230 rho r1868 r1869 r1870
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 230 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
