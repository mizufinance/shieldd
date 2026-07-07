use std::{collections::HashSet, future::Future, time::Duration};

use anyhow::{anyhow, bail, Context, Result};
use decaf377::Encoding;
use orbis_authn::{create_authenticated_request, JwtSigner};
use orbis_common::blockchain::{
    acp::{Actor, Object, Relationship, Subject, SubjectKind},
    BroadcastResult, SourceHubClient,
};
use orbis_proto::{
    info_service::{info_service_client::InfoServiceClient, GetNodeInfoRequest},
    v0::{
        dkg::{dkg_service_client::DkgServiceClient, StartDkgRequest},
        pre::{pre_service_client::PreServiceClient, StartPreRequest, TimestampRange},
        store_secret::{store_secret_service_client::StoreSecretServiceClient, StoreSecretRequest},
    },
};
use orbis_tonic::transport::Endpoint;
use serde::Deserialize;

use crate::types::{DkgResult, NodeInfo, PreResult, RingInfo, StoreSecretResult};
use shieldd_sdk_compliance::{OrbisEncryptedSeedUploadPackage, OrbisSecretEnvelope};

const SOURCEHUB_TX_MAX_RETRIES: u32 = 30;

#[derive(Debug, Deserialize)]
struct PreResponse {
    xnc_cmt: String,
    secret: OrbisSecretEnvelope,
}

pub struct OrbisClient {
    endpoint: Endpoint,
}

async fn run_sourcehub_tx<F, Fut, E, AcceptsLog>(
    client: &SourceHubClient,
    action: &str,
    accepts_log: AcceptsLog,
    mut tx: F,
) -> Result<()>
where
    F: FnMut() -> Fut,
    Fut: Future<Output = std::result::Result<BroadcastResult, E>>,
    E: std::fmt::Display,
    AcceptsLog: Fn(&str) -> bool,
{
    let mut attempt = 0u32;
    loop {
        match tx().await {
            Ok(result) if result.code == 0 || accepts_log(&result.log) => return Ok(()),
            Ok(result) => {
                if attempt < SOURCEHUB_TX_MAX_RETRIES
                    && is_transient_sourcehub_tx_error(&result.log)
                {
                    retry_sourcehub_tx_after_nonce_resync(client, &mut attempt).await;
                    continue;
                }
                bail!(
                    "{action} tx failed: code={} log={}",
                    result.code,
                    result.log
                );
            }
            Err(error) => {
                let msg = error.to_string();
                if accepts_log(&msg) {
                    return Ok(());
                }
                if attempt < SOURCEHUB_TX_MAX_RETRIES && is_transient_sourcehub_tx_error(&msg) {
                    retry_sourcehub_tx_after_nonce_resync(client, &mut attempt).await;
                    continue;
                }
                return Err(anyhow!("failed to {action}: {error}"));
            }
        }
    }
}

async fn retry_sourcehub_tx_after_nonce_resync(client: &SourceHubClient, attempt: &mut u32) {
    *attempt += 1;
    let _ = client.resync_nonce().await;
    tokio::time::sleep(Duration::from_secs(1)).await;
}

async fn create_orbis_ring_with_retry(
    client: &SourceHubClient,
    peer_node_keys: &[String],
    threshold: u32,
    policy_id: &str,
) -> Result<String> {
    let mut attempt = 0u32;
    loop {
        match client
            // pss_interval: 0 (proto3 default) preserves the previous `None` wire
            // encoding after orbis-rs made this field a plain u64.
            .orbis_create_ring_get_id(peer_node_keys.to_vec(), threshold, 0, policy_id, None, 0)
            .await
        {
            Ok((result, ring_id)) if result.code == 0 => return Ok(ring_id),
            Ok((result, _)) => {
                if attempt < SOURCEHUB_TX_MAX_RETRIES
                    && is_transient_sourcehub_tx_error(&result.log)
                {
                    retry_sourcehub_tx_after_nonce_resync(client, &mut attempt).await;
                    continue;
                }
                bail!(
                    "create SourceHub Orbis ring tx failed: code={} log={}",
                    result.code,
                    result.log
                );
            }
            Err(error) => {
                let msg = error.to_string();
                if attempt < SOURCEHUB_TX_MAX_RETRIES && is_transient_sourcehub_tx_error(&msg) {
                    retry_sourcehub_tx_after_nonce_resync(client, &mut attempt).await;
                    continue;
                }
                return Err(anyhow!("failed to create SourceHub Orbis ring: {error}"));
            }
        }
    }
}

