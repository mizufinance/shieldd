/-
Protocol-local reductions from accepted transcript-order failures to adaptive
candidate-point/fresh-answer pairs.
-/
import Ipp.FsCandidateBounds

open OracleSpec OracleComp ENNReal Function
open scoped OracleSpec.PrimitiveQuery ENNReal BigOperators

namespace Ipp

noncomputable section

/-- Scalar fixed in a query payload before that query's answer is sampled. -/
def orderCandidate {F G1 G2 GT : Type} :
    ChallengePoint F G1 G2 GT → Option F
  | .x0 payload _ => some payload.r
  | .round prev _ _ => some prev
  | _ => none

/-- Randomizer, x0, and round points in verifier dependency order. -/
def acceptedChainPoint? {F G1 G2 GT : Type} {μ : Nat}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2] [AddCommMonoid GT] [Module F GT]
    (stmt : FsStatement μ F G1 G2 GT) (out : FsResult μ F G1 G2 GT) :
    Nat → Option (ChallengePoint F G1 G2 GT)
  | 0 => some (.randomizer
      { comA := out.proof.ComA.1, comB := out.proof.ComB,
        comC := out.proof.ComA.2 }
      out.transcript.randomizerNonce)
  | 1 => some (.x0
      { r := out.transcript.randomizer, comA := out.proof.ComA.1,
        comB := out.proof.ComB, comC := out.proof.ComA.2,
        ipAb := out.proof.ipAb, aggC := out.proof.aggC }
      out.transcript.x0Nonce)
  | k + 2 => if hk : k < μ then
      some (.round (out.transcript.roundPrev ⟨k, hk⟩)
        (out.proof.rounds ⟨k, hk⟩) (out.transcript.roundNonce ⟨k, hk⟩))
    else none

/-- Answers aligned with `acceptedChainPoint?`. -/
def acceptedChainAnswer? {F G1 G2 GT : Type} {μ : Nat}
    (out : FsResult μ F G1 G2 GT) : Nat → Option F
  | 0 => some out.transcript.randomizer
  | 1 => some out.transcript.x0
  | k + 2 => if hk : k < μ then some (out.transcript.roundAnswer ⟨k, hk⟩)
    else none

/-- First structured-miss position of a dependency-chain point. -/
def acceptedChainPos {F G1 G2 GT : Type} {μ : Nat}
    [CommSemiring F] [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2] [AddCommMonoid GT] [Module F GT]
    [DecidableEq F] [DecidableEq G1] [DecidableEq G2] [DecidableEq GT]
    (stmt : FsStatement μ F G1 G2 GT) (out : FsResult μ F G1 G2 GT)
    (sourceLog : QueryLog (unifSpec + SnarkpackFsSpec F G1 G2 GT))
    (k : Nat) : Nat :=
  match acceptedChainPoint? stmt out k with
  | some point => (fsPointTrace sourceLog).findIdx (· == point)
  | none => 0

private theorem lt_of_adjacent_lt (p : Nat → Nat) {a b : Nat}
    (hab : a < b)
    (hadj : ∀ k, a ≤ k → k < b → p k < p (k + 1)) : p a < p b := by
  induction b generalizing a with
  | zero => omega
  | succ b ih =>
      by_cases hab' : a = b
      · subst a
        exact hadj b le_rfl (Nat.lt_succ_self b)
      · have halt : a < b := by omega
        exact lt_trans (ih halt (fun k hak hkb => hadj k hak (by omega)))
          (hadj b (Nat.le_of_lt halt) (Nat.lt_succ_self b))

/-- A non-increasing endpoint pair in a finite chain contains a
non-increasing adjacent pair. -/
theorem exists_adjacent_nonincreasing (p : Nat → Nat) {a b : Nat}
    (hab : a < b) (hba : p b ≤ p a) :
    ∃ k, a ≤ k ∧ k < b ∧ p (k + 1) ≤ p k := by
  by_contra hnone
  push Not at hnone
  have hstrict := lt_of_adjacent_lt p hab hnone
  omega

end

end Ipp
