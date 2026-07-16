import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk137

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step138Pe (rho : Nat -> Seg6.F) (r2459 : Seg6.relationRow2459 rho) :
    seg6Q4Pe138 rho = seg6Q4Pe139 rho * (1 - rho 2028) := by
  unfold Seg6.relationRow2459 at r2459
  unfold seg6Q4Pe138 seg6Q4Pe139
  linear_combination -r2459

theorem seg6Q4Step138 (rho : Nat -> Seg6.F) (r2459 : Seg6.relationRow2459 rho) :
    seg6Q4Pe138 rho = seg6Q4Pe139 rho * (1 - rho 2028) ∧
    seg6Q4Il138 rho = seg6Q4Il139 rho := by
  exact ⟨seg6Q4Step138Pe rho r2459, rfl⟩

theorem seg6_q4_chunk138 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 139 (seg6Q4PeState rho 139) (seg6Q4IlState rho 139) := by
  have htail := seg6_q4_chunk137 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    p30, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart30 at p30
  rcases p30 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2459, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 138 ≤ n → n < 139 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 138 = false := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step138 rho r2459
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 138 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
