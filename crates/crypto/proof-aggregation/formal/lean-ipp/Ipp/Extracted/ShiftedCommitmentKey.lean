import Ipp.Extracted.ShiftedCommitmentKeyGenerated
import Ipp.Algebra

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do

private def copyModel (T : Type) :
    ark_ip_proofs.core.marker.Copy T := ⟨⟩

private def mulModel (F G : Type) [SMul F G] :
    ark_ip_proofs.core.ops.arith.Mul G F G where
  mul x s := .ok (s • x)

private def finSlice {T : Type} {n : ℕ} (v : Fin n → T) : Slice T :=
  ⟨List.ofFn v⟩

private def finVec {T : Type} {n : ℕ} (v : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn v⟩

def shifted_commitment_key_refinement_statement
    {F G : Type} [Field F] [AddCommGroup G] [Module F G]
    {n : ℕ} (ck : Fin n → G) (powers : Fin n → F) : Prop :=
  ark_ip_proofs.applications.groth16_aggregation.build_shifted_ck_2_inner
      (copyModel G) (mulModel F G) (copyModel F)
      (finSlice ck) (finSlice powers) =
    .ok (finVec (fun i => powers i • ck i))

end Ipp.Extracted
