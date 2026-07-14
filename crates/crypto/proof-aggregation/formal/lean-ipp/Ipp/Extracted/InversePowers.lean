import Ipp.Extracted.InversePowersGenerated
import Ipp.FsGame

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do

private def cloneModel (T : Type) : core.clone.Clone T where
  clone x := .ok x

private def mulModel (T : Type) [Mul T] :
    ark_ip_proofs.core.ops.arith.Mul T T T where
  mul x y := .ok (x * y)

private def oneModel (T : Type) [One T] [Mul T] :
    ark_ip_proofs.num_traits.identities.One T where
  coreopsarithMulInst := mulModel T
  one := .ok 1

private def finVec {T : Type} {n : ℕ} (v : Fin n → T) : alloc.vec.Vec T :=
  ⟨List.ofFn v⟩

def inverse_powers_refinement_statement
    {F : Type} [Field F] {n : ℕ} (rInv : F) : Prop :=
  ark_ip_proofs.applications.groth16_aggregation.inverse_powers_with_inverse
      (cloneModel F) (oneModel F) (mulModel F) ⟨n⟩ rInv =
    .ok (finVec (fun i : Fin n => rInv ^ (i : ℕ)))

def inverse_powers_nonzero_refinement_statement
    {F : Type} [Field F] {n : ℕ} (r : F) (hr : r ≠ 0) : Prop :=
  inverse_powers_refinement_statement (n := n) (r⁻¹)

end Ipp.Extracted
