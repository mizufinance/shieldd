module Penumbra_sdk_shielded_pool.Consolidate.Proof
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open FStar.Mul
open Core_models

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Anyhow.__private.Not in
  ()

type t_ConsolidateInputPublic = {
  f_nullifier:Penumbra_sdk_sct.Nullifier.t_Nullifier;
  f_rk:Decaf377_rdsa.Verification_key.t_VerificationKey Decaf377_rdsa.Domain.t_SpendAuth
}

type t_ConsolidateOutputPublic = { f_note_commitment:Penumbra_sdk_tct.Commitment.t_StateCommitment }

type t_ConsolidateProofPublic = {
  f_family_id:Penumbra_sdk_shielded_pool.Consolidate.Generated.t_ConsolidateFamilyId;
  f_anchor:Penumbra_sdk_tct.Tree.t_Root;
  f_balance_commitment:Penumbra_sdk_asset.Balance.Commitment.t_Commitment;
  f_inputs:Alloc.Vec.t_Vec t_ConsolidateInputPublic Alloc.Alloc.t_Global;
  f_outputs:Alloc.Vec.t_Vec t_ConsolidateOutputPublic Alloc.Alloc.t_Global
}

let impl_ConsolidateProofPublic__validate_shape (self: t_ConsolidateProofPublic)
    : Core_models.Result.t_Result Prims.unit Anyhow.t_Error =
  let spec:Penumbra_sdk_shielded_pool.Consolidate.Generated.t_ConsolidateFamilySpec =
    Penumbra_sdk_shielded_pool.Consolidate.Generated.impl_ConsolidateFamilyId__spec self.f_family_id
  in
  if
    Anyhow.__private.not #bool
      ((Alloc.Vec.impl_1__len #t_ConsolidateInputPublic #Alloc.Alloc.t_Global self.f_inputs <: usize
        ) =.
        spec.Penumbra_sdk_shielded_pool.Consolidate.Generated.f_n_in
        <:
        bool)
  then
    let args:(string & usize & usize) =
      spec.Penumbra_sdk_shielded_pool.Consolidate.Generated.f_label,
      spec.Penumbra_sdk_shielded_pool.Consolidate.Generated.f_n_in,
      Alloc.Vec.impl_1__len #t_ConsolidateInputPublic #Alloc.Alloc.t_Global self.f_inputs
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
    if
      Anyhow.__private.not #bool
        ((Alloc.Vec.impl_1__len #t_ConsolidateOutputPublic #Alloc.Alloc.t_Global self.f_outputs
            <:
            usize) =.
          spec.Penumbra_sdk_shielded_pool.Consolidate.Generated.f_n_out
          <:
          bool)
    then
      let args:(string & usize & usize) =
        spec.Penumbra_sdk_shielded_pool.Consolidate.Generated.f_label,
        spec.Penumbra_sdk_shielded_pool.Consolidate.Generated.f_n_out,
        Alloc.Vec.impl_1__len #t_ConsolidateOutputPublic #Alloc.Alloc.t_Global self.f_outputs
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
                      (let list = [""; " expects "; " outputs, got "] in
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
