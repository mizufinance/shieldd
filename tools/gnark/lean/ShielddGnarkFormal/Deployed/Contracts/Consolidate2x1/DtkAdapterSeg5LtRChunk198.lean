import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk197

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep198L (rho : Nat -> Seg5.F) (r1932 : Seg5.relationRow1932 rho) :
    rho 1630 = seg5RPe199 rho * (1 - rho 1385) := by
  unfold Seg5.relationRow1932 at r1932
  unfold seg5RPe199
  linear_combination -r1932

theorem seg5RStep198IlMul (rho : Nat -> Seg5.F) (r1933 : Seg5.relationRow1933 rho) :
    rho 1631 = seg5RIl199 rho * (rho 1630) := by
  unfold Seg5.relationRow1933 at r1933
  rw [seg5RStep198IlLc rho] at r1933
  linear_combination -r1933

theorem seg5RStep198Acc (rho : Nat -> Seg5.F) :
    seg5RIl198 rho = seg5RIl199 rho + (rho 1630) - (rho 1631) := by
  have hstate : seg5RIl198 rho = seg5RIl199 rho + seg5RIlAtom27 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom27
  ring

theorem seg5RStep198Pe (rho : Nat -> Seg5.F) (r1934 : Seg5.relationRow1934 rho) :
    seg5RPe198 rho = seg5RPe199 rho * rho 1385 := by
  unfold Seg5.relationRow1934 at r1934
  unfold seg5RPe198 seg5RPe199
  linear_combination -r1934

theorem seg5RStep198 (rho : Nat -> Seg5.F) (r1932 : Seg5.relationRow1932 rho) (r1933 : Seg5.relationRow1933 rho) (r1934 : Seg5.relationRow1934 rho) :
    seg5RPe198 rho = seg5RPe199 rho * rho 1385 ∧
    seg5RIl198 rho = seg5RIl199 rho + seg5RPe199 rho * (1 - rho 1385) -
      seg5RIl199 rho * (seg5RPe199 rho * (1 - rho 1385)) := by
  constructor
  · exact seg5RStep198Pe rho r1934
  · rw [seg5RStep198Acc rho, seg5RStep198L rho r1932, seg5RStep198IlMul rho r1933, seg5RStep198L rho r1932]

theorem seg5_r_chunk198 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 199 (seg5RPeState rho 199) (seg5RIlState rho 199) := by
  have htail := seg5_r_chunk197 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r1932, r1933, r1934, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 198 ≤ n → n < 199 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 198 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep198 rho r1932 r1933 r1934
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 198 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
