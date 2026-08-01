module FamilyRoutingProofs

module B = Shieldd_sdk_proof_aggregation.Bundle
module NR = Shieldd_sdk_shielded_pool.Note_reshape.Generated
module SW = Shieldd_sdk_shielded_pool.Shielded_ics20_withdrawal.Generated
open Core_models

(*
  Proof target, extracted from Rust with hax:

  family_route_from_proto_fields is total on every currently defined aggregate
  family and assigns each family class a distinct route kind. This is the
  primitive decision table used before conversion into shielded-pool family
  newtypes; downstream dispatch consumes only the route kind and subfamily id.
*)

let transfer_route : B.t_FamilyRoute =
  {
    B.f_kind = B.FamilyRouteKind_Transfer;
    B.f_subfamily_id = mk_u32 0
  }

let note_reshape_route (sub:u32) : B.t_FamilyRoute =
  {
    B.f_kind = B.FamilyRouteKind_NoteReshape;
    B.f_subfamily_id = sub
  }

let shielded_ics20_withdrawal_route : B.t_FamilyRoute =
  {
    B.f_kind = B.FamilyRouteKind_ShieldedIcs20Withdrawal;
    B.f_subfamily_id = mk_u32 1
  }

let smoke_family_route_is_extracted
      (family_id note_reshape_id shielded_id:u32)
    : Core_models.Result.t_Result B.t_FamilyRoute B.t_FamilyRouteError =
  B.family_route_from_proto_fields family_id note_reshape_id shielded_id

let route_proto_fields (fields:B.t_FamilyProtoFields)
    : Core_models.Result.t_Result B.t_FamilyRoute B.t_FamilyRouteError =
  B.family_route_from_proto_fields
    fields.B.f_family_id
    fields.B.f_note_reshape_family_id
    fields.B.f_shielded_ics20_withdrawal_family_id

let lemma_family_route_transfer_total ()
    : Lemma (
        B.family_route_from_proto_fields (mk_u32 7) (mk_u32 0) (mk_u32 0) ==
        Core_models.Result.Result_Ok transfer_route
      )
= ()

let lemma_family_route_note_reshape_total (sub:u32)
    : Lemma
      (requires
        sub == mk_u32 1 \/ sub == mk_u32 2 \/ sub == mk_u32 3 \/ sub == mk_u32 4)
      (ensures
        B.family_route_from_proto_fields (mk_u32 8) sub (mk_u32 0) ==
        Core_models.Result.Result_Ok (note_reshape_route sub))
= ()

let lemma_family_route_shielded_ics20_withdrawal_total ()
    : Lemma (
        B.family_route_from_proto_fields (mk_u32 10) (mk_u32 0) (mk_u32 1) ==
        Core_models.Result.Result_Ok shielded_ics20_withdrawal_route
      )
= ()

(* The production encoder and router are inverse on every constructible
   registered family value. The refinements state the private-newtype
   invariants that Rust constructors enforce. *)

let lemma_family_proto_fields_transfer_inverse ()
    : Lemma (
        route_proto_fields
          (B.family_proto_fields (B.ProofFamilyId_Transfer <: B.t_ProofFamilyId))
        ==
        Core_models.Result.Result_Ok transfer_route
      )
= ()

let lemma_family_proto_fields_note_reshape_inverse
      (sub:NR.t_NoteReshapeFamilyId)
    : Lemma
      (requires (
        let value = NR.impl_NoteReshapeFamilyId__get sub in
        value == mk_u32 1 \/ value == mk_u32 2 \/
        value == mk_u32 3 \/ value == mk_u32 4))
      (ensures (
        let value = NR.impl_NoteReshapeFamilyId__get sub in
        route_proto_fields
          (B.family_proto_fields
            (B.ProofFamilyId_NoteReshape sub <: B.t_ProofFamilyId))
        ==
        Core_models.Result.Result_Ok (note_reshape_route value)))
= ()

