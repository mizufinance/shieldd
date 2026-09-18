//! Demo envelopes delivering accepted transfer openings through Orbis PRE.
use anyhow::{ensure, Context, Result};
use decaf377::{Element, Fr};
use orbis_crypto::{
    r#trait::{EncryptionProof, Secret, ThresholdDealer},
    CiphertextContext, CryptoDeserialize, GroupAffine, PreImpl,
};
use serde::{Deserialize, Serialize};
use shieldd_sdk_compliance::AssetPolicy;
use shieldd_sdk_transaction::{Action, ActionPlan, Transaction, TransactionPlan};
use zeroize::{Zeroize, Zeroizing};

use crate::{
    accepted_audit_ciphertext, decode_audit_ciphertext, AcceptedAuditCiphertext, AcceptedBlock,
    ActionRef, AuditAccess, AuditField, AuditPolicy, AuditSelection, DecodedAuditValue, OutputRef,
    TransferTier,
};

/// Height is deliberately absent: packages are sealed before broadcast.
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct PackageBinding {
    pub chain_id: String,
    pub transaction_id: String,
    pub action: u32,
    pub output: u32,
    pub asset_id: String,
    pub field: AuditField,
    pub tier: TransferTier,
    pub epoch: u64,
    pub policy: AuditPolicy,
    pub delivery: AuditPolicy,
}

/// Public DKG delivery configuration, independent of synthetic registration keys.
#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct OrbisDelivery {
    pub ring_pk: [u8; 32],
    pub policy: AuditPolicy,
}

/// Contains public references and upstream authenticated ciphertext only.
#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
pub struct SealedAuditPackage {
    pub version: u32,
    pub binding: PackageBinding,
    pub context: CiphertextContext,
    pub secret: Secret,
    pub proof: EncryptionProof,
}

#[derive(Serialize, Deserialize)]
#[serde(deny_unknown_fields)]
struct Opening {
    binding: PackageBinding,
    scalar: [u8; 32],
}

impl Drop for Opening {
    fn drop(&mut self) {
        self.scalar.zeroize();
    }
}

fn tier_label(tier: TransferTier) -> &'static str {
    match tier {
        TransferTier::SenderCore => "sender_core",
        TransferTier::SenderExt => "sender_ext",
        TransferTier::OutputCore => "output_core",
        TransferTier::OutputExt => "output_ext",
    }
}

/// Returns three sealed field packages for each regulated ordinary transfer.
pub fn prepare_packages(
    plan: &TransactionPlan,
    tx: &Transaction,
    delivery: &OrbisDelivery,
) -> Result<Vec<SealedAuditPackage>> {
    point(&delivery.ring_pk)?;
    ensure!(
        [
            &delivery.policy.ring_id,
            &delivery.policy.policy_id,
            &delivery.policy.resource,
            &delivery.policy.permission
        ]
        .iter()
        .all(|value| !value.is_empty() && value.len() <= 256),
        "invalid Orbis delivery policy"
    );
    ensure!(
        plan.transaction_parameters.chain_id == tx.transaction_parameters().chain_id,
        "plan chain mismatch"
    );
    ensure!(
        plan.actions.len() == tx.actions().count(),
        "plan action count mismatch"
    );
    let mut packages = Vec::new();
    for (index, (planned, completed)) in plan.actions.iter().zip(tx.actions()).enumerate() {
        let ActionPlan::Transfer(transfer) = planned else {
            continue;
        };
        if !transfer.compliance.witness.asset.is_regulated {
            continue;
        }
        let Action::Transfer(completed) = completed else {
            anyhow::bail!("completed action mismatch")
        };
        let policy = transfer
            .compliance
            .witness
            .policy
            .as_ref()
            .context("missing asset policy")?;
        policy.validate_regulated()?;
        for field in AuditField::ALL {
            let scalar = transfer.audit_opening(&completed.body, field)?;
            let binding = PackageBinding {
                chain_id: plan.transaction_parameters.chain_id.clone(),
                transaction_id: tx.id().to_string(),
                action: u32::try_from(index)?,
                output: 0,
                asset_id: transfer.outputs[0].value.asset_id.to_string(),
                field,
                tier: field.tier(),
                epoch: policy.ring.audit_keys.epoch,
                delivery: delivery.policy.clone(),
                policy: AuditPolicy {
                    ring_id: policy.ring.ring_id.clone(),
                    policy_id: policy.ring.policy_id.clone(),
                    resource: policy.ring.resource.clone(),
                    permission: policy.ring.permission.clone(),
                },
            };
            let context = CiphertextContext {
                ring_pk: delivery.ring_pk.to_vec(),
                policy_id: delivery.policy.policy_id.clone(),
                resource: delivery.policy.resource.clone(),
                permission: delivery.policy.permission.clone(),
                tier: Some(tier_label(binding.tier).into()),
                timestamp: Some(transfer.compliance.timestamp),
                salt: None,
            };
            packages.push(seal(binding, context, scalar)?);
        }
    }
    Ok(packages)
}

