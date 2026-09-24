//! Statement construction uses the circuit catalogue's canonical typed layouts.
use crate::{
    NoteReshapeFamilyId, NoteReshapeProofPublic, NoteSeizureProofPublic,
    ShieldedWithdrawalProofPublic, TransferProofPublic,
};
use anyhow::{ensure, Result};
use shieldd_sdk_circuits::{
    audit, encryption, group::Point, recovery, reshape, seizure, transfer, withdrawal,
};
use shieldd_sdk_crypto::{audit::point_fields, domains, encoding, poseidon, Fq, SubgroupPoint};

pub const fn note_reshape_statement_field_count(inputs: usize, outputs: usize) -> usize {
    10 + 2 * inputs + 2 * outputs
}
pub const fn transfer_statement_field_count(inputs: usize, outputs: usize) -> usize {
    59 + 2 * inputs + 2 * outputs
}
pub const fn shielded_withdrawal_statement_field_count(inputs: usize) -> usize {
    30 + 2 * inputs
}

pub(crate) fn point(point: &SubgroupPoint) -> Point<Fq> {
    let [x, y] = point_fields(point);
    Point { x, y }
}
pub(crate) fn address(address: &shieldd_sdk_keys::Address) -> encryption::Address<Fq> {
    encryption::Address {
        diversified: point(address.diversified_generator()),
        transmission: point(address.transmission_point()),
    }
}
fn spend(
    nullifier: shieldd_sdk_sct::Nullifier,
    history_required: bool,
) -> Result<transfer::SpendStatement<Fq>> {
    Ok(transfer::SpendStatement {
        nullifier: nullifier.0,
        history_required: Fq::from(u64::from(history_required)),
    })
}
pub(crate) fn capsule(c: &crate::RecoveryCapsule) -> recovery::Capsule<Fq> {
    recovery::Capsule {
        commitment: c.commitment().0,
        epk: point(&c.epk),
        c2: c.c2,
        salt: c.salt,
        confirmation: c.key_confirmation,
        encrypted_amount: c.encrypted_amount,
        encrypted_blinding: c.encrypted_note_blinding,
    }
}
fn volume(v: &crate::VolumeAccumulatorPublic, context: Fq) -> transfer::VolumeStatement<Fq> {
    transfer::VolumeStatement {
        nullifier: v.nullifier.0,
        commitment: v.commitment.0,
        day_start: Fq::from(v.day_start),
        context,
    }
}
pub(crate) fn audit(
    c: &crate::transfer::TransferCompliancePublic,
    timestamp: Fq,
) -> Result<encryption::Published<Fq>> {
    c.metadata.validate()?;
    ensure!(
        Fq::from(c.metadata.target_timestamp) == timestamp,
        "compliance timestamp mismatch"
    );
    let core = |tier: &crate::transfer::TransferComplianceCiphertextPublic,
                confirmation|
     -> Result<encryption::Core<Fq>> {
        ensure!(tier.ciphertext.len() == 1, "invalid CORE ciphertext shape");
        Ok(encryption::Core {
            epk: point(&tier.epk),
            c2: tier.c2,
            confirmation,
            ciphertext: tier.ciphertext[0],
        })
    };
    let extended = |tier: &crate::transfer::TransferComplianceCiphertextPublic| -> Result<encryption::Extended<Fq>> {
        let ciphertext: [Fq;3] = tier.ciphertext.as_slice().try_into()?;
        Ok(encryption::Extended { epk: point(&tier.epk), c2: tier.c2, ciphertext })
    };
    Ok(encryption::Published {
        detection: c.detection_ciphertext.as_slice().try_into()?,
        sender_core: core(&c.sender_core, c.sender_core_key_confirmation)?,
        sender_ext: extended(&c.sender_ext)?,
        output_core: core(&c.output_core, c.output_core_key_confirmation)?,
        output_ext: extended(&c.output_ext)?,
        metadata: encryption::Metadata {
            policy: encryption::Policy {
                ring_id: c.metadata.ring_id_hash()?,
                policy_id: c.metadata.policy_id_hash()?,
                resource: c.metadata.resource_hash()?,
                permission: c.metadata.permission_hash()?,
                timestamp,
            },
            audit_epoch: Fq::from(c.metadata.audit_epoch),
            salts: [
                c.metadata.sender_core_salt()?,
                c.metadata.sender_ext_salt()?,
                c.metadata.output_core_salt()?,
                c.metadata.output_ext_salt()?,
            ],
        },
        ownership: c.ownership.each_ref().map(|ct| audit::Ciphertext {
            r: point(&ct.r),
            c: point(&ct.c),
        }),
    })
}

