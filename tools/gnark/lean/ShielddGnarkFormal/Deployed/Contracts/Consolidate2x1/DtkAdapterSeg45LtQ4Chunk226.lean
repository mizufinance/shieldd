import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtQ4Chunk225

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45Q4Step226Pe (rho : Nat -> Seg45.F) (r2371 : Seg45.relationRow2371 rho) :
    seg45Q4Pe226 rho = seg45Q4Pe227 rho * (1 - rho 39946) := by
  unfold Seg45.relationRow2371 at r2371
  unfold seg45Q4Pe226 seg45Q4Pe227
  linear_combination -r2371

theorem seg45Q4Step226 (rho : Nat -> Seg45.F) (r2371 : Seg45.relationRow2371 rho) :
    seg45Q4Pe226 rho = seg45Q4Pe227 rho * (1 - rho 39946) ∧
    seg45Q4Il226 rho = seg45Q4Il227 rho := by
  exact ⟨seg45Q4Step226Pe rho r2371, rfl⟩

theorem seg45_q4_chunk226 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 227 (seg45Q4PeState rho 227) (seg45Q4IlState rho 227) := by
  have htail := seg45_q4_chunk225 rho h k hk
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2371, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 226 ≤ n → n < 227 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * rho (39720 + n) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) + seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45Q4IlState rho (n + 1) * (seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45Q4PeState rho n = seg45Q4PeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45Q4IlState rho n = seg45Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 226 = false := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45Q4Step226 rho r2371
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg45Q4PeState rho) (seg45Q4IlState rho) 226 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