fn seal(
    binding: PackageBinding,
    context: CiphertextContext,
    scalar: Fr,
) -> Result<SealedAuditPackage> {
    let recipient = GroupAffine::from_bytes(&context.ring_pk)?;
    let plaintext = Zeroizing::new(serde_json::to_vec(&Opening {
        binding: binding.clone(),
        scalar: scalar.to_bytes(),
    })?);
    let (_, secret, proof) = PreImpl::encrypt_secret(&recipient, &plaintext, None, &context)?;
    Ok(SealedAuditPackage {
        version: 1,
        binding,
        context,
        secret,
        proof,
    })
}

/// Validate public bindings before registering or requesting PRE.
pub fn validate_package(
    package: &SealedAuditPackage,
    chain: &str,
    block: &AcceptedBlock,
) -> Result<AcceptedAuditCiphertext> {
    ensure!(package.version == 1, "unsupported Orbis package version");
    let binding = &package.binding;
    ensure!(
        binding.tier == binding.field.tier(),
        "package field/tier mismatch"
    );
    ensure!(
        package.secret.encrypted_data.len() <= 16 * 1024,
        "Orbis package too large"
    );
    let accepted = accepted_audit_ciphertext(
        AuditSelection {
            version: 3,
            chain_id: binding.chain_id.clone(),
            reference: OutputRef {
                transaction_id: binding.transaction_id.clone(),
                height: block.height,
                action: ActionRef::Body(binding.action),
                output: binding.output,
            },
            access: AuditAccess::General {
                value: binding.field,
            },
            policy: binding.policy.clone(),
        },
        chain,
        block,
    )?;
    ensure!(
        binding.epoch == accepted.identity.epoch,
        "package epoch mismatch"
    );
    let context = &package.context;
    ensure!(
        context.policy_id == binding.delivery.policy_id
            && context.resource == binding.delivery.resource
            && context.permission == binding.delivery.permission
            && context.tier.as_deref() == Some(tier_label(binding.tier))
            && context.timestamp == Some(accepted.metadata.target_timestamp)
            && context.salt.is_none(),
        "package context mismatch"
    );
    point(&context.ring_pk)?;
    PreImpl::verify_encryption(&package.proof, context, &package.secret)?;
    Ok(accepted)
}

/// Policy must come from the chosen node for the package's asset, never the upload.
pub fn decode_package(
    package: &SealedAuditPackage,
    accepted: &AcceptedAuditCiphertext,
    policy: &AssetPolicy,
    reader_key: &orbis_crypto::ScalarField,
    reencrypted_commitment: &[u8],
) -> Result<DecodedAuditValue> {
    policy.validate_regulated()?;
    let binding = &package.binding;
    ensure!(
        binding.chain_id == accepted.selection.chain_id
            && binding.transaction_id == accepted.selection.reference.transaction_id
            && accepted.selection.reference.action == ActionRef::Body(binding.action)
            && binding.output == accepted.selection.reference.output
            && binding.field == accepted.identity.field
            && binding.tier == accepted.selection.access.tier()
            && binding.policy == accepted.selection.policy
            && binding.epoch == accepted.identity.epoch,
        "accepted package binding mismatch"
    );
    ensure!(
        policy.ring.audit_keys.epoch == binding.epoch,
        "registered audit epoch mismatch"
    );
    ensure!(
        policy.ring.ring_id == binding.policy.ring_id
            && policy.ring.policy_id == binding.policy.policy_id
            && policy.ring.resource == binding.policy.resource
            && policy.ring.permission == binding.policy.permission,
        "registered audit policy mismatch"
    );
    PreImpl::verify_encryption(&package.proof, &package.context, &package.secret)?;
    let plaintext = Zeroizing::new(PreImpl::decrypt_secret(
        &GroupAffine::from_bytes(&package.context.ring_pk)?,
        &GroupAffine::from_bytes(reencrypted_commitment)?,
        reader_key,
        &package.secret,
        &package.context,
    )?);
    let opening: Opening =
        serde_json::from_slice(&plaintext).context("invalid sealed audit opening")?;
    ensure!(
        opening.binding == *binding,
        "sealed transaction binding mismatch"
    );
    let scalar = Fr::from_bytes_checked(&opening.scalar)
        .map_err(|_| anyhow::anyhow!("invalid opening scalar"))?;
    ensure!(
        (Element::GENERATOR * scalar).vartime_compress().0 == accepted.epk,
        "opening does not match accepted ephemeral key"
    );
    let keys = &policy.ring.audit_keys;
    let key = match binding.field {
        AuditField::Amount => keys.amount,
        AuditField::Sender => keys.sender,
        AuditField::Receiver => keys.receiver,
    };
    decode_audit_ciphertext(accepted, (key * scalar).vartime_compress().0)
}

