import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk66

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep67L (rho : Nat -> Seg16.F) (r2187 : Seg16.relationRow2187 rho) :
    rho 14762 = seg16RPe68 rho * (1 - rho 14131) := by
  unfold Seg16.relationRow2187 at r2187
  unfold seg16RPe68
  linear_combination -r2187

theorem seg16RStep67IlMul (rho : Nat -> Seg16.F) (r2188 : Seg16.relationRow2188 rho) :
    rho 14763 = seg16RIl68 rho * (rho 14762) := by
  unfold Seg16.relationRow2188 at r2188
  rw [seg16RStep67IlLc rho] at r2188
  linear_combination -r2188

theorem seg16RStep67Acc (rho : Nat -> Seg16.F) :
    seg16RIl67 rho = seg16RIl68 rho + (rho 14762) - (rho 14763) := by
  have hstate : seg16RIl67 rho = seg16RIl68 rho + seg16RIlAtom93 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom93
  ring

theorem seg16RStep67Pe (rho : Nat -> Seg16.F) (r2189 : Seg16.relationRow2189 rho) :
    seg16RPe67 rho = seg16RPe68 rho * rho 14131 := by
  unfold Seg16.relationRow2189 at r2189
  unfold seg16RPe67 seg16RPe68
  linear_combination -r2189

theorem seg16RStep67 (rho : Nat -> Seg16.F) (r2187 : Seg16.relationRow2187 rho) (r2188 : Seg16.relationRow2188 rho) (r2189 : Seg16.relationRow2189 rho) :
    seg16RPe67 rho = seg16RPe68 rho * rho 14131 ∧
    seg16RIl67 rho = seg16RIl68 rho + seg16RPe68 rho * (1 - rho 14131) -
      seg16RIl68 rho * (seg16RPe68 rho * (1 - rho 14131)) := by
  constructor
  · exact seg16RStep67Pe rho r2189
  · rw [seg16RStep67Acc rho, seg16RStep67L rho r2187, seg16RStep67IlMul rho r2188, seg16RStep67L rho r2187]

theorem seg16_r_chunk67 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 68 (seg16RPeState rho 68) (seg16RIlState rho 68) := by
  have htail := seg16_r_chunk66 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2187, r2188, r2189, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 67 ≤ n → n < 68 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 67 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep67 rho r2187 r2188 r2189
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 67 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
