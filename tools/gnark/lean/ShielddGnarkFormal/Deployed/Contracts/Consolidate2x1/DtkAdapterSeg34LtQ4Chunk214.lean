import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk213

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step214Pe (rho : Nat -> Seg34.F) (r2383 : Seg34.relationRow2383 rho) :
    seg34Q4Pe214 rho = seg34Q4Pe215 rho * (1 - rho 32978) := by
  unfold Seg34.relationRow2383 at r2383
  unfold seg34Q4Pe214 seg34Q4Pe215
  linear_combination -r2383

theorem seg34Q4Step214 (rho : Nat -> Seg34.F) (r2383 : Seg34.relationRow2383 rho) :
    seg34Q4Pe214 rho = seg34Q4Pe215 rho * (1 - rho 32978) ∧
    seg34Q4Il214 rho = seg34Q4Il215 rho := by
  exact ⟨seg34Q4Step214Pe rho r2383, rfl⟩

theorem seg34_q4_chunk214 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 215 (seg34Q4PeState rho 215) (seg34Q4IlState rho 215) := by
  have htail := seg34_q4_chunk213 rho h k hk
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2383, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 214 ≤ n → n < 215 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 214 = false := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step214 rho r2383
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 214 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
