import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk224

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step225Pe (rho : Nat -> Seg6.F) (r2372 : Seg6.relationRow2372 rho) :
    seg6Q4Pe225 rho = seg6Q4Pe226 rho * (1 - rho 2115) := by
  unfold Seg6.relationRow2372 at r2372
  unfold seg6Q4Pe225 seg6Q4Pe226
  linear_combination -r2372

theorem seg6Q4Step225 (rho : Nat -> Seg6.F) (r2372 : Seg6.relationRow2372 rho) :
    seg6Q4Pe225 rho = seg6Q4Pe226 rho * (1 - rho 2115) ∧
    seg6Q4Il225 rho = seg6Q4Il226 rho := by
  exact ⟨seg6Q4Step225Pe rho r2372, rfl⟩

theorem seg6_q4_chunk225 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 226 (seg6Q4PeState rho 226) (seg6Q4IlState rho 226) := by
  have htail := seg6_q4_chunk224 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2372, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 225 ≤ n → n < 226 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 225 = false := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step225 rho r2372
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 225 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
