module StatementFieldEncodingProofs
#set-options "--fuel 1 --ifuel 1 --z3rlimit 100"

module P = Shieldd_sdk_shielded_pool.Public_input_hash
module Int = Rust_primitives.Integers

open Core_models

let lemma_extracted_field_count_constants () : Lemma
  (ensures
    P.v_NOTE_RESHAPE_STATEMENT_BASE_FIELDS == mk_usize 2 /\
    P.v_NOTE_RESHAPE_STATEMENT_FIELDS_PER_INPUT == mk_usize 2 /\
    P.v_NOTE_RESHAPE_STATEMENT_FIELDS_PER_OUTPUT == mk_usize 1 /\
    P.v_NOTE_RESHAPE_STATEMENT_ACTIVE_COUNT_FIELDS == mk_usize 2 /\
    P.v_TRANSFER_STATEMENT_BASE_FIELDS == mk_usize 77 /\
    P.v_TRANSFER_STATEMENT_FIELDS_PER_INPUT == mk_usize 2 /\
    P.v_TRANSFER_STATEMENT_FIELDS_PER_OUTPUT == mk_usize 1 /\
    P.v_SHIELDED_ICS20_WITHDRAWAL_STATEMENT_BASE_FIELDS == mk_usize 10 /\
    P.v_SHIELDED_ICS20_WITHDRAWAL_STATEMENT_FIELDS_PER_INPUT == mk_usize 2)
= ()

let transfer_field_count_spec (n_in n_out: nat) : nat = 77 + 2 * n_in + n_out

let note_reshape_field_count_spec (n_in n_out: nat) : nat = 2 + 2 * n_in + n_out

let shielded_ics20_field_count_spec (n_in: nat) : nat = 10 + 2 * n_in

let lemma_transfer_field_count_injective (a_in a_out b_in b_out: nat) : Lemma
  (requires
    a_out <= 1 /\ b_out <= 1 /\
    transfer_field_count_spec a_in a_out == transfer_field_count_spec b_in b_out)
  (ensures a_in == b_in /\ a_out == b_out)
= ()

let lemma_single_output_note_reshape_field_count_injective (a_in a_out b_in b_out: nat) : Lemma
  (requires
    a_out <= 1 /\ b_out <= 1 /\
    note_reshape_field_count_spec a_in a_out == note_reshape_field_count_spec b_in b_out)
  (ensures a_in == b_in /\ a_out == b_out)
= ()

let lemma_shielded_ics20_field_count_injective (a_in b_in: nat) : Lemma
  (requires shielded_ics20_field_count_spec a_in == shielded_ics20_field_count_spec b_in)
  (ensures a_in == b_in)
= ()
