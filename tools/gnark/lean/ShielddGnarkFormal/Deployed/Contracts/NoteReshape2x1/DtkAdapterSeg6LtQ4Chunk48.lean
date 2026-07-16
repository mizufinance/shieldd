import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk47

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step48L (rho : Nat -> Seg6.F) (r2628 : Seg6.relationRow2628 rho) :
    rho 3028 = seg6Q4Pe49 rho * (1 - rho 1938) := by
  unfold Seg6.relationRow2628 at r2628
  unfold seg6Q4Pe49
  linear_combination -r2628

theorem seg6Q4Step48IlMul (rho : Nat -> Seg6.F) (r2629 : Seg6.relationRow2629 rho) :
    rho 3029 = seg6Q4Il49 rho * (rho 3028) := by
  unfold Seg6.relationRow2629 at r2629
  rw [seg6Q4Step48IlLc rho] at r2629
  linear_combination -r2629

theorem seg6Q4Step48Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il48 rho = seg6Q4Il49 rho + (rho 3028) - (rho 3029) := by
  have hstate : seg6Q4Il48 rho = seg6Q4Il49 rho + seg6Q4IlAtom42 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom42
  ring

theorem seg6Q4Step48Pe (rho : Nat -> Seg6.F) (r2630 : Seg6.relationRow2630 rho) :
    seg6Q4Pe48 rho = seg6Q4Pe49 rho * rho 1938 := by
  unfold Seg6.relationRow2630 at r2630
  unfold seg6Q4Pe48 seg6Q4Pe49
  linear_combination -r2630

theorem seg6Q4Step48 (rho : Nat -> Seg6.F) (r2628 : Seg6.relationRow2628 rho) (r2629 : Seg6.relationRow2629 rho) (r2630 : Seg6.relationRow2630 rho) :
    seg6Q4Pe48 rho = seg6Q4Pe49 rho * rho 1938 ∧
    seg6Q4Il48 rho = seg6Q4Il49 rho + seg6Q4Pe49 rho * (1 - rho 1938) -
      seg6Q4Il49 rho * (seg6Q4Pe49 rho * (1 - rho 1938)) := by
  constructor
  · exact seg6Q4Step48Pe rho r2630
  · rw [seg6Q4Step48Acc rho, seg6Q4Step48L rho r2628, seg6Q4Step48IlMul rho r2629, seg6Q4Step48L rho r2628]

theorem seg6_q4_chunk48 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 49 (seg6Q4PeState rho 49) (seg6Q4IlState rho 49) := by
  have htail := seg6_q4_chunk47 rho h k hk
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
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2628, r2629, r2630, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 48 ≤ n → n < 49 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 48 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step48 rho r2628 r2629 r2630
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 48 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