pub(crate) fn transfer_statement(p: &TransferProofPublic) -> Result<transfer::Statement<Fq>> {
    p.validate_shape()?;
    Ok(transfer::Statement {
        rk: point(&encoding::nonidentity(&<[u8; 32]>::from(p.rk))?),
        anchor: p.anchor.into(),
        outputs: p
            .outputs
            .iter()
            .map(|o| transfer::OutputStatement {
                note: o.note_commitment.0,
                recovery: o.recovery_commitment.0,
            })
            .collect::<Vec<_>>()
            .try_into()
            .map_err(|_| anyhow::anyhow!("transfer output shape"))?,
        balance: point(&p.balance_commitment.0),
        routing_tags: p.routing.tags.map(|tag| Fq::from(u64::from(tag.value))),
        routing_parameter: p.routing_parameter_set_id,
        recent_floor: Fq::from(p.recent_position_floor),
        volume: volume(&p.volume_accumulator, p.proof_context.as_field()),
        spends: p
            .inputs
            .iter()
            .map(|i| spend(i.nullifier, i.history_required))
            .collect::<Result<Vec<_>>>()?
            .try_into()
            .map_err(|_| anyhow::anyhow!("transfer input shape"))?,
        asset_anchor: p.asset_anchor.0,
        compliance_anchor: p.compliance_anchor.0,
        audit: audit(&p.compliance, p.target_timestamp)?,
        timestamp: p.target_timestamp,
    })
}
pub(crate) fn reshape_statement(p: &NoteReshapeProofPublic) -> Result<reshape::Statement<Fq>> {
    p.validate_shape()?;
    Ok(reshape::Statement {
        rk: point(&encoding::nonidentity(&<[u8; 32]>::from(p.rk))?),
        anchor: p.anchor.into(),
        outputs: p
            .outputs
            .iter()
            .map(|o| transfer::OutputStatement {
                note: o.note_commitment.0,
                recovery: o.recovery_commitment.0,
            })
            .collect(),
        balance: point(&p.balance_commitment.0),
        asset_anchor: p.asset_anchor.0,
        compliance_anchor: p.compliance_anchor.0,
        routing_tag: Fq::from(u64::from(p.routing_tag.value)),
        routing_parameter: p.routing_parameter_set_id,
        recent_floor: Fq::from(p.recent_position_floor),
        spends: p
            .inputs
            .iter()
            .map(|i| spend(i.nullifier, i.history_required))
            .collect::<Result<_>>()?,
    })
}
pub(crate) fn withdrawal_statement(
    p: &ShieldedWithdrawalProofPublic,
) -> Result<withdrawal::Statement<Fq>> {
    p.validate_shape()?;
    let c = &p.withdrawal_compliance_ciphertext;
    let words = c
        .encrypted_sender_address
        .chunks_exact(32)
        .map(|word| encoding::field(word.try_into().expect("exact chunk")))
        .collect::<Result<Vec<_>>>()?;
    Ok(withdrawal::Statement {
        rk: point(&encoding::nonidentity(&<[u8; 32]>::from(p.rk))?),
        anchor: p.anchor.into(),
        change: transfer::OutputStatement {
            note: p.change_output.note_commitment.0,
            recovery: p.change_output.recovery_commitment.0,
        },
        balance: point(&p.balance_commitment.0),
        recent_floor: Fq::from(p.recent_position_floor),
        spends: p
            .inputs
            .iter()
            .map(|i| spend(i.nullifier, i.history_required))
            .collect::<Result<Vec<_>>>()?
            .try_into()
            .map_err(|_| anyhow::anyhow!("withdrawal input shape"))?,
        asset_anchor: p.asset_anchor.0,
        compliance_anchor: p.compliance_anchor.0,
        timestamp: p.target_timestamp,
        asset: p.outbound_asset_id,
        amount: p.outbound_amount,
        effect_hash: p.withdrawal_effect_hash_limbs,
        routing_tag: Fq::from(u64::from(p.routing_tag.value)),
        routing_parameter: p.routing_parameter_set_id,
        volume: volume(&p.volume_accumulator, Fq::from(1)),
        encryption: withdrawal::Ciphertext {
            epk: point(&c.epk),
            c2: c.c2,
            confirmation: c.key_confirmation,
            address: words
                .try_into()
                .map_err(|_| anyhow::anyhow!("withdrawal ciphertext shape"))?,
        },
    })
}
pub(crate) fn seizure_statement(p: &NoteSeizureProofPublic) -> Result<seizure::Statement<Fq>> {
    let a = &p.authorization;
    Ok(seizure::Statement {
        anchor: p.anchor.into(),
        commitment: a.note_commitment.0,
        nullifier: a.nullifier.0,
        history_required: Fq::from(u64::from(p.history_required)),
        recent_floor: Fq::from(p.recent_position_floor),
        address: address(&a.address),
        asset: a.asset_id.0,
        amount: a.amount.into(),
        recovery: capsule(&p.recovery_capsule),
        seed: p.recovery_seed,
        rnk_commitment: p.rnk_commitment,
        authorization: a.commitment()?,
    })
}

