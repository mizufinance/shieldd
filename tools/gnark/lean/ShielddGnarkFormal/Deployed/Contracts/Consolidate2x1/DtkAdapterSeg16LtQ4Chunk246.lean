import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk245

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step246Pe (rho : Nat -> Seg16.F) (r2351 : Seg16.relationRow2351 rho) :
    seg16Q4Pe246 rho = seg16Q4Pe247 rho * (1 - rho 14310) := by
  unfold Seg16.relationRow2351 at r2351
  unfold seg16Q4Pe246 seg16Q4Pe247
  linear_combination -r2351

theorem seg16Q4Step246 (rho : Nat -> Seg16.F) (r2351 : Seg16.relationRow2351 rho) :
    seg16Q4Pe246 rho = seg16Q4Pe247 rho * (1 - rho 14310) ∧
    seg16Q4Il246 rho = seg16Q4Il247 rho := by
  exact ⟨seg16Q4Step246Pe rho r2351, rfl⟩

theorem seg16_q4_chunk246 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 247 (seg16Q4PeState rho 247) (seg16Q4IlState rho 247) := by
  have htail := seg16_q4_chunk245 rho h k hk
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2351, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 246 ≤ n → n < 247 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 246 = false := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step246 rho r2351
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 246 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
