import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk202

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep203L (rho : Nat -> Seg45.F) (r1923 : Seg45.relationRow1923 rho) :
    rho 40154 = seg45RPe204 rho * (1 - rho 39923) := by
  unfold Seg45.relationRow1923 at r1923
  unfold seg45RPe204
  linear_combination -r1923

theorem seg45RStep203IlMul (rho : Nat -> Seg45.F) (r1924 : Seg45.relationRow1924 rho) :
    rho 40155 = seg45RIl204 rho * (rho 40154) := by
  unfold Seg45.relationRow1924 at r1924
  rw [seg45RStep203IlLc rho] at r1924
  linear_combination -r1924

theorem seg45RStep203Acc (rho : Nat -> Seg45.F) :
    seg45RIl203 rho = seg45RIl204 rho + (rho 40154) - (rho 40155) := by
  have hstate : seg45RIl203 rho = seg45RIl204 rho + seg45RIlAtom25 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom25
  ring

theorem seg45RStep203Pe (rho : Nat -> Seg45.F) (r1925 : Seg45.relationRow1925 rho) :
    seg45RPe203 rho = seg45RPe204 rho * rho 39923 := by
  unfold Seg45.relationRow1925 at r1925
  unfold seg45RPe203 seg45RPe204
  linear_combination -r1925

theorem seg45RStep203 (rho : Nat -> Seg45.F) (r1923 : Seg45.relationRow1923 rho) (r1924 : Seg45.relationRow1924 rho) (r1925 : Seg45.relationRow1925 rho) :
    seg45RPe203 rho = seg45RPe204 rho * rho 39923 ∧
    seg45RIl203 rho = seg45RIl204 rho + seg45RPe204 rho * (1 - rho 39923) -
      seg45RIl204 rho * (seg45RPe204 rho * (1 - rho 39923)) := by
  constructor
  · exact seg45RStep203Pe rho r1925
  · rw [seg45RStep203Acc rho, seg45RStep203L rho r1923, seg45RStep203IlMul rho r1924, seg45RStep203L rho r1923]

theorem seg45_r_chunk203 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 204 (seg45RPeState rho 204) (seg45RIlState rho 204) := by
  have htail := seg45_r_chunk202 rho h k hq4
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
  rcases p24 with ⟨_, _, _, r1923, r1924, r1925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 203 ≤ n → n < 204 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 203 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep203 rho r1923 r1924 r1925
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 203 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
