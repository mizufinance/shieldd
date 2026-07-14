import Ipp.Extracted.KzgVerifiersGenerated
import Ipp.Kzg

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result

private def cloneModel (T : Type) : core.clone.Clone T where
  clone x := .ok x

private def mulModel (F G : Type) [SMul F G] :
    ark_ip_proofs.core.ops.arith.Mul G F G where
  mul x s := .ok (s • x)

private def subModel (G : Type) [Sub G] :
    ark_ip_proofs.core.ops.arith.Sub G G G where
  sub x y := .ok (x - y)

private def negModel (G : Type) [Neg G] :
    ark_ip_proofs.core.ops.arith.Neg G G where
  neg x := .ok (-x)

private def pairingModel {F G1 G2 GT : Type}
    [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) :
    ark_ip_proofs.tipa.PairingEquation Unit G1 G2 where
  two_pairing_is_zero left0 right0 left1 right1 :=
    .ok (decide (e left0 right0 + e left1 right1 = 0))

def verify_commitment_key_g2_kzg_opening_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT]
    (e : G1 → G2 → GT) (g gBeta : G1) (h : G2)
    (key opening : G2) (eval z : F) (run : Bool) : Prop :=
  run = true ↔
    e g (key - eval • h) - e (gBeta - z • g) opening = 0

def verify_commitment_key_g1_kzg_opening_refinement_statement
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT]
    (e : G1 → G2 → GT) (g : G1) (hAlpha : G2) (h : G2)
    (key opening : G1) (eval z : F) (run : Bool) : Prop :=
  run = true ↔
    e (key - eval • g) h - e opening (hAlpha - z • h) = 0

theorem hax_translated_verify_g2_kzg_eq
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (g gBeta : G1) (h : G2)
    (key opening : G2) (eval z : F) :
    ark_ip_proofs.tipa.verify_commitment_key_g2_kzg_equation
        (cloneModel F) (cloneModel G1) (mulModel F G1) (subModel G1)
        (negModel G1) (cloneModel G2) (mulModel F G2) (subModel G2)
        (pairingModel e) g gBeta h key opening eval z =
      .ok (decide (e g (key - eval • h) - e (gBeta - z • g) opening = 0)) := by
  simp [ark_ip_proofs.tipa.verify_commitment_key_g2_kzg_equation,
    cloneModel, mulModel, subModel, negModel, pairingModel]
  constructor <;> intro hEq <;>
    simpa [sub_eq_add_neg, add_assoc, add_comm, add_left_comm] using hEq

theorem hax_translated_verify_g1_kzg_eq
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (g : G1) (hAlpha h : G2)
    (key opening : G1) (eval z : F) :
    ark_ip_proofs.tipa.verify_commitment_key_g1_kzg_equation
        (cloneModel F) (cloneModel G1) (mulModel F G1) (subModel G1)
        (negModel G1) (cloneModel G2) (mulModel F G2) (subModel G2)
        (pairingModel e) g hAlpha h key opening eval z =
      .ok (decide (e (key - eval • g) h - e opening (hAlpha - z • h) = 0)) := by
  simp [ark_ip_proofs.tipa.verify_commitment_key_g1_kzg_equation,
    cloneModel, mulModel, subModel, negModel, pairingModel]
  constructor <;> intro hEq <;>
    simpa [sub_eq_add_neg, add_assoc, add_comm, add_left_comm] using hEq

theorem hax_translated_verify_g2_kzg_true_iff
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (g gBeta : G1) (h : G2)
    (key opening : G2) (eval z : F) :
    ark_ip_proofs.tipa.verify_commitment_key_g2_kzg_equation
        (cloneModel F) (cloneModel G1) (mulModel F G1) (subModel G1)
        (negModel G1) (cloneModel G2) (mulModel F G2) (subModel G2)
        (pairingModel e) g gBeta h key opening eval z = .ok true ↔
      e g (key - eval • h) - e (gBeta - z • g) opening = 0 := by
  rw [hax_translated_verify_g2_kzg_eq]
  simp

theorem hax_translated_verify_g1_kzg_true_iff
    {F G1 G2 GT : Type} [Field F] [AddCommGroup G1] [Module F G1]
    [AddCommGroup G2] [Module F G2] [AddCommGroup GT] [Module F GT]
    [DecidableEq GT]
    (e : G1 →ₗ[F] G2 →ₗ[F] GT) (g : G1) (hAlpha h : G2)
    (key opening : G1) (eval z : F) :
    ark_ip_proofs.tipa.verify_commitment_key_g1_kzg_equation
        (cloneModel F) (cloneModel G1) (mulModel F G1) (subModel G1)
        (negModel G1) (cloneModel G2) (mulModel F G2) (subModel G2)
        (pairingModel e) g hAlpha h key opening eval z = .ok true ↔
      e (key - eval • g) h - e opening (hAlpha - z • h) = 0 := by
  rw [hax_translated_verify_g1_kzg_eq]
  simp

end Ipp.Extracted
