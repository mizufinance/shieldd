import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk45

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep46L (rho : Nat -> Seg45.F) (r2234 : Seg45.relationRow2234 rho) :
    rho 40465 = seg45RPe47 rho * (1 - rho 39766) := by
  unfold Seg45.relationRow2234 at r2234
  unfold seg45RPe47
  linear_combination -r2234

theorem seg45RStep46IlMul (rho : Nat -> Seg45.F) (r2235 : Seg45.relationRow2235 rho) :
    rho 40466 = seg45RIl47 rho * (rho 40465) := by
  unfold Seg45.relationRow2235 at r2235
  rw [seg45RStep46IlLc rho] at r2235
  linear_combination -r2235

theorem seg45RStep46Acc (rho : Nat -> Seg45.F) :
    seg45RIl46 rho = seg45RIl47 rho + (rho 40465) - (rho 40466) := by
  have hstate : seg45RIl46 rho = seg45RIl47 rho + seg45RIlAtom107 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom107
  ring

theorem seg45RStep46Pe (rho : Nat -> Seg45.F) (r2236 : Seg45.relationRow2236 rho) :
    seg45RPe46 rho = seg45RPe47 rho * rho 39766 := by
  unfold Seg45.relationRow2236 at r2236
  unfold seg45RPe46 seg45RPe47
  linear_combination -r2236

theorem seg45RStep46 (rho : Nat -> Seg45.F) (r2234 : Seg45.relationRow2234 rho) (r2235 : Seg45.relationRow2235 rho) (r2236 : Seg45.relationRow2236 rho) :
    seg45RPe46 rho = seg45RPe47 rho * rho 39766 ∧
    seg45RIl46 rho = seg45RIl47 rho + seg45RPe47 rho * (1 - rho 39766) -
      seg45RIl47 rho * (seg45RPe47 rho * (1 - rho 39766)) := by
  constructor
  · exact seg45RStep46Pe rho r2236
  · rw [seg45RStep46Acc rho, seg45RStep46L rho r2234, seg45RStep46IlMul rho r2235, seg45RStep46L rho r2234]

theorem seg45_r_chunk46 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 47 (seg45RPeState rho 47) (seg45RIlState rho 47) := by
  have htail := seg45_r_chunk45 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2234, r2235, r2236, _, _, _⟩
  have hsteps : ∀ n, 46 ≤ n → n < 47 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 46 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep46 rho r2234 r2235 r2236
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 46 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
