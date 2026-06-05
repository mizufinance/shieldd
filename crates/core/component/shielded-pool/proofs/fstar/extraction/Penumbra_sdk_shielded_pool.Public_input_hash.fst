module Penumbra_sdk_shielded_pool.Public_input_hash
#set-options "--fuel 0 --ifuel 1 --z3rlimit 15"
open FStar.Mul
open Core_models

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
