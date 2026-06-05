module Penumbra_sdk_shielded_pool.Split.Generated
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open FStar.Mul
open Core_models

type t_SplitFamilyId = | SplitFamilyId : u32 -> t_SplitFamilyId

[@@ FStar.Tactics.Typeclasses.tcinstance]
assume
val impl_8': Core_models.Cmp.t_PartialEq t_SplitFamilyId t_SplitFamilyId

unfold
let impl_8 = impl_8'

let impl_SplitFamilyId__OneByFour: t_SplitFamilyId = SplitFamilyId (mk_u32 1) <: t_SplitFamilyId

let impl_SplitFamilyId__OneByEight: t_SplitFamilyId = SplitFamilyId (mk_u32 2) <: t_SplitFamilyId

type t_SplitFamilySpec = {
  f_id:t_SplitFamilyId;
  f_label:string;
  f_artifact_name:string;
  f_n_in:usize;
  f_n_out:usize
}

let v_SPLIT_FAMILY_SPECS: t_Array t_SplitFamilySpec (mk_usize 2) =
  let list =
    [
      {
        f_id = impl_SplitFamilyId__OneByFour;
        f_label = "split1x4";
        f_artifact_name = "split1x4";
        f_n_in = mk_usize 1;
        f_n_out = mk_usize 4
      }
      <:
      t_SplitFamilySpec;
      {
        f_id = impl_SplitFamilyId__OneByEight;
        f_label = "split1x8";
        f_artifact_name = "split1x8";
        f_n_in = mk_usize 1;
        f_n_out = mk_usize 8
      }
      <:
      t_SplitFamilySpec
    ]
  in
  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
  Rust_primitives.Hax.array_of_list 2 list

let impl_SplitFamilyId__spec (self: t_SplitFamilyId) : t_SplitFamilySpec =
  let
  (_: Core_models.Slice.Iter.t_Iter t_SplitFamilySpec),
  (out: Core_models.Option.t_Option t_SplitFamilySpec) =
    Core_models.Iter.Traits.Iterator.f_find #(Core_models.Slice.Iter.t_Iter t_SplitFamilySpec)
      #FStar.Tactics.Typeclasses.solve
      #(t_SplitFamilySpec -> bool)
      (Core_models.Slice.impl__iter #t_SplitFamilySpec
          (v_SPLIT_FAMILY_SPECS <: t_Slice t_SplitFamilySpec)
        <:
        Core_models.Slice.Iter.t_Iter t_SplitFamilySpec)
      (fun spec ->
          let spec:t_SplitFamilySpec = spec in
          spec.f_id =. self <: bool)
  in
  Core_models.Option.impl__expect #t_SplitFamilySpec out "unknown split family id"

let impl_SplitFamilyId__input_count (self: t_SplitFamilyId) : usize =
  (impl_SplitFamilyId__spec self).f_n_in

let impl_SplitFamilyId__output_count (self: t_SplitFamilyId) : usize =
  (impl_SplitFamilyId__spec self).f_n_out