pub fn transfer_statement_fields(public: &TransferProofPublic) -> Result<Vec<Fq>> {
    Ok(transfer_statement(public)?.fields().to_vec())
}
pub fn note_reshape_statement_fields(public: &NoteReshapeProofPublic) -> Result<Vec<Fq>> {
    Ok(reshape_statement(public)?.fields())
}
pub fn shielded_withdrawal_statement_fields(
    public: &ShieldedWithdrawalProofPublic,
) -> Result<Vec<Fq>> {
    Ok(withdrawal_statement(public)?.fields())
}
pub fn note_seizure_statement_fields(public: &NoteSeizureProofPublic) -> Result<Vec<Fq>> {
    Ok(seizure_statement(public)?.fields())
}

fn hash(domain: u8, fields: &[Fq], count: usize) -> Result<Fq> {
    ensure!(
        fields.len() == count,
        "statement expects {count} fields, got {}",
        fields.len()
    );
    Ok(poseidon::hash(domain, fields))
}
pub fn transfer_statement_hash(fields: &[Fq]) -> Result<Fq> {
    hash(
        domains::TRANSFER_STATEMENT,
        fields,
        transfer::STATEMENT_FIELDS,
    )
}
pub fn note_reshape_statement_hash(family: NoteReshapeFamilyId, fields: &[Fq]) -> Result<Fq> {
    let domain = if family == NoteReshapeFamilyId::OneByEight {
        domains::RESHAPE_ONE_TO_EIGHT_STATEMENT
    } else {
        domains::RESHAPE_EIGHT_TO_ONE_STATEMENT
    };
    hash(
        domain,
        fields,
        note_reshape_statement_field_count(family.input_count(), family.output_count()),
    )
}
pub fn shielded_withdrawal_statement_hash(fields: &[Fq]) -> Result<Fq> {
    hash(
        domains::WITHDRAWAL_STATEMENT,
        fields,
        shielded_withdrawal_statement_field_count(2),
    )
}
pub fn note_seizure_statement_hash(fields: &[Fq]) -> Result<Fq> {
    hash(domains::SEIZURE_STATEMENT, fields, 22)
}
pub fn transfer_statement_hash_from_public(p: &TransferProofPublic) -> Result<Fq> {
    transfer_statement_hash(&transfer_statement_fields(p)?)
}
pub fn note_reshape_statement_hash_from_public(p: &NoteReshapeProofPublic) -> Result<Fq> {
    note_reshape_statement_hash(p.family_id, &note_reshape_statement_fields(p)?)
}
pub fn shielded_withdrawal_statement_hash_from_public(
    p: &ShieldedWithdrawalProofPublic,
) -> Result<Fq> {
    shielded_withdrawal_statement_hash(&shielded_withdrawal_statement_fields(p)?)
}
pub fn note_seizure_statement_hash_from_public(p: &NoteSeizureProofPublic) -> Result<Fq> {
    note_seizure_statement_hash(&note_seizure_statement_fields(p)?)
}
