module Penumbra_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open FStar.Mul
open Core_models

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Anyhow.__private.Not in
  let open Penumbra_sdk_shielded_pool.Shielded_ics20_withdrawal.Generated in
  ()

type t_ShieldedIcs20WithdrawalInputPublic = {
  f_nullifier:Penumbra_sdk_sct.Nullifier.t_Nullifier;
  f_rk:Decaf377_rdsa.Verification_key.t_VerificationKey Decaf377_rdsa.Domain.t_SpendAuth
}

type t_ShieldedIcs20WithdrawalChangePublic = {
  f_note_commitment:Penumbra_sdk_tct.Commitment.t_StateCommitment
}

type t_ShieldedIcs20WithdrawalProofPublic = {
  f_family_id:Penumbra_sdk_shielded_pool.Shielded_ics20_withdrawal.Generated.t_ShieldedIcs20WithdrawalFamilyId;
  f_anchor:Penumbra_sdk_tct.Tree.t_Root;
  f_balance_commitment:Penumbra_sdk_asset.Balance.Commitment.t_Commitment;
  f_asset_anchor:Penumbra_sdk_tct.Commitment.t_StateCommitment;
  f_compliance_anchor:Penumbra_sdk_tct.Commitment.t_StateCommitment;
  f_target_timestamp:Decaf377.Fields.Fq.U64.Wrapper.t_Fq;
  f_inputs:Alloc.Vec.t_Vec t_ShieldedIcs20WithdrawalInputPublic Alloc.Alloc.t_Global;
  f_change_output:t_ShieldedIcs20WithdrawalChangePublic;
  f_outbound_asset_id:Decaf377.Fields.Fq.U64.Wrapper.t_Fq;
  f_outbound_amount:Decaf377.Fields.Fq.U64.Wrapper.t_Fq;
  f_withdrawal_effect_hash_lo:Decaf377.Fields.Fq.U64.Wrapper.t_Fq;
  f_withdrawal_effect_hash_hi:Decaf377.Fields.Fq.U64.Wrapper.t_Fq
}

let impl_ShieldedIcs20WithdrawalProofPublic__validate_shape
      (self: t_ShieldedIcs20WithdrawalProofPublic)
    : Core_models.Result.t_Result Prims.unit Anyhow.t_Error =
  if
    Anyhow.__private.not #bool
      (self.f_family_id =.
        Penumbra_sdk_shielded_pool.Shielded_ics20_withdrawal.Generated.impl_ShieldedIcs20WithdrawalFamilyId__Canonical
        <:
        bool)
  then
    let error:Anyhow.t_Error =
      Anyhow.__private.format_err (Core_models.Fmt.Rt.impl_1__new_const (mk_usize 1)
            (let list = ["shielded ICS-20 withdrawal family must be canonical"] in
              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
              Rust_primitives.Hax.array_of_list 1 list)
          <:
          Core_models.Fmt.t_Arguments)
    in
    Core_models.Result.Result_Err error <: Core_models.Result.t_Result Prims.unit Anyhow.t_Error
  else
    if
      Anyhow.__private.not #bool
        ((Alloc.Vec.impl_1__len #t_ShieldedIcs20WithdrawalInputPublic
              #Alloc.Alloc.t_Global
              self.f_inputs
            <:
            usize) =.
          (Penumbra_sdk_shielded_pool.Shielded_ics20_withdrawal.Generated.impl_ShieldedIcs20WithdrawalFamilyId__input_count
              self.f_family_id
            <:
            usize)
          <:
          bool)
    then
      let args:(string & usize & usize) =
        Penumbra_sdk_shielded_pool.Shielded_ics20_withdrawal.Generated.impl_ShieldedIcs20WithdrawalFamilyId__label
          self.f_family_id,
        Penumbra_sdk_shielded_pool.Shielded_ics20_withdrawal.Generated.impl_ShieldedIcs20WithdrawalFamilyId__input_count
          self.f_family_id,
        Alloc.Vec.impl_1__len #t_ShieldedIcs20WithdrawalInputPublic
          #Alloc.Alloc.t_Global
          self.f_inputs
        <:
        (string & usize & usize)
      in
      let args:t_Array Core_models.Fmt.Rt.t_Argument (mk_usize 3) =
        let list =
          [
            Core_models.Fmt.Rt.impl__new_display #string args._1;
            Core_models.Fmt.Rt.impl__new_display #usize args._2;
            Core_models.Fmt.Rt.impl__new_display #usize args._3
          ]
        in
        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
        Rust_primitives.Hax.array_of_list 3 list
      in
      Core_models.Result.Result_Err
      (Anyhow.Error.impl__msg #Alloc.String.t_String
          (Core_models.Hint.must_use #Alloc.String.t_String
              (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1 (mk_usize 3)
                      (mk_usize 3)
                      (let list = [""; " expects "; " inputs, got "] in
                        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 3);
                        Rust_primitives.Hax.array_of_list 3 list)
                      args
                    <:
                    Core_models.Fmt.t_Arguments)
                <:
                Alloc.String.t_String)
            <:
            Alloc.String.t_String))
      <:
      Core_models.Result.t_Result Prims.unit Anyhow.t_Error
    else
      Core_models.Result.Result_Ok (() <: Prims.unit)
      <:
      Core_models.Result.t_Result Prims.unit Anyhow.t_Error
