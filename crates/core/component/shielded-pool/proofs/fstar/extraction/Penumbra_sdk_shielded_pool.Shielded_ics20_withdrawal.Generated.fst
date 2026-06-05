module Penumbra_sdk_shielded_pool.Shielded_ics20_withdrawal.Generated
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open FStar.Mul
open Core_models

type t_ShieldedIcs20WithdrawalFamilyId =
  | ShieldedIcs20WithdrawalFamilyId : u32 -> t_ShieldedIcs20WithdrawalFamilyId

[@@ FStar.Tactics.Typeclasses.tcinstance]
assume
val impl_8': Core_models.Cmp.t_PartialEq t_ShieldedIcs20WithdrawalFamilyId
  t_ShieldedIcs20WithdrawalFamilyId

unfold
let impl_8 = impl_8'

let impl_ShieldedIcs20WithdrawalFamilyId__Canonical: t_ShieldedIcs20WithdrawalFamilyId =
  ShieldedIcs20WithdrawalFamilyId (mk_u32 1) <: t_ShieldedIcs20WithdrawalFamilyId

let impl_ShieldedIcs20WithdrawalFamilyId__input_count (self: t_ShieldedIcs20WithdrawalFamilyId)
    : usize = mk_usize 2

type t_ShieldedIcs20WithdrawalFamilySpec = {
  f_id:t_ShieldedIcs20WithdrawalFamilyId;
  f_label:string;
  f_artifact_name:string;
  f_n_in:usize
}

let v_SHIELDED_ICS20_WITHDRAWAL_FAMILY_SPECS: t_Array t_ShieldedIcs20WithdrawalFamilySpec
  (mk_usize 1) =
  let list =
    [
      {
        f_id = impl_ShieldedIcs20WithdrawalFamilyId__Canonical;
        f_label = "shielded_ics20_withdrawal";
        f_artifact_name = "shielded_ics20_withdrawal";
        f_n_in = mk_usize 2
      }
      <:
      t_ShieldedIcs20WithdrawalFamilySpec
    ]
  in
  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
  Rust_primitives.Hax.array_of_list 1 list

let impl_ShieldedIcs20WithdrawalFamilyId__spec (self: t_ShieldedIcs20WithdrawalFamilyId)
    : t_ShieldedIcs20WithdrawalFamilySpec =
  let
  (_: Core_models.Slice.Iter.t_Iter t_ShieldedIcs20WithdrawalFamilySpec),
  (out: Core_models.Option.t_Option t_ShieldedIcs20WithdrawalFamilySpec) =
    Core_models.Iter.Traits.Iterator.f_find #(Core_models.Slice.Iter.t_Iter
        t_ShieldedIcs20WithdrawalFamilySpec)
      #FStar.Tactics.Typeclasses.solve
      #(t_ShieldedIcs20WithdrawalFamilySpec -> bool)
      (Core_models.Slice.impl__iter #t_ShieldedIcs20WithdrawalFamilySpec
          (v_SHIELDED_ICS20_WITHDRAWAL_FAMILY_SPECS <: t_Slice t_ShieldedIcs20WithdrawalFamilySpec)
        <:
        Core_models.Slice.Iter.t_Iter t_ShieldedIcs20WithdrawalFamilySpec)
      (fun spec ->
          let spec:t_ShieldedIcs20WithdrawalFamilySpec = spec in
          spec.f_id =. self <: bool)
  in
  Core_models.Option.impl__expect #t_ShieldedIcs20WithdrawalFamilySpec
    out
    "unknown shielded ICS-20 withdrawal family id"

let impl_ShieldedIcs20WithdrawalFamilyId__label (self: t_ShieldedIcs20WithdrawalFamilyId) : string =
  (impl_ShieldedIcs20WithdrawalFamilyId__spec self).f_label
