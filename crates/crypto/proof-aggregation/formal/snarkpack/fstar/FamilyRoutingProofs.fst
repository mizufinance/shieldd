module FamilyRoutingProofs

module B = Shieldd_sdk_proof_aggregation.Bundle
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
