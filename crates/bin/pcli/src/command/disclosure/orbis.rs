use anyhow::{ensure, Context, Result};
use orbis_authn::JwtSigner;
use orbis_common::blockchain::{ChainConfig, TxSigner, VeraClient, TEST_ACCOUNT_HEX_KEY};
use orbis_crypto::ScalarField;
use serde::{Deserialize, Serialize};
use shieldd_orbis_client::{AcpObjectRef, EncryptedDocument, OrbisClient};
use shieldd_sdk_disclosure::{
    self as sdk,
    orbis::{decode_package, validate_package, SealedAuditPackage},
};
use std::collections::{BTreeMap, BTreeSet};

#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Input {
    packages: Vec<AcceptedPackage>,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct AcceptedPackage {
    height: u64,
    package: SealedAuditPackage,
}
#[derive(Serialize)]
pub(super) struct ResultRow {
    reference: sdk::OutputRef,
    field: sdk::AuditField,
    object_id: String,
    #[serde(skip_serializing_if = "Option::is_none")]
    value: Option<sdk::DecodedAuditValue>,
}

pub(super) async fn execute(bytes: &[u8], node: &str, register: bool) -> Result<Vec<ResultRow>> {
    let input: Input = serde_json::from_slice(bytes)?;
    ensure!(
        !input.packages.is_empty() && input.packages.len() <= 96,
        "expected 1 to 96 field packages"
    );
    let references: BTreeSet<_> = input
        .packages
        .iter()
        .map(|p| (p.height, p.package.binding.transaction_id.clone()))
        .collect();
    let (chain, blocks) = super::accepted_blocks(node, references).await?;
    let mut policies = BTreeMap::new();
    let mut prepared = Vec::new();
    for entry in &input.packages {
        let package = &entry.package;
        let block = blocks
            .iter()
            .find(|b| b.height == entry.height)
            .context("accepted block unavailable")?;
        let accepted = validate_package(package, &chain, block)?;
        if !policies.contains_key(&package.binding.asset_id) {
            let asset = package.binding.asset_id.parse()?;
            policies.insert(
                package.binding.asset_id.clone(),
                super::asset_policy(node, asset).await?,
            );
        }
        let policy = &policies[&package.binding.asset_id];
        policy.validate_regulated()?;
        ensure!(
            policy.ring.audit_keys.epoch == package.binding.epoch,
            "registered audit epoch mismatch"
        );
        ensure!(
            policy.ring.ring_id == package.binding.policy.ring_id
                && policy.ring.policy_id == package.binding.policy.policy_id
                && policy.ring.permission == package.binding.policy.permission
                && policy.ring.resource == package.binding.policy.resource,
            "registered audit policy mismatch"
        );
        let document = EncryptedDocument {
            ring_id: package.binding.delivery.ring_id.clone(),
            context: package.context.clone(),
            secret: package.secret.clone(),
            proof: package.proof.clone(),
        };
        let object_id = document.object_id()?;
        prepared.push((accepted, document, object_id));
    }
    let grants: Vec<_> = prepared
        .iter()
        .map(|(_, d, id)| AcpObjectRef {
            policy_id: d.context.policy_id.clone(),
            resource: d.context.resource.clone(),
            object_id: id.clone(),
        })
        .collect();
    let config = ChainConfig::builder()
        .chain_id(Some(env("ORBIS_VERA_CHAIN_ID", "vera-localnet")))
        .rpc_url(Some(env("ORBIS_VERA_RPC", "http://127.0.0.1:26657")))
        .rest_url(Some(env("ORBIS_VERA_REST", "http://127.0.0.1:1317")))
        .grpc_url(Some(env("ORBIS_VERA_GRPC", "http://127.0.0.1:9090")))
        .build();
    let signer = TxSigner::from_hex_key(TEST_ACCOUNT_HEX_KEY, config.clone())?;
    let vera = VeraClient::with_signer(config, signer).await?;
    let mut rings = BTreeMap::new();
    for (_, document, _) in &prepared {
        if !rings.contains_key(&document.ring_id) {
            rings.insert(
                document.ring_id.clone(),
                OrbisClient::get_ring(&vera, &document.ring_id).await?,
            );
        }
        ensure!(
            rings[&document.ring_id]
                .ring_pk
                .vartime_compress()
                .0
                .as_slice()
                == document.context.ring_pk,
            "delivery DKG key mismatch"
        );
    }
    let signer = JwtSigner::new();
    let reader_key = ScalarField::rand(&mut rand_core::OsRng);
    let orbis = OrbisClient::new(env("ORBIS_NODE1_ENDPOINT", "http://127.0.0.1:50051"))?;
    if register {
        OrbisClient::register_objects(&vera, &grants).await?;
    } else {
        OrbisClient::authorize_reader(&vera, &grants, &signer.did_uri).await?;
    }
    let mut rows = Vec::new();
    for ((accepted, document, object_id), entry) in prepared.into_iter().zip(input.packages) {
        let value = if register {
            None
        } else {
            let commitment = orbis.start_pre(&document, &reader_key, &signer).await?;
            Some(decode_package(
                &entry.package,
                &accepted,
                &policies[&entry.package.binding.asset_id],
                &reader_key,
                &commitment,
            )?)
        };
        rows.push(ResultRow {
            reference: accepted.selection.reference,
            field: entry.package.binding.field,
            object_id,
            value,
        });
    }
    Ok(rows)
}

fn env(name: &str, default: &str) -> String {
    std::env::var(name).unwrap_or_else(|_| default.to_owned())
}