fn is_transient_sourcehub_tx_error(message: &str) -> bool {
    let lower = message.to_ascii_lowercase();
    lower.contains("sequence mismatch")
        || lower.contains("account not found")
        || lower.contains("issuedidfromaccountaddr")
}

fn is_already_exists_sourcehub_error(message: &str) -> bool {
    let lower = message.to_ascii_lowercase();
    lower.contains("already registered") || lower.contains("already exists")
}

impl OrbisClient {
    pub fn new(endpoint: impl Into<String>) -> Result<Self> {
        let endpoint = endpoint.into();
        let endpoint = Endpoint::from_shared(endpoint.clone())
            .with_context(|| format!("invalid Orbis endpoint {endpoint:?}"))?;
        Ok(Self { endpoint })
    }

    pub async fn query_node_info(&self) -> Result<NodeInfo> {
        let channel = self
            .endpoint
            .clone()
            .connect()
            .await
            .map_err(|e| anyhow!("failed to connect to Orbis info endpoint: {}", e))?;
        let mut client = InfoServiceClient::new(channel);

        let response = client
            .get_node_info(GetNodeInfoRequest {})
            .await
            .map_err(|e| anyhow!("failed to query node info: {}", e))?;

        let node_info = response.into_inner();
        Ok(NodeInfo {
            public_address: node_info.public_address,
            node_key: node_info.node_key,
            peer_id: node_info.peer_id,
            p2p_address: node_info.p2p_address,
        })
    }

    pub async fn start_dkg(
        &self,
        threshold: u32,
        peer_node_keys: &[String],
        sourcehub: &SourceHubClient,
        policy_id: &str,
        jwt_signer: &JwtSigner,
    ) -> Result<DkgResult> {
        let total_nodes = peer_node_keys.len() as u32;
        if threshold > total_nodes {
            bail!("threshold ({threshold}) cannot be greater than total nodes ({total_nodes})");
        }

        let channel = self
            .endpoint
            .clone()
            .connect()
            .await
            .map_err(|e| anyhow!("failed to connect to Orbis DKG endpoint: {}", e))?;
        let mut client = DkgServiceClient::new(channel);

        let ring_id =
            create_orbis_ring_with_retry(sourcehub, peer_node_keys, threshold, policy_id).await?;
        let request = StartDkgRequest {
            ring_id: ring_id.clone(),
        };
        let token = jwt_signer
            .create_dkg_jwt(&ring_id)
            .map_err(|e| anyhow!("failed to create DKG JWT: {}", e))?;
        let request = create_authenticated_request(request, &token)
            .map_err(|e| anyhow!("failed to create authenticated DKG request: {}", e))?;

        let response = client
            .start_dkg(request)
            .await
            .map_err(|e| anyhow!("DKG request failed: {}", e))?
            .into_inner();

        Ok(DkgResult {
            ring_id,
            session_id: response.session_id,
            status: response.status,
            message: response.message,
        })
    }

    pub async fn get_ring(client: &SourceHubClient, ring_id: &str) -> Result<RingInfo> {
        let ring = client
            .orbis_read_ring(ring_id)
            .await
            .map_err(|e| anyhow!("failed to read Orbis ring {ring_id}: {}", e))?
            .ok_or_else(|| anyhow!("Orbis ring {ring_id} not found"))?;

        if ring.ring_pk.is_empty() {
            bail!("Orbis ring {ring_id} is not finalized yet");
        }

        let ring_pk_hex = ring.ring_pk;
        let bytes = hex::decode(&ring_pk_hex).context("invalid Orbis ring_pk hex")?;
        let bytes_arr: [u8; 32] = bytes
            .try_into()
            .map_err(|_| anyhow!("ring_pk should be 32 bytes"))?;
        let ring_pk = Encoding(bytes_arr)
            .vartime_decompress()
            .map_err(|_| anyhow!("invalid ring_pk encoding"))?;

        Ok(RingInfo {
            ring_id: ring.id,
            ring_pk,
            ring_pk_hex,
        })
    }

