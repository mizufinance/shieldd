import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk45

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep46L (rho : Nat -> Seg5.F) (r2234 : Seg5.relationRow2234 rho) :
    rho 1932 = seg5RPe47 rho * (1 - rho 1233) := by
  unfold Seg5.relationRow2234 at r2234
  unfold seg5RPe47
  linear_combination -r2234

theorem seg5RStep46IlMul (rho : Nat -> Seg5.F) (r2235 : Seg5.relationRow2235 rho) :
    rho 1933 = seg5RIl47 rho * (rho 1932) := by
  unfold Seg5.relationRow2235 at r2235
  rw [seg5RStep46IlLc rho] at r2235
  linear_combination -r2235

theorem seg5RStep46Acc (rho : Nat -> Seg5.F) :
    seg5RIl46 rho = seg5RIl47 rho + (rho 1932) - (rho 1933) := by
  have hstate : seg5RIl46 rho = seg5RIl47 rho + seg5RIlAtom107 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom107
  ring

theorem seg5RStep46Pe (rho : Nat -> Seg5.F) (r2236 : Seg5.relationRow2236 rho) :
    seg5RPe46 rho = seg5RPe47 rho * rho 1233 := by
  unfold Seg5.relationRow2236 at r2236
  unfold seg5RPe46 seg5RPe47
  linear_combination -r2236

theorem seg5RStep46 (rho : Nat -> Seg5.F) (r2234 : Seg5.relationRow2234 rho) (r2235 : Seg5.relationRow2235 rho) (r2236 : Seg5.relationRow2236 rho) :
    seg5RPe46 rho = seg5RPe47 rho * rho 1233 ∧
    seg5RIl46 rho = seg5RIl47 rho + seg5RPe47 rho * (1 - rho 1233) -
      seg5RIl47 rho * (seg5RPe47 rho * (1 - rho 1233)) := by
  constructor
  · exact seg5RStep46Pe rho r2236
  · rw [seg5RStep46Acc rho, seg5RStep46L rho r2234, seg5RStep46IlMul rho r2235, seg5RStep46L rho r2234]

theorem seg5_r_chunk46 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 47 (seg5RPeState rho 47) (seg5RIlState rho 47) := by
  have htail := seg5_r_chunk45 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2234, r2235, r2236, _, _, _⟩
  have hsteps : ∀ n, 46 ≤ n → n < 47 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 46 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep46 rho r2234 r2235 r2236
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 46 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
