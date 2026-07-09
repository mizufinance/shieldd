import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk74

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep75L (rho : Nat -> Seg5.F) (r2167 : Seg5.relationRow2167 rho) :
    rho 1865 = seg5RPe76 rho * (1 - rho 1262) := by
  unfold Seg5.relationRow2167 at r2167
  unfold seg5RPe76
  linear_combination -r2167

theorem seg5RStep75IlMul (rho : Nat -> Seg5.F) (r2168 : Seg5.relationRow2168 rho) :
    rho 1866 = seg5RIl76 rho * (rho 1865) := by
  unfold Seg5.relationRow2168 at r2168
  rw [seg5RStep75IlLc rho] at r2168
  linear_combination -r2168

theorem seg5RStep75Acc (rho : Nat -> Seg5.F) :
    seg5RIl75 rho = seg5RIl76 rho + (rho 1865) - (rho 1866) := by
  have hstate : seg5RIl75 rho = seg5RIl76 rho + seg5RIlAtom87 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom87
  ring

theorem seg5RStep75Pe (rho : Nat -> Seg5.F) (r2169 : Seg5.relationRow2169 rho) :
    seg5RPe75 rho = seg5RPe76 rho * rho 1262 := by
  unfold Seg5.relationRow2169 at r2169
  unfold seg5RPe75 seg5RPe76
  linear_combination -r2169

theorem seg5RStep75 (rho : Nat -> Seg5.F) (r2167 : Seg5.relationRow2167 rho) (r2168 : Seg5.relationRow2168 rho) (r2169 : Seg5.relationRow2169 rho) :
    seg5RPe75 rho = seg5RPe76 rho * rho 1262 ∧
    seg5RIl75 rho = seg5RIl76 rho + seg5RPe76 rho * (1 - rho 1262) -
      seg5RIl76 rho * (seg5RPe76 rho * (1 - rho 1262)) := by
  constructor
  · exact seg5RStep75Pe rho r2169
  · rw [seg5RStep75Acc rho, seg5RStep75L rho r2167, seg5RStep75IlMul rho r2168, seg5RStep75L rho r2167]

theorem seg5_r_chunk75 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 76 (seg5RPeState rho 76) (seg5RIlState rho 76) := by
  have htail := seg5_r_chunk74 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, r2167, r2168, r2169, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 75 ≤ n → n < 76 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 75 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep75 rho r2167 r2168 r2169
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 75 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
