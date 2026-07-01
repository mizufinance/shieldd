import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk197

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep198L (rho : Nat -> Seg16.F) (r1932 : Seg16.relationRow1932 rho) :
    rho 14507 = seg16RPe199 rho * (1 - rho 14262) := by
  unfold Seg16.relationRow1932 at r1932
  unfold seg16RPe199
  linear_combination -r1932

theorem seg16RStep198IlMul (rho : Nat -> Seg16.F) (r1933 : Seg16.relationRow1933 rho) :
    rho 14508 = seg16RIl199 rho * (rho 14507) := by
  unfold Seg16.relationRow1933 at r1933
  rw [seg16RStep198IlLc rho] at r1933
  linear_combination -r1933

theorem seg16RStep198Acc (rho : Nat -> Seg16.F) :
    seg16RIl198 rho = seg16RIl199 rho + (rho 14507) - (rho 14508) := by
  have hstate : seg16RIl198 rho = seg16RIl199 rho + seg16RIlAtom27 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom27
  ring

theorem seg16RStep198Pe (rho : Nat -> Seg16.F) (r1934 : Seg16.relationRow1934 rho) :
    seg16RPe198 rho = seg16RPe199 rho * rho 14262 := by
  unfold Seg16.relationRow1934 at r1934
  unfold seg16RPe198 seg16RPe199
  linear_combination -r1934

theorem seg16RStep198 (rho : Nat -> Seg16.F) (r1932 : Seg16.relationRow1932 rho) (r1933 : Seg16.relationRow1933 rho) (r1934 : Seg16.relationRow1934 rho) :
    seg16RPe198 rho = seg16RPe199 rho * rho 14262 ∧
    seg16RIl198 rho = seg16RIl199 rho + seg16RPe199 rho * (1 - rho 14262) -
      seg16RIl199 rho * (seg16RPe199 rho * (1 - rho 14262)) := by
  constructor
  · exact seg16RStep198Pe rho r1934
  · rw [seg16RStep198Acc rho, seg16RStep198L rho r1932, seg16RStep198IlMul rho r1933, seg16RStep198L rho r1932]

theorem seg16_r_chunk198 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 199 (seg16RPeState rho 199) (seg16RIlState rho 199) := by
  have htail := seg16_r_chunk197 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r1932, r1933, r1934, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 198 ≤ n → n < 199 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 198 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep198 rho r1932 r1933 r1934
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 198 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
