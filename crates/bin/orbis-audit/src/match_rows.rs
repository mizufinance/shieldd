use anyhow::{Context, Result};
use shieldd_sdk_compliance::{
    AuditAuthority, AuditDetectedRef, DecryptedVia, OrbisAuditEntry, TransferRole,
};

#[derive(Clone, Debug)]
pub struct AddressData {
    pub transmission_key_hex: String,
}

#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub struct TransferDisclosure {
    pub sender: Option<String>,
    pub amount: Option<String>,
    pub receiver: Option<String>,
}

pub fn entry(
    tx_ref: &AuditDetectedRef,
    authority: AuditAuthority,
    role: Option<TransferRole>,
    subject_address: Option<String>,
    disclosure: TransferDisclosure,
) -> Result<OrbisAuditEntry> {
    Ok(OrbisAuditEntry {
        height: tx_ref.height,
        tx_hash: tx_ref.tx_hash.clone(),
        action_index: tx_ref.action_index,
        output_index: tx_ref.output_index,
        authorization_id: tx_ref
            .authorization_id
            .context("selected audit row is missing its authorization id")?,
        authorization_timestamp: tx_ref
            .authorization_timestamp
            .context("selected audit row is missing its authorization timestamp")?,
        authority,
        role,
        subject_address,
        sender_address: disclosure.sender,
        amount: disclosure.amount,
        receiver_address: disclosure.receiver,
        decrypted_via: DecryptedVia::OrbisPre,
    })
}