fn point(bytes: &[u8]) -> Result<Element> {
    let encoded: [u8; 32] = bytes.try_into().context("invalid point length")?;
    let point = decaf377::Encoding(encoded)
        .vartime_decompress()
        .map_err(|_| anyhow::anyhow!("invalid point"))?;
    ensure!(
        !point.is_identity() && point.vartime_compress().0 == encoded,
        "noncanonical or identity point"
    );
    Ok(point)
}

#[cfg(test)]
mod tests {
    use super::*;
    use decaf377::Fq;
    use orbis_crypto::CryptoSerialize;
    use rand::{rngs::StdRng, SeedableRng};
    use shieldd_sdk_asset::{asset, Value};
    use shieldd_sdk_compliance::{
        test_helpers::make_address, transfer::encrypt_transfer, AuditKeys,
        TransferComplianceMetadata,
    };

    fn fixture(
        field: AuditField,
    ) -> (
        SealedAuditPackage,
        AcceptedAuditCiphertext,
        AssetPolicy,
        orbis_crypto::ScalarField,
        Vec<u8>,
    ) {
        let ring_key = Fr::from(71u64);
        let policy = AssetPolicy::new(
            Element::GENERATOR * Fr::from(99u64),
            1000,
            vec![],
            None,
            "ring".into(),
            Element::GENERATOR * ring_key,
            "policy".into(),
            "read".into(),
            "document".into(),
            AuditKeys::test_keys(),
        );
        let vk = decaf377_rdsa::VerificationKey::from(&decaf377_rdsa::SigningKey::<
            decaf377_rdsa::SpendAuth,
        >::new(rand_core::OsRng));
        let policy = policy
            .with_registration_authority(vk)
            .with_seizure_authority(vk);
        let metadata = TransferComplianceMetadata::from_identifiers(
            "ring",
            "policy",
            "document",
            "read",
            5,
            1,
            Fq::from(1u64),
            Fq::from(2u64),
            Fq::from(3u64),
            Fq::from(4u64),
        );
        let encrypted = encrypt_transfer(
            StdRng::seed_from_u64(7),
            &policy.ring.audit_keys,
            &policy.params.dk_pub,
            &make_address(2),
            &make_address(1),
            Value {
                amount: 42u64.into(),
                asset_id: asset::Id(Fq::from(5u64)),
            },
            false,
            Fq::from(6u64),
            metadata.sender_core_salt().unwrap(),
            metadata.output_core_salt().unwrap(),
        )
        .unwrap();
        let scalar = match field {
            AuditField::Amount => encrypted.output.core.r,
            AuditField::Sender => encrypted.output.ext.r,
            AuditField::Receiver => encrypted.sender.ext.r,
        };
        let binding = PackageBinding {
            chain_id: "chain".into(),
            transaction_id: "11".repeat(32),
            action: 0,
            output: 0,
            asset_id: "fixture-asset".into(),
            field,
            tier: field.tier(),
            epoch: 1,
            delivery: AuditPolicy {
                ring_id: "ring".into(),
                policy_id: "policy".into(),
                resource: "document".into(),
                permission: "read".into(),
            },
            policy: AuditPolicy {
                ring_id: "ring".into(),
                policy_id: "policy".into(),
                resource: "document".into(),
                permission: "read".into(),
            },
        };
        let context = CiphertextContext {
            ring_pk: policy.ring.ring_pk.vartime_compress().0.to_vec(),
            policy_id: "policy".into(),
            resource: "document".into(),
            permission: "read".into(),
            tier: Some(tier_label(field.tier()).into()),
            timestamp: Some(5),
            salt: None,
        };
        let package = seal(binding.clone(), context, scalar).unwrap();
        let selected = field
            .tier()
            .select(&encrypted.ciphertext, &metadata)
            .unwrap();
        let accepted = AcceptedAuditCiphertext {
            selection: AuditSelection {
                version: 3,
                chain_id: "chain".into(),
                reference: OutputRef {
                    transaction_id: binding.transaction_id.clone(),
                    height: 1,
                    action: ActionRef::Body(0),
                    output: 0,
                },
                access: AuditAccess::General { value: field },
                policy: binding.policy.clone(),
            },
            epk: selected.epk.vartime_compress().0,
            wrapping: selected.c2.to_bytes(),
            ciphertext: encrypted.ciphertext.to_bytes(),
            metadata,
            identity: crate::RingAuditKeyRef {
                chain: "chain".into(),
                ring: "ring".into(),
                epoch: 1,
                field,
            },
            ownership_ciphertext: vec![],
            expected_fingerprint: None,
        };
        // A local aggregate response isolates adapter correctness; live CI exercises threshold nodes.
        let reader = orbis_crypto::ScalarField::from(17u64);
        let ring = orbis_crypto::ScalarField::from_bytes(&ring_key.to_bytes()).unwrap();
        let response = (GroupAffine::from_bytes(&package.secret.enc_cmt).unwrap()
            + GroupAffine::GENERATOR * reader)
            * ring;
        (
            package,
            accepted,
            policy,
            reader,
            response.to_bytes().unwrap(),
        )
    }

