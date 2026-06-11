module Shieldd_sdk_shielded_pool.Bundle
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open FStar.Mul
open Core_models

let _ =
  (* This module has implicit dependencies, here we make them explicit. *)
  (* The implicit dependencies arise from typeclasses instances. *)
  let open Anyhow.Error in
  let open Anyhow.__private.Not in
  let open Ark_ff.Fields.Prime in
  let open Ark_ff.To_field_vec in
  let open Decaf377.Ark_curve.R1cs in
  let open Decaf377.Fields.Fq.Arkworks in
  let open Decaf377.Fields.Fq.Ops in
  let open Decaf377.Fields.Fq.U64.Wrapper in
  let open Decaf377_rdsa.Domain in
  let open Shieldd_sdk_tct.Tree in
  ()

let v_CONSOLIDATE_STATEMENT_BASE_FIELDS: usize = mk_usize 2

let v_CONSOLIDATE_STATEMENT_FIELDS_PER_INPUT: usize = mk_usize 2

let v_CONSOLIDATE_STATEMENT_FIELDS_PER_OUTPUT: usize = mk_usize 1

let v_SPLIT_STATEMENT_BASE_FIELDS: usize = mk_usize 2

let v_SPLIT_STATEMENT_FIELDS_PER_INPUT: usize = mk_usize 2

let v_SPLIT_STATEMENT_FIELDS_PER_OUTPUT: usize = mk_usize 1

let v_TRANSFER_STATEMENT_BASE_FIELDS: usize = mk_usize 77

let v_TRANSFER_STATEMENT_FIELDS_PER_INPUT: usize = mk_usize 2

let v_TRANSFER_STATEMENT_FIELDS_PER_OUTPUT: usize = mk_usize 1

let v_SHIELDED_ICS20_WITHDRAWAL_STATEMENT_BASE_FIELDS: usize = mk_usize 10

let v_SHIELDED_ICS20_WITHDRAWAL_STATEMENT_FIELDS_PER_INPUT: usize = mk_usize 2

let consolidate_statement_field_count (n_in n_out: usize) : usize =
  (v_CONSOLIDATE_STATEMENT_BASE_FIELDS +!
    (v_CONSOLIDATE_STATEMENT_FIELDS_PER_INPUT *! n_in <: usize)
    <:
    usize) +!
  (v_CONSOLIDATE_STATEMENT_FIELDS_PER_OUTPUT *! n_out <: usize)

let split_statement_field_count (n_in n_out: usize) : usize =
  (v_SPLIT_STATEMENT_BASE_FIELDS +! (v_SPLIT_STATEMENT_FIELDS_PER_INPUT *! n_in <: usize) <: usize) +!
  (v_SPLIT_STATEMENT_FIELDS_PER_OUTPUT *! n_out <: usize)

let transfer_statement_field_count (n_in n_out: usize) : usize =
  (v_TRANSFER_STATEMENT_BASE_FIELDS +! (v_TRANSFER_STATEMENT_FIELDS_PER_INPUT *! n_in <: usize)
    <:
    usize) +!
  (v_TRANSFER_STATEMENT_FIELDS_PER_OUTPUT *! n_out <: usize)

let shielded_ics20_withdrawal_statement_field_count (n_in: usize) : usize =
  v_SHIELDED_ICS20_WITHDRAWAL_STATEMENT_BASE_FIELDS +!
  (v_SHIELDED_ICS20_WITHDRAWAL_STATEMENT_FIELDS_PER_INPUT *! n_in <: usize)

type t_StatementHashError =
  | StatementHashError_InvalidFieldLength {
    f_expected:usize;
    f_got:usize
  }: t_StatementHashError
  | StatementHashError_DecompressRk : Decaf377.Error.t_EncodingError -> t_StatementHashError
  | StatementHashError_FieldEncoding { f_field:Alloc.String.t_String }: t_StatementHashError
  | StatementHashError_InvalidCiphertextLength {
    f_label:Alloc.String.t_String;
    f_expected:usize;
    f_got:usize
  }: t_StatementHashError

