import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtQ4Chunk77

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34Q4Step78L (rho : Nat -> Seg34.F) (r2578 : Seg34.relationRow2578 rho) :
    rho 33852 = seg34Q4Pe79 rho * (1 - rho 32842) := by
  unfold Seg34.relationRow2578 at r2578
  unfold seg34Q4Pe79
  linear_combination -r2578

theorem seg34Q4Step78IlMul (rho : Nat -> Seg34.F) (r2579 : Seg34.relationRow2579 rho) :
    rho 33853 = seg34Q4Il79 rho * (rho 33852) := by
  unfold Seg34.relationRow2579 at r2579
  rw [seg34Q4Step78IlLc rho] at r2579
  linear_combination -r2579

theorem seg34Q4Step78Acc (rho : Nat -> Seg34.F) :
    seg34Q4Il78 rho = seg34Q4Il79 rho + (rho 33852) - (rho 33853) := by
  have hstate : seg34Q4Il78 rho = seg34Q4Il79 rho + seg34Q4IlAtom31 rho := by rfl
  rw [hstate]
  unfold seg34Q4IlAtom31
  ring

theorem seg34Q4Step78Pe (rho : Nat -> Seg34.F) (r2580 : Seg34.relationRow2580 rho) :
    seg34Q4Pe78 rho = seg34Q4Pe79 rho * rho 32842 := by
  unfold Seg34.relationRow2580 at r2580
  unfold seg34Q4Pe78 seg34Q4Pe79
  linear_combination -r2580

theorem seg34Q4Step78 (rho : Nat -> Seg34.F) (r2578 : Seg34.relationRow2578 rho) (r2579 : Seg34.relationRow2579 rho) (r2580 : Seg34.relationRow2580 rho) :
    seg34Q4Pe78 rho = seg34Q4Pe79 rho * rho 32842 ∧
    seg34Q4Il78 rho = seg34Q4Il79 rho + seg34Q4Pe79 rho * (1 - rho 32842) -
      seg34Q4Il79 rho * (seg34Q4Pe79 rho * (1 - rho 32842)) := by
  constructor
  · exact seg34Q4Step78Pe rho r2580
  · rw [seg34Q4Step78Acc rho, seg34Q4Step78L rho r2578, seg34Q4Step78IlMul rho r2579, seg34Q4Step78L rho r2578]

theorem seg34_q4_chunk78 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 79 (seg34Q4PeState rho 79) (seg34Q4IlState rho 79) := by
  have htail := seg34_q4_chunk77 rho h k hk
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart32 at p32
  rcases p32 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2578, r2579, r2580, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 78 ≤ n → n < 79 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * rho (32764 + n) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) + seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34Q4IlState rho (n + 1) * (seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34Q4PeState rho n = seg34Q4PeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34Q4IlState rho n = seg34Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 78 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34Q4Step78 rho r2578 r2579 r2580
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg34Q4PeState rho) (seg34Q4IlState rho) 78 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
