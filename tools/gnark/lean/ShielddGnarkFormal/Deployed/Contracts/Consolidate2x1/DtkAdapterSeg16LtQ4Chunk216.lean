import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtQ4Chunk215

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16Q4Step216Pe (rho : Nat -> Seg16.F) (r2381 : Seg16.relationRow2381 rho) :
    seg16Q4Pe216 rho = seg16Q4Pe217 rho * (1 - rho 14280) := by
  unfold Seg16.relationRow2381 at r2381
  unfold seg16Q4Pe216 seg16Q4Pe217
  linear_combination -r2381

theorem seg16Q4Step216 (rho : Nat -> Seg16.F) (r2381 : Seg16.relationRow2381 rho) :
    seg16Q4Pe216 rho = seg16Q4Pe217 rho * (1 - rho 14280) ∧
    seg16Q4Il216 rho = seg16Q4Il217 rho := by
  exact ⟨seg16Q4Step216Pe rho r2381, rfl⟩

theorem seg16_q4_chunk216 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 217 (seg16Q4PeState rho 217) (seg16Q4IlState rho 217) := by
  have htail := seg16_q4_chunk215 rho h k hk
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
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2381, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 216 ≤ n → n < 217 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * rho (14064 + n) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) + seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16Q4IlState rho (n + 1) * (seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16Q4PeState rho n = seg16Q4PeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16Q4IlState rho n = seg16Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 216 = false := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16Q4Step216 rho r2381
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg16Q4PeState rho) (seg16Q4IlState rho) 216 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
