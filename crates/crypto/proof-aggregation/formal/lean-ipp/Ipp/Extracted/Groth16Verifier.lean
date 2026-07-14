import Ipp.FsGame

namespace Ipp.Extracted

open scoped BigOperators

/- The executed PPE and aggregate path currently stop in Aeneas at the
   arkworks Pairing/PairingOutput associated-type group. These statements keep
   the exact refinement boundary without introducing a pairing or verifier
   result axiom. -/

def fold_public_inputs_refinement_statement
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {m n : ℕ} (gamma : Fin (n + 1) → G) (inputs : Fin m → Fin n → F)
    (r runSum : F) (runGic : G) : Prop :=
  runSum = (∑ i : Fin m, r ^ (i : ℕ)) ∧
    runGic =
      (runSum • gamma 0) +
        ∑ j : Fin n,
          (∑ i : Fin m, r ^ (i : ℕ) * inputs i j) • gamma (Fin.succ j)

def verify_ppe_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (e : G1 → G2 → GT) (alpha : G1) (beta gamma delta : G2)
    (gIC aggC : G1) (ipAb : GT) (rSum : F) (run : Bool) : Prop :=
  run = true ↔
    e (rSum • alpha) beta + e gIC gamma + e aggC delta = ipAb

def verify_tipp_mipp_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {μ : ℕ} (stmt : FsStatement μ F G1 G2 GT)
    (proof : Proof μ F G1 G2 GT) (transcript : FsTranscript μ F)
    (run : Bool) : Prop :=
  run = true ↔ Ipp.LeafData stmt proof transcript

def verify_aggregate_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    {μ : ℕ} (stmt : FsStatement μ F G1 G2 GT)
    (proof : Proof μ F G1 G2 GT) (transcript : FsTranscript μ F)
    (run : Bool) : Prop :=
  run = true ↔ Ipp.FsAccepts stmt proof transcript

end Ipp.Extracted
