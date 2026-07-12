import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk120

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep121L (rho : Nat -> Seg6.F) (r2075 : Seg6.relationRow2075 rho) :
    rho 2476 = seg6RPe122 rho * (1 - rho 2011) := by
  unfold Seg6.relationRow2075 at r2075
  unfold seg6RPe122
  linear_combination -r2075

theorem seg6RStep121IlMul (rho : Nat -> Seg6.F) (r2076 : Seg6.relationRow2076 rho) :
    rho 2477 = seg6RIl122 rho * (rho 2476) := by
  unfold Seg6.relationRow2076 at r2076
  rw [seg6RStep121IlLc rho] at r2076
  linear_combination -r2076

theorem seg6RStep121Acc (rho : Nat -> Seg6.F) :
    seg6RIl121 rho = seg6RIl122 rho + (rho 2476) - (rho 2477) := by
  have hstate : seg6RIl121 rho = seg6RIl122 rho + seg6RIlAtom62 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom62
  ring

theorem seg6RStep121Pe (rho : Nat -> Seg6.F) (r2077 : Seg6.relationRow2077 rho) :
    seg6RPe121 rho = seg6RPe122 rho * rho 2011 := by
  unfold Seg6.relationRow2077 at r2077
  unfold seg6RPe121 seg6RPe122
  linear_combination -r2077

theorem seg6RStep121 (rho : Nat -> Seg6.F) (r2075 : Seg6.relationRow2075 rho) (r2076 : Seg6.relationRow2076 rho) (r2077 : Seg6.relationRow2077 rho) :
    seg6RPe121 rho = seg6RPe122 rho * rho 2011 ∧
    seg6RIl121 rho = seg6RIl122 rho + seg6RPe122 rho * (1 - rho 2011) -
      seg6RIl122 rho * (seg6RPe122 rho * (1 - rho 2011)) := by
  constructor
  · exact seg6RStep121Pe rho r2077
  · rw [seg6RStep121Acc rho, seg6RStep121L rho r2075, seg6RStep121IlMul rho r2076, seg6RStep121L rho r2075]

theorem seg6_r_chunk121 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 122 (seg6RPeState rho 122) (seg6RIlState rho 122) := by
  have htail := seg6_r_chunk120 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2075, r2076, r2077, _, _⟩
  have hsteps : ∀ n, 121 ≤ n → n < 122 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 121 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep121 rho r2075 r2076 r2077
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 121 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
