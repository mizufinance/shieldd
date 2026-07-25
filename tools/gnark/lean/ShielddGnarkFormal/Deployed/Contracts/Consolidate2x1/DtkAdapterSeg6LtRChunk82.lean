import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk81

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep82L (rho : Nat -> Seg6.F) (r2156 : Seg6.relationRow2156 rho) :
    rho 2557 = seg6RPe83 rho * (1 - rho 1972) := by
  unfold Seg6.relationRow2156 at r2156
  unfold seg6RPe83
  linear_combination -r2156

theorem seg6RStep82IlMul (rho : Nat -> Seg6.F) (r2157 : Seg6.relationRow2157 rho) :
    rho 2558 = seg6RIl83 rho * (rho 2557) := by
  unfold Seg6.relationRow2157 at r2157
  rw [seg6RStep82IlLc rho] at r2157
  linear_combination -r2157

theorem seg6RStep82Acc (rho : Nat -> Seg6.F) :
    seg6RIl82 rho = seg6RIl83 rho + (rho 2557) - (rho 2558) := by
  have hstate : seg6RIl82 rho = seg6RIl83 rho + seg6RIlAtom84 rho + (-1 : Seg6.F) * seg6RIlAtom85 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom84 seg6RIlAtom85
  ring

theorem seg6RStep82Pe (rho : Nat -> Seg6.F) (r2158 : Seg6.relationRow2158 rho) :
    seg6RPe82 rho = seg6RPe83 rho * rho 1972 := by
  unfold Seg6.relationRow2158 at r2158
  unfold seg6RPe82 seg6RPe83
  linear_combination -r2158

theorem seg6RStep82 (rho : Nat -> Seg6.F) (r2156 : Seg6.relationRow2156 rho) (r2157 : Seg6.relationRow2157 rho) (r2158 : Seg6.relationRow2158 rho) :
    seg6RPe82 rho = seg6RPe83 rho * rho 1972 ∧
    seg6RIl82 rho = seg6RIl83 rho + seg6RPe83 rho * (1 - rho 1972) -
      seg6RIl83 rho * (seg6RPe83 rho * (1 - rho 1972)) := by
  constructor
  · exact seg6RStep82Pe rho r2158
  · rw [seg6RStep82Acc rho, seg6RStep82L rho r2156, seg6RStep82IlMul rho r2157, seg6RStep82L rho r2156]

theorem seg6_r_chunk82 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 83 (seg6RPeState rho 83) (seg6RIlState rho 83) := by
  have htail := seg6_r_chunk81 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2156, r2157, r2158, _⟩
  have hsteps : ∀ n, 82 ≤ n → n < 83 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 82 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep82 rho r2156 r2157 r2158
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 82 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
