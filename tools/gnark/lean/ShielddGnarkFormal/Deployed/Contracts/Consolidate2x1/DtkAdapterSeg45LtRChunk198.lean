import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk197

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep198L (rho : Nat -> Seg45.F) (r1932 : Seg45.relationRow1932 rho) :
    rho 40163 = seg45RPe199 rho * (1 - rho 39918) := by
  unfold Seg45.relationRow1932 at r1932
  unfold seg45RPe199
  linear_combination -r1932

theorem seg45RStep198IlMul (rho : Nat -> Seg45.F) (r1933 : Seg45.relationRow1933 rho) :
    rho 40164 = seg45RIl199 rho * (rho 40163) := by
  unfold Seg45.relationRow1933 at r1933
  rw [seg45RStep198IlLc rho] at r1933
  linear_combination -r1933

theorem seg45RStep198Acc (rho : Nat -> Seg45.F) :
    seg45RIl198 rho = seg45RIl199 rho + (rho 40163) - (rho 40164) := by
  have hstate : seg45RIl198 rho = seg45RIl199 rho + seg45RIlAtom27 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom27
  ring

theorem seg45RStep198Pe (rho : Nat -> Seg45.F) (r1934 : Seg45.relationRow1934 rho) :
    seg45RPe198 rho = seg45RPe199 rho * rho 39918 := by
  unfold Seg45.relationRow1934 at r1934
  unfold seg45RPe198 seg45RPe199
  linear_combination -r1934

theorem seg45RStep198 (rho : Nat -> Seg45.F) (r1932 : Seg45.relationRow1932 rho) (r1933 : Seg45.relationRow1933 rho) (r1934 : Seg45.relationRow1934 rho) :
    seg45RPe198 rho = seg45RPe199 rho * rho 39918 ∧
    seg45RIl198 rho = seg45RIl199 rho + seg45RPe199 rho * (1 - rho 39918) -
      seg45RIl199 rho * (seg45RPe199 rho * (1 - rho 39918)) := by
  constructor
  · exact seg45RStep198Pe rho r1934
  · rw [seg45RStep198Acc rho, seg45RStep198L rho r1932, seg45RStep198IlMul rho r1933, seg45RStep198L rho r1932]

theorem seg45_r_chunk198 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 199 (seg45RPeState rho 199) (seg45RIlState rho 199) := by
  have htail := seg45_r_chunk197 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r1932, r1933, r1934, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 198 ≤ n → n < 199 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 198 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep198 rho r1932 r1933 r1934
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 198 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
