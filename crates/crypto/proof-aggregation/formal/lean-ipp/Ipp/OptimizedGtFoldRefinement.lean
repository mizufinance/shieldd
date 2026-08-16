import Ipp.Optimization
import Ipp.Extracted.VerifyTippMipp

/-!
Exact protocol refinement for the shared four-lane verifier GT fold.

The optimized implementation flattens each chronological fold into one MSM
and reuses the scalar schedule across ComA.1, ComB, ipAb, and ComA.2.  This
module fixes those exact operands and proves all four outputs equal
`Ipp.terminalFold`.
-/

namespace Ipp.OptimizedGtFoldRefinement

open Ipp.Optimization

variable {F G1 G2 GT : Type}
  [Field F]
  [AddCommGroup G1] [Module F G1]
  [AddCommGroup GT] [Module F GT]

/-- One lane of the chronological fold, separated from the product record. -/
def foldLane : (n : Nat) → (Fin n → F) → (Fin n → GT × GT) → GT → GT
  | 0, _, _, root => root
  | n + 1, raw, rounds, root =>
      foldLane n (fun i => raw i.succ) (fun i => rounds i.succ)
        ((raw 0)⁻¹ • (rounds 0).1 + root + raw 0 • (rounds 0).2)

/-- The list consumed by the flattened MSM is exactly the chronological
root/left/right recurrence. -/
theorem sequentialFold_ofFn_eq_foldLane {n : Nat}
    (raw : Fin n → F) (rounds : Fin n → GT × GT) (root : GT) :
    sequentialFold root
        (List.ofFn fun i =>
          ((rounds i).1, (rounds i).2, (raw i)⁻¹, raw i)) =
      foldLane n raw rounds root := by
  induction n generalizing root with
  | zero => simp [sequentialFold, foldLane]
  | succ n ih =>
      rw [List.ofFn_succ]
      simp only [sequentialFold, foldLane]
      exact ih _ _ _

def roots {n : Nat} (comA : GT × GT) (comB : GT)
    (proof : Ipp.Proof n F G1 G2 GT) : Fin 4 → GT :=
  ![comA.1, comB, proof.ipAb, comA.2]

def roundBases (round : Ipp.RoundComs G1 GT) : Fin 4 → GT × GT :=
  ![(round.LA.1, round.RA.1), (round.LB, round.RB),
    (round.LT.1, round.RT.1), (round.LA.2, round.RA.2)]

def terminalLanes (terminal : Ipp.FoldedValues G1 GT) : Fin 4 → GT :=
  ![terminal.comA.1, terminal.comB, terminal.comT.1, terminal.comA.2]

/-- Exact values computed by the four MSMs after their common scalar
decomposition has been constructed. -/
def optimizedLanes {n : Nat} (comA : GT × GT) (comB : GT)
    (proof : Ipp.Proof n F G1 G2 GT) (raw : Fin n → F) : Fin 4 → GT :=
  fun lane =>
    flatFold (roots comA comB proof lane)
      (List.ofFn fun i =>
        ((roundBases (proof.rounds i) lane).1,
          (roundBases (proof.rounds i) lane).2,
          (raw i)⁻¹, raw i))

private theorem foldRounds_comA_fst {n : Nat}
    (raw : Fin n → F) (rounds : Fin n → Ipp.RoundComs G1 GT)
    (initial : Ipp.FoldedValues G1 GT) :
    (Ipp.foldRounds n raw rounds initial).comA.1 =
      foldLane n raw (fun i => ((rounds i).LA.1, (rounds i).RA.1))
        initial.comA.1 := by
  induction n generalizing initial with
  | zero => rfl
  | succ n ih =>
      simp only [Ipp.foldRounds, foldLane]
      rw [ih]
      simp [Ipp.foldOne, Ipp.foldCom, Ipp.gipaChallenge]

