import Ipp.Extracted.PolynomialEvaluationProductFormGenerated
import Ipp.Kzg

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do
open scoped BigOperators

noncomputable section

private def cloneModel (T : Type) : core.clone.Clone T where
  clone x := .ok x

private def addModel (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add x y := .ok (x + y)

private def mulModel (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul x y := .ok (x * y)

private def oneModel (T : Type) [One T] [Mul T] :
    ark_ip_proofs.num_traits.identities.One T where
  coreopsarithMulInst := mulModel T
  one := .ok 1

private def zeroModel (T : Type) [Zero T] [Add T] :
    ark_ip_proofs.num_traits.identities.Zero T where
  coreopsarithAddInst := addModel T
  zero := .ok 0
  is_zero x := by classical exact .ok (decide (x = 0))

private def finVec {T : Type} {n : ℕ} (v : Fin n → T) :
    alloc.vec.Vec T :=
  ⟨List.ofFn v⟩

/- The exact S2-07 bridge goal. The extracted loops build the product factors
   and then multiply them; the model side is the transcript product identity. -/
def polynomial_evaluation_product_form_refinement_statement
    {F : Type} [Field F] {μ : ℕ} (x : Fin μ → F) (z rShift : F) : Prop :=
  ark_ip_proofs.tipa.polynomial_evaluation_product_form_from_transcript
      (cloneModel F) (oneModel F) (zeroModel F) (addModel F) (mulModel F)
      (finVec x) z rShift =
    .ok (∏ j : Fin μ, (1 + (x j * rShift ^ (2 ^ (j : ℕ))) *
      z ^ (2 ^ (j : ℕ))))

end
end Ipp.Extracted
