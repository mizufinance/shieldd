import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk53

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep54L (rho : Nat -> Seg45.F) (r2216 : Seg45.relationRow2216 rho) :
    rho 40447 = seg45RPe55 rho * (1 - rho 39774) := by
  unfold Seg45.relationRow2216 at r2216
  unfold seg45RPe55
  linear_combination -r2216

theorem seg45RStep54IlMul (rho : Nat -> Seg45.F) (r2217 : Seg45.relationRow2217 rho) :
    rho 40448 = seg45RIl55 rho * (rho 40447) := by
  unfold Seg45.relationRow2217 at r2217
  rw [seg45RStep54IlLc rho] at r2217
  linear_combination -r2217

theorem seg45RStep54Acc (rho : Nat -> Seg45.F) :
    seg45RIl54 rho = seg45RIl55 rho + (rho 40447) - (rho 40448) := by
  have hstate : seg45RIl54 rho = seg45RIl55 rho + seg45RIlAtom101 rho + (-1 : Seg45.F) * seg45RIlAtom102 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom101 seg45RIlAtom102
  ring

theorem seg45RStep54Pe (rho : Nat -> Seg45.F) (r2218 : Seg45.relationRow2218 rho) :
    seg45RPe54 rho = seg45RPe55 rho * rho 39774 := by
  unfold Seg45.relationRow2218 at r2218
  unfold seg45RPe54 seg45RPe55
  linear_combination -r2218

theorem seg45RStep54 (rho : Nat -> Seg45.F) (r2216 : Seg45.relationRow2216 rho) (r2217 : Seg45.relationRow2217 rho) (r2218 : Seg45.relationRow2218 rho) :
    seg45RPe54 rho = seg45RPe55 rho * rho 39774 ∧
    seg45RIl54 rho = seg45RIl55 rho + seg45RPe55 rho * (1 - rho 39774) -
      seg45RIl55 rho * (seg45RPe55 rho * (1 - rho 39774)) := by
  constructor
  · exact seg45RStep54Pe rho r2218
  · rw [seg45RStep54Acc rho, seg45RStep54L rho r2216, seg45RStep54IlMul rho r2217, seg45RStep54L rho r2216]

theorem seg45_r_chunk54 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 55 (seg45RPeState rho 55) (seg45RIlState rho 55) := by
  have htail := seg45_r_chunk53 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2216, r2217, r2218, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 54 ≤ n → n < 55 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 54 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep54 rho r2216 r2217 r2218
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 54 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
