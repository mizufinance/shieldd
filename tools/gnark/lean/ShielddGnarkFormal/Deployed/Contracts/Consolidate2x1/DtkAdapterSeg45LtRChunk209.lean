import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk208

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep209L (rho : Nat -> Seg45.F) (r1911 : Seg45.relationRow1911 rho) :
    rho 40142 = seg45RPe210 rho * (1 - rho 39929) := by
  unfold Seg45.relationRow1911 at r1911
  unfold seg45RPe210
  linear_combination -r1911

theorem seg45RStep209IlMul (rho : Nat -> Seg45.F) (r1912 : Seg45.relationRow1912 rho) :
    rho 40143 = seg45RIl210 rho * (rho 40142) := by
  unfold Seg45.relationRow1912 at r1912
  rw [seg45RStep209IlLc rho] at r1912
  linear_combination -r1912

theorem seg45RStep209Acc (rho : Nat -> Seg45.F) :
    seg45RIl209 rho = seg45RIl210 rho + (rho 40142) - (rho 40143) := by
  have hstate : seg45RIl209 rho = seg45RIl210 rho + seg45RIlAtom22 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom22
  ring

theorem seg45RStep209Pe (rho : Nat -> Seg45.F) (r1913 : Seg45.relationRow1913 rho) :
    seg45RPe209 rho = seg45RPe210 rho * rho 39929 := by
  unfold Seg45.relationRow1913 at r1913
  unfold seg45RPe209 seg45RPe210
  linear_combination -r1913

theorem seg45RStep209 (rho : Nat -> Seg45.F) (r1911 : Seg45.relationRow1911 rho) (r1912 : Seg45.relationRow1912 rho) (r1913 : Seg45.relationRow1913 rho) :
    seg45RPe209 rho = seg45RPe210 rho * rho 39929 ∧
    seg45RIl209 rho = seg45RIl210 rho + seg45RPe210 rho * (1 - rho 39929) -
      seg45RIl210 rho * (seg45RPe210 rho * (1 - rho 39929)) := by
  constructor
  · exact seg45RStep209Pe rho r1913
  · rw [seg45RStep209Acc rho, seg45RStep209L rho r1911, seg45RStep209IlMul rho r1912, seg45RStep209L rho r1911]

theorem seg45_r_chunk209 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 210 (seg45RPeState rho 210) (seg45RIlState rho 210) := by
  have htail := seg45_r_chunk208 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1911, r1912, r1913, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 209 ≤ n → n < 210 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 209 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep209 rho r1911 r1912 r1913
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 209 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