    pub async fn add_policy(
        client: &SourceHubClient,
        policy_yaml: &str,
        marshal_type: i32,
        resource: &str,
        permission: &str,
    ) -> Result<String> {
        let existing_ids = client
            .acp_list_policy_ids()
            .await
            .map(|ids| ids.ids.into_iter().collect::<HashSet<_>>())
            .unwrap_or_default();

        run_sourcehub_tx(
            client,
            "create policy",
            |_| false,
            || client.acp_create_policy(policy_yaml, marshal_type),
        )
        .await?;

        let policy_ids = client
            .acp_list_policy_ids()
            .await
            .map_err(|e| anyhow!("failed to list policy IDs: {}", e))?;
        let mut candidate_ids = policy_ids
            .ids
            .iter()
            .filter(|id| !existing_ids.contains(*id))
            .cloned()
            .collect::<Vec<_>>();
        if candidate_ids.is_empty() {
            candidate_ids = policy_ids.ids.clone();
        }

        for policy_id in candidate_ids {
            if Self::policy_defines_resource(client, &policy_id, resource, permission).await? {
                return Ok(policy_id);
            }
        }

        bail!("created ACP policy, but could not find a policy defining {resource}/{permission}")
    }

    pub async fn store_encrypted_seed_package(
        &self,
        ring_id: &str,
        package: &OrbisEncryptedSeedUploadPackage,
        jwt_signer: &JwtSigner,
    ) -> Result<StoreSecretResult> {
        let channel = self
            .endpoint
            .clone()
            .connect()
            .await
            .map_err(|e| anyhow!("failed to connect to Orbis store-secret endpoint: {}", e))?;
        let mut client = StoreSecretServiceClient::new(channel);

        let request = StoreSecretRequest {
            encrypted_document: package.encrypted_document.clone(),
            enc_cmt: package.enc_cmt.clone(),
            ring_id: ring_id.to_string(),
            policy_id: package.policy_id.clone(),
            resource: package.resource.clone(),
            permission: package.permission.clone(),
            shared_point: package.shared_point.clone(),
            challenge: package.orbis_challenge.clone(),
            response: package.orbis_response.clone(),
            with_proof: false,
            tier: Some(package.tier_label.clone()),
            timestamp: Some(package.timestamp),
        };

        let token = jwt_signer
            .create_store_secret_jwt(
                &package.encrypted_document,
                package.enc_cmt.clone(),
                ring_id,
                &package.policy_id,
                &package.resource,
                &package.permission,
                package.shared_point.clone(),
                package.orbis_challenge.clone(),
                package.orbis_response.clone(),
                false,
                Some(package.tier_label.clone()),
                Some(package.timestamp),
            )
            .map_err(|e| anyhow!("failed to create Orbis store-secret JWT: {}", e))?;

        let response = client
            .store_secret(create_authenticated_request(request, &token)?)
            .await
            .map_err(|e| anyhow!("Orbis store-secret request failed: {}", e))?
            .into_inner();

        Ok(StoreSecretResult {
            status: response.status,
            message: response.message,
            created_at: response.created_at,
            object_id: response.object_id,
            ring_id: response.ring_id,
            signature: response.signature,
        })
    }

    pub async fn register_object(
        client: &SourceHubClient,
        policy_id: &str,
        resource: &str,
        object_id: &str,
    ) -> Result<()> {
        let document = Object {
            resource: resource.to_string(),
            id: object_id.to_string(),
        };

        run_sourcehub_tx(
            client,
            "register object in ACP",
            is_already_exists_sourcehub_error,
            || client.acp_register_object(policy_id, document.clone()),
        )
        .await
    }

    pub async fn set_relationship(
        client: &SourceHubClient,
        policy_id: &str,
        resource: &str,
        object_id: &str,
        relation: &str,
        reader_did_uri: &str,
    ) -> Result<()> {
        let relationship = Relationship {
            object: Some(Object {
                resource: resource.to_string(),
                id: object_id.to_string(),
            }),
            relation: relation.to_string(),
            subject: Some(Subject {
                kind: Some(SubjectKind::Actor(Actor {
                    id: reader_did_uri.to_string(),
                })),
            }),
        };

        run_sourcehub_tx(
            client,
            "set ACP relationship",
            is_already_exists_sourcehub_error,
            || client.acp_set_relationship(policy_id, relationship.clone()),
        )
        .await
    }

