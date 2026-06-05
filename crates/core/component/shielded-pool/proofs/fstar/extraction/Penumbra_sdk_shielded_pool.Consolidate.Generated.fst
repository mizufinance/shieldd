module Penumbra_sdk_shielded_pool.Consolidate.Generated
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open FStar.Mul
open Core_models

type t_ConsolidateFamilyId = | ConsolidateFamilyId : u32 -> t_ConsolidateFamilyId

[@@ FStar.Tactics.Typeclasses.tcinstance]
assume
val impl_8': Core_models.Cmp.t_PartialEq t_ConsolidateFamilyId t_ConsolidateFamilyId

unfold
let impl_8 = impl_8'

let impl_ConsolidateFamilyId__TwoByOne: t_ConsolidateFamilyId =
  ConsolidateFamilyId (mk_u32 1) <: t_ConsolidateFamilyId

let impl_ConsolidateFamilyId__FourByOne: t_ConsolidateFamilyId =
  ConsolidateFamilyId (mk_u32 2) <: t_ConsolidateFamilyId

let impl_ConsolidateFamilyId__EightByOne: t_ConsolidateFamilyId =
  ConsolidateFamilyId (mk_u32 3) <: t_ConsolidateFamilyId

type t_ConsolidateFamilySpec = {
  f_id:t_ConsolidateFamilyId;
  f_label:string;
  f_artifact_name:string;
  f_n_in:usize;
  f_n_out:usize
}

let v_CONSOLIDATE_FAMILY_SPECS: t_Array t_ConsolidateFamilySpec (mk_usize 3) =
  let list =
    [
      {
        f_id = impl_ConsolidateFamilyId__TwoByOne;
        f_label = "consolidate2x1";
        f_artifact_name = "consolidate2x1";
        f_n_in = mk_usize 2;
        f_n_out = mk_usize 1
      }
      <:
      t_ConsolidateFamilySpec;
      {
        f_id = impl_ConsolidateFamilyId__FourByOne;
        f_label = "consolidate4x1";
        f_artifact_name = "consolidate4x1";
        f_n_in = mk_usize 4;
        f_n_out = mk_usize 1
      }
      <:
      t_ConsolidateFamilySpec;
      {
        f_id = impl_ConsolidateFamilyId__EightByOne;
        f_label = "consolidate8x1";
        f_artifact_name = "consolidate8x1";
        f_n_in = mk_usize 8;
        f_n_out = mk_usize 1
      }
      <:
      t_ConsolidateFamilySpec
    ]
  in
  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
  Rust_primitives.Hax.array_of_list 3 list

let impl_ConsolidateFamilyId__spec (self: t_ConsolidateFamilyId) : t_ConsolidateFamilySpec =
  let
  (_: Core_models.Slice.Iter.t_Iter t_ConsolidateFamilySpec),
  (out: Core_models.Option.t_Option t_ConsolidateFamilySpec) =
    Core_models.Iter.Traits.Iterator.f_find #(Core_models.Slice.Iter.t_Iter t_ConsolidateFamilySpec)
      #FStar.Tactics.Typeclasses.solve
      #(t_ConsolidateFamilySpec -> bool)
      (Core_models.Slice.impl__iter #t_ConsolidateFamilySpec
          (v_CONSOLIDATE_FAMILY_SPECS <: t_Slice t_ConsolidateFamilySpec)
        <:
        Core_models.Slice.Iter.t_Iter t_ConsolidateFamilySpec)
      (fun spec ->
          let spec:t_ConsolidateFamilySpec = spec in
          spec.f_id =. self <: bool)
  in
  Core_models.Option.impl__expect #t_ConsolidateFamilySpec out "unknown consolidate family id"

let impl_ConsolidateFamilyId__input_count (self: t_ConsolidateFamilyId) : usize =
  (impl_ConsolidateFamilyId__spec self).f_n_in

let impl_ConsolidateFamilyId__output_count (self: t_ConsolidateFamilyId) : usize =
  (impl_ConsolidateFamilyId__spec self).f_n_out
