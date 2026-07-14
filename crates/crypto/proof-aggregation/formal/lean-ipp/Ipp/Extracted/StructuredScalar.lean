import Ipp.Extracted.StructuredScalarGenerated
import Ipp.FsGame

namespace Ipp.Extracted

open Aeneas Aeneas.Std Result ControlFlow Error
open Std.Do

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

private def finSlice {T : Type} {n : ℕ} (v : Fin n → T) : Slice T :=
  ⟨List.ofFn v⟩

/- Exact S2-11 bridge statement. The Rust input is the already reversed raw
   transcript; the model receives the explicit reversed chronology. -/
def structured_scalar_final_refinement_statement
    {F : Type} [Field F] {μ : ℕ} (x : Fin μ → F) (r : F) : Prop :=
  ark_ip_proofs.applications.groth16_aggregation.structured_scalar_final_from_raw_transcript_inner
      (cloneModel F) (oneModel F) (addModel F) (mulModel F)
      (finSlice (Ipp.reversedView x)) r =
    .ok (Ipp.terminalR r (Ipp.reversedView x))

end Ipp.Extracted