private theorem foldRounds_comB {n : Nat}
    (raw : Fin n → F) (rounds : Fin n → Ipp.RoundComs G1 GT)
    (initial : Ipp.FoldedValues G1 GT) :
    (Ipp.foldRounds n raw rounds initial).comB =
      foldLane n raw (fun i => ((rounds i).LB, (rounds i).RB))
        initial.comB := by
  induction n generalizing initial with
  | zero => rfl
  | succ n ih =>
      simp only [Ipp.foldRounds, foldLane]
      rw [ih]
      simp [Ipp.foldOne, Ipp.foldCom, Ipp.gipaChallenge]

private theorem foldRounds_comT_fst {n : Nat}
    (raw : Fin n → F) (rounds : Fin n → Ipp.RoundComs G1 GT)
    (initial : Ipp.FoldedValues G1 GT) :
    (Ipp.foldRounds n raw rounds initial).comT.1 =
      foldLane n raw (fun i => ((rounds i).LT.1, (rounds i).RT.1))
        initial.comT.1 := by
  induction n generalizing initial with
  | zero => rfl
  | succ n ih =>
      simp only [Ipp.foldRounds, foldLane]
      rw [ih]
      simp [Ipp.foldOne, Ipp.foldCom, Ipp.gipaChallenge]

private theorem foldRounds_comA_snd {n : Nat}
    (raw : Fin n → F) (rounds : Fin n → Ipp.RoundComs G1 GT)
    (initial : Ipp.FoldedValues G1 GT) :
    (Ipp.foldRounds n raw rounds initial).comA.2 =
      foldLane n raw (fun i => ((rounds i).LA.2, (rounds i).RA.2))
        initial.comA.2 := by
  induction n generalizing initial with
  | zero => rfl
  | succ n ih =>
      simp only [Ipp.foldRounds, foldLane]
      rw [ih]
      simp [Ipp.foldOne, Ipp.foldCom, Ipp.gipaChallenge]

/-- The optimized four-MSM result is the exact terminal verifier fold. -/
theorem optimizedLanes_eq_terminalFold {n : Nat}
    (comA : GT × GT) (comB : GT)
    (proof : Ipp.Proof n F G1 G2 GT) (raw : Fin n → F) :
    optimizedLanes comA comB proof raw =
      terminalLanes (Ipp.terminalFold comA comB proof raw) := by
  funext lane
  unfold optimizedLanes
  rw [← shared_gt_fold_exact,
    sequentialFold_ofFn_eq_foldLane]
  fin_cases lane
  · exact (foldRounds_comA_fst raw proof.rounds
      { comA := comA, comB := comB,
        comT := (proof.ipAb, proof.aggC) }).symm
  · exact (foldRounds_comB raw proof.rounds
      { comA := comA, comB := comB,
        comT := (proof.ipAb, proof.aggC) }).symm
  · exact (foldRounds_comT_fst raw proof.rounds
      { comA := comA, comB := comB,
        comT := (proof.ipAb, proof.aggC) }).symm
  · exact (foldRounds_comA_snd raw proof.rounds
      { comA := comA, comB := comB,
        comT := (proof.ipAb, proof.aggC) }).symm

/-- Tuple ordering at the concrete primitive boundary: ComA.1, ComB, ipAb,
ComA.2. -/
theorem optimizedTuple_eq_terminalFold {n : Nat}
    (comA : GT × GT) (comB : GT)
    (proof : Ipp.Proof n F G1 G2 GT) (raw : Fin n → F) :
    (optimizedLanes comA comB proof raw 0,
      optimizedLanes comA comB proof raw 1,
      optimizedLanes comA comB proof raw 2,
      optimizedLanes comA comB proof raw 3) =
      let terminal := Ipp.terminalFold comA comB proof raw
      (terminal.comA.1, terminal.comB, terminal.comT.1,
        terminal.comA.2) := by
  have h := optimizedLanes_eq_terminalFold comA comB proof raw
  have h0 := congrFun h 0
  have h1 := congrFun h 1
  have h2 := congrFun h 2
  have h3 := congrFun h 3
  simpa [terminalLanes] using And.intro h0 (And.intro h1 (And.intro h2 h3))

#print axioms optimizedLanes_eq_terminalFold
#print axioms optimizedTuple_eq_terminalFold

end Ipp.OptimizedGtFoldRefinement
