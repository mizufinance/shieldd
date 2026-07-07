import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk41

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep42L (rho : Nat -> Seg45.F) (r2244 : Seg45.relationRow2244 rho) :
    rho 40475 = seg45RPe43 rho * (1 - rho 39762) := by
  unfold Seg45.relationRow2244 at r2244
  unfold seg45RPe43
  linear_combination -r2244

theorem seg45RStep42IlMul (rho : Nat -> Seg45.F) (r2245 : Seg45.relationRow2245 rho) :
    rho 40476 = seg45RIl43 rho * (rho 40475) := by
  unfold Seg45.relationRow2245 at r2245
  rw [seg45RStep42IlLc rho] at r2245
  linear_combination -r2245

theorem seg45RStep42Acc (rho : Nat -> Seg45.F) :
    seg45RIl42 rho = seg45RIl43 rho + (rho 40475) - (rho 40476) := by
  have hstate : seg45RIl42 rho = seg45RIl43 rho + seg45RIlAtom110 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom110
  ring

theorem seg45RStep42Pe (rho : Nat -> Seg45.F) (r2246 : Seg45.relationRow2246 rho) :
    seg45RPe42 rho = seg45RPe43 rho * rho 39762 := by
  unfold Seg45.relationRow2246 at r2246
  unfold seg45RPe42 seg45RPe43
  linear_combination -r2246

theorem seg45RStep42 (rho : Nat -> Seg45.F) (r2244 : Seg45.relationRow2244 rho) (r2245 : Seg45.relationRow2245 rho) (r2246 : Seg45.relationRow2246 rho) :
    seg45RPe42 rho = seg45RPe43 rho * rho 39762 ∧
    seg45RIl42 rho = seg45RIl43 rho + seg45RPe43 rho * (1 - rho 39762) -
      seg45RIl43 rho * (seg45RPe43 rho * (1 - rho 39762)) := by
  constructor
  · exact seg45RStep42Pe rho r2246
  · rw [seg45RStep42Acc rho, seg45RStep42L rho r2244, seg45RStep42IlMul rho r2245, seg45RStep42L rho r2244]

theorem seg45_r_chunk42 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 43 (seg45RPeState rho 43) (seg45RIlState rho 43) := by
  have htail := seg45_r_chunk41 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, r2244, r2245, r2246, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 42 ≤ n → n < 43 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 42 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep42 rho r2244 r2245 r2246
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 42 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
