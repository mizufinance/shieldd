import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk250

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step251Pe (rho : Nat -> Seg16.F) (r2346 : Seg16.relationRow2346 rho) :
    seg16Q4Pe251 rho = seg16Q4Pe252 rho * (1 - rho 14315) := by
  unfold Seg16.relationRow2346 at r2346
  unfold seg16Q4Pe251 seg16Q4Pe252
  linear_combination -r2346

theorem seg16Q4Step251 (rho : Nat -> Seg16.F) (r2346 : Seg16.relationRow2346 rho) :
    seg16Q4Pe251 rho = seg16Q4Pe252 rho * (1 - rho 14315) ∧
    seg16Q4Il251 rho = seg16Q4Il252 rho := by
  exact ⟨seg16Q4Step251Pe rho r2346, rfl⟩

theorem seg16_q4_chunk251 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 252 (seg16Q4PeState rho 252) (seg16Q4IlState rho 252) := by
  have htail := seg16_q4_chunk250 rho h k hk
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
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2346, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 251 ≤ n → n < 252 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 251 = false := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step251 rho r2346
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 251 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
