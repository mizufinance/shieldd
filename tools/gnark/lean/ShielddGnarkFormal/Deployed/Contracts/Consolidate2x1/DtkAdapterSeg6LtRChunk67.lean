import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk66

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep67L (rho : Nat -> Seg6.F) (r2187 : Seg6.relationRow2187 rho) :
    rho 2588 = seg6RPe68 rho * (1 - rho 1957) := by
  unfold Seg6.relationRow2187 at r2187
  unfold seg6RPe68
  linear_combination -r2187

theorem seg6RStep67IlMul (rho : Nat -> Seg6.F) (r2188 : Seg6.relationRow2188 rho) :
    rho 2589 = seg6RIl68 rho * (rho 2588) := by
  unfold Seg6.relationRow2188 at r2188
  rw [seg6RStep67IlLc rho] at r2188
  linear_combination -r2188

theorem seg6RStep67Acc (rho : Nat -> Seg6.F) :
    seg6RIl67 rho = seg6RIl68 rho + (rho 2588) - (rho 2589) := by
  have hstate : seg6RIl67 rho = seg6RIl68 rho + seg6RIlAtom93 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom93
  ring

theorem seg6RStep67Pe (rho : Nat -> Seg6.F) (r2189 : Seg6.relationRow2189 rho) :
    seg6RPe67 rho = seg6RPe68 rho * rho 1957 := by
  unfold Seg6.relationRow2189 at r2189
  unfold seg6RPe67 seg6RPe68
  linear_combination -r2189

theorem seg6RStep67 (rho : Nat -> Seg6.F) (r2187 : Seg6.relationRow2187 rho) (r2188 : Seg6.relationRow2188 rho) (r2189 : Seg6.relationRow2189 rho) :
    seg6RPe67 rho = seg6RPe68 rho * rho 1957 ∧
    seg6RIl67 rho = seg6RIl68 rho + seg6RPe68 rho * (1 - rho 1957) -
      seg6RIl68 rho * (seg6RPe68 rho * (1 - rho 1957)) := by
  constructor
  · exact seg6RStep67Pe rho r2189
  · rw [seg6RStep67Acc rho, seg6RStep67L rho r2187, seg6RStep67IlMul rho r2188, seg6RStep67L rho r2187]

theorem seg6_r_chunk67 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 68 (seg6RPeState rho 68) (seg6RIlState rho 68) := by
  have htail := seg6_r_chunk66 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2187, r2188, r2189, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 67 ≤ n → n < 68 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 67 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep67 rho r2187 r2188 r2189
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 67 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
