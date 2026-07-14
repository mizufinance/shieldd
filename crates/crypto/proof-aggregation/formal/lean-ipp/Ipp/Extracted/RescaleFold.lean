import Ipp.Extracted.RescaleFoldGenerated
import Ipp.Gipa

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do

private def cloneModel (T : Type) : core.clone.Clone T where
  clone x := .ok x

private def addModel (T : Type) [Add T] :
    ark_ip_proofs.core.ops.arith.Add T T T where
  add x y := .ok (x + y)

private def smulAssignModel (F M : Type) [SMul F M] :
    ark_ip_proofs.core.ops.arith.MulAssign M F where
  mul_assign x s := .ok (s • x)

private def finSlice {T : Type} {n : ℕ} (v : Fin n → T) : Slice T :=
  ⟨List.ofFn v⟩

private def finVec {T : Type} {n : ℕ} (v : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn v⟩

/- The exact S2-03 bridge goal. The extracted result is list-backed because the
   vendored runtime models Vec; the model side is the same finite vector. -/
def rescale_fold_refinement_statement
    {F M : Type} [Field F] [AddCommGroup M] [Module F M]
    {n : ℕ} (scaled_half unscaled_half : Fin n → M) (scalar : F) : Prop :=
  ark_ip_proofs.gipa.rescale_fold_inner
      (cloneModel M) (addModel M) (smulAssignModel F M) (cloneModel F)
      (finSlice scaled_half) (finSlice unscaled_half) scalar =
    .ok (finVec (Ipp.foldMsg scalar (Fin.addCases unscaled_half scaled_half)))

end Ipp.Extracted
