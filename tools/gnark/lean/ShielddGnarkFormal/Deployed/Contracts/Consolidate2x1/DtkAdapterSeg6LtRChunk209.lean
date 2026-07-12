import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk208

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep209L (rho : Nat -> Seg6.F) (r1911 : Seg6.relationRow1911 rho) :
    rho 2312 = seg6RPe210 rho * (1 - rho 2099) := by
  unfold Seg6.relationRow1911 at r1911
  unfold seg6RPe210
  linear_combination -r1911

theorem seg6RStep209IlMul (rho : Nat -> Seg6.F) (r1912 : Seg6.relationRow1912 rho) :
    rho 2313 = seg6RIl210 rho * (rho 2312) := by
  unfold Seg6.relationRow1912 at r1912
  rw [seg6RStep209IlLc rho] at r1912
  linear_combination -r1912

theorem seg6RStep209Acc (rho : Nat -> Seg6.F) :
    seg6RIl209 rho = seg6RIl210 rho + (rho 2312) - (rho 2313) := by
  have hstate : seg6RIl209 rho = seg6RIl210 rho + seg6RIlAtom22 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom22
  ring

theorem seg6RStep209Pe (rho : Nat -> Seg6.F) (r1913 : Seg6.relationRow1913 rho) :
    seg6RPe209 rho = seg6RPe210 rho * rho 2099 := by
  unfold Seg6.relationRow1913 at r1913
  unfold seg6RPe209 seg6RPe210
  linear_combination -r1913

theorem seg6RStep209 (rho : Nat -> Seg6.F) (r1911 : Seg6.relationRow1911 rho) (r1912 : Seg6.relationRow1912 rho) (r1913 : Seg6.relationRow1913 rho) :
    seg6RPe209 rho = seg6RPe210 rho * rho 2099 ∧
    seg6RIl209 rho = seg6RIl210 rho + seg6RPe210 rho * (1 - rho 2099) -
      seg6RIl210 rho * (seg6RPe210 rho * (1 - rho 2099)) := by
  constructor
  · exact seg6RStep209Pe rho r1913
  · rw [seg6RStep209Acc rho, seg6RStep209L rho r1911, seg6RStep209IlMul rho r1912, seg6RStep209L rho r1911]

theorem seg6_r_chunk209 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 210 (seg6RPeState rho 210) (seg6RIlState rho 210) := by
  have htail := seg6_r_chunk208 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1911, r1912, r1913, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 209 ≤ n → n < 210 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 209 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep209 rho r1911 r1912 r1913
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 209 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
