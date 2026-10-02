//! Requested live decoded allocations, excluding allocator rounding and RSS.
use crate::{Action, Transaction};
use shieldd_sdk_compliance::{IbcRoute, MsgRegisterAsset};
use shieldd_sdk_shielded_pool::{HostWithdrawalDestination, Transfer};
use std::mem::size_of;

fn vector<T>(value: &Vec<T>) -> usize {
    value.capacity() * size_of::<T>()
}
fn route(value: &IbcRoute) -> usize {
    value.local_port.capacity()
        + value.local_channel.capacity()
        + value.connection_id.capacity()
        + value.counterparty_port.capacity()
        + value.counterparty_channel.capacity()
}
fn asset(value: &MsgRegisterAsset) -> usize {
    let mut bytes = vector(&value.allowed_ibc_routes)
        + value.allowed_ibc_routes.iter().map(route).sum::<usize>()
        + value.ring_id.capacity()
        + value.policy_id.capacity()
        + value.permission.capacity()
        + value.resource.capacity();
    if let Some(origin) = &value.ibc_origin {
        bytes += route(&origin.route) + origin.base_denom.capacity();
    }
    if let Some(certificate) = &value.audit_certificate {
        bytes += certificate.chain_id.capacity();
    }
    if let Some(grant) = &value.asset_registration_grant {
        let body = &grant.body;
        bytes += vector(&body.allowed_ibc_routes)
            + body.allowed_ibc_routes.iter().map(route).sum::<usize>()
            + body.ring_id.capacity()
            + body.policy_id.capacity()
            + body.permission.capacity()
            + body.resource.capacity();
        if let Some(origin) = &body.ibc_origin {
            bytes += route(&origin.route) + origin.base_denom.capacity();
        }
    }
    bytes
}
fn transfer(value: &Transfer) -> usize {
    vector(&value.body.inputs)
        + value
            .body
            .inputs
            .iter()
            .map(|i| i.encrypted_backref.allocated_bytes() + i.compliance_ciphertext.capacity())
            .sum::<usize>()
        + vector(&value.body.outputs)
        + value
            .body
            .outputs
            .iter()
            .map(|o| o.compliance_ciphertext.capacity() + o.compliance_metadata.capacity())
            .sum::<usize>()
        + value.body.volume_accumulator.encrypted_state.capacity()
        + value.proof.inner.capacity()
}
impl Transaction {
    /// Includes inline transaction storage and actual vector/string capacities.
    /// Arc headers are charged by the owner; cryptographic proof envelopes are
    /// separate extracted artifacts and are charged separately there.
    pub fn allocated_bytes(&self) -> usize {
        let body = &self.transaction_body;
        let mut bytes = size_of::<Self>()
            + vector(&body.actions)
            + body.transaction_parameters.chain_id.capacity();
        if let Some(funding) = &body.fee_funding {
            bytes += transfer(&funding.transfer);
        }
        for action in &body.actions {
            bytes += match action {
                Action::Transfer(value) => transfer(value),
                Action::NoteReshape(value) => {
                    vector(&value.body.inputs)
                        + vector(&value.body.outputs)
                        + value.proof.inner.capacity()
                        + value
                            .body
                            .inputs
                            .iter()
                            .map(|i| i.encrypted_backref.allocated_bytes())
                            .sum::<usize>()
                }
                Action::ShieldedHostWithdrawal(value) => {
                    let destination = match &value.body.withdrawal.destination {
                        HostWithdrawalDestination::Transfer(t) => t.recipient.capacity(),
                        HostWithdrawalDestination::Execution(e) => {
                            vector(&e.calls)
                                + e.calls
                                    .iter()
                                    .map(|call| call.calldata.capacity())
                                    .sum::<usize>()
                        }
                    };
                    vector(&value.body.inputs)
                        + value
                            .body
                            .inputs
                            .iter()
                            .map(|i| {
                                i.encrypted_backref.allocated_bytes()
                                    + i.compliance_ciphertext.capacity()
                            })
                            .sum::<usize>()
                        + value.proof.inner.capacity()
                        + value.body.volume_accumulator.encrypted_state.capacity()
                        + destination
                }
                Action::ComplianceRegisterAsset(value) => asset(value),
                Action::ComplianceRegisterUser(value) => {
                    value
                        .capability_certificate
                        .as_ref()
                        .map_or(0, |c| c.chain_id.capacity())
                        + value
                            .grant
                            .as_ref()
                            .map_or(0, |g| g.body.policy_id.capacity() + g.body.nonce.capacity())
                }
            };
        }
        bytes
    }
}
