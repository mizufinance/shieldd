import Ipp.FsGame

/-!
Normative SnarkPack-v1 verifier and Fiat--Shamir game.  This module exposes the
existing abstract development as a protocol layer and deliberately has no
generated or implementation imports.
-/

namespace Ipp.SnarkPackV1

abbrev Statement (μ : Nat) (F G1 G2 GT : Type)
    [CommSemiring F]
    [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT] :=
  Ipp.FsStatement μ F G1 G2 GT

abbrev AggregateProof (μ : Nat) (F G1 G2 GT : Type) :=
  Ipp.Proof μ F G1 G2 GT

abbrev Transcript (μ : Nat) (F : Type) :=
  Ipp.FsTranscript μ F

abbrev Result (μ : Nat) (F G1 G2 GT : Type) :=
  Ipp.FsResult μ F G1 G2 GT

def Accepts {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT)
    (transcript : Transcript μ F) : Prop :=
  Ipp.FsAccepts statement proof transcript

/-- The deployed nonce domain contains exactly `2^64` distinct attempts. -/
def deployedRejectionFuel : Nat :=
  2 ^ 64

def UsesDeployedRejectionFuel {μ : Nat} {F G1 G2 GT : Type}
    [CommSemiring F]
    [AddCommMonoid G1] [Module F G1]
    [AddCommMonoid G2] [Module F G2]
    [AddCommMonoid GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT) : Prop :=
  statement.rejectionFuel = deployedRejectionFuel

theorem accepts_eq_fsAccepts {μ : Nat} {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    (statement : Statement μ F G1 G2 GT)
    (proof : AggregateProof μ F G1 G2 GT)
    (transcript : Transcript μ F) :
    Accepts statement proof transcript ↔
      Ipp.FsAccepts statement proof transcript :=
  Iff.rfl

end Ipp.SnarkPackV1
