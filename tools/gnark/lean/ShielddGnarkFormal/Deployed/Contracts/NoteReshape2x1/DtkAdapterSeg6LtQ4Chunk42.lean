import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk41

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step42L (rho : Nat -> Seg6.F) (r2640 : Seg6.relationRow2640 rho) :
    rho 3034 = seg6Q4Pe43 rho * (1 - rho 1926) := by
  unfold Seg6.relationRow2640 at r2640
  unfold seg6Q4Pe43
  linear_combination -r2640

theorem seg6Q4Step42IlMul (rho : Nat -> Seg6.F) (r2641 : Seg6.relationRow2641 rho) :
    rho 3035 = seg6Q4Il43 rho * (rho 3034) := by
  unfold Seg6.relationRow2641 at r2641
  rw [seg6Q4Step42IlLc rho] at r2641
  linear_combination -r2641

theorem seg6Q4Step42Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il42 rho = seg6Q4Il43 rho + (rho 3034) - (rho 3035) := by
  have hstate : seg6Q4Il42 rho = seg6Q4Il43 rho + seg6Q4IlAtom45 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom45
  ring

theorem seg6Q4Step42Pe (rho : Nat -> Seg6.F) (r2642 : Seg6.relationRow2642 rho) :
    seg6Q4Pe42 rho = seg6Q4Pe43 rho * rho 1926 := by
  unfold Seg6.relationRow2642 at r2642
  unfold seg6Q4Pe42 seg6Q4Pe43
  linear_combination -r2642

theorem seg6Q4Step42 (rho : Nat -> Seg6.F) (r2640 : Seg6.relationRow2640 rho) (r2641 : Seg6.relationRow2641 rho) (r2642 : Seg6.relationRow2642 rho) :
    seg6Q4Pe42 rho = seg6Q4Pe43 rho * rho 1926 ∧
    seg6Q4Il42 rho = seg6Q4Il43 rho + seg6Q4Pe43 rho * (1 - rho 1926) -
      seg6Q4Il43 rho * (seg6Q4Pe43 rho * (1 - rho 1926)) := by
  constructor
  · exact seg6Q4Step42Pe rho r2642
  · rw [seg6Q4Step42Acc rho, seg6Q4Step42L rho r2640, seg6Q4Step42IlMul rho r2641, seg6Q4Step42L rho r2640]

theorem seg6_q4_chunk42 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 43 (seg6Q4PeState rho 43) (seg6Q4IlState rho 43) := by
  have htail := seg6_q4_chunk41 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart33 at p33
  rcases p33 with ⟨r2640, r2641, r2642, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 42 ≤ n → n < 43 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 42 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step42 rho r2640 r2641 r2642
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 42 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
