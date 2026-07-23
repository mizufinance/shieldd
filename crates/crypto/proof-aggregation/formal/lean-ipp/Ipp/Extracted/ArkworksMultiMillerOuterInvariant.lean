import Ipp.Extracted.ArkworksMultiMillerMul

/-! Prefix-product invariant for the outer four-pair chunk loop. -/

namespace Ipp.Extracted.ArkworksMultiMillerOuterInvariant

open Ipp.Bls12377
open Ipp.Extracted.ArkworksFq12
open Ipp.Extracted.ArkworksMultiMillerModel
open Ipp.Extracted.ArkworksMultiMillerChunkModel

/-- Completed single-pair folds in the processed input prefix. -/
def completedValues (filtered : List ExecPair) (processed : Nat) :
    List Fq12Model :=
  (filtered.take processed).map (fun pair => pairFold (sourcePair pair))

/-- Canonical accumulated product at one outer-loop chunk boundary. -/
structure OuterLoopInv (filtered : List ExecPair) (processed : Nat)
    (result : ArkworksMultiMillerModel.Fq12Limb) : Prop where
  processedBound : processed ≤ filtered.length
  canonical : Canonical12 result
  accumulator : decodeFq12 result = (completedValues filtered processed).prod

theorem outerLoopInv_initial (filtered : List ExecPair) :
    OuterLoopInv filtered 0
      ark_ip_proofs.s3_07_arkworks_fq_spike.FQ12_ONE := by
  refine ⟨by omega, fq12_one_spec.1, ?_⟩
  rw [fq12_one_spec.2]
  change fq12One = fq12One
  rfl

private theorem take_chunk (values : List ExecPair) (start width : Nat) :
    values.take (start + width) =
      values.take start ++ (values.drop start).take width := by
  calc
    values.take (start + width) =
        (values.take (start + width)).take start ++
          (values.take (start + width)).drop start :=
      (List.take_append_drop start (values.take (start + width))).symm
    _ = values.take start ++ (values.drop start).take width := by
      rw [List.take_take]
      simp only [Nat.min_eq_left (by omega : start ≤ start + width)]
      rw [List.take_drop]

/-- Advancing a chunk appends exactly its contiguous fold values. -/
theorem completedValues_advance
    (filtered : List ExecPair) (start next : Nat)
    (hstart : start ≤ next) :
    completedValues filtered next =
      completedValues filtered start ++
        (((filtered.drop start).take (next - start)).map
          (fun pair => pairFold (sourcePair pair))) := by
  have hnext : next = start + (next - start) := by omega
  unfold completedValues
  rw [hnext, take_chunk, List.map_append]
  rw [show start + (next - start) - start = next - start by omega]

end Ipp.Extracted.ArkworksMultiMillerOuterInvariant
