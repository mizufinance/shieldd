import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk197

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep198L (rho : Nat -> Seg6.F) (r1932 : Seg6.relationRow1932 rho) :
    rho 2333 = seg6RPe199 rho * (1 - rho 2088) := by
  unfold Seg6.relationRow1932 at r1932
  unfold seg6RPe199
  linear_combination -r1932

theorem seg6RStep198IlMul (rho : Nat -> Seg6.F) (r1933 : Seg6.relationRow1933 rho) :
    rho 2334 = seg6RIl199 rho * (rho 2333) := by
  unfold Seg6.relationRow1933 at r1933
  rw [seg6RStep198IlLc rho] at r1933
  linear_combination -r1933

theorem seg6RStep198Acc (rho : Nat -> Seg6.F) :
    seg6RIl198 rho = seg6RIl199 rho + (rho 2333) - (rho 2334) := by
  have hstate : seg6RIl198 rho = seg6RIl199 rho + seg6RIlAtom27 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom27
  ring

theorem seg6RStep198Pe (rho : Nat -> Seg6.F) (r1934 : Seg6.relationRow1934 rho) :
    seg6RPe198 rho = seg6RPe199 rho * rho 2088 := by
  unfold Seg6.relationRow1934 at r1934
  unfold seg6RPe198 seg6RPe199
  linear_combination -r1934

theorem seg6RStep198 (rho : Nat -> Seg6.F) (r1932 : Seg6.relationRow1932 rho) (r1933 : Seg6.relationRow1933 rho) (r1934 : Seg6.relationRow1934 rho) :
    seg6RPe198 rho = seg6RPe199 rho * rho 2088 ∧
    seg6RIl198 rho = seg6RIl199 rho + seg6RPe199 rho * (1 - rho 2088) -
      seg6RIl199 rho * (seg6RPe199 rho * (1 - rho 2088)) := by
  constructor
  · exact seg6RStep198Pe rho r1934
  · rw [seg6RStep198Acc rho, seg6RStep198L rho r1932, seg6RStep198IlMul rho r1933, seg6RStep198L rho r1932]

theorem seg6_r_chunk198 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 199 (seg6RPeState rho 199) (seg6RIlState rho 199) := by
  have htail := seg6_r_chunk197 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r1932, r1933, r1934, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 198 ≤ n → n < 199 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 198 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep198 rho r1932 r1933 r1934
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 198 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
