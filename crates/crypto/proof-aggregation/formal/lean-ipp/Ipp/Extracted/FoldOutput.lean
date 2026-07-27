import Ipp.Extracted.FoldOutputGenerated
import Ipp.Gipa

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result

private def cloneModel (T : Type) : core.clone.Clone T where
  clone x := .ok x

private def defaultModel (T : Type) [Zero T] : core.default.Default T where
  default := .ok 0

private def addModel (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add x y := .ok (x + y)

private def smulAssignModel (F M : Type) [SMul F M] :
    ark_ip_proofs.core.ops.arith.MulAssign M F where
  mul_assign x s := .ok (s • x)

/-- The extracted mutation returns the verifier commitment fold. -/
theorem hax_translated_fold_output_eq_foldCom
    {F M : Type} [Field F] [AddCommGroup M] [Module F M]
    (left current right : M) (c : F) (_hc : c ≠ 0) :
    ark_ip_proofs.gipa.fold_output
        (cloneModel M) (defaultModel M) (addModel M) (smulAssignModel F M)
        (cloneModel F) left current right c c⁻¹ =
      .ok (Ipp.foldCom c left current right) := by
  rfl

end Ipp.Extracted