    #[test]
    fn upstream_and_shieldd_points_and_scalars_are_byte_compatible() {
        for n in [1, 17, 71, 201, u64::MAX] {
            let local = Fr::from(n);
            let upstream = orbis_crypto::ScalarField::from_bytes(&local.to_bytes()).unwrap();
            assert_eq!(upstream.to_bytes(), local.to_bytes());
            assert_eq!(
                (GroupAffine::GENERATOR * upstream).to_bytes().unwrap(),
                (Element::GENERATOR * local).vartime_compress().0
            );
        }
    }

    #[test]
    fn sealed_fields_decode_accepted_payloads_without_serializing_openings() {
        for field in AuditField::ALL {
            let (package, accepted, policy, reader, response) = fixture(field);
            let decoded = decode_package(&package, &accepted, &policy, &reader, &response).unwrap();
            match field {
                AuditField::Amount => assert_eq!(
                    decoded,
                    DecodedAuditValue::Amount {
                        base_units: "42".into()
                    }
                ),
                _ => assert!(matches!(
                    decoded,
                    DecodedAuditValue::AddressComponents { .. }
                )),
            }
            let json = serde_json::to_value(&package).unwrap();
            assert!(json.get("scalar").is_none());
            assert!(json.get("shared_point").is_none());
        }
    }

    #[test]
    fn binding_context_ciphertext_epoch_and_ephemeral_key_tampering_fail() {
        let (package, accepted, policy, reader, response) = fixture(AuditField::Amount);
        for mutate in [
            |p: &mut SealedAuditPackage| p.binding.transaction_id = "22".repeat(32),
            |p: &mut SealedAuditPackage| p.binding.action += 1,
            |p: &mut SealedAuditPackage| p.binding.epoch += 1,
            |p: &mut SealedAuditPackage| p.binding.tier = TransferTier::SenderCore,
            |p: &mut SealedAuditPackage| p.binding.policy.policy_id.push('x'),
            |p: &mut SealedAuditPackage| p.context.resource.push('x'),
            |p: &mut SealedAuditPackage| p.secret.encrypted_data[0] ^= 1,
            |p: &mut SealedAuditPackage| p.binding.asset_id.push('x'),
        ] {
            let mut changed = package.clone();
            mutate(&mut changed);
            assert!(decode_package(&changed, &accepted, &policy, &reader, &response).is_err());
        }
        let mut changed = accepted.clone();
        changed.epk = Element::GENERATOR.vartime_compress().0;
        assert!(decode_package(&package, &changed, &policy, &reader, &response).is_err());
        let mut changed = policy.clone();
        changed.ring.audit_keys.epoch += 1;
        assert!(decode_package(&package, &accepted, &changed, &reader, &response).is_err());
        assert!(decode_package(
            &package,
            &accepted,
            &policy,
            &orbis_crypto::ScalarField::from(19u64),
            &response
        )
        .is_err());
    }
}
