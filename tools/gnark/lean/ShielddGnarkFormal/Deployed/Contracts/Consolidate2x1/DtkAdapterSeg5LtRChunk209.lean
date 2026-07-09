import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk208

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep209L (rho : Nat -> Seg5.F) (r1911 : Seg5.relationRow1911 rho) :
    rho 1609 = seg5RPe210 rho * (1 - rho 1396) := by
  unfold Seg5.relationRow1911 at r1911
  unfold seg5RPe210
  linear_combination -r1911

theorem seg5RStep209IlMul (rho : Nat -> Seg5.F) (r1912 : Seg5.relationRow1912 rho) :
    rho 1610 = seg5RIl210 rho * (rho 1609) := by
  unfold Seg5.relationRow1912 at r1912
  rw [seg5RStep209IlLc rho] at r1912
  linear_combination -r1912

theorem seg5RStep209Acc (rho : Nat -> Seg5.F) :
    seg5RIl209 rho = seg5RIl210 rho + (rho 1609) - (rho 1610) := by
  have hstate : seg5RIl209 rho = seg5RIl210 rho + seg5RIlAtom22 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom22
  ring

theorem seg5RStep209Pe (rho : Nat -> Seg5.F) (r1913 : Seg5.relationRow1913 rho) :
    seg5RPe209 rho = seg5RPe210 rho * rho 1396 := by
  unfold Seg5.relationRow1913 at r1913
  unfold seg5RPe209 seg5RPe210
  linear_combination -r1913

theorem seg5RStep209 (rho : Nat -> Seg5.F) (r1911 : Seg5.relationRow1911 rho) (r1912 : Seg5.relationRow1912 rho) (r1913 : Seg5.relationRow1913 rho) :
    seg5RPe209 rho = seg5RPe210 rho * rho 1396 ∧
    seg5RIl209 rho = seg5RIl210 rho + seg5RPe210 rho * (1 - rho 1396) -
      seg5RIl210 rho * (seg5RPe210 rho * (1 - rho 1396)) := by
  constructor
  · exact seg5RStep209Pe rho r1913
  · rw [seg5RStep209Acc rho, seg5RStep209L rho r1911, seg5RStep209IlMul rho r1912, seg5RStep209L rho r1911]

theorem seg5_r_chunk209 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 210 (seg5RPeState rho 210) (seg5RIlState rho 210) := by
  have htail := seg5_r_chunk208 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1911, r1912, r1913, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 209 ≤ n → n < 210 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 209 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep209 rho r1911 r1912 r1913
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 209 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