let lemma_family_proto_fields_shielded_ics20_withdrawal_inverse
      (sub:SW.t_ShieldedIcs20WithdrawalFamilyId)
    : Lemma
      (requires
        SW.impl_ShieldedIcs20WithdrawalFamilyId__get sub == mk_u32 1)
      (ensures
        route_proto_fields
          (B.family_proto_fields
            (B.ProofFamilyId_ShieldedIcs20Withdrawal sub <: B.t_ProofFamilyId))
        ==
        Core_models.Result.Result_Ok shielded_ics20_withdrawal_route)
= ()

let lemma_family_route_rejects_unknown_family
      (family_id note_reshape_id shielded_id:u32)
    : Lemma
      (requires
        family_id <> mk_u32 7 /\
        family_id <> mk_u32 8 /\
        family_id <> mk_u32 10)
      (ensures
        B.family_route_from_proto_fields family_id note_reshape_id shielded_id ==
        Core_models.Result.Result_Err B.FamilyRouteError_UnknownProofFamily)
= ()

let lemma_family_route_note_reshape_rejects_missing (shielded_id:u32)
    : Lemma (
        B.family_route_from_proto_fields (mk_u32 8) (mk_u32 0) shielded_id ==
        Core_models.Result.Result_Err B.FamilyRouteError_MissingSubfamily
      )
= ()

let lemma_family_route_shielded_rejects_missing (note_reshape_id:u32)
    : Lemma (
        B.family_route_from_proto_fields (mk_u32 10) note_reshape_id (mk_u32 0) ==
        Core_models.Result.Result_Err B.FamilyRouteError_MissingSubfamily
      )
= ()

let lemma_family_route_note_reshape_rejects_unknown
      (sub:u32)
    : Lemma
      (requires
        sub <> mk_u32 0 /\
        sub <> mk_u32 1 /\ sub <> mk_u32 2 /\
        sub <> mk_u32 3 /\ sub <> mk_u32 4)
      (ensures
        B.family_route_from_proto_fields (mk_u32 8) sub (mk_u32 0) ==
        Core_models.Result.Result_Err B.FamilyRouteError_UnknownSubfamily)
= ()

let lemma_family_route_shielded_rejects_unknown
      (sub:u32)
    : Lemma
      (requires sub <> mk_u32 0 /\ sub <> mk_u32 1)
      (ensures
        B.family_route_from_proto_fields (mk_u32 10) (mk_u32 0) sub ==
        Core_models.Result.Result_Err B.FamilyRouteError_UnknownSubfamily)
= ()

let lemma_family_route_transfer_rejects_cross_subids
      (note_reshape_id shielded_id:u32)
    : Lemma
      (requires note_reshape_id <> mk_u32 0 \/ shielded_id <> mk_u32 0)
      (ensures
        B.family_route_from_proto_fields (mk_u32 7) note_reshape_id shielded_id ==
        Core_models.Result.Result_Err B.FamilyRouteError_UnexpectedSubfamily)
= ()

let lemma_family_route_note_reshape_rejects_cross_subids
      (note_reshape_id shielded_id:u32)
    : Lemma
      (requires note_reshape_id <> mk_u32 0 /\ shielded_id <> mk_u32 0)
      (ensures
        B.family_route_from_proto_fields (mk_u32 8) note_reshape_id shielded_id ==
        Core_models.Result.Result_Err B.FamilyRouteError_UnexpectedSubfamily)
= ()

let lemma_family_route_shielded_rejects_cross_subids
      (note_reshape_id shielded_id:u32)
    : Lemma
      (requires shielded_id <> mk_u32 0 /\ note_reshape_id <> mk_u32 0)
      (ensures
        B.family_route_from_proto_fields (mk_u32 10) note_reshape_id shielded_id ==
        Core_models.Result.Result_Err B.FamilyRouteError_UnexpectedSubfamily)
= ()

let lemma_family_route_kinds_distinct (note_reshape_sub:u32)
    : Lemma
      (ensures
        transfer_route.B.f_kind <> (note_reshape_route note_reshape_sub).B.f_kind /\
        transfer_route.B.f_kind <> shielded_ics20_withdrawal_route.B.f_kind /\
        (note_reshape_route note_reshape_sub).B.f_kind <> shielded_ics20_withdrawal_route.B.f_kind)
= ()
