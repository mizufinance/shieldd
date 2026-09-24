// Code generated from transfer_families.json. DO NOT EDIT.
pub const PADDED_TRANSFER_INPUTS: usize = 2;
pub const PADDED_TRANSFER_OUTPUTS: usize = 2;
pub const TRANSFER_STATEMENT_FIELD_COUNT: usize =
    crate::public_input_hash::transfer_statement_field_count(
        PADDED_TRANSFER_INPUTS,
        PADDED_TRANSFER_OUTPUTS,
    );
pub const TRANSFER_PROOF_LABEL: &str = "transfer";
pub const TRANSFER_ARTIFACT_NAME: &str = "transfer";

pub fn transfer_input_count() -> usize {
    PADDED_TRANSFER_INPUTS
}

pub fn transfer_output_count() -> usize {
    PADDED_TRANSFER_OUTPUTS
}

pub fn transfer_auth_sig_count() -> usize {
    PADDED_TRANSFER_INPUTS
}