    pub async fn start_pre(
        &self,
        reader_pk_hex: &str,
        object_id: &str,
        derivation_hex: &str,
        salt: Option<&str>,
        timestamp: Option<u64>,
        jwt_signer: &JwtSigner,
    ) -> Result<PreResult> {
        let channel = self
            .endpoint
            .clone()
            .connect()
            .await
            .map_err(|e| anyhow!("failed to connect to Orbis PRE endpoint: {}", e))?;
        let mut client = PreServiceClient::new(channel);

        let reader_pk_bytes =
            hex::decode(reader_pk_hex).context("failed to decode reader key hex")?;
        let derivation_bytes =
            hex::decode(derivation_hex).context("failed to decode derivation hex")?;

        let request = StartPreRequest {
            rdr_pk: reader_pk_bytes.clone(),
            object_id: object_id.to_string(),
            derivation: Some(derivation_bytes.clone()),
            salt: salt.map(str::to_owned),
            valid_window: timestamp.map(|ts| TimestampRange { start: ts, end: ts }),
        };

        let token = jwt_signer
            .create_pre_jwt(
                reader_pk_bytes,
                object_id,
                Some(derivation_bytes),
                salt.map(str::to_owned),
            )
            .map_err(|e| anyhow!("failed to create Orbis PRE JWT: {}", e))?;

        let response = client
            .start_pre(create_authenticated_request(request, &token)?)
            .await
            .map_err(|e| anyhow!("Orbis PRE request failed: {}", e))?
            .into_inner();

        if response.encrypted_secret.is_empty() {
            bail!("Orbis PRE response did not include encrypted_secret");
        }

        let pre_response: PreResponse = serde_json::from_slice(&response.encrypted_secret)
            .map_err(|e| anyhow!("failed to parse PRE response JSON: {}", e))?;

        Ok(PreResult {
            xnc_cmt_hex: pre_response.xnc_cmt,
            secret: pre_response.secret,
        })
    }

    async fn policy_defines_resource(
        client: &SourceHubClient,
        policy_id: &str,
        resource_name: &str,
        permission_name: &str,
    ) -> Result<bool> {
        let policy = client
            .acp_query_policy(policy_id)
            .await
            .map_err(|e| anyhow!("failed to query created policy {policy_id}: {}", e))?;
        Ok(policy
            .record
            .and_then(|record| record.policy)
            .map(|policy| {
                policy.resources.iter().any(|resource| {
                    resource.name == resource_name
                        && resource
                            .permissions
                            .iter()
                            .any(|permission| permission.name == permission_name)
                })
            })
            .unwrap_or(false))
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn containerized_p2p_address_can_be_derived_without_cli_parsing() {
        let info = NodeInfo {
            public_address: "sourcehub1deadbeef".to_string(),
            node_key: "node-key".to_string(),
            peer_id: "12D3KooWExample".to_string(),
            p2p_address: "/ip4/127.0.0.1/tcp/4001".to_string(),
        };
        assert_eq!(info.peer_id, "12D3KooWExample");
        assert!(info.p2p_address.contains("4001"));
    }

    #[test]
    fn invalid_endpoint_is_rejected() {
        assert!(OrbisClient::new("not a valid endpoint").is_err());
    }

    #[test]
    fn sourcehub_sequence_errors_are_transient() {
        assert!(is_transient_sourcehub_tx_error(
            "account sequence mismatch, expected 1, got 0"
        ));
        assert!(is_transient_sourcehub_tx_error(
            "account not found for address"
        ));
        assert!(is_transient_sourcehub_tx_error(
            "issuedIDFromAccountAddr failed"
        ));
        assert!(!is_transient_sourcehub_tx_error("invalid policy yaml"));
    }

    #[test]
    fn sourcehub_already_exists_errors_are_idempotent_successes() {
        assert!(is_already_exists_sourcehub_error(
            "object already registered"
        ));
        assert!(is_already_exists_sourcehub_error(
            "relationship already exists"
        ));
        assert!(!is_already_exists_sourcehub_error("sequence mismatch"));
    }
}