let transfer_field_encoding_error (field: string) : t_StatementHashError =
  StatementHashError_FieldEncoding
  ({ f_field = Alloc.Borrow.f_to_owned #string #FStar.Tactics.Typeclasses.solve field })
  <:
  t_StatementHashError

let consolidate_field_encoding_error (field: string) : t_StatementHashError =
  StatementHashError_FieldEncoding
  ({ f_field = Alloc.Borrow.f_to_owned #string #FStar.Tactics.Typeclasses.solve field })
  <:
  t_StatementHashError

let split_field_encoding_error (field: string) : t_StatementHashError =
  StatementHashError_FieldEncoding
  ({ f_field = Alloc.Borrow.f_to_owned #string #FStar.Tactics.Typeclasses.solve field })
  <:
  t_StatementHashError

let note_reshape_rk_element
      (rk: Decaf377_rdsa.Verification_key.t_VerificationKey Decaf377_rdsa.Domain.t_SpendAuth)
    : Core_models.Result.t_Result Decaf377.Ark_curve.Element.Projective.t_Element
      t_StatementHashError =
  Core_models.Result.impl__map_err #Decaf377.Ark_curve.Element.Projective.t_Element
    #Decaf377.Error.t_EncodingError
    #t_StatementHashError
    #(Decaf377.Error.t_EncodingError -> t_StatementHashError)
    (Decaf377.Ark_curve.Encoding.impl_Encoding__vartime_decompress (Decaf377.Ark_curve.Encoding.Encoding
          (Decaf377_rdsa.Verification_key.impl_10__to_bytes #Decaf377_rdsa.Domain.t_SpendAuth rk
            <:
            t_Array u8 (mk_usize 32))
          <:
          Decaf377.Ark_curve.Encoding.t_Encoding)
      <:
      Core_models.Result.t_Result Decaf377.Ark_curve.Element.Projective.t_Element
        Decaf377.Error.t_EncodingError)
    StatementHashError_DecompressRk

class t_NoteReshapeInputPublic (v_Self: Type0) = {
  f_nullifier_pre:v_Self -> Type0;
  f_nullifier_post:v_Self -> Shieldd_sdk_sct.Nullifier.t_Nullifier -> Type0;
  f_nullifier:x0: v_Self
    -> Prims.Pure Shieldd_sdk_sct.Nullifier.t_Nullifier
        (f_nullifier_pre x0)
        (fun result -> f_nullifier_post x0 result);
  f_rk_pre:v_Self -> Type0;
  f_rk_post:
      v_Self ->
      Decaf377_rdsa.Verification_key.t_VerificationKey Decaf377_rdsa.Domain.t_SpendAuth
    -> Type0;
  f_rk:x0: v_Self
    -> Prims.Pure
        (Decaf377_rdsa.Verification_key.t_VerificationKey Decaf377_rdsa.Domain.t_SpendAuth)
        (f_rk_pre x0)
        (fun result -> f_rk_post x0 result)
}

class t_NoteReshapeOutputPublic (v_Self: Type0) = {
  f_note_commitment_pre:v_Self -> Type0;
  f_note_commitment_post:v_Self -> Shieldd_sdk_tct.Commitment.t_StateCommitment -> Type0;
  f_note_commitment:x0: v_Self
    -> Prims.Pure Shieldd_sdk_tct.Commitment.t_StateCommitment
        (f_note_commitment_pre x0)
        (fun result -> f_note_commitment_post x0 result)
}

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl: t_NoteReshapeInputPublic
Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateInputPublic =
  {
    f_nullifier_pre
    =
    (fun (self: Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateInputPublic) -> true);
    f_nullifier_post
    =
    (fun
        (self: Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateInputPublic)
        (out: Shieldd_sdk_sct.Nullifier.t_Nullifier)
        ->
        true);
    f_nullifier
    =
    (fun (self: Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateInputPublic) ->
        self.Shieldd_sdk_shielded_pool.Consolidate.Proof.f_nullifier);
    f_rk_pre
    =
    (fun (self: Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateInputPublic) -> true);
    f_rk_post
    =
    (fun
        (self: Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateInputPublic)
        (out: Decaf377_rdsa.Verification_key.t_VerificationKey Decaf377_rdsa.Domain.t_SpendAuth)
        ->
        true);
    f_rk
    =
    fun (self: Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateInputPublic) ->
      self.Shieldd_sdk_shielded_pool.Consolidate.Proof.f_rk
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_1: t_NoteReshapeOutputPublic
Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateOutputPublic =
  {
    f_note_commitment_pre
    =
    (fun (self: Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateOutputPublic) -> true);
    f_note_commitment_post
    =
    (fun
        (self: Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateOutputPublic)
        (out: Shieldd_sdk_tct.Commitment.t_StateCommitment)
        ->
        true);
    f_note_commitment
    =
    fun (self: Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateOutputPublic) ->
      self.Shieldd_sdk_shielded_pool.Consolidate.Proof.f_note_commitment
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_2: t_NoteReshapeInputPublic Shieldd_sdk_shielded_pool.Split.Proof.t_SplitInputPublic =
  {
    f_nullifier_pre = (fun (self: Shieldd_sdk_shielded_pool.Split.Proof.t_SplitInputPublic) -> true);
    f_nullifier_post
    =
    (fun
        (self: Shieldd_sdk_shielded_pool.Split.Proof.t_SplitInputPublic)
        (out: Shieldd_sdk_sct.Nullifier.t_Nullifier)
        ->
        true);
    f_nullifier
    =
    (fun (self: Shieldd_sdk_shielded_pool.Split.Proof.t_SplitInputPublic) ->
        self.Shieldd_sdk_shielded_pool.Split.Proof.f_nullifier);
    f_rk_pre = (fun (self: Shieldd_sdk_shielded_pool.Split.Proof.t_SplitInputPublic) -> true);
    f_rk_post
    =
    (fun
        (self: Shieldd_sdk_shielded_pool.Split.Proof.t_SplitInputPublic)
        (out: Decaf377_rdsa.Verification_key.t_VerificationKey Decaf377_rdsa.Domain.t_SpendAuth)
        ->
        true);
    f_rk
    =
    fun (self: Shieldd_sdk_shielded_pool.Split.Proof.t_SplitInputPublic) ->
      self.Shieldd_sdk_shielded_pool.Split.Proof.f_rk
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_3: t_NoteReshapeOutputPublic Shieldd_sdk_shielded_pool.Split.Proof.t_SplitOutputPublic =
  {
    f_note_commitment_pre
    =
    (fun (self: Shieldd_sdk_shielded_pool.Split.Proof.t_SplitOutputPublic) -> true);
    f_note_commitment_post
    =
    (fun
        (self: Shieldd_sdk_shielded_pool.Split.Proof.t_SplitOutputPublic)
        (out: Shieldd_sdk_tct.Commitment.t_StateCommitment)
        ->
        true);
    f_note_commitment
    =
    fun (self: Shieldd_sdk_shielded_pool.Split.Proof.t_SplitOutputPublic) ->
      self.Shieldd_sdk_shielded_pool.Split.Proof.f_note_commitment
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_4: t_NoteReshapeInputPublic
Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalInputPublic =
  {
    f_nullifier_pre
    =
    (fun
        (self:
          Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalInputPublic
        )
        ->
        true);
    f_nullifier_post
    =
    (fun
        (self:
          Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalInputPublic
        )
        (out: Shieldd_sdk_sct.Nullifier.t_Nullifier)
        ->
        true);
    f_nullifier
    =
    (fun
        (self:
          Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalInputPublic
        )
        ->
        self.Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_nullifier);
    f_rk_pre
    =
    (fun
        (self:
          Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalInputPublic
        )
        ->
        true);
    f_rk_post
    =
    (fun
        (self:
          Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalInputPublic
        )
        (out: Decaf377_rdsa.Verification_key.t_VerificationKey Decaf377_rdsa.Domain.t_SpendAuth)
        ->
        true);
    f_rk
    =
    fun
      (self:
        Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalInputPublic
      )
      ->
      self.Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_rk
  }

[@@ FStar.Tactics.Typeclasses.tcinstance]
let impl_5: t_NoteReshapeOutputPublic
Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalChangePublic =
  {
    f_note_commitment_pre
    =
    (fun
        (self:
          Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalChangePublic
        )
        ->
        true);
    f_note_commitment_post
    =
    (fun
        (self:
          Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalChangePublic
        )
        (out: Shieldd_sdk_tct.Commitment.t_StateCommitment)
        ->
        true);
    f_note_commitment
    =
    fun
      (self:
        Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalChangePublic
      )
      ->
      self.Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_note_commitment
  }

let note_reshape_statement_fields
      (#v_I #v_O: Type0)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i0: t_NoteReshapeInputPublic v_I)
      (#[FStar.Tactics.Typeclasses.tcresolve ()] i1: t_NoteReshapeOutputPublic v_O)
      (anchor: Shieldd_sdk_tct.Tree.t_Root)
      (balance_commitment: Shieldd_sdk_asset.Balance.Commitment.t_Commitment)
      (inputs: t_Slice v_I)
      (outputs: t_Slice v_O)
      (expected: usize)
      (field_encoding_error: (string -> t_StatementHashError))
    : Core_models.Result.t_Result
      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
      t_StatementHashError =
  let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global =
    Alloc.Vec.impl__with_capacity #Decaf377.Fields.Fq.U64.Wrapper.t_Fq expected
  in
  match
    Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
          Alloc.Alloc.t_Global)
      #t_StatementHashError
      #(Prims.unit -> t_StatementHashError)
      (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
          #FStar.Tactics.Typeclasses.solve
          (Core_models.Convert.f_from #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
              #Shieldd_sdk_tct.Tree.t_Root
              #FStar.Tactics.Typeclasses.solve
              anchor
            <:
            Decaf377.Fields.Fq.U64.Wrapper.t_Fq)
        <:
        Core_models.Option.t_Option
        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
      (fun temp_0_ ->
          let _:Prims.unit = temp_0_ in
          field_encoding_error "anchor")
    <:
    Core_models.Result.t_Result
      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
      t_StatementHashError
  with
  | Core_models.Result.Result_Ok hoist3 ->
    let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global =
      Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
            Alloc.Alloc.t_Global)
        #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
        #FStar.Tactics.Typeclasses.solve
        #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
        fields
        hoist3
    in
    (match
        Rust_primitives.Hax.Folds.fold_enumerated_slice_return outputs
          (fun fields temp_1_ ->
              let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global =
                fields
              in
              let _:usize = temp_1_ in
              true)
          fields
          (fun fields temp_1_ ->
              let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global =
                fields
              in
              let (index: usize), (output: v_O) = temp_1_ in
              match
                Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                  #t_StatementHashError
                  #(Prims.unit -> t_StatementHashError)
                  (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                      #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                      #FStar.Tactics.Typeclasses.solve
                      (f_note_commitment #v_O #FStar.Tactics.Typeclasses.solve output
                        <:
                        Shieldd_sdk_tct.Commitment.t_StateCommitment)
                        .Shieldd_sdk_tct.Commitment._0
                    <:
                    Core_models.Option.t_Option
                    (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
                  (fun temp_0_ ->
                      let _:Prims.unit = temp_0_ in
                      let args:usize = index <: usize in
                      let args:t_Array Core_models.Fmt.Rt.t_Argument (mk_usize 1) =
                        let list = [Core_models.Fmt.Rt.impl__new_display #usize args] in
                        FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                        Rust_primitives.Hax.array_of_list 1 list
                      in
                      field_encoding_error (Core_models.Ops.Deref.f_deref #Alloc.String.t_String
                            #FStar.Tactics.Typeclasses.solve
                            (Core_models.Hint.must_use #Alloc.String.t_String
                                (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1 (mk_usize 1)
                                        (mk_usize 1)
                                        (let list = ["note_commitment_"] in
                                          FStar.Pervasives.assert_norm
                                          (Prims.eq2 (List.Tot.length list) 1);
                                          Rust_primitives.Hax.array_of_list 1 list)
                                        args
                                      <:
                                      Core_models.Fmt.t_Arguments)
                                  <:
                                  Alloc.String.t_String)
                              <:
                              Alloc.String.t_String)))
                <:
                Core_models.Result.t_Result
                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                  t_StatementHashError
              with
              | Core_models.Result.Result_Ok hoist5 ->
                Core_models.Ops.Control_flow.ControlFlow_Continue
                (Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                    #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                    #FStar.Tactics.Typeclasses.solve
                    #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                    fields
                    hoist5
                  <:
                  Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                <:
                Core_models.Ops.Control_flow.t_ControlFlow
                  (Core_models.Ops.Control_flow.t_ControlFlow
                      (Core_models.Result.t_Result
                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                          t_StatementHashError)
                      (Prims.unit &
                        Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
              | Core_models.Result.Result_Err err ->
                Core_models.Ops.Control_flow.ControlFlow_Break
                (Core_models.Ops.Control_flow.ControlFlow_Break
                  (Core_models.Result.Result_Err err
                    <:
                    Core_models.Result.t_Result
                      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                      t_StatementHashError)
                  <:
                  Core_models.Ops.Control_flow.t_ControlFlow
                    (Core_models.Result.t_Result
                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        t_StatementHashError)
                    (Prims.unit &
                      Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
                <:
                Core_models.Ops.Control_flow.t_ControlFlow
                  (Core_models.Ops.Control_flow.t_ControlFlow
                      (Core_models.Result.t_Result
                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                          t_StatementHashError)
                      (Prims.unit &
                        Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
        <:
        Core_models.Ops.Control_flow.t_ControlFlow
          (Core_models.Result.t_Result
              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
              t_StatementHashError)
          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
      with
      | Core_models.Ops.Control_flow.ControlFlow_Break ret -> ret
      | Core_models.Ops.Control_flow.ControlFlow_Continue fields ->
        match
          Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                Alloc.Alloc.t_Global)
            #t_StatementHashError
            #(Prims.unit -> t_StatementHashError)
            (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Ark_curve.Element.Projective.t_Element
                #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                #FStar.Tactics.Typeclasses.solve
                balance_commitment.Shieldd_sdk_asset.Balance.Commitment._0
              <:
              Core_models.Option.t_Option
              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
            (fun temp_0_ ->
                let _:Prims.unit = temp_0_ in
                field_encoding_error "balance_commitment")
          <:
          Core_models.Result.t_Result
            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
            t_StatementHashError
        with
        | Core_models.Result.Result_Ok hoist7 ->
          let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global =
            Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
              #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
              #FStar.Tactics.Typeclasses.solve
              #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
              fields
              hoist7
          in
          (match
              Rust_primitives.Hax.Folds.fold_enumerated_slice_return inputs
                (fun fields temp_1_ ->
                    let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                      Alloc.Alloc.t_Global =
                      fields
                    in
                    let _:usize = temp_1_ in
                    true)
                fields
                (fun fields temp_1_ ->
                    let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                      Alloc.Alloc.t_Global =
                      fields
                    in
                    let (index: usize), (input: v_I) = temp_1_ in
                    match
                      Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        #t_StatementHashError
                        #(Prims.unit -> t_StatementHashError)
                        (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                            #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                            #FStar.Tactics.Typeclasses.solve
                            (f_nullifier #v_I #FStar.Tactics.Typeclasses.solve input
                              <:
                              Shieldd_sdk_sct.Nullifier.t_Nullifier)
                              .Shieldd_sdk_sct.Nullifier._0
                          <:
                          Core_models.Option.t_Option
                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        )
                        (fun temp_0_ ->
                            let _:Prims.unit = temp_0_ in
                            let args:usize = index <: usize in
                            let args:t_Array Core_models.Fmt.Rt.t_Argument (mk_usize 1) =
                              let list = [Core_models.Fmt.Rt.impl__new_display #usize args] in
                              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                              Rust_primitives.Hax.array_of_list 1 list
                            in
                            field_encoding_error (Core_models.Ops.Deref.f_deref #Alloc.String.t_String
                                  #FStar.Tactics.Typeclasses.solve
                                  (Core_models.Hint.must_use #Alloc.String.t_String
                                      (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1 (mk_usize
                                                1)
                                              (mk_usize 1)
                                              (let list = ["nullifier_"] in
                                                FStar.Pervasives.assert_norm
                                                (Prims.eq2 (List.Tot.length list) 1);
                                                Rust_primitives.Hax.array_of_list 1 list)
                                              args
                                            <:
                                            Core_models.Fmt.t_Arguments)
                                        <:
                                        Alloc.String.t_String)
                                    <:
                                    Alloc.String.t_String)))
                      <:
                      Core_models.Result.t_Result
                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        t_StatementHashError
                    with
                    | Core_models.Result.Result_Ok hoist9 ->
                      let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                        Alloc.Alloc.t_Global =
                        Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                          #FStar.Tactics.Typeclasses.solve
                          #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global
                          )
                          fields
                          hoist9
                      in
                      (match
                          note_reshape_rk_element (f_rk #v_I #FStar.Tactics.Typeclasses.solve input
                              <:
                              Decaf377_rdsa.Verification_key.t_VerificationKey
                              Decaf377_rdsa.Domain.t_SpendAuth)
                          <:
                          Core_models.Result.t_Result
                            Decaf377.Ark_curve.Element.Projective.t_Element t_StatementHashError
                        with
                        | Core_models.Result.Result_Ok hoist11 ->
                          (match
                              Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                                #t_StatementHashError
                                #(Prims.unit -> t_StatementHashError)
                                (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Ark_curve.Element.Projective.t_Element
                                    #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    #FStar.Tactics.Typeclasses.solve
                                    hoist11
                                  <:
                                  Core_models.Option.t_Option
                                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      Alloc.Alloc.t_Global))
                                (fun temp_0_ ->
                                    let _:Prims.unit = temp_0_ in
                                    let args:usize = index <: usize in
                                    let args:t_Array Core_models.Fmt.Rt.t_Argument (mk_usize 1) =
                                      let list =
                                        [Core_models.Fmt.Rt.impl__new_display #usize args]
                                      in
                                      FStar.Pervasives.assert_norm
                                      (Prims.eq2 (List.Tot.length list) 1);
                                      Rust_primitives.Hax.array_of_list 1 list
                                    in
                                    field_encoding_error (Core_models.Ops.Deref.f_deref #Alloc.String.t_String
                                          #FStar.Tactics.Typeclasses.solve
                                          (Core_models.Hint.must_use #Alloc.String.t_String
                                              (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1 (mk_usize
                                                        1)
                                                      (mk_usize 1)
                                                      (let list = ["rk_"] in
                                                        FStar.Pervasives.assert_norm
                                                        (Prims.eq2 (List.Tot.length list) 1);
                                                        Rust_primitives.Hax.array_of_list 1 list)
                                                      args
                                                    <:
                                                    Core_models.Fmt.t_Arguments)
                                                <:
                                                Alloc.String.t_String)
                                            <:
                                            Alloc.String.t_String)))
                              <:
                              Core_models.Result.t_Result
                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global) t_StatementHashError
                            with
                            | Core_models.Result.Result_Ok hoist14 ->
                              let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                Alloc.Alloc.t_Global =
                                Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                                  #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  #FStar.Tactics.Typeclasses.solve
                                  #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      Alloc.Alloc.t_Global)
                                  fields
                                  hoist14
                              in
                              Core_models.Ops.Control_flow.ControlFlow_Continue fields
                              <:
                              Core_models.Ops.Control_flow.t_ControlFlow
                                (Core_models.Ops.Control_flow.t_ControlFlow
                                    (Core_models.Result.t_Result
                                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                            Alloc.Alloc.t_Global) t_StatementHashError)
                                    (Prims.unit &
                                      Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                        Alloc.Alloc.t_Global))
                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global)
                            | Core_models.Result.Result_Err err ->
                              Core_models.Ops.Control_flow.ControlFlow_Break
                              (Core_models.Ops.Control_flow.ControlFlow_Break
                                (Core_models.Result.Result_Err err
                                  <:
                                  Core_models.Result.t_Result
                                    (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                        Alloc.Alloc.t_Global) t_StatementHashError)
                                <:
                                Core_models.Ops.Control_flow.t_ControlFlow
                                  (Core_models.Result.t_Result
                                      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                          Alloc.Alloc.t_Global) t_StatementHashError)
                                  (Prims.unit &
                                    Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      Alloc.Alloc.t_Global))
                              <:
                              Core_models.Ops.Control_flow.t_ControlFlow
                                (Core_models.Ops.Control_flow.t_ControlFlow
                                    (Core_models.Result.t_Result
                                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                            Alloc.Alloc.t_Global) t_StatementHashError)
                                    (Prims.unit &
                                      Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                        Alloc.Alloc.t_Global))
                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global))
                        | Core_models.Result.Result_Err err ->
                          Core_models.Ops.Control_flow.ControlFlow_Break
                          (Core_models.Ops.Control_flow.ControlFlow_Break
                            (Core_models.Result.Result_Err err
                              <:
                              Core_models.Result.t_Result
                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global) t_StatementHashError)
                            <:
                            Core_models.Ops.Control_flow.t_ControlFlow
                              (Core_models.Result.t_Result
                                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      Alloc.Alloc.t_Global) t_StatementHashError)
                              (Prims.unit &
                                Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  Alloc.Alloc.t_Global))
                          <:
                          Core_models.Ops.Control_flow.t_ControlFlow
                            (Core_models.Ops.Control_flow.t_ControlFlow
                                (Core_models.Result.t_Result
                                    (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                        Alloc.Alloc.t_Global) t_StatementHashError)
                                (Prims.unit &
                                  Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global))
                            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                Alloc.Alloc.t_Global))
                    | Core_models.Result.Result_Err err ->
                      Core_models.Ops.Control_flow.ControlFlow_Break
                      (Core_models.Ops.Control_flow.ControlFlow_Break
                        (Core_models.Result.Result_Err err
                          <:
                          Core_models.Result.t_Result
                            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                Alloc.Alloc.t_Global) t_StatementHashError)
                        <:
                        Core_models.Ops.Control_flow.t_ControlFlow
                          (Core_models.Result.t_Result
                              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  Alloc.Alloc.t_Global) t_StatementHashError)
                          (Prims.unit &
                            Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global
                          ))
                      <:
                      Core_models.Ops.Control_flow.t_ControlFlow
                        (Core_models.Ops.Control_flow.t_ControlFlow
                            (Core_models.Result.t_Result
                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global) t_StatementHashError)
                            (Prims.unit &
                              Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                Alloc.Alloc.t_Global))
                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
              <:
              Core_models.Ops.Control_flow.t_ControlFlow
                (Core_models.Result.t_Result
                    (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                    t_StatementHashError)
                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
            with
            | Core_models.Ops.Control_flow.ControlFlow_Break ret -> ret
            | Core_models.Ops.Control_flow.ControlFlow_Continue fields ->
              if
                (Alloc.Vec.impl_1__len #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                    #Alloc.Alloc.t_Global
                    fields
                  <:
                  usize) <>.
                expected
              then
                Core_models.Result.Result_Err
                (StatementHashError_InvalidFieldLength
                  ({
                      f_expected = expected;
                      f_got
                      =
                      Alloc.Vec.impl_1__len #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                        #Alloc.Alloc.t_Global
                        fields
                    })
                  <:
                  t_StatementHashError)
                <:
                Core_models.Result.t_Result
                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                  t_StatementHashError
              else
                Core_models.Result.Result_Ok fields
                <:
                Core_models.Result.t_Result
                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                  t_StatementHashError)
        | Core_models.Result.Result_Err err ->
          Core_models.Result.Result_Err err
          <:
          Core_models.Result.t_Result
            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
            t_StatementHashError)
  | Core_models.Result.Result_Err err ->
    Core_models.Result.Result_Err err
    <:
    Core_models.Result.t_Result
      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
      t_StatementHashError

let consolidate_statement_fields
      (public: Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateProofPublic)
    : Core_models.Result.t_Result
      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
      t_StatementHashError =
  match
    Core_models.Result.impl__map_err #Prims.unit
      #Anyhow.t_Error
      #t_StatementHashError
      #(Anyhow.t_Error -> t_StatementHashError)
      (Shieldd_sdk_shielded_pool.Consolidate.Proof.impl_ConsolidateProofPublic__validate_shape public

        <:
        Core_models.Result.t_Result Prims.unit Anyhow.t_Error)
      (fun e ->
          let e:Anyhow.t_Error = e in
          consolidate_field_encoding_error (Core_models.Ops.Deref.f_deref #Alloc.String.t_String
                #FStar.Tactics.Typeclasses.solve
                (Alloc.String.f_to_string #Anyhow.t_Error #FStar.Tactics.Typeclasses.solve e
                  <:
                  Alloc.String.t_String)
              <:
              string)
          <:
          t_StatementHashError)
    <:
    Core_models.Result.t_Result Prims.unit t_StatementHashError
  with
  | Core_models.Result.Result_Ok _ ->
    let expected:usize =
      consolidate_statement_field_count (Shieldd_sdk_shielded_pool.Consolidate.Generated.impl_ConsolidateFamilyId__input_count
            public.Shieldd_sdk_shielded_pool.Consolidate.Proof.f_family_id
          <:
          usize)
        (Shieldd_sdk_shielded_pool.Consolidate.Generated.impl_ConsolidateFamilyId__output_count public
              .Shieldd_sdk_shielded_pool.Consolidate.Proof.f_family_id
          <:
          usize)
    in
    note_reshape_statement_fields #Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateInputPublic
      #Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateOutputPublic
      public.Shieldd_sdk_shielded_pool.Consolidate.Proof.f_anchor
      public.Shieldd_sdk_shielded_pool.Consolidate.Proof.f_balance_commitment
      (Alloc.Vec.impl_1__as_slice public.Shieldd_sdk_shielded_pool.Consolidate.Proof.f_inputs
        <:
        t_Slice Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateInputPublic)
      (Alloc.Vec.impl_1__as_slice public.Shieldd_sdk_shielded_pool.Consolidate.Proof.f_outputs
        <:
        t_Slice Shieldd_sdk_shielded_pool.Consolidate.Proof.t_ConsolidateOutputPublic)
      expected
      consolidate_field_encoding_error
  | Core_models.Result.Result_Err err ->
    Core_models.Result.Result_Err err
    <:
    Core_models.Result.t_Result
      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
      t_StatementHashError

let split_statement_fields (public: Shieldd_sdk_shielded_pool.Split.Proof.t_SplitProofPublic)
    : Core_models.Result.t_Result
      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
      t_StatementHashError =
  match
    Core_models.Result.impl__map_err #Prims.unit
      #Anyhow.t_Error
      #t_StatementHashError
      #(Anyhow.t_Error -> t_StatementHashError)
      (Shieldd_sdk_shielded_pool.Split.Proof.impl_SplitProofPublic__validate_shape public
        <:
        Core_models.Result.t_Result Prims.unit Anyhow.t_Error)
      (fun e ->
          let e:Anyhow.t_Error = e in
          split_field_encoding_error (Core_models.Ops.Deref.f_deref #Alloc.String.t_String
                #FStar.Tactics.Typeclasses.solve
                (Alloc.String.f_to_string #Anyhow.t_Error #FStar.Tactics.Typeclasses.solve e
                  <:
                  Alloc.String.t_String)
              <:
              string)
          <:
          t_StatementHashError)
    <:
    Core_models.Result.t_Result Prims.unit t_StatementHashError
  with
  | Core_models.Result.Result_Ok _ ->
    let expected:usize =
      split_statement_field_count (Shieldd_sdk_shielded_pool.Split.Generated.impl_SplitFamilyId__input_count
            public.Shieldd_sdk_shielded_pool.Split.Proof.f_family_id
          <:
          usize)
        (Shieldd_sdk_shielded_pool.Split.Generated.impl_SplitFamilyId__output_count public
              .Shieldd_sdk_shielded_pool.Split.Proof.f_family_id
          <:
          usize)
    in
    note_reshape_statement_fields #Shieldd_sdk_shielded_pool.Split.Proof.t_SplitInputPublic
      #Shieldd_sdk_shielded_pool.Split.Proof.t_SplitOutputPublic
      public.Shieldd_sdk_shielded_pool.Split.Proof.f_anchor
      public.Shieldd_sdk_shielded_pool.Split.Proof.f_balance_commitment
      (Alloc.Vec.impl_1__as_slice public.Shieldd_sdk_shielded_pool.Split.Proof.f_inputs
        <:
        t_Slice Shieldd_sdk_shielded_pool.Split.Proof.t_SplitInputPublic)
      (Alloc.Vec.impl_1__as_slice public.Shieldd_sdk_shielded_pool.Split.Proof.f_outputs
        <:
        t_Slice Shieldd_sdk_shielded_pool.Split.Proof.t_SplitOutputPublic)
      expected
      split_field_encoding_error
  | Core_models.Result.Result_Err err ->
    Core_models.Result.Result_Err err
    <:
    Core_models.Result.t_Result
      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
      t_StatementHashError

let shielded_ics20_withdrawal_statement_fields
      (public:
          Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalProofPublic
        )
    : Core_models.Result.t_Result
      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
      t_StatementHashError =
  match
    Core_models.Result.impl__map_err #Prims.unit
      #Anyhow.t_Error
      #t_StatementHashError
      #(Anyhow.t_Error -> t_StatementHashError)
      (Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.impl_ShieldedIcs20WithdrawalProofPublic__validate_shape
          public
        <:
        Core_models.Result.t_Result Prims.unit Anyhow.t_Error)
      (fun e ->
          let e:Anyhow.t_Error = e in
          StatementHashError_FieldEncoding
          ({
              f_field
              =
              Alloc.String.f_to_string #Anyhow.t_Error #FStar.Tactics.Typeclasses.solve e
              <:
              Alloc.String.t_String
            })
          <:
          t_StatementHashError)
    <:
    Core_models.Result.t_Result Prims.unit t_StatementHashError
  with
  | Core_models.Result.Result_Ok _ ->
    let expected:usize =
      shielded_ics20_withdrawal_statement_field_count (Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Generated.impl_ShieldedIcs20WithdrawalFamilyId__input_count
            public.Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_family_id
          <:
          usize)
    in
    (match
        note_reshape_statement_fields #Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalInputPublic
          #Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalChangePublic
          public.Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_anchor
          public.Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_balance_commitment
          (Alloc.Vec.impl_1__as_slice public
                .Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_inputs
            <:
            t_Slice
            Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalInputPublic
          )
          (Core_models.Slice.Raw.from_ref #Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalChangePublic
              public.Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_change_output
            <:
            t_Slice
            Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalChangePublic
          )
          ((mk_usize 2 +! mk_usize 1 <: usize) +!
            (mk_usize 2 *!
              (Alloc.Vec.impl_1__len #Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.t_ShieldedIcs20WithdrawalInputPublic
                  #Alloc.Alloc.t_Global
                  public.Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_inputs
                <:
                usize)
              <:
              usize)
            <:
            usize)
          (fun field ->
              let field:string = field in
              StatementHashError_FieldEncoding
              ({
                  f_field
                  =
                  Alloc.Borrow.f_to_owned #string #FStar.Tactics.Typeclasses.solve field
                  <:
                  Alloc.String.t_String
                })
              <:
              t_StatementHashError)
        <:
        Core_models.Result.t_Result
          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
          t_StatementHashError
      with
      | Core_models.Result.Result_Ok fields ->
        (match
            Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
              #t_StatementHashError
              #(Prims.unit -> t_StatementHashError)
              (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                  #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                  #FStar.Tactics.Typeclasses.solve
                  public.Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_asset_anchor
                    .Shieldd_sdk_tct.Commitment._0
                <:
                Core_models.Option.t_Option
                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
              (fun temp_0_ ->
                  let _:Prims.unit = temp_0_ in
                  StatementHashError_FieldEncoding
                  ({
                      f_field
                      =
                      Alloc.Borrow.f_to_owned #string
                        #FStar.Tactics.Typeclasses.solve
                        "asset_anchor"
                      <:
                      Alloc.String.t_String
                    })
                  <:
                  t_StatementHashError)
            <:
            Core_models.Result.t_Result
              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
              t_StatementHashError
          with
          | Core_models.Result.Result_Ok hoist68 ->
            let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global =
              Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                #FStar.Tactics.Typeclasses.solve
                #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                fields
                hoist68
            in
            (match
                Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                  #t_StatementHashError
                  #(Prims.unit -> t_StatementHashError)
                  (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                      #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                      #FStar.Tactics.Typeclasses.solve
                      public
                        .Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_compliance_anchor
                        .Shieldd_sdk_tct.Commitment._0
                    <:
                    Core_models.Option.t_Option
                    (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
                  (fun temp_0_ ->
                      let _:Prims.unit = temp_0_ in
                      StatementHashError_FieldEncoding
                      ({
                          f_field
                          =
                          Alloc.Borrow.f_to_owned #string
                            #FStar.Tactics.Typeclasses.solve
                            "compliance_anchor"
                          <:
                          Alloc.String.t_String
                        })
                      <:
                      t_StatementHashError)
                <:
                Core_models.Result.t_Result
                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                  t_StatementHashError
              with
              | Core_models.Result.Result_Ok hoist70 ->
                let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global
                =
                  Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                    #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                    #FStar.Tactics.Typeclasses.solve
                    #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                    fields
                    hoist70
                in
                (match
                    Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                      #t_StatementHashError
                      #(Prims.unit -> t_StatementHashError)
                      (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                          #FStar.Tactics.Typeclasses.solve
                          public
                            .Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_target_timestamp

                        <:
                        Core_models.Option.t_Option
                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
                      (fun temp_0_ ->
                          let _:Prims.unit = temp_0_ in
                          StatementHashError_FieldEncoding
                          ({
                              f_field
                              =
                              Alloc.Borrow.f_to_owned #string
                                #FStar.Tactics.Typeclasses.solve
                                "target_timestamp"
                              <:
                              Alloc.String.t_String
                            })
                          <:
                          t_StatementHashError)
                    <:
                    Core_models.Result.t_Result
                      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                      t_StatementHashError
                  with
                  | Core_models.Result.Result_Ok hoist72 ->
                    let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                      Alloc.Alloc.t_Global =
                      Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                        #FStar.Tactics.Typeclasses.solve
                        #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        fields
                        hoist72
                    in
                    (match
                        Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                          #t_StatementHashError
                          #(Prims.unit -> t_StatementHashError)
                          (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                              #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                              #FStar.Tactics.Typeclasses.solve
                              public
                                .Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_outbound_asset_id

                            <:
                            Core_models.Option.t_Option
                            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                Alloc.Alloc.t_Global))
                          (fun temp_0_ ->
                              let _:Prims.unit = temp_0_ in
                              StatementHashError_FieldEncoding
                              ({
                                  f_field
                                  =
                                  Alloc.Borrow.f_to_owned #string
                                    #FStar.Tactics.Typeclasses.solve
                                    "outbound_asset_id"
                                  <:
                                  Alloc.String.t_String
                                })
                              <:
                              t_StatementHashError)
                        <:
                        Core_models.Result.t_Result
                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                          t_StatementHashError
                      with
                      | Core_models.Result.Result_Ok hoist74 ->
                        let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                          Alloc.Alloc.t_Global =
                          Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                            #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                            #FStar.Tactics.Typeclasses.solve
                            #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                Alloc.Alloc.t_Global)
                            fields
                            hoist74
                        in
                        (match
                            Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                              #t_StatementHashError
                              #(Prims.unit -> t_StatementHashError)
                              (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  #FStar.Tactics.Typeclasses.solve
                                  public
                                    .Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_outbound_amount

                                <:
                                Core_models.Option.t_Option
                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global))
                              (fun temp_0_ ->
                                  let _:Prims.unit = temp_0_ in
                                  StatementHashError_FieldEncoding
                                  ({
                                      f_field
                                      =
                                      Alloc.Borrow.f_to_owned #string
                                        #FStar.Tactics.Typeclasses.solve
                                        "outbound_amount"
                                      <:
                                      Alloc.String.t_String
                                    })
                                  <:
                                  t_StatementHashError)
                            <:
                            Core_models.Result.t_Result
                              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  Alloc.Alloc.t_Global) t_StatementHashError
                          with
                          | Core_models.Result.Result_Ok hoist76 ->
                            let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                              Alloc.Alloc.t_Global =
                              Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                                #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                #FStar.Tactics.Typeclasses.solve
                                #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global)
                                fields
                                hoist76
                            in
                            let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                              Alloc.Alloc.t_Global =
                              Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                                #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                #FStar.Tactics.Typeclasses.solve
                                #(t_Array Decaf377.Fields.Fq.U64.Wrapper.t_Fq (mk_usize 2))
                                fields
                                (let list =
                                    [
                                      public
                                        .Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_withdrawal_effect_hash_lo;
                                      public
                                        .Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Proof.f_withdrawal_effect_hash_hi
                                    ]
                                  in
                                  FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 2);
                                  Rust_primitives.Hax.array_of_list 2 list)
                            in
                            if
                              (Alloc.Vec.impl_1__len #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  #Alloc.Alloc.t_Global
                                  fields
                                <:
                                usize) <>.
                              expected
                            then
                              Core_models.Result.Result_Err
                              (StatementHashError_InvalidFieldLength
                                ({
                                    f_expected = expected;
                                    f_got
                                    =
                                    Alloc.Vec.impl_1__len #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      #Alloc.Alloc.t_Global
                                      fields
                                  })
                                <:
                                t_StatementHashError)
                              <:
                              Core_models.Result.t_Result
                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global) t_StatementHashError
                            else
                              Core_models.Result.Result_Ok fields
                              <:
                              Core_models.Result.t_Result
                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global) t_StatementHashError
                          | Core_models.Result.Result_Err err ->
                            Core_models.Result.Result_Err err
                            <:
                            Core_models.Result.t_Result
                              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  Alloc.Alloc.t_Global) t_StatementHashError)
                      | Core_models.Result.Result_Err err ->
                        Core_models.Result.Result_Err err
                        <:
                        Core_models.Result.t_Result
                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                          t_StatementHashError)
                  | Core_models.Result.Result_Err err ->
                    Core_models.Result.Result_Err err
                    <:
                    Core_models.Result.t_Result
                      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                      t_StatementHashError)
              | Core_models.Result.Result_Err err ->
                Core_models.Result.Result_Err err
                <:
                Core_models.Result.t_Result
                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                  t_StatementHashError)
          | Core_models.Result.Result_Err err ->
            Core_models.Result.Result_Err err
            <:
            Core_models.Result.t_Result
              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
              t_StatementHashError)
      | Core_models.Result.Result_Err err ->
        Core_models.Result.Result_Err err
        <:
        Core_models.Result.t_Result
          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
          t_StatementHashError)
  | Core_models.Result.Result_Err err ->
    Core_models.Result.Result_Err err
    <:
    Core_models.Result.t_Result
      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
      t_StatementHashError

let v_PADDED_TRANSFER_INPUTS: usize = mk_usize 2

let v_PADDED_TRANSFER_OUTPUTS: usize = mk_usize 2

let v_TRANSFER_STATEMENT_FIELD_COUNT: usize =
  transfer_statement_field_count v_PADDED_TRANSFER_INPUTS v_PADDED_TRANSFER_OUTPUTS

let v_TRANSFER_PROOF_LABEL: string = "transfer"

let transfer_input_count (_: Prims.unit) : usize = v_PADDED_TRANSFER_INPUTS

let transfer_output_count (_: Prims.unit) : usize = v_PADDED_TRANSFER_OUTPUTS

type t_TransferSpendPublic = {
  f_nullifier:Shieldd_sdk_sct.Nullifier.t_Nullifier;
  f_rk:Decaf377_rdsa.Verification_key.t_VerificationKey Decaf377_rdsa.Domain.t_SpendAuth
}

let transfer_rk_element (spend: t_TransferSpendPublic)
    : Core_models.Result.t_Result Decaf377.Ark_curve.Element.Projective.t_Element
      t_StatementHashError =
  Core_models.Result.impl__map_err #Decaf377.Ark_curve.Element.Projective.t_Element
    #Decaf377.Error.t_EncodingError
    #t_StatementHashError
    #(Decaf377.Error.t_EncodingError -> t_StatementHashError)
    (Decaf377.Ark_curve.Encoding.impl_Encoding__vartime_decompress (Decaf377.Ark_curve.Encoding.Encoding
          (Decaf377_rdsa.Verification_key.impl_10__to_bytes #Decaf377_rdsa.Domain.t_SpendAuth
              spend.f_rk
            <:
            t_Array u8 (mk_usize 32))
          <:
          Decaf377.Ark_curve.Encoding.t_Encoding)
      <:
      Core_models.Result.t_Result Decaf377.Ark_curve.Element.Projective.t_Element
        Decaf377.Error.t_EncodingError)
    StatementHashError_DecompressRk

type t_TransferOutputPublic = { f_note_commitment:Shieldd_sdk_tct.Commitment.t_StateCommitment }

type t_TransferComplianceProofPublic = {
  f_statement:Shieldd_sdk_compliance.Decode_object.t_TransferTierMetadataStatement;
  f_derived_pk:Decaf377.Ark_curve.Element.Projective.t_Element;
  f_enc_cmt:Decaf377.Ark_curve.Element.Projective.t_Element;
  f_shared_point:Decaf377.Ark_curve.Element.Projective.t_Element;
  f_challenge:Decaf377.Fields.Fq.U64.Wrapper.t_Fq;
  f_response:Decaf377.Fields.Fr.U64.Wrapper.t_Fr
}

type t_TransferComplianceCiphertextPublic = {
  f_epk:Decaf377.Ark_curve.Element.Projective.t_Element;
  f_c2:Decaf377.Fields.Fq.U64.Wrapper.t_Fq;
  f_ciphertext:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global;
  f_proof:t_TransferComplianceProofPublic
}

type t_TransferCompliancePublic = {
  f_detection_ciphertext:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global;
  f_sender_core:t_TransferComplianceCiphertextPublic;
  f_sender_ext:t_TransferComplianceCiphertextPublic;
  f_output_core:t_TransferComplianceCiphertextPublic;
  f_output_ext:t_TransferComplianceCiphertextPublic
}

type t_TransferProofPublic = {
  f_anchor:Shieldd_sdk_tct.Tree.t_Root;
  f_balance_commitment:Shieldd_sdk_asset.Balance.Commitment.t_Commitment;
  f_asset_anchor:Shieldd_sdk_tct.Commitment.t_StateCommitment;
  f_compliance_anchor:Shieldd_sdk_tct.Commitment.t_StateCommitment;
  f_target_timestamp:Decaf377.Fields.Fq.U64.Wrapper.t_Fq;
  f_inputs:Alloc.Vec.t_Vec t_TransferSpendPublic Alloc.Alloc.t_Global;
  f_outputs:Alloc.Vec.t_Vec t_TransferOutputPublic Alloc.Alloc.t_Global;
  f_compliance:t_TransferCompliancePublic
}

let impl_1__validate_shape (self: t_TransferProofPublic)
    : Core_models.Result.t_Result Prims.unit Anyhow.t_Error =
  if
    Anyhow.__private.not #bool
      ((Alloc.Vec.impl_1__len #t_TransferSpendPublic #Alloc.Alloc.t_Global self.f_inputs <: usize) =.
        (transfer_input_count () <: usize)
        <:
        bool)
  then
    let args:(string & usize & usize) =
      v_TRANSFER_PROOF_LABEL,
      transfer_input_count (),
      Alloc.Vec.impl_1__len #t_TransferSpendPublic #Alloc.Alloc.t_Global self.f_inputs
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
        ((Alloc.Vec.impl_1__len #t_TransferOutputPublic #Alloc.Alloc.t_Global self.f_outputs
            <:
            usize) =.
          (transfer_output_count () <: usize)
          <:
          bool)
    then
      let args:(string & usize & usize) =
        v_TRANSFER_PROOF_LABEL,
        transfer_output_count (),
        Alloc.Vec.impl_1__len #t_TransferOutputPublic #Alloc.Alloc.t_Global self.f_outputs
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

let transfer_statement_fields (public: t_TransferProofPublic)
    : Core_models.Result.t_Result
      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
      t_StatementHashError =
  match
    Core_models.Result.impl__map_err #Prims.unit
      #Anyhow.t_Error
      #t_StatementHashError
      #(Anyhow.t_Error -> t_StatementHashError)
      (impl_1__validate_shape public <: Core_models.Result.t_Result Prims.unit Anyhow.t_Error)
      (fun e ->
          let e:Anyhow.t_Error = e in
          transfer_field_encoding_error (Core_models.Ops.Deref.f_deref #Alloc.String.t_String
                #FStar.Tactics.Typeclasses.solve
                (Alloc.String.f_to_string #Anyhow.t_Error #FStar.Tactics.Typeclasses.solve e
                  <:
                  Alloc.String.t_String)
              <:
              string)
          <:
          t_StatementHashError)
    <:
    Core_models.Result.t_Result Prims.unit t_StatementHashError
  with
  | Core_models.Result.Result_Ok _ ->
    let compliance:t_TransferCompliancePublic = public.f_compliance in
    (match
        Rust_primitives.Hax.Folds.fold_return (Core_models.Iter.Traits.Collect.f_into_iter #(t_Array
                  (string & usize & usize) (mk_usize 5))
              #FStar.Tactics.Typeclasses.solve
              (let list =
                  [
                    "detection_ciphertext",
                    (Alloc.Vec.impl_1__len #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                        #Alloc.Alloc.t_Global
                        compliance.f_detection_ciphertext
                      <:
                      usize),
                    Shieldd_sdk_compliance.Transfer.v_TRANSFER_DETECTION_FQS
                    <:
                    (string & usize & usize);
                    "sender_core_ciphertext",
                    (Alloc.Vec.impl_1__len #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                        #Alloc.Alloc.t_Global
                        compliance.f_sender_core.f_ciphertext
                      <:
                      usize),
                    Shieldd_sdk_compliance.Transfer.v_TRANSFER_CORE_CIPHERTEXT_FQS
                    <:
                    (string & usize & usize);
                    "sender_ext_ciphertext",
                    (Alloc.Vec.impl_1__len #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                        #Alloc.Alloc.t_Global
                        compliance.f_sender_ext.f_ciphertext
                      <:
                      usize),
                    Shieldd_sdk_compliance.Transfer.v_TRANSFER_EXT_CIPHERTEXT_FQS
                    <:
                    (string & usize & usize);
                    "output_core_ciphertext",
                    (Alloc.Vec.impl_1__len #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                        #Alloc.Alloc.t_Global
                        compliance.f_output_core.f_ciphertext
                      <:
                      usize),
                    Shieldd_sdk_compliance.Transfer.v_TRANSFER_CORE_CIPHERTEXT_FQS
                    <:
                    (string & usize & usize);
                    "output_ext_ciphertext",
                    (Alloc.Vec.impl_1__len #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                        #Alloc.Alloc.t_Global
                        compliance.f_output_ext.f_ciphertext
                      <:
                      usize),
                    Shieldd_sdk_compliance.Transfer.v_TRANSFER_EXT_CIPHERTEXT_FQS
                    <:
                    (string & usize & usize)
                  ]
                in
                FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 5);
                Rust_primitives.Hax.array_of_list 5 list)
            <:
            Core_models.Array.Iter.t_IntoIter (string & usize & usize) (mk_usize 5))
          ()
          (fun temp_0_ temp_1_ ->
              let _:Prims.unit = temp_0_ in
              let (label: string), (ciphertext: usize), (expected: usize) = temp_1_ in
              if ciphertext <>. expected <: bool
              then
                Core_models.Ops.Control_flow.ControlFlow_Break
                (Core_models.Ops.Control_flow.ControlFlow_Break
                  (Core_models.Result.Result_Err
                    (StatementHashError_InvalidCiphertextLength
                      ({
                          f_label
                          =
                          Alloc.Borrow.f_to_owned #string #FStar.Tactics.Typeclasses.solve label
                          <:
                          Alloc.String.t_String;
                          f_expected = expected;
                          f_got = ciphertext
                        })
                      <:
                      t_StatementHashError)
                    <:
                    Core_models.Result.t_Result
                      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                      t_StatementHashError)
                  <:
                  Core_models.Ops.Control_flow.t_ControlFlow
                    (Core_models.Result.t_Result
                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        t_StatementHashError) (Prims.unit & Prims.unit))
                <:
                Core_models.Ops.Control_flow.t_ControlFlow
                  (Core_models.Ops.Control_flow.t_ControlFlow
                      (Core_models.Result.t_Result
                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                          t_StatementHashError) (Prims.unit & Prims.unit)) Prims.unit
              else
                Core_models.Ops.Control_flow.ControlFlow_Continue ()
                <:
                Core_models.Ops.Control_flow.t_ControlFlow
                  (Core_models.Ops.Control_flow.t_ControlFlow
                      (Core_models.Result.t_Result
                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                          t_StatementHashError) (Prims.unit & Prims.unit)) Prims.unit)
        <:
        Core_models.Ops.Control_flow.t_ControlFlow
          (Core_models.Result.t_Result
              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
              t_StatementHashError) Prims.unit
      with
      | Core_models.Ops.Control_flow.ControlFlow_Break ret -> ret
      | Core_models.Ops.Control_flow.ControlFlow_Continue _ ->
        let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global =
          Alloc.Vec.impl__with_capacity #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
            v_TRANSFER_STATEMENT_FIELD_COUNT
        in
        match
          Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                Alloc.Alloc.t_Global)
            #t_StatementHashError
            #(Prims.unit -> t_StatementHashError)
            (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                #FStar.Tactics.Typeclasses.solve
                (Core_models.Convert.f_from #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                    #Shieldd_sdk_tct.Tree.t_Root
                    #FStar.Tactics.Typeclasses.solve
                    public.f_anchor
                  <:
                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq)
              <:
              Core_models.Option.t_Option
              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
            (fun temp_0_ ->
                let _:Prims.unit = temp_0_ in
                transfer_field_encoding_error "anchor" <: t_StatementHashError)
          <:
          Core_models.Result.t_Result
            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
            t_StatementHashError
        with
        | Core_models.Result.Result_Ok hoist18 ->
          let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global =
            Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
              #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
              #FStar.Tactics.Typeclasses.solve
              #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
              fields
              hoist18
          in
          (match
              Rust_primitives.Hax.Folds.fold_enumerated_slice_return (Alloc.Vec.impl_1__as_slice public
                      .f_outputs
                  <:
                  t_Slice t_TransferOutputPublic)
                (fun fields temp_1_ ->
                    let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                      Alloc.Alloc.t_Global =
                      fields
                    in
                    let _:usize = temp_1_ in
                    true)
                fields
                (fun fields temp_1_ ->
                    let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                      Alloc.Alloc.t_Global =
                      fields
                    in
                    let (index: usize), (output: t_TransferOutputPublic) = temp_1_ in
                    match
                      Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        #t_StatementHashError
                        #(Prims.unit -> t_StatementHashError)
                        (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                            #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                            #FStar.Tactics.Typeclasses.solve
                            output.f_note_commitment.Shieldd_sdk_tct.Commitment._0
                          <:
                          Core_models.Option.t_Option
                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        )
                        (fun temp_0_ ->
                            let _:Prims.unit = temp_0_ in
                            let args:usize = index <: usize in
                            let args:t_Array Core_models.Fmt.Rt.t_Argument (mk_usize 1) =
                              let list = [Core_models.Fmt.Rt.impl__new_display #usize args] in
                              FStar.Pervasives.assert_norm (Prims.eq2 (List.Tot.length list) 1);
                              Rust_primitives.Hax.array_of_list 1 list
                            in
                            transfer_field_encoding_error (Core_models.Ops.Deref.f_deref #Alloc.String.t_String
                                  #FStar.Tactics.Typeclasses.solve
                                  (Core_models.Hint.must_use #Alloc.String.t_String
                                      (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1 (mk_usize
                                                1)
                                              (mk_usize 1)
                                              (let list = ["note_commitment_"] in
                                                FStar.Pervasives.assert_norm
                                                (Prims.eq2 (List.Tot.length list) 1);
                                                Rust_primitives.Hax.array_of_list 1 list)
                                              args
                                            <:
                                            Core_models.Fmt.t_Arguments)
                                        <:
                                        Alloc.String.t_String)
                                    <:
                                    Alloc.String.t_String)
                                <:
                                string))
                      <:
                      Core_models.Result.t_Result
                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        t_StatementHashError
                    with
                    | Core_models.Result.Result_Ok hoist20 ->
                      Core_models.Ops.Control_flow.ControlFlow_Continue
                      (Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                          #FStar.Tactics.Typeclasses.solve
                          #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global
                          )
                          fields
                          hoist20
                        <:
                        Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                      <:
                      Core_models.Ops.Control_flow.t_ControlFlow
                        (Core_models.Ops.Control_flow.t_ControlFlow
                            (Core_models.Result.t_Result
                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global) t_StatementHashError)
                            (Prims.unit &
                              Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                Alloc.Alloc.t_Global))
                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                    | Core_models.Result.Result_Err err ->
                      Core_models.Ops.Control_flow.ControlFlow_Break
                      (Core_models.Ops.Control_flow.ControlFlow_Break
                        (Core_models.Result.Result_Err err
                          <:
                          Core_models.Result.t_Result
                            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                Alloc.Alloc.t_Global) t_StatementHashError)
                        <:
                        Core_models.Ops.Control_flow.t_ControlFlow
                          (Core_models.Result.t_Result
                              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  Alloc.Alloc.t_Global) t_StatementHashError)
                          (Prims.unit &
                            Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global
                          ))
                      <:
                      Core_models.Ops.Control_flow.t_ControlFlow
                        (Core_models.Ops.Control_flow.t_ControlFlow
                            (Core_models.Result.t_Result
                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global) t_StatementHashError)
                            (Prims.unit &
                              Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                Alloc.Alloc.t_Global))
                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
              <:
              Core_models.Ops.Control_flow.t_ControlFlow
                (Core_models.Result.t_Result
                    (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                    t_StatementHashError)
                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
            with
            | Core_models.Ops.Control_flow.ControlFlow_Break ret -> ret
            | Core_models.Ops.Control_flow.ControlFlow_Continue fields ->
              match
                Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                  #t_StatementHashError
                  #(Prims.unit -> t_StatementHashError)
                  (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Ark_curve.Element.Projective.t_Element
                      #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                      #FStar.Tactics.Typeclasses.solve
                      public.f_balance_commitment.Shieldd_sdk_asset.Balance.Commitment._0
                    <:
                    Core_models.Option.t_Option
                    (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global))
                  (fun temp_0_ ->
                      let _:Prims.unit = temp_0_ in
                      transfer_field_encoding_error "balance_commitment" <: t_StatementHashError)
                <:
                Core_models.Result.t_Result
                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                  t_StatementHashError
              with
              | Core_models.Result.Result_Ok hoist22 ->
                let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global
                =
                  Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                    #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                    #FStar.Tactics.Typeclasses.solve
                    #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                    fields
                    hoist22
                in
                (match
                    Rust_primitives.Hax.Folds.fold_enumerated_slice_return (Alloc.Vec.impl_1__as_slice
                          public.f_inputs
                        <:
                        t_Slice t_TransferSpendPublic)
                      (fun fields temp_1_ ->
                          let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                            Alloc.Alloc.t_Global =
                            fields
                          in
                          let _:usize = temp_1_ in
                          true)
                      fields
                      (fun fields temp_1_ ->
                          let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                            Alloc.Alloc.t_Global =
                            fields
                          in
                          let (index: usize), (spend: t_TransferSpendPublic) = temp_1_ in
                          match
                            Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                              #t_StatementHashError
                              #(Prims.unit -> t_StatementHashError)
                              (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  #FStar.Tactics.Typeclasses.solve
                                  spend.f_nullifier.Shieldd_sdk_sct.Nullifier._0
                                <:
                                Core_models.Option.t_Option
                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global))
                              (fun temp_0_ ->
                                  let _:Prims.unit = temp_0_ in
                                  let args:usize = index <: usize in
                                  let args:t_Array Core_models.Fmt.Rt.t_Argument (mk_usize 1) =
                                    let list = [Core_models.Fmt.Rt.impl__new_display #usize args] in
                                    FStar.Pervasives.assert_norm
                                    (Prims.eq2 (List.Tot.length list) 1);
                                    Rust_primitives.Hax.array_of_list 1 list
                                  in
                                  transfer_field_encoding_error (Core_models.Ops.Deref.f_deref #Alloc.String.t_String
                                        #FStar.Tactics.Typeclasses.solve
                                        (Core_models.Hint.must_use #Alloc.String.t_String
                                            (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1 (mk_usize
                                                      1)
                                                    (mk_usize 1)
                                                    (let list = ["nullifier_"] in
                                                      FStar.Pervasives.assert_norm
                                                      (Prims.eq2 (List.Tot.length list) 1);
                                                      Rust_primitives.Hax.array_of_list 1 list)
                                                    args
                                                  <:
                                                  Core_models.Fmt.t_Arguments)
                                              <:
                                              Alloc.String.t_String)
                                          <:
                                          Alloc.String.t_String)
                                      <:
                                      string))
                            <:
                            Core_models.Result.t_Result
                              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  Alloc.Alloc.t_Global) t_StatementHashError
                          with
                          | Core_models.Result.Result_Ok hoist24 ->
                            let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                              Alloc.Alloc.t_Global =
                              Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                                #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                #FStar.Tactics.Typeclasses.solve
                                #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global)
                                fields
                                hoist24
                            in
                            (match
                                transfer_rk_element spend
                                <:
                                Core_models.Result.t_Result
                                  Decaf377.Ark_curve.Element.Projective.t_Element
                                  t_StatementHashError
                              with
                              | Core_models.Result.Result_Ok hoist26 ->
                                (match
                                    Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                                      #t_StatementHashError
                                      #(Prims.unit -> t_StatementHashError)
                                      (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Ark_curve.Element.Projective.t_Element
                                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                          #FStar.Tactics.Typeclasses.solve
                                          hoist26
                                        <:
                                        Core_models.Option.t_Option
                                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                            Alloc.Alloc.t_Global))
                                      (fun temp_0_ ->
                                          let _:Prims.unit = temp_0_ in
                                          let args:usize = index <: usize in
                                          let args:t_Array Core_models.Fmt.Rt.t_Argument
                                            (mk_usize 1) =
                                            let list =
                                              [Core_models.Fmt.Rt.impl__new_display #usize args]
                                            in
                                            FStar.Pervasives.assert_norm
                                            (Prims.eq2 (List.Tot.length list) 1);
                                            Rust_primitives.Hax.array_of_list 1 list
                                          in
                                          transfer_field_encoding_error (Core_models.Ops.Deref.f_deref
                                                #Alloc.String.t_String
                                                #FStar.Tactics.Typeclasses.solve
                                                (Core_models.Hint.must_use #Alloc.String.t_String
                                                    (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1
                                                            (mk_usize 1)
                                                            (mk_usize 1)
                                                            (let list = ["rk_"] in
                                                              FStar.Pervasives.assert_norm
                                                              (Prims.eq2 (List.Tot.length list) 1);
                                                              Rust_primitives.Hax.array_of_list 1
                                                                list)
                                                            args
                                                          <:
                                                          Core_models.Fmt.t_Arguments)
                                                      <:
                                                      Alloc.String.t_String)
                                                  <:
                                                  Alloc.String.t_String)
                                              <:
                                              string))
                                    <:
                                    Core_models.Result.t_Result
                                      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                          Alloc.Alloc.t_Global) t_StatementHashError
                                  with
                                  | Core_models.Result.Result_Ok hoist29 ->
                                    let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      Alloc.Alloc.t_Global =
                                      Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global
                                        )
                                        #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                        #FStar.Tactics.Typeclasses.solve
                                        #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                            Alloc.Alloc.t_Global)
                                        fields
                                        hoist29
                                    in
                                    Core_models.Ops.Control_flow.ControlFlow_Continue fields
                                    <:
                                    Core_models.Ops.Control_flow.t_ControlFlow
                                      (Core_models.Ops.Control_flow.t_ControlFlow
                                          (Core_models.Result.t_Result
                                              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                  Alloc.Alloc.t_Global) t_StatementHashError)
                                          (Prims.unit &
                                            Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              Alloc.Alloc.t_Global))
                                      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                          Alloc.Alloc.t_Global)
                                  | Core_models.Result.Result_Err err ->
                                    Core_models.Ops.Control_flow.ControlFlow_Break
                                    (Core_models.Ops.Control_flow.ControlFlow_Break
                                      (Core_models.Result.Result_Err err
                                        <:
                                        Core_models.Result.t_Result
                                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              Alloc.Alloc.t_Global) t_StatementHashError)
                                      <:
                                      Core_models.Ops.Control_flow.t_ControlFlow
                                        (Core_models.Result.t_Result
                                            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                Alloc.Alloc.t_Global) t_StatementHashError)
                                        (Prims.unit &
                                          Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                            Alloc.Alloc.t_Global))
                                    <:
                                    Core_models.Ops.Control_flow.t_ControlFlow
                                      (Core_models.Ops.Control_flow.t_ControlFlow
                                          (Core_models.Result.t_Result
                                              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                  Alloc.Alloc.t_Global) t_StatementHashError)
                                          (Prims.unit &
                                            Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              Alloc.Alloc.t_Global))
                                      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                          Alloc.Alloc.t_Global))
                              | Core_models.Result.Result_Err err ->
                                Core_models.Ops.Control_flow.ControlFlow_Break
                                (Core_models.Ops.Control_flow.ControlFlow_Break
                                  (Core_models.Result.Result_Err err
                                    <:
                                    Core_models.Result.t_Result
                                      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                          Alloc.Alloc.t_Global) t_StatementHashError)
                                  <:
                                  Core_models.Ops.Control_flow.t_ControlFlow
                                    (Core_models.Result.t_Result
                                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                            Alloc.Alloc.t_Global) t_StatementHashError)
                                    (Prims.unit &
                                      Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                        Alloc.Alloc.t_Global))
                                <:
                                Core_models.Ops.Control_flow.t_ControlFlow
                                  (Core_models.Ops.Control_flow.t_ControlFlow
                                      (Core_models.Result.t_Result
                                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              Alloc.Alloc.t_Global) t_StatementHashError)
                                      (Prims.unit &
                                        Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                          Alloc.Alloc.t_Global))
                                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      Alloc.Alloc.t_Global))
                          | Core_models.Result.Result_Err err ->
                            Core_models.Ops.Control_flow.ControlFlow_Break
                            (Core_models.Ops.Control_flow.ControlFlow_Break
                              (Core_models.Result.Result_Err err
                                <:
                                Core_models.Result.t_Result
                                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      Alloc.Alloc.t_Global) t_StatementHashError)
                              <:
                              Core_models.Ops.Control_flow.t_ControlFlow
                                (Core_models.Result.t_Result
                                    (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                        Alloc.Alloc.t_Global) t_StatementHashError)
                                (Prims.unit &
                                  Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global))
                            <:
                            Core_models.Ops.Control_flow.t_ControlFlow
                              (Core_models.Ops.Control_flow.t_ControlFlow
                                  (Core_models.Result.t_Result
                                      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                          Alloc.Alloc.t_Global) t_StatementHashError)
                                  (Prims.unit &
                                    Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      Alloc.Alloc.t_Global))
                              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  Alloc.Alloc.t_Global))
                    <:
                    Core_models.Ops.Control_flow.t_ControlFlow
                      (Core_models.Result.t_Result
                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                          t_StatementHashError)
                      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                  with
                  | Core_models.Ops.Control_flow.ControlFlow_Break ret -> ret
                  | Core_models.Ops.Control_flow.ControlFlow_Continue fields ->
                    match
                      Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        #t_StatementHashError
                        #(Prims.unit -> t_StatementHashError)
                        (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                            #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                            #FStar.Tactics.Typeclasses.solve
                            public.f_asset_anchor.Shieldd_sdk_tct.Commitment._0
                          <:
                          Core_models.Option.t_Option
                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        )
                        (fun temp_0_ ->
                            let _:Prims.unit = temp_0_ in
                            transfer_field_encoding_error "asset_anchor" <: t_StatementHashError)
                      <:
                      Core_models.Result.t_Result
                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        t_StatementHashError
                    with
                    | Core_models.Result.Result_Ok hoist31 ->
                      let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                        Alloc.Alloc.t_Global =
                        Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                          #FStar.Tactics.Typeclasses.solve
                          #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global
                          )
                          fields
                          hoist31
                      in
                      (match
                          Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                            #t_StatementHashError
                            #(Prims.unit -> t_StatementHashError)
                            (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                #FStar.Tactics.Typeclasses.solve
                                public.f_compliance_anchor.Shieldd_sdk_tct.Commitment._0
                              <:
                              Core_models.Option.t_Option
                              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  Alloc.Alloc.t_Global))
                            (fun temp_0_ ->
                                let _:Prims.unit = temp_0_ in
                                transfer_field_encoding_error "compliance_anchor"
                                <:
                                t_StatementHashError)
                          <:
                          Core_models.Result.t_Result
                            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                Alloc.Alloc.t_Global) t_StatementHashError
                        with
                        | Core_models.Result.Result_Ok hoist33 ->
                          let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                            Alloc.Alloc.t_Global =
                            Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                              #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                              #FStar.Tactics.Typeclasses.solve
                              #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  Alloc.Alloc.t_Global)
                              fields
                              hoist33
                          in
                          let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                            Alloc.Alloc.t_Global =
                            Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                              #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                              #FStar.Tactics.Typeclasses.solve
                              #(Core_models.Iter.Adapters.Copied.t_Copied
                                (Core_models.Slice.Iter.t_Iter Decaf377.Fields.Fq.U64.Wrapper.t_Fq))
                              fields
                              (Core_models.Iter.Traits.Iterator.f_copied #(Core_models.Slice.Iter.t_Iter
                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq)
                                  #FStar.Tactics.Typeclasses.solve
                                  #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  (Core_models.Slice.impl__iter #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      (Alloc.Vec.impl_1__as_slice compliance.f_detection_ciphertext
                                        <:
                                        t_Slice Decaf377.Fields.Fq.U64.Wrapper.t_Fq)
                                    <:
                                    Core_models.Slice.Iter.t_Iter
                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq)
                                <:
                                Core_models.Iter.Adapters.Copied.t_Copied
                                (Core_models.Slice.Iter.t_Iter Decaf377.Fields.Fq.U64.Wrapper.t_Fq))
                          in
                          (match
                              Rust_primitives.Hax.Folds.fold_return (Core_models.Iter.Traits.Collect.f_into_iter
                                    #(t_Array (string & t_TransferComplianceCiphertextPublic)
                                        (mk_usize 4))
                                    #FStar.Tactics.Typeclasses.solve
                                    (let list =
                                        [
                                          "sender_core", compliance.f_sender_core
                                          <:
                                          (string & t_TransferComplianceCiphertextPublic);
                                          "sender_ext", compliance.f_sender_ext
                                          <:
                                          (string & t_TransferComplianceCiphertextPublic);
                                          "output_core", compliance.f_output_core
                                          <:
                                          (string & t_TransferComplianceCiphertextPublic);
                                          "output_ext", compliance.f_output_ext
                                          <:
                                          (string & t_TransferComplianceCiphertextPublic)
                                        ]
                                      in
                                      FStar.Pervasives.assert_norm
                                      (Prims.eq2 (List.Tot.length list) 4);
                                      Rust_primitives.Hax.array_of_list 4 list)
                                  <:
                                  Core_models.Array.Iter.t_IntoIter
                                    (string & t_TransferComplianceCiphertextPublic) (mk_usize 4))
                                fields
                                (fun fields temp_1_ ->
                                    let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      Alloc.Alloc.t_Global =
                                      fields
                                    in
                                    let
                                    (label: string), (tier: t_TransferComplianceCiphertextPublic) =
                                      temp_1_
                                    in
                                    match
                                      Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global
                                        )
                                        #t_StatementHashError
                                        #(Prims.unit -> t_StatementHashError)
                                        (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Ark_curve.Element.Projective.t_Element
                                            #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                            #FStar.Tactics.Typeclasses.solve
                                            tier.f_epk
                                          <:
                                          Core_models.Option.t_Option
                                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              Alloc.Alloc.t_Global))
                                        (fun temp_0_ ->
                                            let _:Prims.unit = temp_0_ in
                                            let args:string = label <: string in
                                            let args:t_Array Core_models.Fmt.Rt.t_Argument
                                              (mk_usize 1) =
                                              let list =
                                                [Core_models.Fmt.Rt.impl__new_display #string args]
                                              in
                                              FStar.Pervasives.assert_norm
                                              (Prims.eq2 (List.Tot.length list) 1);
                                              Rust_primitives.Hax.array_of_list 1 list
                                            in
                                            transfer_field_encoding_error (Core_models.Ops.Deref.f_deref
                                                  #Alloc.String.t_String
                                                  #FStar.Tactics.Typeclasses.solve
                                                  (Core_models.Hint.must_use #Alloc.String.t_String
                                                      (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1
                                                              (mk_usize 2)
                                                              (mk_usize 1)
                                                              (let list = [""; "_epk"] in
                                                                FStar.Pervasives.assert_norm
                                                                (Prims.eq2 (List.Tot.length list) 2);
                                                                Rust_primitives.Hax.array_of_list 2
                                                                  list)
                                                              args
                                                            <:
                                                            Core_models.Fmt.t_Arguments)
                                                        <:
                                                        Alloc.String.t_String)
                                                    <:
                                                    Alloc.String.t_String)
                                                <:
                                                string))
                                      <:
                                      Core_models.Result.t_Result
                                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                            Alloc.Alloc.t_Global) t_StatementHashError
                                    with
                                    | Core_models.Result.Result_Ok hoist35 ->
                                      let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                        Alloc.Alloc.t_Global =
                                        Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              Alloc.Alloc.t_Global)
                                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                          #FStar.Tactics.Typeclasses.solve
                                          #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              Alloc.Alloc.t_Global)
                                          fields
                                          hoist35
                                      in
                                      (match
                                          Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                Alloc.Alloc.t_Global)
                                            #t_StatementHashError
                                            #(Prims.unit -> t_StatementHashError)
                                            (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                #FStar.Tactics.Typeclasses.solve
                                                tier.f_c2
                                              <:
                                              Core_models.Option.t_Option
                                              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                  Alloc.Alloc.t_Global))
                                            (fun temp_0_ ->
                                                let _:Prims.unit = temp_0_ in
                                                let args:string = label <: string in
                                                let args:t_Array Core_models.Fmt.Rt.t_Argument
                                                  (mk_usize 1) =
                                                  let list =
                                                    [
                                                      Core_models.Fmt.Rt.impl__new_display #string
                                                        args
                                                    ]
                                                  in
                                                  FStar.Pervasives.assert_norm
                                                  (Prims.eq2 (List.Tot.length list) 1);
                                                  Rust_primitives.Hax.array_of_list 1 list
                                                in
                                                transfer_field_encoding_error (Core_models.Ops.Deref.f_deref
                                                      #Alloc.String.t_String
                                                      #FStar.Tactics.Typeclasses.solve
                                                      (Core_models.Hint.must_use #Alloc.String.t_String
                                                          (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1
                                                                  (mk_usize 2)
                                                                  (mk_usize 1)
                                                                  (let list = [""; "_c2"] in
                                                                    FStar.Pervasives.assert_norm
                                                                    (Prims.eq2
                                                                        (List.Tot.length list) 2);
                                                                    Rust_primitives.Hax.array_of_list
                                                                      2 list)
                                                                  args
                                                                <:
                                                                Core_models.Fmt.t_Arguments)
                                                            <:
                                                            Alloc.String.t_String)
                                                        <:
                                                        Alloc.String.t_String)
                                                    <:
                                                    string))
                                          <:
                                          Core_models.Result.t_Result
                                            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                Alloc.Alloc.t_Global) t_StatementHashError
                                        with
                                        | Core_models.Result.Result_Ok hoist37 ->
                                          let fields:Alloc.Vec.t_Vec
                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global
                                          =
                                            Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                  Alloc.Alloc.t_Global)
                                              #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              #FStar.Tactics.Typeclasses.solve
                                              #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                  Alloc.Alloc.t_Global)
                                              fields
                                              hoist37
                                          in
                                          let fields:Alloc.Vec.t_Vec
                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global
                                          =
                                            Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                  Alloc.Alloc.t_Global)
                                              #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              #FStar.Tactics.Typeclasses.solve
                                              #(Core_models.Iter.Adapters.Copied.t_Copied
                                                (Core_models.Slice.Iter.t_Iter
                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq))
                                              fields
                                              (Core_models.Iter.Traits.Iterator.f_copied #(Core_models.Slice.Iter.t_Iter
                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq)
                                                  #FStar.Tactics.Typeclasses.solve
                                                  #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                  (Core_models.Slice.impl__iter #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                      (Alloc.Vec.impl_1__as_slice tier.f_ciphertext
                                                        <:
                                                        t_Slice Decaf377.Fields.Fq.U64.Wrapper.t_Fq)
                                                    <:
                                                    Core_models.Slice.Iter.t_Iter
                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq)
                                                <:
                                                Core_models.Iter.Adapters.Copied.t_Copied
                                                (Core_models.Slice.Iter.t_Iter
                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq))
                                          in
                                          Core_models.Ops.Control_flow.ControlFlow_Continue fields
                                          <:
                                          Core_models.Ops.Control_flow.t_ControlFlow
                                            (Core_models.Ops.Control_flow.t_ControlFlow
                                                (Core_models.Result.t_Result
                                                    (Alloc.Vec.t_Vec
                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                        Alloc.Alloc.t_Global) t_StatementHashError)
                                                (Prims.unit &
                                                  Alloc.Vec.t_Vec
                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                    Alloc.Alloc.t_Global))
                                            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                Alloc.Alloc.t_Global)
                                        | Core_models.Result.Result_Err err ->
                                          Core_models.Ops.Control_flow.ControlFlow_Break
                                          (Core_models.Ops.Control_flow.ControlFlow_Break
                                            (Core_models.Result.Result_Err err
                                              <:
                                              Core_models.Result.t_Result
                                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                    Alloc.Alloc.t_Global) t_StatementHashError)
                                            <:
                                            Core_models.Ops.Control_flow.t_ControlFlow
                                              (Core_models.Result.t_Result
                                                  (Alloc.Vec.t_Vec
                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                      Alloc.Alloc.t_Global) t_StatementHashError)
                                              (Prims.unit &
                                                Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                  Alloc.Alloc.t_Global))
                                          <:
                                          Core_models.Ops.Control_flow.t_ControlFlow
                                            (Core_models.Ops.Control_flow.t_ControlFlow
                                                (Core_models.Result.t_Result
                                                    (Alloc.Vec.t_Vec
                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                        Alloc.Alloc.t_Global) t_StatementHashError)
                                                (Prims.unit &
                                                  Alloc.Vec.t_Vec
                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                    Alloc.Alloc.t_Global))
                                            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                Alloc.Alloc.t_Global))
                                    | Core_models.Result.Result_Err err ->
                                      Core_models.Ops.Control_flow.ControlFlow_Break
                                      (Core_models.Ops.Control_flow.ControlFlow_Break
                                        (Core_models.Result.Result_Err err
                                          <:
                                          Core_models.Result.t_Result
                                            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                Alloc.Alloc.t_Global) t_StatementHashError)
                                        <:
                                        Core_models.Ops.Control_flow.t_ControlFlow
                                          (Core_models.Result.t_Result
                                              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                  Alloc.Alloc.t_Global) t_StatementHashError)
                                          (Prims.unit &
                                            Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              Alloc.Alloc.t_Global))
                                      <:
                                      Core_models.Ops.Control_flow.t_ControlFlow
                                        (Core_models.Ops.Control_flow.t_ControlFlow
                                            (Core_models.Result.t_Result
                                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                    Alloc.Alloc.t_Global) t_StatementHashError)
                                            (Prims.unit &
                                              Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                Alloc.Alloc.t_Global))
                                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                            Alloc.Alloc.t_Global))
                              <:
                              Core_models.Ops.Control_flow.t_ControlFlow
                                (Core_models.Result.t_Result
                                    (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                        Alloc.Alloc.t_Global) t_StatementHashError)
                                (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    Alloc.Alloc.t_Global)
                            with
                            | Core_models.Ops.Control_flow.ControlFlow_Break ret -> ret
                            | Core_models.Ops.Control_flow.ControlFlow_Continue fields ->
                              match
                                Core_models.Option.impl__ok_or_else #(Alloc.Vec.t_Vec
                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                                  #t_StatementHashError
                                  #(Prims.unit -> t_StatementHashError)
                                  (Ark_ff.To_field_vec.f_to_field_elements #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      #FStar.Tactics.Typeclasses.solve
                                      public.f_target_timestamp
                                    <:
                                    Core_models.Option.t_Option
                                    (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                        Alloc.Alloc.t_Global))
                                  (fun temp_0_ ->
                                      let _:Prims.unit = temp_0_ in
                                      transfer_field_encoding_error "target_timestamp"
                                      <:
                                      t_StatementHashError)
                                <:
                                Core_models.Result.t_Result
                                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      Alloc.Alloc.t_Global) t_StatementHashError
                              with
                              | Core_models.Result.Result_Ok hoist39 ->
                                let fields:Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                  Alloc.Alloc.t_Global =
                                  Core_models.Iter.Traits.Collect.f_extend #(Alloc.Vec.t_Vec
                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                                    #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                    #FStar.Tactics.Typeclasses.solve
                                    #(Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                        Alloc.Alloc.t_Global)
                                    fields
                                    hoist39
                                in
                                (match
                                    Rust_primitives.Hax.Folds.fold_return (Core_models.Iter.Traits.Collect.f_into_iter
                                          #(t_Array (string & t_TransferComplianceProofPublic)
                                              (mk_usize 4))
                                          #FStar.Tactics.Typeclasses.solve
                                          (let list =
                                              [
                                                "transfer_sender_core_proof",
                                                compliance.f_sender_core.f_proof
                                                <:
                                                (string & t_TransferComplianceProofPublic);
                                                "transfer_sender_ext_proof",
                                                compliance.f_sender_ext.f_proof
                                                <:
                                                (string & t_TransferComplianceProofPublic);
                                                "transfer_output_core_proof",
                                                compliance.f_output_core.f_proof
                                                <:
                                                (string & t_TransferComplianceProofPublic);
                                                "transfer_output_ext_proof",
                                                compliance.f_output_ext.f_proof
                                                <:
                                                (string & t_TransferComplianceProofPublic)
                                              ]
                                            in
                                            FStar.Pervasives.assert_norm
                                            (Prims.eq2 (List.Tot.length list) 4);
                                            Rust_primitives.Hax.array_of_list 4 list)
                                        <:
                                        Core_models.Array.Iter.t_IntoIter
                                          (string & t_TransferComplianceProofPublic) (mk_usize 4))
                                      fields
                                      (fun fields temp_1_ ->
                                          let fields:Alloc.Vec.t_Vec
                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global
                                          =
                                            fields
                                          in
                                          let
                                          (label: string), (proof: t_TransferComplianceProofPublic)
                                          =
                                            temp_1_
                                          in
                                          let statement:Shieldd_sdk_compliance.Decode_object.t_TransferTierMetadataStatement
                                          =
                                            proof.f_statement
                                          in
                                          match
                                            Core_models.Result.impl__map_err #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              #Anyhow.t_Error
                                              #t_StatementHashError
                                              #(Anyhow.t_Error -> t_StatementHashError)
                                              (Shieldd_sdk_compliance.Decode_object.impl_TransferTierMetadataStatement__subject_derivation
                                                  statement
                                                <:
                                                Core_models.Result.t_Result
                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq Anyhow.t_Error
                                              )
                                              (fun e ->
                                                  let e:Anyhow.t_Error = e in
                                                  let args:(string & Anyhow.t_Error) =
                                                    label, e <: (string & Anyhow.t_Error)
                                                  in
                                                  let args:t_Array Core_models.Fmt.Rt.t_Argument
                                                    (mk_usize 2) =
                                                    let list =
                                                      [
                                                        Core_models.Fmt.Rt.impl__new_display #string
                                                          args._1;
                                                        Core_models.Fmt.Rt.impl__new_display #Anyhow.t_Error
                                                          args._2
                                                      ]
                                                    in
                                                    FStar.Pervasives.assert_norm
                                                    (Prims.eq2 (List.Tot.length list) 2);
                                                    Rust_primitives.Hax.array_of_list 2 list
                                                  in
                                                  transfer_field_encoding_error (Core_models.Ops.Deref.f_deref
                                                        #Alloc.String.t_String
                                                        #FStar.Tactics.Typeclasses.solve
                                                        (Core_models.Hint.must_use #Alloc.String.t_String
                                                            (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1
                                                                    (mk_usize 2)
                                                                    (mk_usize 2)
                                                                    (let list =
                                                                        [
                                                                          "";
                                                                          "_subject_derivation: "
                                                                        ]
                                                                      in
                                                                      FStar.Pervasives.assert_norm
                                                                      (Prims.eq2
                                                                          (List.Tot.length list) 2);
                                                                      Rust_primitives.Hax.array_of_list
                                                                        2 list)
                                                                    args
                                                                  <:
                                                                  Core_models.Fmt.t_Arguments)
                                                              <:
                                                              Alloc.String.t_String)
                                                          <:
                                                          Alloc.String.t_String)
                                                      <:
                                                      string))
                                            <:
                                            Core_models.Result.t_Result
                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              t_StatementHashError
                                          with
                                          | Core_models.Result.Result_Ok subject_derivation ->
                                            (match
                                                Core_models.Result.impl__map_err #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                  #Anyhow.t_Error
                                                  #t_StatementHashError
                                                  #(Anyhow.t_Error -> t_StatementHashError)
                                                  (Shieldd_sdk_compliance.Decode_object.impl_TransferTierMetadataStatement__ring_id_hash
                                                      statement
                                                    <:
                                                    Core_models.Result.t_Result
                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                      Anyhow.t_Error)
                                                  (fun e ->
                                                      let e:Anyhow.t_Error = e in
                                                      let args:(string & Anyhow.t_Error) =
                                                        label, e <: (string & Anyhow.t_Error)
                                                      in
                                                      let args:t_Array Core_models.Fmt.Rt.t_Argument
                                                        (mk_usize 2) =
                                                        let list =
                                                          [
                                                            Core_models.Fmt.Rt.impl__new_display #string
                                                              args._1;
                                                            Core_models.Fmt.Rt.impl__new_display #Anyhow.t_Error
                                                              args._2
                                                          ]
                                                        in
                                                        FStar.Pervasives.assert_norm
                                                        (Prims.eq2 (List.Tot.length list) 2);
                                                        Rust_primitives.Hax.array_of_list 2 list
                                                      in
                                                      transfer_field_encoding_error (Core_models.Ops.Deref.f_deref
                                                            #Alloc.String.t_String
                                                            #FStar.Tactics.Typeclasses.solve
                                                            (Core_models.Hint.must_use #Alloc.String.t_String
                                                                (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1
                                                                        (mk_usize 2)
                                                                        (mk_usize 2)
                                                                        (let list =
                                                                            [""; "_ring_id_hash: "]
                                                                          in
                                                                          FStar.Pervasives.assert_norm
                                                                          (Prims.eq2
                                                                              (List.Tot.length list)
                                                                              2);
                                                                          Rust_primitives.Hax.array_of_list
                                                                            2 list)
                                                                        args
                                                                      <:
                                                                      Core_models.Fmt.t_Arguments)
                                                                  <:
                                                                  Alloc.String.t_String)
                                                              <:
                                                              Alloc.String.t_String)
                                                          <:
                                                          string))
                                                <:
                                                Core_models.Result.t_Result
                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                  t_StatementHashError
                                              with
                                              | Core_models.Result.Result_Ok ring_id_hash ->
                                                (match
                                                    Core_models.Result.impl__map_err #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                      #Anyhow.t_Error
                                                      #t_StatementHashError
                                                      #(Anyhow.t_Error -> t_StatementHashError)
                                                      (Shieldd_sdk_compliance.Decode_object.impl_TransferTierMetadataStatement__policy_id_hash
                                                          statement
                                                        <:
                                                        Core_models.Result.t_Result
                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                          Anyhow.t_Error)
                                                      (fun e ->
                                                          let e:Anyhow.t_Error = e in
                                                          let args:(string & Anyhow.t_Error) =
                                                            label, e <: (string & Anyhow.t_Error)
                                                          in
                                                          let args:t_Array
                                                            Core_models.Fmt.Rt.t_Argument
                                                            (mk_usize 2) =
                                                            let list =
                                                              [
                                                                Core_models.Fmt.Rt.impl__new_display
                                                                  #string
                                                                  args._1;
                                                                Core_models.Fmt.Rt.impl__new_display
                                                                  #Anyhow.t_Error
                                                                  args._2
                                                              ]
                                                            in
                                                            FStar.Pervasives.assert_norm
                                                            (Prims.eq2 (List.Tot.length list) 2);
                                                            Rust_primitives.Hax.array_of_list 2 list
                                                          in
                                                          transfer_field_encoding_error (Core_models.Ops.Deref.f_deref
                                                                #Alloc.String.t_String
                                                                #FStar.Tactics.Typeclasses.solve
                                                                (Core_models.Hint.must_use #Alloc.String.t_String
                                                                    (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1
                                                                            (mk_usize 2)
                                                                            (mk_usize 2)
                                                                            (let list =
                                                                                [
                                                                                  "";
                                                                                  "_policy_id_hash: "
                                                                                ]
                                                                              in
                                                                              FStar.Pervasives.assert_norm
                                                                              (Prims.eq2
                                                                                  (List.Tot.length
                                                                                    list) 2);
                                                                              Rust_primitives.Hax.array_of_list
                                                                                2 list)
                                                                            args
                                                                          <:
                                                                          Core_models.Fmt.t_Arguments
                                                                        )
                                                                      <:
                                                                      Alloc.String.t_String)
                                                                  <:
                                                                  Alloc.String.t_String)
                                                              <:
                                                              string))
                                                    <:
                                                    Core_models.Result.t_Result
                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                      t_StatementHashError
                                                  with
                                                  | Core_models.Result.Result_Ok policy_id_hash ->
                                                    (match
                                                        Core_models.Result.impl__map_err #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                          #Anyhow.t_Error
                                                          #t_StatementHashError
                                                          #(Anyhow.t_Error -> t_StatementHashError)
                                                          (Shieldd_sdk_compliance.Decode_object.impl_TransferTierMetadataStatement__resource_hash
                                                              statement
                                                            <:
                                                            Core_models.Result.t_Result
                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                              Anyhow.t_Error)
                                                          (fun e ->
                                                              let e:Anyhow.t_Error = e in
                                                              let args:(string & Anyhow.t_Error) =
                                                                label, e
                                                                <:
                                                                (string & Anyhow.t_Error)
                                                              in
                                                              let args:t_Array
                                                                Core_models.Fmt.Rt.t_Argument
                                                                (mk_usize 2) =
                                                                let list =
                                                                  [
                                                                    Core_models.Fmt.Rt.impl__new_display
                                                                      #string
                                                                      args._1;
                                                                    Core_models.Fmt.Rt.impl__new_display
                                                                      #Anyhow.t_Error
                                                                      args._2
                                                                  ]
                                                                in
                                                                FStar.Pervasives.assert_norm
                                                                (Prims.eq2 (List.Tot.length list) 2);
                                                                Rust_primitives.Hax.array_of_list 2
                                                                  list
                                                              in
                                                              transfer_field_encoding_error (Core_models.Ops.Deref.f_deref
                                                                    #Alloc.String.t_String
                                                                    #FStar.Tactics.Typeclasses.solve
                                                                    (Core_models.Hint.must_use #Alloc.String.t_String
                                                                        (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1
                                                                                (mk_usize 2)
                                                                                (mk_usize 2)
                                                                                (let list =
                                                                                    [
                                                                                      "";
                                                                                      "_resource_hash: "
                                                                                    ]
                                                                                  in
                                                                                  FStar.Pervasives.assert_norm
                                                                                  (Prims.eq2
                                                                                      (List.Tot.length
                                                                                        list) 2);
                                                                                  Rust_primitives.Hax.array_of_list
                                                                                    2 list)
                                                                                args
                                                                              <:
                                                                              Core_models.Fmt.t_Arguments
                                                                            )
                                                                          <:
                                                                          Alloc.String.t_String)
                                                                      <:
                                                                      Alloc.String.t_String)
                                                                  <:
                                                                  string))
                                                        <:
                                                        Core_models.Result.t_Result
                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                          t_StatementHashError
                                                      with
                                                      | Core_models.Result.Result_Ok resource_hash ->
                                                        (match
                                                            Core_models.Result.impl__map_err #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                              #Anyhow.t_Error
                                                              #t_StatementHashError
                                                              #(Anyhow.t_Error
                                                                  -> t_StatementHashError)
                                                              (Shieldd_sdk_compliance.Decode_object.impl_TransferTierMetadataStatement__permission_hash
                                                                  statement
                                                                <:
                                                                Core_models.Result.t_Result
                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                  Anyhow.t_Error)
                                                              (fun e ->
                                                                  let e:Anyhow.t_Error = e in
                                                                  let args:(string & Anyhow.t_Error)
                                                                  =
                                                                    label, e
                                                                    <:
                                                                    (string & Anyhow.t_Error)
                                                                  in
                                                                  let args:t_Array
                                                                    Core_models.Fmt.Rt.t_Argument
                                                                    (mk_usize 2) =
                                                                    let list =
                                                                      [
                                                                        Core_models.Fmt.Rt.impl__new_display
                                                                          #string
                                                                          args._1;
                                                                        Core_models.Fmt.Rt.impl__new_display
                                                                          #Anyhow.t_Error
                                                                          args._2
                                                                      ]
                                                                    in
                                                                    FStar.Pervasives.assert_norm
                                                                    (Prims.eq2
                                                                        (List.Tot.length list) 2);
                                                                    Rust_primitives.Hax.array_of_list
                                                                      2 list
                                                                  in
                                                                  transfer_field_encoding_error (Core_models.Ops.Deref.f_deref
                                                                        #Alloc.String.t_String
                                                                        #FStar.Tactics.Typeclasses.solve
                                                                        (Core_models.Hint.must_use #Alloc.String.t_String
                                                                            (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1
                                                                                    (mk_usize 2)
                                                                                    (mk_usize 2)
                                                                                    (let list =
                                                                                        [
                                                                                          "";
                                                                                          "_permission_hash: "
                                                                                        ]
                                                                                      in
                                                                                      FStar.Pervasives.assert_norm
                                                                                      (Prims.eq2
                                                                                          (List.Tot.length
                                                                                            list) 2);
                                                                                      Rust_primitives.Hax.array_of_list
                                                                                        2 list)
                                                                                    args
                                                                                  <:
                                                                                  Core_models.Fmt.t_Arguments
                                                                                )
                                                                              <:
                                                                              Alloc.String.t_String)
                                                                          <:
                                                                          Alloc.String.t_String)
                                                                      <:
                                                                      string))
                                                            <:
                                                            Core_models.Result.t_Result
                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                              t_StatementHashError
                                                          with
                                                          | Core_models.Result.Result_Ok
                                                            permission_hash ->
                                                            (match
                                                                Core_models.Result.impl__map_err #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                  #Anyhow.t_Error
                                                                  #t_StatementHashError
                                                                  #(Anyhow.t_Error
                                                                      -> t_StatementHashError)
                                                                  (Shieldd_sdk_compliance.Decode_object.impl_TransferTierMetadataStatement__salt
                                                                      statement
                                                                    <:
                                                                    Core_models.Result.t_Result
                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                      Anyhow.t_Error)
                                                                  (fun e ->
                                                                      let e:Anyhow.t_Error = e in
                                                                      let args:(string &
                                                                        Anyhow.t_Error) =
                                                                        label, e
                                                                        <:
                                                                        (string & Anyhow.t_Error)
                                                                      in
                                                                      let args:t_Array
                                                                        Core_models.Fmt.Rt.t_Argument
                                                                        (mk_usize 2) =
                                                                        let list =
                                                                          [
                                                                            Core_models.Fmt.Rt.impl__new_display
                                                                              #string
                                                                              args._1;
                                                                            Core_models.Fmt.Rt.impl__new_display
                                                                              #Anyhow.t_Error
                                                                              args._2
                                                                          ]
                                                                        in
                                                                        FStar.Pervasives.assert_norm
                                                                        (Prims.eq2
                                                                            (List.Tot.length list) 2
                                                                        );
                                                                        Rust_primitives.Hax.array_of_list
                                                                          2 list
                                                                      in
                                                                      transfer_field_encoding_error (
                                                                          Core_models.Ops.Deref.f_deref
                                                                            #Alloc.String.t_String
                                                                            #FStar.Tactics.Typeclasses.solve
                                                                            (Core_models.Hint.must_use
                                                                                #Alloc.String.t_String
                                                                                (Alloc.Fmt.format (Core_models.Fmt.Rt.impl_1__new_v1
                                                                                        (mk_usize 2)
                                                                                        (mk_usize 2)
                                                                                        (let list =
                                                                                            [
                                                                                              "";
                                                                                              "_salt: "
                                                                                            ]
                                                                                          in
                                                                                          FStar.Pervasives.assert_norm
                                                                                          (Prims.eq2
                                                                                              (List.Tot.length
                                                                                                list
                                                                                              ) 2);
                                                                                          Rust_primitives.Hax.array_of_list
                                                                                            2 list)
                                                                                        args
                                                                                      <:
                                                                                      Core_models.Fmt.t_Arguments
                                                                                    )
                                                                                  <:
                                                                                  Alloc.String.t_String
                                                                                )
                                                                              <:
                                                                              Alloc.String.t_String)
                                                                          <:
                                                                          string))
                                                                <:
                                                                Core_models.Result.t_Result
                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                  t_StatementHashError
                                                              with
                                                              | Core_models.Result.Result_Ok salt ->
                                                                (match
                                                                    Core_models.Option.impl__ok_or_else
                                                                      #(Alloc.Vec.t_Vec
                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                          Alloc.Alloc.t_Global)
                                                                      #t_StatementHashError
                                                                      #(Prims.unit
                                                                          -> t_StatementHashError)
                                                                      (Ark_ff.To_field_vec.f_to_field_elements
                                                                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                          #FStar.Tactics.Typeclasses.solve
                                                                          subject_derivation
                                                                        <:
                                                                        Core_models.Option.t_Option
                                                                        (Alloc.Vec.t_Vec
                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                            Alloc.Alloc.t_Global))
                                                                      (fun temp_0_ ->
                                                                          let _:Prims.unit =
                                                                            temp_0_
                                                                          in
                                                                          let args:string =
                                                                            label <: string
                                                                          in
                                                                          let args:t_Array
                                                                            Core_models.Fmt.Rt.t_Argument
                                                                            (mk_usize 1) =
                                                                            let list =
                                                                              [
                                                                                Core_models.Fmt.Rt.impl__new_display
                                                                                  #string
                                                                                  args
                                                                              ]
                                                                            in
                                                                            FStar.Pervasives.assert_norm
                                                                            (Prims.eq2
                                                                                (List.Tot.length
                                                                                  list) 1);
                                                                            Rust_primitives.Hax.array_of_list
                                                                              1 list
                                                                          in
                                                                          transfer_field_encoding_error
                                                                            (Core_models.Ops.Deref.f_deref
                                                                                #Alloc.String.t_String
                                                                                #FStar.Tactics.Typeclasses.solve
                                                                                (Core_models.Hint.must_use
                                                                                    #Alloc.String.t_String
                                                                                    (Alloc.Fmt.format
                                                                                        (Core_models.Fmt.Rt.impl_1__new_v1
                                                                                            (mk_usize
                                                                                              2)
                                                                                            (mk_usize
                                                                                              1)
                                                                                            (let
                                                                                              list =
                                                                                                [
                                                                                                  "";
                                                                                                  "_subject_derivation"
                                                                                                ]
                                                                                              in
                                                                                              FStar.Pervasives.assert_norm
                                                                                              (Prims.eq2
                                                                                                  (List.Tot.length
                                                                                                    list
                                                                                                  )
                                                                                                  2);
                                                                                              Rust_primitives.Hax.array_of_list
                                                                                                2
                                                                                                list
                                                                                            )
                                                                                            args
                                                                                          <:
                                                                                          Core_models.Fmt.t_Arguments
                                                                                        )
                                                                                      <:
                                                                                      Alloc.String.t_String
                                                                                    )
                                                                                  <:
                                                                                  Alloc.String.t_String
                                                                                )
                                                                              <:
                                                                              string))
                                                                    <:
                                                                    Core_models.Result.t_Result
                                                                      (Alloc.Vec.t_Vec
                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                          Alloc.Alloc.t_Global)
                                                                      t_StatementHashError
                                                                  with
                                                                  | Core_models.Result.Result_Ok
                                                                    hoist41 ->
                                                                    let fields:Alloc.Vec.t_Vec
                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                      Alloc.Alloc.t_Global =
                                                                      Core_models.Iter.Traits.Collect.f_extend
                                                                        #(Alloc.Vec.t_Vec
                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                            Alloc.Alloc.t_Global)
                                                                        #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                        #FStar.Tactics.Typeclasses.solve
                                                                        #(Alloc.Vec.t_Vec
                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                            Alloc.Alloc.t_Global)
                                                                        fields
                                                                        hoist41
                                                                    in
                                                                    (match
                                                                        Core_models.Option.impl__ok_or_else
                                                                          #(Alloc.Vec.t_Vec
                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                              Alloc.Alloc.t_Global)
                                                                          #t_StatementHashError
                                                                          #(Prims.unit
                                                                              -> t_StatementHashError
                                                                          )
                                                                          (Ark_ff.To_field_vec.f_to_field_elements
                                                                              #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                              #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                              #FStar.Tactics.Typeclasses.solve
                                                                              ring_id_hash
                                                                            <:
                                                                            Core_models.Option.t_Option
                                                                            (Alloc.Vec.t_Vec
                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                Alloc.Alloc.t_Global
                                                                            ))
                                                                          (fun temp_0_ ->
                                                                              let _:Prims.unit =
                                                                                temp_0_
                                                                              in
                                                                              let args:string =
                                                                                label <: string
                                                                              in
                                                                              let args:t_Array
                                                                                Core_models.Fmt.Rt.t_Argument
                                                                                (mk_usize 1) =
                                                                                let list =
                                                                                  [
                                                                                    Core_models.Fmt.Rt.impl__new_display
                                                                                      #string
                                                                                      args
                                                                                  ]
                                                                                in
                                                                                FStar.Pervasives.assert_norm
                                                                                (Prims.eq2
                                                                                    (List.Tot.length
                                                                                      list) 1);
                                                                                Rust_primitives.Hax.array_of_list
                                                                                  1 list
                                                                              in
                                                                              transfer_field_encoding_error
                                                                                (Core_models.Ops.Deref.f_deref
                                                                                    #Alloc.String.t_String
                                                                                    #FStar.Tactics.Typeclasses.solve
                                                                                    (Core_models.Hint.must_use
                                                                                        #Alloc.String.t_String
                                                                                        (Alloc.Fmt.format
                                                                                            (Core_models.Fmt.Rt.impl_1__new_v1
                                                                                                (mk_usize
                                                                                                  2)
                                                                                                (mk_usize
                                                                                                  1)
                                                                                                (let
                                                                                                  list
                                                                                                  =
                                                                                                    [
                                                                                                      "";
                                                                                                      "_ring_id_hash"
                                                                                                    ]
                                                                                                  in
                                                                                                  FStar.Pervasives.assert_norm
                                                                                                  (Prims.eq2
                                                                                                      (
                                                                                                        List.Tot.length
                                                                                                        list
                                                                                                      )
                                                                                                      2
                                                                                                  );
                                                                                                  Rust_primitives.Hax.array_of_list
                                                                                                    2
                                                                                                    list
                                                                                                )
                                                                                                args
                                                                                              <:
                                                                                              Core_models.Fmt.t_Arguments
                                                                                            )
                                                                                          <:
                                                                                          Alloc.String.t_String
                                                                                        )
                                                                                      <:
                                                                                      Alloc.String.t_String
                                                                                    )
                                                                                  <:
                                                                                  string))
                                                                        <:
                                                                        Core_models.Result.t_Result
                                                                          (Alloc.Vec.t_Vec
                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                              Alloc.Alloc.t_Global)
                                                                          t_StatementHashError
                                                                      with
                                                                      | Core_models.Result.Result_Ok
                                                                        hoist43 ->
                                                                        let fields:Alloc.Vec.t_Vec
                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                          Alloc.Alloc.t_Global =
                                                                          Core_models.Iter.Traits.Collect.f_extend
                                                                            #(Alloc.Vec.t_Vec
                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                Alloc.Alloc.t_Global
                                                                            )
                                                                            #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                            #FStar.Tactics.Typeclasses.solve
                                                                            #(Alloc.Vec.t_Vec
                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                Alloc.Alloc.t_Global
                                                                            )
                                                                            fields
                                                                            hoist43
                                                                        in
                                                                        (match
                                                                            Core_models.Option.impl__ok_or_else
                                                                              #(Alloc.Vec.t_Vec
                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                  Alloc.Alloc.t_Global
                                                                              )
                                                                              #t_StatementHashError
                                                                              #(Prims.unit
                                                                                  -> t_StatementHashError
                                                                              )
                                                                              (Ark_ff.To_field_vec.f_to_field_elements
                                                                                  #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                  #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                  #FStar.Tactics.Typeclasses.solve
                                                                                  policy_id_hash
                                                                                <:
                                                                                Core_models.Option.t_Option
                                                                                (Alloc.Vec.t_Vec
                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                    Alloc.Alloc.t_Global
                                                                                ))
                                                                              (fun temp_0_ ->
                                                                                  let _:Prims.unit =
                                                                                    temp_0_
                                                                                  in
                                                                                  let args:string =
                                                                                    label <: string
                                                                                  in
                                                                                  let args:t_Array
                                                                                    Core_models.Fmt.Rt.t_Argument
                                                                                    (mk_usize 1) =
                                                                                    let list =
                                                                                      [
                                                                                        Core_models.Fmt.Rt.impl__new_display
                                                                                          #string
                                                                                          args
                                                                                      ]
                                                                                    in
                                                                                    FStar.Pervasives.assert_norm
                                                                                    (Prims.eq2
                                                                                        (List.Tot.length
                                                                                          list) 1);
                                                                                    Rust_primitives.Hax.array_of_list
                                                                                      1 list
                                                                                  in
                                                                                  transfer_field_encoding_error
                                                                                    (Core_models.Ops.Deref.f_deref
                                                                                        #Alloc.String.t_String
                                                                                        #FStar.Tactics.Typeclasses.solve
                                                                                        (Core_models.Hint.must_use
                                                                                            #Alloc.String.t_String
                                                                                            (Alloc.Fmt.format
                                                                                                (Core_models.Fmt.Rt.impl_1__new_v1
                                                                                                    (
                                                                                                      mk_usize
                                                                                                      2
                                                                                                    )
                                                                                                    (
                                                                                                      mk_usize
                                                                                                      1
                                                                                                    )
                                                                                                    (
                                                                                                      let
                                                                                                      list
                                                                                                      =
                                                                                                        [
                                                                                                          "";
                                                                                                          "_policy_id_hash"
                                                                                                        ]
                                                                                                      in
                                                                                                      FStar.Pervasives.assert_norm
                                                                                                      (
                                                                                                        Prims.eq2
                                                                                                          (
                                                                                                            List.Tot.length
                                                                                                            list
                                                                                                          )
                                                                                                          2
                                                                                                      );
                                                                                                      Rust_primitives.Hax.array_of_list
                                                                                                        2
                                                                                                        list
                                                                                                    )
                                                                                                    args

                                                                                                  <:
                                                                                                  Core_models.Fmt.t_Arguments
                                                                                                )
                                                                                              <:
                                                                                              Alloc.String.t_String
                                                                                            )
                                                                                          <:
                                                                                          Alloc.String.t_String
                                                                                        )
                                                                                      <:
                                                                                      string))
                                                                            <:
                                                                            Core_models.Result.t_Result
                                                                              (Alloc.Vec.t_Vec
                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                  Alloc.Alloc.t_Global
                                                                              ) t_StatementHashError
                                                                          with
                                                                          | Core_models.Result.Result_Ok
                                                                            hoist45 ->
                                                                            let fields:Alloc.Vec.t_Vec
                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                              Alloc.Alloc.t_Global =
                                                                              Core_models.Iter.Traits.Collect.f_extend
                                                                                #(Alloc.Vec.t_Vec
                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                    Alloc.Alloc.t_Global
                                                                                )
                                                                                #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                #FStar.Tactics.Typeclasses.solve
                                                                                #(Alloc.Vec.t_Vec
                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                    Alloc.Alloc.t_Global
                                                                                )
                                                                                fields
                                                                                hoist45
                                                                            in
                                                                            (match
                                                                                Core_models.Option.impl__ok_or_else
                                                                                  #(Alloc.Vec.t_Vec
                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                      Alloc.Alloc.t_Global
                                                                                  )
                                                                                  #t_StatementHashError
                                                                                  #(Prims.unit
                                                                                      -> t_StatementHashError
                                                                                  )
                                                                                  (Ark_ff.To_field_vec.f_to_field_elements
                                                                                      #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                      #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                      #FStar.Tactics.Typeclasses.solve
                                                                                      resource_hash
                                                                                    <:
                                                                                    Core_models.Option.t_Option
                                                                                    (Alloc.Vec.t_Vec
                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                        Alloc.Alloc.t_Global
                                                                                    ))
                                                                                  (fun temp_0_ ->
                                                                                      let _:Prims.unit
                                                                                      =
                                                                                        temp_0_
                                                                                      in
                                                                                      let args:string
                                                                                      =
                                                                                        label
                                                                                        <:
                                                                                        string
                                                                                      in
                                                                                      let args:t_Array
                                                                                        Core_models.Fmt.Rt.t_Argument
                                                                                        (mk_usize 1)
                                                                                      =
                                                                                        let list =
                                                                                          [
                                                                                            Core_models.Fmt.Rt.impl__new_display
                                                                                              #string
                                                                                              args
                                                                                          ]
                                                                                        in
                                                                                        FStar.Pervasives.assert_norm
                                                                                        (Prims.eq2
                                                                                            (List.Tot.length
                                                                                              list)
                                                                                            1);
                                                                                        Rust_primitives.Hax.array_of_list
                                                                                          1 list
                                                                                      in
                                                                                      transfer_field_encoding_error
                                                                                        (Core_models.Ops.Deref.f_deref
                                                                                            #Alloc.String.t_String
                                                                                            #FStar.Tactics.Typeclasses.solve
                                                                                            (Core_models.Hint.must_use
                                                                                                #Alloc.String.t_String
                                                                                                (Alloc.Fmt.format
                                                                                                    (
                                                                                                      Core_models.Fmt.Rt.impl_1__new_v1
                                                                                                        (
                                                                                                          mk_usize
                                                                                                          2
                                                                                                        )
                                                                                                        (
                                                                                                          mk_usize
                                                                                                          1
                                                                                                        )
                                                                                                        (
                                                                                                          let
                                                                                                          list
                                                                                                          =
                                                                                                            [
                                                                                                              "";
                                                                                                              "_resource_hash"
                                                                                                            ]
                                                                                                          in
                                                                                                          FStar.Pervasives.assert_norm
                                                                                                          (
                                                                                                            Prims.eq2
                                                                                                              (
                                                                                                                List.Tot.length
                                                                                                                list
                                                                                                              )
                                                                                                              2
                                                                                                          );
                                                                                                          Rust_primitives.Hax.array_of_list
                                                                                                            2
                                                                                                            list
                                                                                                        )
                                                                                                        args

                                                                                                      <:
                                                                                                      Core_models.Fmt.t_Arguments
                                                                                                    )

                                                                                                  <:
                                                                                                  Alloc.String.t_String
                                                                                                )
                                                                                              <:
                                                                                              Alloc.String.t_String
                                                                                            )
                                                                                          <:
                                                                                          string))
                                                                                <:
                                                                                Core_models.Result.t_Result
                                                                                  (Alloc.Vec.t_Vec
                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                      Alloc.Alloc.t_Global
                                                                                  )
                                                                                  t_StatementHashError
                                                                              with
                                                                              | Core_models.Result.Result_Ok
                                                                                hoist47 ->
                                                                                let fields:Alloc.Vec.t_Vec
                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                  Alloc.Alloc.t_Global
                                                                                =
                                                                                  Core_models.Iter.Traits.Collect.f_extend
                                                                                    #(Alloc.Vec.t_Vec
                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                        Alloc.Alloc.t_Global
                                                                                    )
                                                                                    #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                    #FStar.Tactics.Typeclasses.solve
                                                                                    #(Alloc.Vec.t_Vec
                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                        Alloc.Alloc.t_Global
                                                                                    )
                                                                                    fields
                                                                                    hoist47
                                                                                in
                                                                                (match
                                                                                    Core_models.Option.impl__ok_or_else
                                                                                      #(Alloc.Vec.t_Vec
                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                          Alloc.Alloc.t_Global
                                                                                      )
                                                                                      #t_StatementHashError
                                                                                      #(Prims.unit
                                                                                          -> t_StatementHashError
                                                                                      )
                                                                                      (Ark_ff.To_field_vec.f_to_field_elements
                                                                                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                          #FStar.Tactics.Typeclasses.solve
                                                                                          permission_hash

                                                                                        <:
                                                                                        Core_models.Option.t_Option
                                                                                        (Alloc.Vec.t_Vec
                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                            Alloc.Alloc.t_Global
                                                                                        ))
                                                                                      (fun
                                                                                          temp_0_
                                                                                          ->
                                                                                          let _:Prims.unit
                                                                                          =
                                                                                            temp_0_
                                                                                          in
                                                                                          let args:string
                                                                                          =
                                                                                            label
                                                                                            <:
                                                                                            string
                                                                                          in
                                                                                          let args:t_Array
                                                                                            Core_models.Fmt.Rt.t_Argument
                                                                                            (mk_usize
                                                                                              1) =
                                                                                            let list
                                                                                            =
                                                                                              [
                                                                                                Core_models.Fmt.Rt.impl__new_display
                                                                                                  #string
                                                                                                  args

                                                                                              ]
                                                                                            in
                                                                                            FStar.Pervasives.assert_norm
                                                                                            (Prims.eq2
                                                                                                (List.Tot.length
                                                                                                  list
                                                                                                ) 1);
                                                                                            Rust_primitives.Hax.array_of_list
                                                                                              1 list
                                                                                          in
                                                                                          transfer_field_encoding_error
                                                                                            (Core_models.Ops.Deref.f_deref
                                                                                                #Alloc.String.t_String
                                                                                                #FStar.Tactics.Typeclasses.solve
                                                                                                (Core_models.Hint.must_use
                                                                                                    #Alloc.String.t_String
                                                                                                    (
                                                                                                      Alloc.Fmt.format
                                                                                                        (
                                                                                                          Core_models.Fmt.Rt.impl_1__new_v1
                                                                                                            (
                                                                                                              mk_usize
                                                                                                              2
                                                                                                            )
                                                                                                            (
                                                                                                              mk_usize
                                                                                                              1
                                                                                                            )
                                                                                                            (
                                                                                                              let
                                                                                                              list
                                                                                                              =
                                                                                                                [
                                                                                                                  "";
                                                                                                                  "_permission_hash"
                                                                                                                ]
                                                                                                              in
                                                                                                              FStar.Pervasives.assert_norm
                                                                                                              (
                                                                                                                Prims.eq2
                                                                                                                  (
                                                                                                                    List.Tot.length
                                                                                                                    list
                                                                                                                  )
                                                                                                                  2
                                                                                                              );
                                                                                                              Rust_primitives.Hax.array_of_list
                                                                                                                2
                                                                                                                list
                                                                                                            )
                                                                                                            args

                                                                                                          <:
                                                                                                          Core_models.Fmt.t_Arguments
                                                                                                        )

                                                                                                      <:
                                                                                                      Alloc.String.t_String
                                                                                                    )

                                                                                                  <:
                                                                                                  Alloc.String.t_String
                                                                                                )
                                                                                              <:
                                                                                              string
                                                                                            ))
                                                                                    <:
                                                                                    Core_models.Result.t_Result
                                                                                      (Alloc.Vec.t_Vec
                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                          Alloc.Alloc.t_Global
                                                                                      )
                                                                                      t_StatementHashError
                                                                                  with
                                                                                  | Core_models.Result.Result_Ok
                                                                                    hoist49 ->
                                                                                    let fields:Alloc.Vec.t_Vec
                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                      Alloc.Alloc.t_Global
                                                                                    =
                                                                                      Core_models.Iter.Traits.Collect.f_extend
                                                                                        #(Alloc.Vec.t_Vec
                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                            Alloc.Alloc.t_Global
                                                                                        )
                                                                                        #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                        #FStar.Tactics.Typeclasses.solve
                                                                                        #(Alloc.Vec.t_Vec
                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                            Alloc.Alloc.t_Global
                                                                                        )
                                                                                        fields
                                                                                        hoist49
                                                                                    in
                                                                                    (match
                                                                                        Core_models.Option.impl__ok_or_else
                                                                                          #(Alloc.Vec.t_Vec
                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                              Alloc.Alloc.t_Global
                                                                                          )
                                                                                          #t_StatementHashError
                                                                                          #(
                                                                                                Prims.unit
                                                                                              -> t_StatementHashError
                                                                                          )
                                                                                          (Ark_ff.To_field_vec.f_to_field_elements
                                                                                              #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                              #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                              #FStar.Tactics.Typeclasses.solve
                                                                                              (Core_models.Convert.f_from
                                                                                                  #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                  #u64
                                                                                                  #FStar.Tactics.Typeclasses.solve
                                                                                                  (Shieldd_sdk_compliance.Decode_object.impl_TransferTierKind__as_u64
                                                                                                      statement
                                                                                                        .Shieldd_sdk_compliance.Decode_object.f_tier

                                                                                                    <:
                                                                                                    u64
                                                                                                  )
                                                                                                <:
                                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                              )
                                                                                            <:
                                                                                            Core_models.Option.t_Option
                                                                                            (Alloc.Vec.t_Vec
                                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                Alloc.Alloc.t_Global
                                                                                            ))
                                                                                          (fun
                                                                                              temp_0_
                                                                                              ->
                                                                                              let _:Prims.unit
                                                                                              =
                                                                                                temp_0_
                                                                                              in
                                                                                              let
                                                                                              args:string
                                                                                              =
                                                                                                label
                                                                                                <:
                                                                                                string
                                                                                              in
                                                                                              let
                                                                                              args:t_Array
                                                                                                Core_models.Fmt.Rt.t_Argument
                                                                                                (mk_usize
                                                                                                  1)
                                                                                              =
                                                                                                let
                                                                                                list
                                                                                                =
                                                                                                  [
                                                                                                    Core_models.Fmt.Rt.impl__new_display
                                                                                                      #string
                                                                                                      args

                                                                                                  ]
                                                                                                in
                                                                                                FStar.Pervasives.assert_norm
                                                                                                (Prims.eq2
                                                                                                    (
                                                                                                      List.Tot.length
                                                                                                      list
                                                                                                    )
                                                                                                    1
                                                                                                );
                                                                                                Rust_primitives.Hax.array_of_list
                                                                                                  1
                                                                                                  list
                                                                                              in
                                                                                              transfer_field_encoding_error
                                                                                                (Core_models.Ops.Deref.f_deref
                                                                                                    #Alloc.String.t_String
                                                                                                    #FStar.Tactics.Typeclasses.solve
                                                                                                    (
                                                                                                      Core_models.Hint.must_use
                                                                                                        #Alloc.String.t_String
                                                                                                        (
                                                                                                          Alloc.Fmt.format
                                                                                                            (
                                                                                                              Core_models.Fmt.Rt.impl_1__new_v1
                                                                                                                (
                                                                                                                  mk_usize
                                                                                                                  2
                                                                                                                )
                                                                                                                (
                                                                                                                  mk_usize
                                                                                                                  1
                                                                                                                )
                                                                                                                (
                                                                                                                  let
                                                                                                                  list
                                                                                                                  =
                                                                                                                    [
                                                                                                                      "";
                                                                                                                      "_tier"
                                                                                                                    ]
                                                                                                                  in
                                                                                                                  FStar.Pervasives.assert_norm
                                                                                                                  (
                                                                                                                    Prims.eq2
                                                                                                                      (
                                                                                                                        List.Tot.length
                                                                                                                        list
                                                                                                                      )
                                                                                                                      2
                                                                                                                  );
                                                                                                                  Rust_primitives.Hax.array_of_list
                                                                                                                    2
                                                                                                                    list
                                                                                                                )
                                                                                                                args

                                                                                                              <:
                                                                                                              Core_models.Fmt.t_Arguments
                                                                                                            )

                                                                                                          <:
                                                                                                          Alloc.String.t_String
                                                                                                        )

                                                                                                      <:
                                                                                                      Alloc.String.t_String
                                                                                                    )

                                                                                                  <:
                                                                                                  string
                                                                                                ))
                                                                                        <:
                                                                                        Core_models.Result.t_Result
                                                                                          (Alloc.Vec.t_Vec
                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                              Alloc.Alloc.t_Global
                                                                                          )
                                                                                          t_StatementHashError
                                                                                      with
                                                                                      | Core_models.Result.Result_Ok
                                                                                        hoist51 ->
                                                                                        let fields:Alloc.Vec.t_Vec
                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                          Alloc.Alloc.t_Global
                                                                                        =
                                                                                          Core_models.Iter.Traits.Collect.f_extend
                                                                                            #(Alloc.Vec.t_Vec
                                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                Alloc.Alloc.t_Global
                                                                                            )
                                                                                            #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                            #FStar.Tactics.Typeclasses.solve
                                                                                            #(Alloc.Vec.t_Vec
                                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                Alloc.Alloc.t_Global
                                                                                            )
                                                                                            fields
                                                                                            hoist51
                                                                                        in
                                                                                        (match
                                                                                            Core_models.Option.impl__ok_or_else
                                                                                              #(Alloc.Vec.t_Vec
                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                  Alloc.Alloc.t_Global
                                                                                              )
                                                                                              #t_StatementHashError
                                                                                              #(
                                                                                                    Prims.unit
                                                                                                  -> t_StatementHashError
                                                                                              )
                                                                                              (Ark_ff.To_field_vec.f_to_field_elements
                                                                                                  #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                  #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                  #FStar.Tactics.Typeclasses.solve
                                                                                                  (Core_models.Convert.f_from
                                                                                                      #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                      #u64
                                                                                                      #FStar.Tactics.Typeclasses.solve
                                                                                                      statement
                                                                                                        .Shieldd_sdk_compliance.Decode_object.f_target_timestamp

                                                                                                    <:
                                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                  )
                                                                                                <:
                                                                                                Core_models.Option.t_Option
                                                                                                (Alloc.Vec.t_Vec
                                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                    Alloc.Alloc.t_Global
                                                                                                ))
                                                                                              (fun
                                                                                                  temp_0_
                                                                                                  ->
                                                                                                  let
                                                                                                  _:Prims.unit
                                                                                                  =
                                                                                                    temp_0_
                                                                                                  in
                                                                                                  let
                                                                                                  args:string
                                                                                                  =
                                                                                                    label
                                                                                                    <:
                                                                                                    string
                                                                                                  in
                                                                                                  let
                                                                                                  args:t_Array
                                                                                                    Core_models.Fmt.Rt.t_Argument
                                                                                                    (
                                                                                                      mk_usize
                                                                                                      1
                                                                                                    )
                                                                                                  =
                                                                                                    let
                                                                                                    list
                                                                                                    =
                                                                                                      [
                                                                                                        Core_models.Fmt.Rt.impl__new_display
                                                                                                          #string
                                                                                                          args

                                                                                                      ]
                                                                                                    in
                                                                                                    FStar.Pervasives.assert_norm
                                                                                                    (
                                                                                                      Prims.eq2
                                                                                                        (
                                                                                                          List.Tot.length
                                                                                                          list
                                                                                                        )
                                                                                                        1
                                                                                                    );
                                                                                                    Rust_primitives.Hax.array_of_list
                                                                                                      1
                                                                                                      list
                                                                                                  in
                                                                                                  transfer_field_encoding_error
                                                                                                    (
                                                                                                      Core_models.Ops.Deref.f_deref
                                                                                                        #Alloc.String.t_String
                                                                                                        #FStar.Tactics.Typeclasses.solve
                                                                                                        (
                                                                                                          Core_models.Hint.must_use
                                                                                                            #Alloc.String.t_String
                                                                                                            (
                                                                                                              Alloc.Fmt.format
                                                                                                                (
                                                                                                                  Core_models.Fmt.Rt.impl_1__new_v1
                                                                                                                    (
                                                                                                                      mk_usize
                                                                                                                      2
                                                                                                                    )
                                                                                                                    (
                                                                                                                      mk_usize
                                                                                                                      1
                                                                                                                    )
                                                                                                                    (
                                                                                                                      let
                                                                                                                      list
                                                                                                                      =
                                                                                                                        [
                                                                                                                          "";
                                                                                                                          "_target_timestamp"
                                                                                                                        ]
                                                                                                                      in
                                                                                                                      FStar.Pervasives.assert_norm
                                                                                                                      (
                                                                                                                        Prims.eq2
                                                                                                                          (
                                                                                                                            List.Tot.length
                                                                                                                            list
                                                                                                                          )
                                                                                                                          2
                                                                                                                      );
                                                                                                                      Rust_primitives.Hax.array_of_list
                                                                                                                        2
                                                                                                                        list
                                                                                                                    )
                                                                                                                    args

                                                                                                                  <:
                                                                                                                  Core_models.Fmt.t_Arguments
                                                                                                                )

                                                                                                              <:
                                                                                                              Alloc.String.t_String
                                                                                                            )

                                                                                                          <:
                                                                                                          Alloc.String.t_String
                                                                                                        )

                                                                                                      <:
                                                                                                      string
                                                                                                    )
                                                                                                  )
                                                                                            <:
                                                                                            Core_models.Result.t_Result
                                                                                              (Alloc.Vec.t_Vec
                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                  Alloc.Alloc.t_Global
                                                                                              )
                                                                                              t_StatementHashError
                                                                                          with
                                                                                          | Core_models.Result.Result_Ok
                                                                                            hoist53 ->
                                                                                            let
                                                                                            fields:Alloc.Vec.t_Vec
                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                              Alloc.Alloc.t_Global
                                                                                            =
                                                                                              Core_models.Iter.Traits.Collect.f_extend
                                                                                                #(Alloc.Vec.t_Vec
                                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                    Alloc.Alloc.t_Global
                                                                                                )
                                                                                                #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                #FStar.Tactics.Typeclasses.solve
                                                                                                #(Alloc.Vec.t_Vec
                                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                    Alloc.Alloc.t_Global
                                                                                                )
                                                                                                fields
                                                                                                hoist53

                                                                                            in
                                                                                            (match
                                                                                                Core_models.Option.impl__ok_or_else
                                                                                                  #(Alloc.Vec.t_Vec
                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                      Alloc.Alloc.t_Global
                                                                                                  )
                                                                                                  #t_StatementHashError
                                                                                                  #(
                                                                                                        Prims.unit
                                                                                                      -> t_StatementHashError
                                                                                                  )
                                                                                                  (Ark_ff.To_field_vec.f_to_field_elements
                                                                                                      #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                      #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                      #FStar.Tactics.Typeclasses.solve
                                                                                                      salt

                                                                                                    <:
                                                                                                    Core_models.Option.t_Option
                                                                                                    (
                                                                                                      Alloc.Vec.t_Vec
                                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                        Alloc.Alloc.t_Global
                                                                                                    )
                                                                                                  )
                                                                                                  (fun
                                                                                                      temp_0_
                                                                                                      ->
                                                                                                      let
                                                                                                      _:Prims.unit
                                                                                                      =
                                                                                                        temp_0_
                                                                                                      in
                                                                                                      let
                                                                                                      args:string
                                                                                                      =
                                                                                                        label
                                                                                                        <:
                                                                                                        string
                                                                                                      in
                                                                                                      let
                                                                                                      args:t_Array
                                                                                                        Core_models.Fmt.Rt.t_Argument
                                                                                                        (
                                                                                                          mk_usize
                                                                                                          1
                                                                                                        )
                                                                                                      =
                                                                                                        let
                                                                                                        list
                                                                                                        =
                                                                                                          [
                                                                                                            Core_models.Fmt.Rt.impl__new_display
                                                                                                              #string
                                                                                                              args

                                                                                                          ]
                                                                                                        in
                                                                                                        FStar.Pervasives.assert_norm
                                                                                                        (
                                                                                                          Prims.eq2
                                                                                                            (
                                                                                                              List.Tot.length
                                                                                                              list
                                                                                                            )
                                                                                                            1
                                                                                                        );
                                                                                                        Rust_primitives.Hax.array_of_list
                                                                                                          1
                                                                                                          list
                                                                                                      in
                                                                                                      transfer_field_encoding_error
                                                                                                        (
                                                                                                          Core_models.Ops.Deref.f_deref
                                                                                                            #Alloc.String.t_String
                                                                                                            #FStar.Tactics.Typeclasses.solve
                                                                                                            (
                                                                                                              Core_models.Hint.must_use
                                                                                                                #Alloc.String.t_String
                                                                                                                (
                                                                                                                  Alloc.Fmt.format
                                                                                                                    (
                                                                                                                      Core_models.Fmt.Rt.impl_1__new_v1
                                                                                                                        (
                                                                                                                          mk_usize
                                                                                                                          2
                                                                                                                        )
                                                                                                                        (
                                                                                                                          mk_usize
                                                                                                                          1
                                                                                                                        )
                                                                                                                        (
                                                                                                                          let
                                                                                                                          list
                                                                                                                          =
                                                                                                                            [
                                                                                                                              "";
                                                                                                                              "_salt"
                                                                                                                            ]
                                                                                                                          in
                                                                                                                          FStar.Pervasives.assert_norm
                                                                                                                          (
                                                                                                                            Prims.eq2
                                                                                                                              (
                                                                                                                                List.Tot.length
                                                                                                                                list
                                                                                                                              )
                                                                                                                              2
                                                                                                                          );
                                                                                                                          Rust_primitives.Hax.array_of_list
                                                                                                                            2
                                                                                                                            list
                                                                                                                        )
                                                                                                                        args

                                                                                                                      <:
                                                                                                                      Core_models.Fmt.t_Arguments
                                                                                                                    )

                                                                                                                  <:
                                                                                                                  Alloc.String.t_String
                                                                                                                )

                                                                                                              <:
                                                                                                              Alloc.String.t_String
                                                                                                            )

                                                                                                          <:
                                                                                                          string
                                                                                                        )

                                                                                                  )
                                                                                                <:
                                                                                                Core_models.Result.t_Result
                                                                                                  (Alloc.Vec.t_Vec
                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                      Alloc.Alloc.t_Global
                                                                                                  )
                                                                                                  t_StatementHashError
                                                                                              with
                                                                                              | Core_models.Result.Result_Ok
                                                                                                hoist55 ->
                                                                                                let
                                                                                                fields:Alloc.Vec.t_Vec
                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                  Alloc.Alloc.t_Global
                                                                                                =
                                                                                                  Core_models.Iter.Traits.Collect.f_extend
                                                                                                    #(
                                                                                                      Alloc.Vec.t_Vec
                                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                        Alloc.Alloc.t_Global
                                                                                                    )
                                                                                                    #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                    #FStar.Tactics.Typeclasses.solve
                                                                                                    #(
                                                                                                      Alloc.Vec.t_Vec
                                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                        Alloc.Alloc.t_Global
                                                                                                    )
                                                                                                    fields
                                                                                                    hoist55

                                                                                                in
                                                                                                (match
                                                                                                    Core_models.Option.impl__ok_or_else
                                                                                                      #(
                                                                                                        Alloc.Vec.t_Vec
                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                          Alloc.Alloc.t_Global
                                                                                                      )
                                                                                                      #t_StatementHashError
                                                                                                      #(

                                                                                                            Prims.unit
                                                                                                          -> t_StatementHashError
                                                                                                      )
                                                                                                      (
                                                                                                        Ark_ff.To_field_vec.f_to_field_elements
                                                                                                          #Decaf377.Ark_curve.Element.Projective.t_Element
                                                                                                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                          #FStar.Tactics.Typeclasses.solve
                                                                                                          proof
                                                                                                            .f_derived_pk

                                                                                                        <:
                                                                                                        Core_models.Option.t_Option
                                                                                                        (
                                                                                                          Alloc.Vec.t_Vec
                                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                            Alloc.Alloc.t_Global
                                                                                                        )
                                                                                                      )
                                                                                                      (
                                                                                                        fun
                                                                                                          temp_0_
                                                                                                          ->
                                                                                                          let
                                                                                                          _:Prims.unit
                                                                                                          =
                                                                                                            temp_0_
                                                                                                          in
                                                                                                          let
                                                                                                          args:string
                                                                                                          =
                                                                                                            label
                                                                                                            <:
                                                                                                            string
                                                                                                          in
                                                                                                          let
                                                                                                          args:t_Array
                                                                                                            Core_models.Fmt.Rt.t_Argument
                                                                                                            (
                                                                                                              mk_usize
                                                                                                              1
                                                                                                            )
                                                                                                          =
                                                                                                            let
                                                                                                            list
                                                                                                            =
                                                                                                              [
                                                                                                                Core_models.Fmt.Rt.impl__new_display
                                                                                                                  #string
                                                                                                                  args

                                                                                                              ]
                                                                                                            in
                                                                                                            FStar.Pervasives.assert_norm
                                                                                                            (
                                                                                                              Prims.eq2
                                                                                                                (
                                                                                                                  List.Tot.length
                                                                                                                  list
                                                                                                                )
                                                                                                                1
                                                                                                            );
                                                                                                            Rust_primitives.Hax.array_of_list
                                                                                                              1
                                                                                                              list
                                                                                                          in
                                                                                                          transfer_field_encoding_error
                                                                                                            (
                                                                                                              Core_models.Ops.Deref.f_deref
                                                                                                                #Alloc.String.t_String
                                                                                                                #FStar.Tactics.Typeclasses.solve
                                                                                                                (
                                                                                                                  Core_models.Hint.must_use
                                                                                                                    #Alloc.String.t_String
                                                                                                                    (
                                                                                                                      Alloc.Fmt.format
                                                                                                                        (
                                                                                                                          Core_models.Fmt.Rt.impl_1__new_v1
                                                                                                                            (
                                                                                                                              mk_usize
                                                                                                                              2
                                                                                                                            )
                                                                                                                            (
                                                                                                                              mk_usize
                                                                                                                              1
                                                                                                                            )
                                                                                                                            (
                                                                                                                              let
                                                                                                                              list
                                                                                                                              =
                                                                                                                                [
                                                                                                                                  "";
                                                                                                                                  "_derived_pk"
                                                                                                                                ]
                                                                                                                              in
                                                                                                                              FStar.Pervasives.assert_norm
                                                                                                                              (
                                                                                                                                Prims.eq2
                                                                                                                                  (
                                                                                                                                    List.Tot.length
                                                                                                                                    list
                                                                                                                                  )
                                                                                                                                  2
                                                                                                                              );
                                                                                                                              Rust_primitives.Hax.array_of_list
                                                                                                                                2
                                                                                                                                list
                                                                                                                            )
                                                                                                                            args

                                                                                                                          <:
                                                                                                                          Core_models.Fmt.t_Arguments
                                                                                                                        )

                                                                                                                      <:
                                                                                                                      Alloc.String.t_String
                                                                                                                    )

                                                                                                                  <:
                                                                                                                  Alloc.String.t_String
                                                                                                                )

                                                                                                              <:
                                                                                                              string
                                                                                                            )

                                                                                                      )

                                                                                                    <:
                                                                                                    Core_models.Result.t_Result
                                                                                                      (
                                                                                                        Alloc.Vec.t_Vec
                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                          Alloc.Alloc.t_Global
                                                                                                      )
                                                                                                      t_StatementHashError
                                                                                                  with
                                                                                                  | Core_models.Result.Result_Ok
                                                                                                    hoist57 ->
                                                                                                    let
                                                                                                    fields:Alloc.Vec.t_Vec
                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                      Alloc.Alloc.t_Global
                                                                                                    =
                                                                                                      Core_models.Iter.Traits.Collect.f_extend
                                                                                                        #(
                                                                                                          Alloc.Vec.t_Vec
                                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                            Alloc.Alloc.t_Global
                                                                                                        )
                                                                                                        #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                        #FStar.Tactics.Typeclasses.solve
                                                                                                        #(
                                                                                                          Alloc.Vec.t_Vec
                                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                            Alloc.Alloc.t_Global
                                                                                                        )
                                                                                                        fields
                                                                                                        hoist57

                                                                                                    in
                                                                                                    (
                                                                                                      match
                                                                                                        Core_models.Option.impl__ok_or_else
                                                                                                          #(
                                                                                                            Alloc.Vec.t_Vec
                                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                              Alloc.Alloc.t_Global
                                                                                                          )
                                                                                                          #t_StatementHashError
                                                                                                          #(

                                                                                                                Prims.unit
                                                                                                              -> t_StatementHashError
                                                                                                          )
                                                                                                          (
                                                                                                            Ark_ff.To_field_vec.f_to_field_elements
                                                                                                              #Decaf377.Ark_curve.Element.Projective.t_Element
                                                                                                              #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                              #FStar.Tactics.Typeclasses.solve
                                                                                                              proof
                                                                                                                .f_enc_cmt

                                                                                                            <:
                                                                                                            Core_models.Option.t_Option
                                                                                                            (
                                                                                                              Alloc.Vec.t_Vec
                                                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                Alloc.Alloc.t_Global
                                                                                                            )
                                                                                                          )
                                                                                                          (
                                                                                                            fun
                                                                                                              temp_0_
                                                                                                              ->
                                                                                                              let
                                                                                                              _:Prims.unit
                                                                                                              =
                                                                                                                temp_0_
                                                                                                              in
                                                                                                              let
                                                                                                              args:string
                                                                                                              =
                                                                                                                label
                                                                                                                <:
                                                                                                                string
                                                                                                              in
                                                                                                              let
                                                                                                              args:t_Array
                                                                                                                Core_models.Fmt.Rt.t_Argument
                                                                                                                (
                                                                                                                  mk_usize
                                                                                                                  1
                                                                                                                )
                                                                                                              =
                                                                                                                let
                                                                                                                list
                                                                                                                =
                                                                                                                  [
                                                                                                                    Core_models.Fmt.Rt.impl__new_display
                                                                                                                      #string
                                                                                                                      args

                                                                                                                  ]
                                                                                                                in
                                                                                                                FStar.Pervasives.assert_norm
                                                                                                                (
                                                                                                                  Prims.eq2
                                                                                                                    (
                                                                                                                      List.Tot.length
                                                                                                                      list
                                                                                                                    )
                                                                                                                    1
                                                                                                                );
                                                                                                                Rust_primitives.Hax.array_of_list
                                                                                                                  1
                                                                                                                  list
                                                                                                              in
                                                                                                              transfer_field_encoding_error
                                                                                                                (
                                                                                                                  Core_models.Ops.Deref.f_deref
                                                                                                                    #Alloc.String.t_String
                                                                                                                    #FStar.Tactics.Typeclasses.solve
                                                                                                                    (
                                                                                                                      Core_models.Hint.must_use
                                                                                                                        #Alloc.String.t_String
                                                                                                                        (
                                                                                                                          Alloc.Fmt.format
                                                                                                                            (
                                                                                                                              Core_models.Fmt.Rt.impl_1__new_v1
                                                                                                                                (
                                                                                                                                  mk_usize
                                                                                                                                  2
                                                                                                                                )
                                                                                                                                (
                                                                                                                                  mk_usize
                                                                                                                                  1
                                                                                                                                )
                                                                                                                                (
                                                                                                                                  let
                                                                                                                                  list
                                                                                                                                  =
                                                                                                                                    [
                                                                                                                                      "";
                                                                                                                                      "_enc_cmt"
                                                                                                                                    ]
                                                                                                                                  in
                                                                                                                                  FStar.Pervasives.assert_norm
                                                                                                                                  (
                                                                                                                                    Prims.eq2
                                                                                                                                      (
                                                                                                                                        List.Tot.length
                                                                                                                                        list
                                                                                                                                      )
                                                                                                                                      2
                                                                                                                                  );
                                                                                                                                  Rust_primitives.Hax.array_of_list
                                                                                                                                    2
                                                                                                                                    list
                                                                                                                                )
                                                                                                                                args

                                                                                                                              <:
                                                                                                                              Core_models.Fmt.t_Arguments
                                                                                                                            )

                                                                                                                          <:
                                                                                                                          Alloc.String.t_String
                                                                                                                        )

                                                                                                                      <:
                                                                                                                      Alloc.String.t_String
                                                                                                                    )

                                                                                                                  <:
                                                                                                                  string
                                                                                                                )

                                                                                                          )

                                                                                                        <:
                                                                                                        Core_models.Result.t_Result
                                                                                                          (
                                                                                                            Alloc.Vec.t_Vec
                                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                              Alloc.Alloc.t_Global
                                                                                                          )
                                                                                                          t_StatementHashError
                                                                                                      with
                                                                                                      | Core_models.Result.Result_Ok
                                                                                                        hoist59 ->
                                                                                                        let
                                                                                                        fields:Alloc.Vec.t_Vec
                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                          Alloc.Alloc.t_Global
                                                                                                        =
                                                                                                          Core_models.Iter.Traits.Collect.f_extend
                                                                                                            #(
                                                                                                              Alloc.Vec.t_Vec
                                                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                Alloc.Alloc.t_Global
                                                                                                            )
                                                                                                            #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                            #FStar.Tactics.Typeclasses.solve
                                                                                                            #(
                                                                                                              Alloc.Vec.t_Vec
                                                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                Alloc.Alloc.t_Global
                                                                                                            )
                                                                                                            fields
                                                                                                            hoist59

                                                                                                        in
                                                                                                        (
                                                                                                          match
                                                                                                            Core_models.Option.impl__ok_or_else
                                                                                                              #(
                                                                                                                Alloc.Vec.t_Vec
                                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                  Alloc.Alloc.t_Global
                                                                                                              )
                                                                                                              #t_StatementHashError
                                                                                                              #(

                                                                                                                    Prims.unit
                                                                                                                  -> t_StatementHashError
                                                                                                              )
                                                                                                              (
                                                                                                                Ark_ff.To_field_vec.f_to_field_elements
                                                                                                                  #Decaf377.Ark_curve.Element.Projective.t_Element
                                                                                                                  #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                  #FStar.Tactics.Typeclasses.solve
                                                                                                                  proof
                                                                                                                    .f_shared_point

                                                                                                                <:
                                                                                                                Core_models.Option.t_Option
                                                                                                                (
                                                                                                                  Alloc.Vec.t_Vec
                                                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                    Alloc.Alloc.t_Global
                                                                                                                )
                                                                                                              )
                                                                                                              (
                                                                                                                fun
                                                                                                                  temp_0_
                                                                                                                  ->
                                                                                                                  let
                                                                                                                  _:Prims.unit
                                                                                                                  =
                                                                                                                    temp_0_
                                                                                                                  in
                                                                                                                  let
                                                                                                                  args:string
                                                                                                                  =
                                                                                                                    label
                                                                                                                    <:
                                                                                                                    string
                                                                                                                  in
                                                                                                                  let
                                                                                                                  args:t_Array
                                                                                                                    Core_models.Fmt.Rt.t_Argument
                                                                                                                    (
                                                                                                                      mk_usize
                                                                                                                      1
                                                                                                                    )
                                                                                                                  =
                                                                                                                    let
                                                                                                                    list
                                                                                                                    =
                                                                                                                      [
                                                                                                                        Core_models.Fmt.Rt.impl__new_display
                                                                                                                          #string
                                                                                                                          args

                                                                                                                      ]
                                                                                                                    in
                                                                                                                    FStar.Pervasives.assert_norm
                                                                                                                    (
                                                                                                                      Prims.eq2
                                                                                                                        (
                                                                                                                          List.Tot.length
                                                                                                                          list
                                                                                                                        )
                                                                                                                        1
                                                                                                                    );
                                                                                                                    Rust_primitives.Hax.array_of_list
                                                                                                                      1
                                                                                                                      list
                                                                                                                  in
                                                                                                                  transfer_field_encoding_error
                                                                                                                    (
                                                                                                                      Core_models.Ops.Deref.f_deref
                                                                                                                        #Alloc.String.t_String
                                                                                                                        #FStar.Tactics.Typeclasses.solve
                                                                                                                        (
                                                                                                                          Core_models.Hint.must_use
                                                                                                                            #Alloc.String.t_String
                                                                                                                            (
                                                                                                                              Alloc.Fmt.format
                                                                                                                                (
                                                                                                                                  Core_models.Fmt.Rt.impl_1__new_v1
                                                                                                                                    (
                                                                                                                                      mk_usize
                                                                                                                                      2
                                                                                                                                    )
                                                                                                                                    (
                                                                                                                                      mk_usize
                                                                                                                                      1
                                                                                                                                    )
                                                                                                                                    (
                                                                                                                                      let
                                                                                                                                      list
                                                                                                                                      =
                                                                                                                                        [
                                                                                                                                          "";
                                                                                                                                          "_shared_point"
                                                                                                                                        ]
                                                                                                                                      in
                                                                                                                                      FStar.Pervasives.assert_norm
                                                                                                                                      (
                                                                                                                                        Prims.eq2
                                                                                                                                          (
                                                                                                                                            List.Tot.length
                                                                                                                                            list
                                                                                                                                          )
                                                                                                                                          2
                                                                                                                                      );
                                                                                                                                      Rust_primitives.Hax.array_of_list
                                                                                                                                        2
                                                                                                                                        list
                                                                                                                                    )
                                                                                                                                    args

                                                                                                                                  <:
                                                                                                                                  Core_models.Fmt.t_Arguments
                                                                                                                                )

                                                                                                                              <:
                                                                                                                              Alloc.String.t_String
                                                                                                                            )

                                                                                                                          <:
                                                                                                                          Alloc.String.t_String
                                                                                                                        )

                                                                                                                      <:
                                                                                                                      string
                                                                                                                    )

                                                                                                              )

                                                                                                            <:
                                                                                                            Core_models.Result.t_Result
                                                                                                              (
                                                                                                                Alloc.Vec.t_Vec
                                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                  Alloc.Alloc.t_Global
                                                                                                              )
                                                                                                              t_StatementHashError
                                                                                                          with
                                                                                                          | Core_models.Result.Result_Ok
                                                                                                            hoist61 ->
                                                                                                            let
                                                                                                            fields:Alloc.Vec.t_Vec
                                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                              Alloc.Alloc.t_Global
                                                                                                            =
                                                                                                              Core_models.Iter.Traits.Collect.f_extend
                                                                                                                #(
                                                                                                                  Alloc.Vec.t_Vec
                                                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                    Alloc.Alloc.t_Global
                                                                                                                )
                                                                                                                #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                #FStar.Tactics.Typeclasses.solve
                                                                                                                #(
                                                                                                                  Alloc.Vec.t_Vec
                                                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                    Alloc.Alloc.t_Global
                                                                                                                )
                                                                                                                fields
                                                                                                                hoist61

                                                                                                            in
                                                                                                            (
                                                                                                              match
                                                                                                                Core_models.Option.impl__ok_or_else
                                                                                                                  #(
                                                                                                                    Alloc.Vec.t_Vec
                                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                      Alloc.Alloc.t_Global
                                                                                                                  )
                                                                                                                  #t_StatementHashError
                                                                                                                  #(

                                                                                                                        Prims.unit
                                                                                                                      -> t_StatementHashError
                                                                                                                  )
                                                                                                                  (
                                                                                                                    Ark_ff.To_field_vec.f_to_field_elements
                                                                                                                      #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                      #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                      #FStar.Tactics.Typeclasses.solve
                                                                                                                      proof
                                                                                                                        .f_challenge

                                                                                                                    <:
                                                                                                                    Core_models.Option.t_Option
                                                                                                                    (
                                                                                                                      Alloc.Vec.t_Vec
                                                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                        Alloc.Alloc.t_Global
                                                                                                                    )
                                                                                                                  )
                                                                                                                  (
                                                                                                                    fun
                                                                                                                      temp_0_
                                                                                                                      ->
                                                                                                                      let
                                                                                                                      _:Prims.unit
                                                                                                                      =
                                                                                                                        temp_0_
                                                                                                                      in
                                                                                                                      let
                                                                                                                      args:string
                                                                                                                      =
                                                                                                                        label
                                                                                                                        <:
                                                                                                                        string
                                                                                                                      in
                                                                                                                      let
                                                                                                                      args:t_Array
                                                                                                                        Core_models.Fmt.Rt.t_Argument
                                                                                                                        (
                                                                                                                          mk_usize
                                                                                                                          1
                                                                                                                        )
                                                                                                                      =
                                                                                                                        let
                                                                                                                        list
                                                                                                                        =
                                                                                                                          [
                                                                                                                            Core_models.Fmt.Rt.impl__new_display
                                                                                                                              #string
                                                                                                                              args

                                                                                                                          ]
                                                                                                                        in
                                                                                                                        FStar.Pervasives.assert_norm
                                                                                                                        (
                                                                                                                          Prims.eq2
                                                                                                                            (
                                                                                                                              List.Tot.length
                                                                                                                              list
                                                                                                                            )
                                                                                                                            1
                                                                                                                        );
                                                                                                                        Rust_primitives.Hax.array_of_list
                                                                                                                          1
                                                                                                                          list
                                                                                                                      in
                                                                                                                      transfer_field_encoding_error
                                                                                                                        (
                                                                                                                          Core_models.Ops.Deref.f_deref
                                                                                                                            #Alloc.String.t_String
                                                                                                                            #FStar.Tactics.Typeclasses.solve
                                                                                                                            (
                                                                                                                              Core_models.Hint.must_use
                                                                                                                                #Alloc.String.t_String
                                                                                                                                (
                                                                                                                                  Alloc.Fmt.format
                                                                                                                                    (
                                                                                                                                      Core_models.Fmt.Rt.impl_1__new_v1
                                                                                                                                        (
                                                                                                                                          mk_usize
                                                                                                                                          2
                                                                                                                                        )
                                                                                                                                        (
                                                                                                                                          mk_usize
                                                                                                                                          1
                                                                                                                                        )
                                                                                                                                        (
                                                                                                                                          let
                                                                                                                                          list
                                                                                                                                          =
                                                                                                                                            [
                                                                                                                                              "";
                                                                                                                                              "_challenge"
                                                                                                                                            ]
                                                                                                                                          in
                                                                                                                                          FStar.Pervasives.assert_norm
                                                                                                                                          (
                                                                                                                                            Prims.eq2
                                                                                                                                              (
                                                                                                                                                List.Tot.length
                                                                                                                                                list
                                                                                                                                              )
                                                                                                                                              2
                                                                                                                                          );
                                                                                                                                          Rust_primitives.Hax.array_of_list
                                                                                                                                            2
                                                                                                                                            list
                                                                                                                                        )
                                                                                                                                        args

                                                                                                                                      <:
                                                                                                                                      Core_models.Fmt.t_Arguments
                                                                                                                                    )

                                                                                                                                  <:
                                                                                                                                  Alloc.String.t_String
                                                                                                                                )

                                                                                                                              <:
                                                                                                                              Alloc.String.t_String
                                                                                                                            )

                                                                                                                          <:
                                                                                                                          string
                                                                                                                        )

                                                                                                                  )

                                                                                                                <:
                                                                                                                Core_models.Result.t_Result
                                                                                                                  (
                                                                                                                    Alloc.Vec.t_Vec
                                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                      Alloc.Alloc.t_Global
                                                                                                                  )
                                                                                                                  t_StatementHashError
                                                                                                              with
                                                                                                              | Core_models.Result.Result_Ok
                                                                                                                hoist63 ->
                                                                                                                let
                                                                                                                fields:Alloc.Vec.t_Vec
                                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                  Alloc.Alloc.t_Global
                                                                                                                =
                                                                                                                  Core_models.Iter.Traits.Collect.f_extend
                                                                                                                    #(
                                                                                                                      Alloc.Vec.t_Vec
                                                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                        Alloc.Alloc.t_Global
                                                                                                                    )
                                                                                                                    #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                    #FStar.Tactics.Typeclasses.solve
                                                                                                                    #(
                                                                                                                      Alloc.Vec.t_Vec
                                                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                        Alloc.Alloc.t_Global
                                                                                                                    )
                                                                                                                    fields
                                                                                                                    hoist63

                                                                                                                in
                                                                                                                (
                                                                                                                  match
                                                                                                                    Core_models.Option.impl__ok_or_else
                                                                                                                      #(
                                                                                                                        Alloc.Vec.t_Vec
                                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                          Alloc.Alloc.t_Global
                                                                                                                      )
                                                                                                                      #t_StatementHashError
                                                                                                                      #(

                                                                                                                            Prims.unit
                                                                                                                          -> t_StatementHashError
                                                                                                                      )
                                                                                                                      (
                                                                                                                        Ark_ff.To_field_vec.f_to_field_elements
                                                                                                                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                          #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                          #FStar.Tactics.Typeclasses.solve
                                                                                                                          (
                                                                                                                            Decaf377.Fields.Fq.impl__from_le_bytes_mod_order
                                                                                                                              (
                                                                                                                                Decaf377.Fields.Fr.impl__to_bytes
                                                                                                                                  proof
                                                                                                                                    .f_response

                                                                                                                                <:
                                                                                                                                t_Slice
                                                                                                                                u8
                                                                                                                              )

                                                                                                                            <:
                                                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                          )

                                                                                                                        <:
                                                                                                                        Core_models.Option.t_Option
                                                                                                                        (
                                                                                                                          Alloc.Vec.t_Vec
                                                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                            Alloc.Alloc.t_Global
                                                                                                                        )
                                                                                                                      )
                                                                                                                      (
                                                                                                                        fun
                                                                                                                          temp_0_
                                                                                                                          ->
                                                                                                                          let
                                                                                                                          _:Prims.unit
                                                                                                                          =
                                                                                                                            temp_0_
                                                                                                                          in
                                                                                                                          let
                                                                                                                          args:string
                                                                                                                          =
                                                                                                                            label
                                                                                                                            <:
                                                                                                                            string
                                                                                                                          in
                                                                                                                          let
                                                                                                                          args:t_Array
                                                                                                                            Core_models.Fmt.Rt.t_Argument
                                                                                                                            (
                                                                                                                              mk_usize
                                                                                                                              1
                                                                                                                            )
                                                                                                                          =
                                                                                                                            let
                                                                                                                            list
                                                                                                                            =
                                                                                                                              [
                                                                                                                                Core_models.Fmt.Rt.impl__new_display
                                                                                                                                  #string
                                                                                                                                  args

                                                                                                                              ]
                                                                                                                            in
                                                                                                                            FStar.Pervasives.assert_norm
                                                                                                                            (
                                                                                                                              Prims.eq2
                                                                                                                                (
                                                                                                                                  List.Tot.length
                                                                                                                                  list
                                                                                                                                )
                                                                                                                                1
                                                                                                                            );
                                                                                                                            Rust_primitives.Hax.array_of_list
                                                                                                                              1
                                                                                                                              list
                                                                                                                          in
                                                                                                                          transfer_field_encoding_error
                                                                                                                            (
                                                                                                                              Core_models.Ops.Deref.f_deref
                                                                                                                                #Alloc.String.t_String
                                                                                                                                #FStar.Tactics.Typeclasses.solve
                                                                                                                                (
                                                                                                                                  Core_models.Hint.must_use
                                                                                                                                    #Alloc.String.t_String
                                                                                                                                    (
                                                                                                                                      Alloc.Fmt.format
                                                                                                                                        (
                                                                                                                                          Core_models.Fmt.Rt.impl_1__new_v1
                                                                                                                                            (
                                                                                                                                              mk_usize
                                                                                                                                              2
                                                                                                                                            )
                                                                                                                                            (
                                                                                                                                              mk_usize
                                                                                                                                              1
                                                                                                                                            )
                                                                                                                                            (
                                                                                                                                              let
                                                                                                                                              list
                                                                                                                                              =
                                                                                                                                                [
                                                                                                                                                  "";
                                                                                                                                                  "_response"
                                                                                                                                                ]
                                                                                                                                              in
                                                                                                                                              FStar.Pervasives.assert_norm
                                                                                                                                              (
                                                                                                                                                Prims.eq2
                                                                                                                                                  (
                                                                                                                                                    List.Tot.length
                                                                                                                                                    list
                                                                                                                                                  )
                                                                                                                                                  2
                                                                                                                                              );
                                                                                                                                              Rust_primitives.Hax.array_of_list
                                                                                                                                                2
                                                                                                                                                list
                                                                                                                                            )
                                                                                                                                            args

                                                                                                                                          <:
                                                                                                                                          Core_models.Fmt.t_Arguments
                                                                                                                                        )

                                                                                                                                      <:
                                                                                                                                      Alloc.String.t_String
                                                                                                                                    )

                                                                                                                                  <:
                                                                                                                                  Alloc.String.t_String
                                                                                                                                )

                                                                                                                              <:
                                                                                                                              string
                                                                                                                            )

                                                                                                                      )

                                                                                                                    <:
                                                                                                                    Core_models.Result.t_Result
                                                                                                                      (
                                                                                                                        Alloc.Vec.t_Vec
                                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                          Alloc.Alloc.t_Global
                                                                                                                      )
                                                                                                                      t_StatementHashError
                                                                                                                  with
                                                                                                                  | Core_models.Result.Result_Ok
                                                                                                                    hoist65 ->
                                                                                                                    let
                                                                                                                    fields:Alloc.Vec.t_Vec
                                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                      Alloc.Alloc.t_Global
                                                                                                                    =
                                                                                                                      Core_models.Iter.Traits.Collect.f_extend
                                                                                                                        #(
                                                                                                                          Alloc.Vec.t_Vec
                                                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                            Alloc.Alloc.t_Global
                                                                                                                        )
                                                                                                                        #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                        #FStar.Tactics.Typeclasses.solve
                                                                                                                        #(
                                                                                                                          Alloc.Vec.t_Vec
                                                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                            Alloc.Alloc.t_Global
                                                                                                                        )
                                                                                                                        fields
                                                                                                                        hoist65

                                                                                                                    in
                                                                                                                    Core_models.Ops.Control_flow.ControlFlow_Continue
                                                                                                                    fields
                                                                                                                    <:
                                                                                                                    Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                                      (
                                                                                                                        Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                                          (
                                                                                                                            Core_models.Result.t_Result
                                                                                                                              (
                                                                                                                                Alloc.Vec.t_Vec
                                                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                                  Alloc.Alloc.t_Global
                                                                                                                              )
                                                                                                                              t_StatementHashError
                                                                                                                          )
                                                                                                                          (
                                                                                                                            Prims.unit &
                                                                                                                            Alloc.Vec.t_Vec
                                                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                              Alloc.Alloc.t_Global
                                                                                                                          )
                                                                                                                      )
                                                                                                                      (
                                                                                                                        Alloc.Vec.t_Vec
                                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                          Alloc.Alloc.t_Global
                                                                                                                      )
                                                                                                                  | Core_models.Result.Result_Err
                                                                                                                    err ->
                                                                                                                    Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                                                    (
                                                                                                                      Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                                                      (
                                                                                                                        Core_models.Result.Result_Err
                                                                                                                        err
                                                                                                                        <:
                                                                                                                        Core_models.Result.t_Result
                                                                                                                          (
                                                                                                                            Alloc.Vec.t_Vec
                                                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                              Alloc.Alloc.t_Global
                                                                                                                          )
                                                                                                                          t_StatementHashError
                                                                                                                      )
                                                                                                                      <:
                                                                                                                      Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                                        (
                                                                                                                          Core_models.Result.t_Result
                                                                                                                            (
                                                                                                                              Alloc.Vec.t_Vec
                                                                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                                Alloc.Alloc.t_Global
                                                                                                                            )
                                                                                                                            t_StatementHashError
                                                                                                                        )
                                                                                                                        (
                                                                                                                          Prims.unit &
                                                                                                                          Alloc.Vec.t_Vec
                                                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                            Alloc.Alloc.t_Global
                                                                                                                        )
                                                                                                                    )
                                                                                                                    <:
                                                                                                                    Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                                      (
                                                                                                                        Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                                          (
                                                                                                                            Core_models.Result.t_Result
                                                                                                                              (
                                                                                                                                Alloc.Vec.t_Vec
                                                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                                  Alloc.Alloc.t_Global
                                                                                                                              )
                                                                                                                              t_StatementHashError
                                                                                                                          )
                                                                                                                          (
                                                                                                                            Prims.unit &
                                                                                                                            Alloc.Vec.t_Vec
                                                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                              Alloc.Alloc.t_Global
                                                                                                                          )
                                                                                                                      )
                                                                                                                      (
                                                                                                                        Alloc.Vec.t_Vec
                                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                          Alloc.Alloc.t_Global
                                                                                                                      )
                                                                                                                )
                                                                                                              | Core_models.Result.Result_Err
                                                                                                                err ->
                                                                                                                Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                                                (
                                                                                                                  Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                                                  (
                                                                                                                    Core_models.Result.Result_Err
                                                                                                                    err
                                                                                                                    <:
                                                                                                                    Core_models.Result.t_Result
                                                                                                                      (
                                                                                                                        Alloc.Vec.t_Vec
                                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                          Alloc.Alloc.t_Global
                                                                                                                      )
                                                                                                                      t_StatementHashError
                                                                                                                  )
                                                                                                                  <:
                                                                                                                  Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                                    (
                                                                                                                      Core_models.Result.t_Result
                                                                                                                        (
                                                                                                                          Alloc.Vec.t_Vec
                                                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                            Alloc.Alloc.t_Global
                                                                                                                        )
                                                                                                                        t_StatementHashError
                                                                                                                    )
                                                                                                                    (
                                                                                                                      Prims.unit &
                                                                                                                      Alloc.Vec.t_Vec
                                                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                        Alloc.Alloc.t_Global
                                                                                                                    )
                                                                                                                )
                                                                                                                <:
                                                                                                                Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                                  (
                                                                                                                    Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                                      (
                                                                                                                        Core_models.Result.t_Result
                                                                                                                          (
                                                                                                                            Alloc.Vec.t_Vec
                                                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                              Alloc.Alloc.t_Global
                                                                                                                          )
                                                                                                                          t_StatementHashError
                                                                                                                      )
                                                                                                                      (
                                                                                                                        Prims.unit &
                                                                                                                        Alloc.Vec.t_Vec
                                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                          Alloc.Alloc.t_Global
                                                                                                                      )
                                                                                                                  )
                                                                                                                  (
                                                                                                                    Alloc.Vec.t_Vec
                                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                      Alloc.Alloc.t_Global
                                                                                                                  )
                                                                                                            )
                                                                                                          | Core_models.Result.Result_Err
                                                                                                            err ->
                                                                                                            Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                                            (
                                                                                                              Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                                              (
                                                                                                                Core_models.Result.Result_Err
                                                                                                                err
                                                                                                                <:
                                                                                                                Core_models.Result.t_Result
                                                                                                                  (
                                                                                                                    Alloc.Vec.t_Vec
                                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                      Alloc.Alloc.t_Global
                                                                                                                  )
                                                                                                                  t_StatementHashError
                                                                                                              )
                                                                                                              <:
                                                                                                              Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                                (
                                                                                                                  Core_models.Result.t_Result
                                                                                                                    (
                                                                                                                      Alloc.Vec.t_Vec
                                                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                        Alloc.Alloc.t_Global
                                                                                                                    )
                                                                                                                    t_StatementHashError
                                                                                                                )
                                                                                                                (
                                                                                                                  Prims.unit &
                                                                                                                  Alloc.Vec.t_Vec
                                                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                    Alloc.Alloc.t_Global
                                                                                                                )
                                                                                                            )
                                                                                                            <:
                                                                                                            Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                              (
                                                                                                                Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                                  (
                                                                                                                    Core_models.Result.t_Result
                                                                                                                      (
                                                                                                                        Alloc.Vec.t_Vec
                                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                          Alloc.Alloc.t_Global
                                                                                                                      )
                                                                                                                      t_StatementHashError
                                                                                                                  )
                                                                                                                  (
                                                                                                                    Prims.unit &
                                                                                                                    Alloc.Vec.t_Vec
                                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                      Alloc.Alloc.t_Global
                                                                                                                  )
                                                                                                              )
                                                                                                              (
                                                                                                                Alloc.Vec.t_Vec
                                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                  Alloc.Alloc.t_Global
                                                                                                              )
                                                                                                        )
                                                                                                      | Core_models.Result.Result_Err
                                                                                                        err ->
                                                                                                        Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                                        (
                                                                                                          Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                                          (
                                                                                                            Core_models.Result.Result_Err
                                                                                                            err
                                                                                                            <:
                                                                                                            Core_models.Result.t_Result
                                                                                                              (
                                                                                                                Alloc.Vec.t_Vec
                                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                  Alloc.Alloc.t_Global
                                                                                                              )
                                                                                                              t_StatementHashError
                                                                                                          )
                                                                                                          <:
                                                                                                          Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                            (
                                                                                                              Core_models.Result.t_Result
                                                                                                                (
                                                                                                                  Alloc.Vec.t_Vec
                                                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                    Alloc.Alloc.t_Global
                                                                                                                )
                                                                                                                t_StatementHashError
                                                                                                            )
                                                                                                            (
                                                                                                              Prims.unit &
                                                                                                              Alloc.Vec.t_Vec
                                                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                Alloc.Alloc.t_Global
                                                                                                            )
                                                                                                        )
                                                                                                        <:
                                                                                                        Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                          (
                                                                                                            Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                              (
                                                                                                                Core_models.Result.t_Result
                                                                                                                  (
                                                                                                                    Alloc.Vec.t_Vec
                                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                      Alloc.Alloc.t_Global
                                                                                                                  )
                                                                                                                  t_StatementHashError
                                                                                                              )
                                                                                                              (
                                                                                                                Prims.unit &
                                                                                                                Alloc.Vec.t_Vec
                                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                  Alloc.Alloc.t_Global
                                                                                                              )
                                                                                                          )
                                                                                                          (
                                                                                                            Alloc.Vec.t_Vec
                                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                              Alloc.Alloc.t_Global
                                                                                                          )
                                                                                                    )
                                                                                                  | Core_models.Result.Result_Err
                                                                                                    err ->
                                                                                                    Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                                    (
                                                                                                      Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                                      (
                                                                                                        Core_models.Result.Result_Err
                                                                                                        err
                                                                                                        <:
                                                                                                        Core_models.Result.t_Result
                                                                                                          (
                                                                                                            Alloc.Vec.t_Vec
                                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                              Alloc.Alloc.t_Global
                                                                                                          )
                                                                                                          t_StatementHashError
                                                                                                      )
                                                                                                      <:
                                                                                                      Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                        (
                                                                                                          Core_models.Result.t_Result
                                                                                                            (
                                                                                                              Alloc.Vec.t_Vec
                                                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                Alloc.Alloc.t_Global
                                                                                                            )
                                                                                                            t_StatementHashError
                                                                                                        )
                                                                                                        (
                                                                                                          Prims.unit &
                                                                                                          Alloc.Vec.t_Vec
                                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                            Alloc.Alloc.t_Global
                                                                                                        )
                                                                                                    )
                                                                                                    <:
                                                                                                    Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                      (
                                                                                                        Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                          (
                                                                                                            Core_models.Result.t_Result
                                                                                                              (
                                                                                                                Alloc.Vec.t_Vec
                                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                                  Alloc.Alloc.t_Global
                                                                                                              )
                                                                                                              t_StatementHashError
                                                                                                          )
                                                                                                          (
                                                                                                            Prims.unit &
                                                                                                            Alloc.Vec.t_Vec
                                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                              Alloc.Alloc.t_Global
                                                                                                          )
                                                                                                      )
                                                                                                      (
                                                                                                        Alloc.Vec.t_Vec
                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                          Alloc.Alloc.t_Global
                                                                                                      )
                                                                                                )
                                                                                              | Core_models.Result.Result_Err
                                                                                                err ->
                                                                                                Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                                (Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                                  (Core_models.Result.Result_Err
                                                                                                    err
                                                                                                    <:
                                                                                                    Core_models.Result.t_Result
                                                                                                      (
                                                                                                        Alloc.Vec.t_Vec
                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                          Alloc.Alloc.t_Global
                                                                                                      )
                                                                                                      t_StatementHashError
                                                                                                  )
                                                                                                  <:
                                                                                                  Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                    (
                                                                                                      Core_models.Result.t_Result
                                                                                                        (
                                                                                                          Alloc.Vec.t_Vec
                                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                            Alloc.Alloc.t_Global
                                                                                                        )
                                                                                                        t_StatementHashError
                                                                                                    )
                                                                                                    (
                                                                                                      Prims.unit &
                                                                                                      Alloc.Vec.t_Vec
                                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                        Alloc.Alloc.t_Global
                                                                                                    )
                                                                                                )
                                                                                                <:
                                                                                                Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                  (Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                      (
                                                                                                        Core_models.Result.t_Result
                                                                                                          (
                                                                                                            Alloc.Vec.t_Vec
                                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                              Alloc.Alloc.t_Global
                                                                                                          )
                                                                                                          t_StatementHashError
                                                                                                      )
                                                                                                      (
                                                                                                        Prims.unit &
                                                                                                        Alloc.Vec.t_Vec
                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                          Alloc.Alloc.t_Global
                                                                                                      )
                                                                                                  )
                                                                                                  (Alloc.Vec.t_Vec
                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                      Alloc.Alloc.t_Global
                                                                                                  ))
                                                                                          | Core_models.Result.Result_Err
                                                                                            err ->
                                                                                            Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                            (Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                              (Core_models.Result.Result_Err
                                                                                                err
                                                                                                <:
                                                                                                Core_models.Result.t_Result
                                                                                                  (Alloc.Vec.t_Vec
                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                      Alloc.Alloc.t_Global
                                                                                                  )
                                                                                                  t_StatementHashError
                                                                                              )
                                                                                              <:
                                                                                              Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                (Core_models.Result.t_Result
                                                                                                    (
                                                                                                      Alloc.Vec.t_Vec
                                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                        Alloc.Alloc.t_Global
                                                                                                    )
                                                                                                    t_StatementHashError
                                                                                                )
                                                                                                (Prims.unit &
                                                                                                  Alloc.Vec.t_Vec
                                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                    Alloc.Alloc.t_Global
                                                                                                ))
                                                                                            <:
                                                                                            Core_models.Ops.Control_flow.t_ControlFlow
                                                                                              (Core_models.Ops.Control_flow.t_ControlFlow
                                                                                                  (Core_models.Result.t_Result
                                                                                                      (
                                                                                                        Alloc.Vec.t_Vec
                                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                          Alloc.Alloc.t_Global
                                                                                                      )
                                                                                                      t_StatementHashError
                                                                                                  )
                                                                                                  (Prims.unit &
                                                                                                    Alloc.Vec.t_Vec
                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                      Alloc.Alloc.t_Global
                                                                                                  ))
                                                                                              (Alloc.Vec.t_Vec
                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                  Alloc.Alloc.t_Global
                                                                                              ))
                                                                                      | Core_models.Result.Result_Err
                                                                                        err ->
                                                                                        Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                        (Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                          (Core_models.Result.Result_Err
                                                                                            err
                                                                                            <:
                                                                                            Core_models.Result.t_Result
                                                                                              (Alloc.Vec.t_Vec
                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                  Alloc.Alloc.t_Global
                                                                                              )
                                                                                              t_StatementHashError
                                                                                          )
                                                                                          <:
                                                                                          Core_models.Ops.Control_flow.t_ControlFlow
                                                                                            (Core_models.Result.t_Result
                                                                                                (Alloc.Vec.t_Vec
                                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                    Alloc.Alloc.t_Global
                                                                                                )
                                                                                                t_StatementHashError
                                                                                            )
                                                                                            (Prims.unit &
                                                                                              Alloc.Vec.t_Vec
                                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                Alloc.Alloc.t_Global
                                                                                            ))
                                                                                        <:
                                                                                        Core_models.Ops.Control_flow.t_ControlFlow
                                                                                          (Core_models.Ops.Control_flow.t_ControlFlow
                                                                                              (Core_models.Result.t_Result
                                                                                                  (Alloc.Vec.t_Vec
                                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                      Alloc.Alloc.t_Global
                                                                                                  )
                                                                                                  t_StatementHashError
                                                                                              )
                                                                                              (Prims.unit &
                                                                                                Alloc.Vec.t_Vec
                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                  Alloc.Alloc.t_Global
                                                                                              ))
                                                                                          (Alloc.Vec.t_Vec
                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                              Alloc.Alloc.t_Global
                                                                                          ))
                                                                                  | Core_models.Result.Result_Err
                                                                                    err ->
                                                                                    Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                    (Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                      (Core_models.Result.Result_Err
                                                                                        err
                                                                                        <:
                                                                                        Core_models.Result.t_Result
                                                                                          (Alloc.Vec.t_Vec
                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                              Alloc.Alloc.t_Global
                                                                                          )
                                                                                          t_StatementHashError
                                                                                      )
                                                                                      <:
                                                                                      Core_models.Ops.Control_flow.t_ControlFlow
                                                                                        (Core_models.Result.t_Result
                                                                                            (Alloc.Vec.t_Vec
                                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                Alloc.Alloc.t_Global
                                                                                            )
                                                                                            t_StatementHashError
                                                                                        )
                                                                                        (Prims.unit &
                                                                                          Alloc.Vec.t_Vec
                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                            Alloc.Alloc.t_Global
                                                                                        ))
                                                                                    <:
                                                                                    Core_models.Ops.Control_flow.t_ControlFlow
                                                                                      (Core_models.Ops.Control_flow.t_ControlFlow
                                                                                          (Core_models.Result.t_Result
                                                                                              (Alloc.Vec.t_Vec
                                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                                  Alloc.Alloc.t_Global
                                                                                              )
                                                                                              t_StatementHashError
                                                                                          )
                                                                                          (Prims.unit &
                                                                                            Alloc.Vec.t_Vec
                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                              Alloc.Alloc.t_Global
                                                                                          ))
                                                                                      (Alloc.Vec.t_Vec
                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                          Alloc.Alloc.t_Global
                                                                                      ))
                                                                              | Core_models.Result.Result_Err
                                                                                err ->
                                                                                Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                (Core_models.Ops.Control_flow.ControlFlow_Break
                                                                                  (Core_models.Result.Result_Err
                                                                                    err
                                                                                    <:
                                                                                    Core_models.Result.t_Result
                                                                                      (Alloc.Vec.t_Vec
                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                          Alloc.Alloc.t_Global
                                                                                      )
                                                                                      t_StatementHashError
                                                                                  )
                                                                                  <:
                                                                                  Core_models.Ops.Control_flow.t_ControlFlow
                                                                                    (Core_models.Result.t_Result
                                                                                        (Alloc.Vec.t_Vec
                                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                            Alloc.Alloc.t_Global
                                                                                        )
                                                                                        t_StatementHashError
                                                                                    )
                                                                                    (Prims.unit &
                                                                                      Alloc.Vec.t_Vec
                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                        Alloc.Alloc.t_Global
                                                                                    ))
                                                                                <:
                                                                                Core_models.Ops.Control_flow.t_ControlFlow
                                                                                  (Core_models.Ops.Control_flow.t_ControlFlow
                                                                                      (Core_models.Result.t_Result
                                                                                          (Alloc.Vec.t_Vec
                                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                              Alloc.Alloc.t_Global
                                                                                          )
                                                                                          t_StatementHashError
                                                                                      )
                                                                                      (Prims.unit &
                                                                                        Alloc.Vec.t_Vec
                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                          Alloc.Alloc.t_Global
                                                                                      ))
                                                                                  (Alloc.Vec.t_Vec
                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                      Alloc.Alloc.t_Global
                                                                                  ))
                                                                          | Core_models.Result.Result_Err
                                                                            err ->
                                                                            Core_models.Ops.Control_flow.ControlFlow_Break
                                                                            (Core_models.Ops.Control_flow.ControlFlow_Break
                                                                              (Core_models.Result.Result_Err
                                                                                err
                                                                                <:
                                                                                Core_models.Result.t_Result
                                                                                  (Alloc.Vec.t_Vec
                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                      Alloc.Alloc.t_Global
                                                                                  )
                                                                                  t_StatementHashError
                                                                              )
                                                                              <:
                                                                              Core_models.Ops.Control_flow.t_ControlFlow
                                                                                (Core_models.Result.t_Result
                                                                                    (Alloc.Vec.t_Vec
                                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                        Alloc.Alloc.t_Global
                                                                                    )
                                                                                    t_StatementHashError
                                                                                )
                                                                                (Prims.unit &
                                                                                  Alloc.Vec.t_Vec
                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                    Alloc.Alloc.t_Global
                                                                                ))
                                                                            <:
                                                                            Core_models.Ops.Control_flow.t_ControlFlow
                                                                              (Core_models.Ops.Control_flow.t_ControlFlow
                                                                                  (Core_models.Result.t_Result
                                                                                      (Alloc.Vec.t_Vec
                                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                          Alloc.Alloc.t_Global
                                                                                      )
                                                                                      t_StatementHashError
                                                                                  )
                                                                                  (Prims.unit &
                                                                                    Alloc.Vec.t_Vec
                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                      Alloc.Alloc.t_Global
                                                                                  ))
                                                                              (Alloc.Vec.t_Vec
                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                  Alloc.Alloc.t_Global
                                                                              ))
                                                                      | Core_models.Result.Result_Err
                                                                        err ->
                                                                        Core_models.Ops.Control_flow.ControlFlow_Break
                                                                        (Core_models.Ops.Control_flow.ControlFlow_Break
                                                                          (Core_models.Result.Result_Err
                                                                            err
                                                                            <:
                                                                            Core_models.Result.t_Result
                                                                              (Alloc.Vec.t_Vec
                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                  Alloc.Alloc.t_Global
                                                                              ) t_StatementHashError
                                                                          )
                                                                          <:
                                                                          Core_models.Ops.Control_flow.t_ControlFlow
                                                                            (Core_models.Result.t_Result
                                                                                (Alloc.Vec.t_Vec
                                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                    Alloc.Alloc.t_Global
                                                                                )
                                                                                t_StatementHashError
                                                                            )
                                                                            (Prims.unit &
                                                                              Alloc.Vec.t_Vec
                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                Alloc.Alloc.t_Global
                                                                            ))
                                                                        <:
                                                                        Core_models.Ops.Control_flow.t_ControlFlow
                                                                          (Core_models.Ops.Control_flow.t_ControlFlow
                                                                              (Core_models.Result.t_Result
                                                                                  (Alloc.Vec.t_Vec
                                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                      Alloc.Alloc.t_Global
                                                                                  )
                                                                                  t_StatementHashError
                                                                              )
                                                                              (Prims.unit &
                                                                                Alloc.Vec.t_Vec
                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                  Alloc.Alloc.t_Global
                                                                              ))
                                                                          (Alloc.Vec.t_Vec
                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                              Alloc.Alloc.t_Global))
                                                                  | Core_models.Result.Result_Err
                                                                    err ->
                                                                    Core_models.Ops.Control_flow.ControlFlow_Break
                                                                    (Core_models.Ops.Control_flow.ControlFlow_Break
                                                                      (Core_models.Result.Result_Err
                                                                        err
                                                                        <:
                                                                        Core_models.Result.t_Result
                                                                          (Alloc.Vec.t_Vec
                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                              Alloc.Alloc.t_Global)
                                                                          t_StatementHashError)
                                                                      <:
                                                                      Core_models.Ops.Control_flow.t_ControlFlow
                                                                        (Core_models.Result.t_Result
                                                                            (Alloc.Vec.t_Vec
                                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                Alloc.Alloc.t_Global
                                                                            ) t_StatementHashError)
                                                                        (Prims.unit &
                                                                          Alloc.Vec.t_Vec
                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                            Alloc.Alloc.t_Global))
                                                                    <:
                                                                    Core_models.Ops.Control_flow.t_ControlFlow
                                                                      (Core_models.Ops.Control_flow.t_ControlFlow
                                                                          (Core_models.Result.t_Result
                                                                              (Alloc.Vec.t_Vec
                                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                                  Alloc.Alloc.t_Global
                                                                              ) t_StatementHashError
                                                                          )
                                                                          (Prims.unit &
                                                                            Alloc.Vec.t_Vec
                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                              Alloc.Alloc.t_Global))
                                                                      (Alloc.Vec.t_Vec
                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                          Alloc.Alloc.t_Global))
                                                              | Core_models.Result.Result_Err err ->
                                                                Core_models.Ops.Control_flow.ControlFlow_Break
                                                                (Core_models.Ops.Control_flow.ControlFlow_Break
                                                                  (Core_models.Result.Result_Err err
                                                                    <:
                                                                    Core_models.Result.t_Result
                                                                      (Alloc.Vec.t_Vec
                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                          Alloc.Alloc.t_Global)
                                                                      t_StatementHashError)
                                                                  <:
                                                                  Core_models.Ops.Control_flow.t_ControlFlow
                                                                    (Core_models.Result.t_Result
                                                                        (Alloc.Vec.t_Vec
                                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                            Alloc.Alloc.t_Global)
                                                                        t_StatementHashError)
                                                                    (Prims.unit &
                                                                      Alloc.Vec.t_Vec
                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                        Alloc.Alloc.t_Global))
                                                                <:
                                                                Core_models.Ops.Control_flow.t_ControlFlow
                                                                  (Core_models.Ops.Control_flow.t_ControlFlow
                                                                      (Core_models.Result.t_Result
                                                                          (Alloc.Vec.t_Vec
                                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                              Alloc.Alloc.t_Global)
                                                                          t_StatementHashError)
                                                                      (Prims.unit &
                                                                        Alloc.Vec.t_Vec
                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                          Alloc.Alloc.t_Global))
                                                                  (Alloc.Vec.t_Vec
                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                      Alloc.Alloc.t_Global))
                                                          | Core_models.Result.Result_Err err ->
                                                            Core_models.Ops.Control_flow.ControlFlow_Break
                                                            (Core_models.Ops.Control_flow.ControlFlow_Break
                                                              (Core_models.Result.Result_Err err
                                                                <:
                                                                Core_models.Result.t_Result
                                                                  (Alloc.Vec.t_Vec
                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                      Alloc.Alloc.t_Global)
                                                                  t_StatementHashError)
                                                              <:
                                                              Core_models.Ops.Control_flow.t_ControlFlow
                                                                (Core_models.Result.t_Result
                                                                    (Alloc.Vec.t_Vec
                                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                        Alloc.Alloc.t_Global)
                                                                    t_StatementHashError)
                                                                (Prims.unit &
                                                                  Alloc.Vec.t_Vec
                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                    Alloc.Alloc.t_Global))
                                                            <:
                                                            Core_models.Ops.Control_flow.t_ControlFlow
                                                              (Core_models.Ops.Control_flow.t_ControlFlow
                                                                  (Core_models.Result.t_Result
                                                                      (Alloc.Vec.t_Vec
                                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                          Alloc.Alloc.t_Global)
                                                                      t_StatementHashError)
                                                                  (Prims.unit &
                                                                    Alloc.Vec.t_Vec
                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                      Alloc.Alloc.t_Global))
                                                              (Alloc.Vec.t_Vec
                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                  Alloc.Alloc.t_Global))
                                                      | Core_models.Result.Result_Err err ->
                                                        Core_models.Ops.Control_flow.ControlFlow_Break
                                                        (Core_models.Ops.Control_flow.ControlFlow_Break
                                                          (Core_models.Result.Result_Err err
                                                            <:
                                                            Core_models.Result.t_Result
                                                              (Alloc.Vec.t_Vec
                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                  Alloc.Alloc.t_Global)
                                                              t_StatementHashError)
                                                          <:
                                                          Core_models.Ops.Control_flow.t_ControlFlow
                                                            (Core_models.Result.t_Result
                                                                (Alloc.Vec.t_Vec
                                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                    Alloc.Alloc.t_Global)
                                                                t_StatementHashError)
                                                            (Prims.unit &
                                                              Alloc.Vec.t_Vec
                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                Alloc.Alloc.t_Global))
                                                        <:
                                                        Core_models.Ops.Control_flow.t_ControlFlow
                                                          (Core_models.Ops.Control_flow.t_ControlFlow
                                                              (Core_models.Result.t_Result
                                                                  (Alloc.Vec.t_Vec
                                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                      Alloc.Alloc.t_Global)
                                                                  t_StatementHashError)
                                                              (Prims.unit &
                                                                Alloc.Vec.t_Vec
                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                  Alloc.Alloc.t_Global))
                                                          (Alloc.Vec.t_Vec
                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                              Alloc.Alloc.t_Global))
                                                  | Core_models.Result.Result_Err err ->
                                                    Core_models.Ops.Control_flow.ControlFlow_Break
                                                    (Core_models.Ops.Control_flow.ControlFlow_Break
                                                      (Core_models.Result.Result_Err err
                                                        <:
                                                        Core_models.Result.t_Result
                                                          (Alloc.Vec.t_Vec
                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                              Alloc.Alloc.t_Global)
                                                          t_StatementHashError)
                                                      <:
                                                      Core_models.Ops.Control_flow.t_ControlFlow
                                                        (Core_models.Result.t_Result
                                                            (Alloc.Vec.t_Vec
                                                                Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                Alloc.Alloc.t_Global)
                                                            t_StatementHashError)
                                                        (Prims.unit &
                                                          Alloc.Vec.t_Vec
                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                            Alloc.Alloc.t_Global))
                                                    <:
                                                    Core_models.Ops.Control_flow.t_ControlFlow
                                                      (Core_models.Ops.Control_flow.t_ControlFlow
                                                          (Core_models.Result.t_Result
                                                              (Alloc.Vec.t_Vec
                                                                  Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                                  Alloc.Alloc.t_Global)
                                                              t_StatementHashError)
                                                          (Prims.unit &
                                                            Alloc.Vec.t_Vec
                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                              Alloc.Alloc.t_Global))
                                                      (Alloc.Vec.t_Vec
                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                          Alloc.Alloc.t_Global))
                                              | Core_models.Result.Result_Err err ->
                                                Core_models.Ops.Control_flow.ControlFlow_Break
                                                (Core_models.Ops.Control_flow.ControlFlow_Break
                                                  (Core_models.Result.Result_Err err
                                                    <:
                                                    Core_models.Result.t_Result
                                                      (Alloc.Vec.t_Vec
                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                          Alloc.Alloc.t_Global) t_StatementHashError
                                                  )
                                                  <:
                                                  Core_models.Ops.Control_flow.t_ControlFlow
                                                    (Core_models.Result.t_Result
                                                        (Alloc.Vec.t_Vec
                                                            Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                            Alloc.Alloc.t_Global)
                                                        t_StatementHashError)
                                                    (Prims.unit &
                                                      Alloc.Vec.t_Vec
                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                        Alloc.Alloc.t_Global))
                                                <:
                                                Core_models.Ops.Control_flow.t_ControlFlow
                                                  (Core_models.Ops.Control_flow.t_ControlFlow
                                                      (Core_models.Result.t_Result
                                                          (Alloc.Vec.t_Vec
                                                              Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                              Alloc.Alloc.t_Global)
                                                          t_StatementHashError)
                                                      (Prims.unit &
                                                        Alloc.Vec.t_Vec
                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                          Alloc.Alloc.t_Global))
                                                  (Alloc.Vec.t_Vec
                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                      Alloc.Alloc.t_Global))
                                          | Core_models.Result.Result_Err err ->
                                            Core_models.Ops.Control_flow.ControlFlow_Break
                                            (Core_models.Ops.Control_flow.ControlFlow_Break
                                              (Core_models.Result.Result_Err err
                                                <:
                                                Core_models.Result.t_Result
                                                  (Alloc.Vec.t_Vec
                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                      Alloc.Alloc.t_Global) t_StatementHashError)
                                              <:
                                              Core_models.Ops.Control_flow.t_ControlFlow
                                                (Core_models.Result.t_Result
                                                    (Alloc.Vec.t_Vec
                                                        Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                        Alloc.Alloc.t_Global) t_StatementHashError)
                                                (Prims.unit &
                                                  Alloc.Vec.t_Vec
                                                    Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                    Alloc.Alloc.t_Global))
                                            <:
                                            Core_models.Ops.Control_flow.t_ControlFlow
                                              (Core_models.Ops.Control_flow.t_ControlFlow
                                                  (Core_models.Result.t_Result
                                                      (Alloc.Vec.t_Vec
                                                          Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                          Alloc.Alloc.t_Global) t_StatementHashError
                                                  )
                                                  (Prims.unit &
                                                    Alloc.Vec.t_Vec
                                                      Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                      Alloc.Alloc.t_Global))
                                              (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                                  Alloc.Alloc.t_Global))
                                    <:
                                    Core_models.Ops.Control_flow.t_ControlFlow
                                      (Core_models.Result.t_Result
                                          (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              Alloc.Alloc.t_Global) t_StatementHashError)
                                      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                          Alloc.Alloc.t_Global)
                                  with
                                  | Core_models.Ops.Control_flow.ControlFlow_Break ret -> ret
                                  | Core_models.Ops.Control_flow.ControlFlow_Continue fields ->
                                    let expected:usize = v_TRANSFER_STATEMENT_FIELD_COUNT in
                                    if
                                      (Alloc.Vec.impl_1__len #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                          #Alloc.Alloc.t_Global
                                          fields
                                        <:
                                        usize) <>.
                                      expected
                                    then
                                      Core_models.Result.Result_Err
                                      (StatementHashError_InvalidFieldLength
                                        ({
                                            f_expected = expected;
                                            f_got
                                            =
                                            Alloc.Vec.impl_1__len #Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                              #Alloc.Alloc.t_Global
                                              fields
                                          })
                                        <:
                                        t_StatementHashError)
                                      <:
                                      Core_models.Result.t_Result
                                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                            Alloc.Alloc.t_Global) t_StatementHashError
                                    else
                                      Core_models.Result.Result_Ok fields
                                      <:
                                      Core_models.Result.t_Result
                                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                            Alloc.Alloc.t_Global) t_StatementHashError)
                              | Core_models.Result.Result_Err err ->
                                Core_models.Result.Result_Err err
                                <:
                                Core_models.Result.t_Result
                                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                      Alloc.Alloc.t_Global) t_StatementHashError)
                        | Core_models.Result.Result_Err err ->
                          Core_models.Result.Result_Err err
                          <:
                          Core_models.Result.t_Result
                            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq
                                Alloc.Alloc.t_Global) t_StatementHashError)
                    | Core_models.Result.Result_Err err ->
                      Core_models.Result.Result_Err err
                      <:
                      Core_models.Result.t_Result
                        (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                        t_StatementHashError)
              | Core_models.Result.Result_Err err ->
                Core_models.Result.Result_Err err
                <:
                Core_models.Result.t_Result
                  (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
                  t_StatementHashError)
        | Core_models.Result.Result_Err err ->
          Core_models.Result.Result_Err err
          <:
          Core_models.Result.t_Result
            (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
            t_StatementHashError)
  | Core_models.Result.Result_Err err ->
    Core_models.Result.Result_Err err
    <:
    Core_models.Result.t_Result
      (Alloc.Vec.t_Vec Decaf377.Fields.Fq.U64.Wrapper.t_Fq Alloc.Alloc.t_Global)
      t_StatementHashError
