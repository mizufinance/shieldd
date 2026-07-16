import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk51

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step52Pe (rho : Nat -> Seg6.F) (r2622 : Seg6.relationRow2622 rho) :
    seg6Q4Pe52 rho = seg6Q4Pe53 rho * (1 - rho 1942) := by
  unfold Seg6.relationRow2622 at r2622
  unfold seg6Q4Pe52 seg6Q4Pe53
  linear_combination -r2622

theorem seg6Q4Step52 (rho : Nat -> Seg6.F) (r2622 : Seg6.relationRow2622 rho) :
    seg6Q4Pe52 rho = seg6Q4Pe53 rho * (1 - rho 1942) ∧
    seg6Q4Il52 rho = seg6Q4Il53 rho := by
  exact ⟨seg6Q4Step52Pe rho r2622, rfl⟩

theorem seg6_q4_chunk52 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 53 (seg6Q4PeState rho 53) (seg6Q4IlState rho 53) := by
  have htail := seg6_q4_chunk51 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2622, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 52 ≤ n → n < 53 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 52 = false := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step52 rho r2622
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 52 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
