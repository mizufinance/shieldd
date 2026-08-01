module DigestBindingProofs
#set-options "--fuel 2 --ifuel 1 --z3rlimit 300"

module R = Shieldd_sdk_proof_aggregation.Srs
module S = Shieldd_sdk_proof_aggregation.Statement
module V = Alloc.Vec
module Seq = FStar.Seq
module Num = Core_models.Num
module Int = Rust_primitives.Integers
module F = FrameLemmas
module SE = StatementEncodingProofs
open Core_models

(*
  Proof targets, extracted from Rust with hax:

  - default_dev_srs_id_preimage is deterministic and injective in the serialized
    default SRS suffix under the fixed backend/curve/max-count prefix.
  - vk_digest_preimage is deterministic and injective in the serialized VK
    material under the fixed VK digest domain and u32 length frame.
  - statement_digest_preimage emits the fixed statement-digest domain followed
    by the canonical statement bytes.

  The final SHA-256 digest binding remains the ledger's SHA-256 collision
  resistance assumption; these lemmas prove the executed preimage bytes that feed
  that hash.
*)

let bo (b: V.t_Vec u8 Alloc.Alloc.t_Global) : Seq.seq u8 = b._0

let smoke_dev_srs_supports_count_is_extracted
      (max_padded_count:u32)
      (item_count:usize)
    : bool =
  R.dev_srs_supports_count max_padded_count item_count

let lemma_dev_srs_supports_count_iff (max_padded_count:u32) (item_count:usize)
    : Lemma (
        R.dev_srs_supports_count max_padded_count item_count
        ==
        (item_count <=. (cast max_padded_count <: usize))
      )
= ()

let lemma_default_srs_id_preimage_content (serialized_srs:t_Slice u8)
    : Lemma
      (requires
        Seq.length R.v_DEFAULT_DEV_SRS_ID_PREFIX + Seq.length serialized_srs <= Int.max_usize)
      (ensures
        bo (R.default_dev_srs_id_preimage serialized_srs) ==
        Seq.append R.v_DEFAULT_DEV_SRS_ID_PREFIX serialized_srs)
= Seq.append_empty_l R.v_DEFAULT_DEV_SRS_ID_PREFIX

let lemma_default_srs_id_preimage_injective (x y:t_Slice u8)
    : Lemma
      (requires
        Seq.length R.v_DEFAULT_DEV_SRS_ID_PREFIX + Seq.length x <= Int.max_usize /\
        Seq.length R.v_DEFAULT_DEV_SRS_ID_PREFIX + Seq.length y <= Int.max_usize /\
        bo (R.default_dev_srs_id_preimage x) == bo (R.default_dev_srs_id_preimage y))
      (ensures x == y)
= lemma_default_srs_id_preimage_content x;
  lemma_default_srs_id_preimage_content y;
  F.lemma_fixed_split_inj R.v_DEFAULT_DEV_SRS_ID_PREFIX x R.v_DEFAULT_DEV_SRS_ID_PREFIX y

let lemma_vk_digest_preimage_content (serialized_vk:t_Slice u8)
    : Lemma
      (requires Seq.length serialized_vk <= 4294967295)
      (ensures
        Core_models.Result.Result_Ok? (S.vk_digest_preimage serialized_vk) /\
        bo (Core_models.Result.Result_Ok?._0 (S.vk_digest_preimage serialized_vk)) ==
        Seq.append S.v_VK_DIGEST_DOMAIN
          (Seq.append
            (Num.impl_u32__to_le_bytes
              (cast (Core_models.Slice.impl__len #u8 serialized_vk) <: u32))
            serialized_vk))
= let b0 = V.impl__new #u8 () in
  let b1 = V.impl_2__extend_from_slice #u8 #Alloc.Alloc.t_Global b0 S.v_VK_DIGEST_DOMAIN in
  SE.lemma_append_bytes_field_ok b1 serialized_vk;
  Seq.append_empty_l S.v_VK_DIGEST_DOMAIN;
  Seq.append_assoc S.v_VK_DIGEST_DOMAIN
    (Num.impl_u32__to_le_bytes
      (cast (Core_models.Slice.impl__len #u8 serialized_vk) <: u32))
    serialized_vk

let lemma_vk_digest_preimage_injective (x y:t_Slice u8)
    : Lemma
      (requires
        Seq.length x <= 4294967295 /\
        Seq.length y <= 4294967295 /\
        Core_models.Result.Result_Ok? (S.vk_digest_preimage x) /\
        Core_models.Result.Result_Ok? (S.vk_digest_preimage y) /\
        bo (Core_models.Result.Result_Ok?._0 (S.vk_digest_preimage x)) ==
        bo (Core_models.Result.Result_Ok?._0 (S.vk_digest_preimage y)))
      (ensures x == y)
= lemma_vk_digest_preimage_content x;
  lemma_vk_digest_preimage_content y;
  let lx = cast (Core_models.Slice.impl__len #u8 x) <: u32 in
  let ly = cast (Core_models.Slice.impl__len #u8 y) <: u32 in
  F.lemma_fixed_split_inj
    S.v_VK_DIGEST_DOMAIN
    (Seq.append (Num.impl_u32__to_le_bytes lx) x)
    S.v_VK_DIGEST_DOMAIN
    (Seq.append (Num.impl_u32__to_le_bytes ly) y);
  assert (Int.v lx == Seq.length x);
  assert (Int.v ly == Seq.length y);
  F.lemma_lenpref_frame_inj lx x Seq.empty ly y Seq.empty

let lemma_statement_digest_preimage_content (canonical_bytes:t_Slice u8)
    : Lemma
      (requires
        Seq.length S.v_STATEMENT_DIGEST_DOMAIN +
          Seq.length canonical_bytes <= Int.max_usize)
      (ensures
        bo (S.statement_digest_preimage canonical_bytes) ==
        Seq.append S.v_STATEMENT_DIGEST_DOMAIN canonical_bytes)
= Seq.append_empty_l S.v_STATEMENT_DIGEST_DOMAIN
