import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk143

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep144L (rho : Nat -> Seg45.F) (r2036 : Seg45.relationRow2036 rho) :
    rho 40267 = seg45RPe145 rho * (1 - rho 39864) := by
  unfold Seg45.relationRow2036 at r2036
  unfold seg45RPe145
  linear_combination -r2036

theorem seg45RStep144IlMul (rho : Nat -> Seg45.F) (r2037 : Seg45.relationRow2037 rho) :
    rho 40268 = seg45RIl145 rho * (rho 40267) := by
  unfold Seg45.relationRow2037 at r2037
  rw [seg45RStep144IlLc rho] at r2037
  linear_combination -r2037

theorem seg45RStep144Acc (rho : Nat -> Seg45.F) :
    seg45RIl144 rho = seg45RIl145 rho + (rho 40267) - (rho 40268) := by
  have hstate : seg45RIl144 rho = seg45RIl145 rho + seg45RIlAtom54 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom54
  ring

theorem seg45RStep144Pe (rho : Nat -> Seg45.F) (r2038 : Seg45.relationRow2038 rho) :
    seg45RPe144 rho = seg45RPe145 rho * rho 39864 := by
  unfold Seg45.relationRow2038 at r2038
  unfold seg45RPe144 seg45RPe145
  linear_combination -r2038

theorem seg45RStep144 (rho : Nat -> Seg45.F) (r2036 : Seg45.relationRow2036 rho) (r2037 : Seg45.relationRow2037 rho) (r2038 : Seg45.relationRow2038 rho) :
    seg45RPe144 rho = seg45RPe145 rho * rho 39864 ∧
    seg45RIl144 rho = seg45RIl145 rho + seg45RPe145 rho * (1 - rho 39864) -
      seg45RIl145 rho * (seg45RPe145 rho * (1 - rho 39864)) := by
  constructor
  · exact seg45RStep144Pe rho r2038
  · rw [seg45RStep144Acc rho, seg45RStep144L rho r2036, seg45RStep144IlMul rho r2037, seg45RStep144L rho r2036]

theorem seg45_r_chunk144 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 145 (seg45RPeState rho 145) (seg45RIlState rho 145) := by
  have htail := seg45_r_chunk143 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2036, r2037, r2038, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 144 ≤ n → n < 145 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 144 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep144 rho r2036 r2037 r2038
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 144 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
