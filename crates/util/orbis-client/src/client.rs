use std::{collections::HashSet, future::Future, time::Duration};

use anyhow::{anyhow, bail, Context, Result};
use cosmrs::Any;
use decaf377::Encoding;
use orbis_authn::{create_authenticated_request, JwtSigner};
use orbis_common::blockchain::{
    acp::{
        Actor, MsgDirectPolicyCmd, Object, PolicyCmd, PolicyCmdKind, RegisterObjectCmd,
        Relationship, SetRelationshipCmd, Subject, SubjectKind,
    },
    orbis::generate_document_id,
    BroadcastResult, VeraClient,
};
use orbis_prost::Message;
use orbis_proto::{
    info_service::{info_service_client::InfoServiceClient, GetNodeInfoRequest},
    v0::{
        dkg::{dkg_service_client::DkgServiceClient, StartDkgRequest},
        pre::{
            pre_service_client::PreServiceClient, InlineDocument, StartPreRequest, TimestampRange,
        },
    },
};
use orbis_tonic::transport::Endpoint;
use serde::Deserialize;

use crate::types::{
    AcpObjectRef, DkgResult, InlineDocumentInput, NodeInfo, OrbisSecretEnvelope, PreResult,
    RingInfo,
};

const VERA_TX_MAX_RETRIES: u32 = 30;
const ORBIS_CONNECT_TIMEOUT: Duration = Duration::from_secs(10);
const ORBIS_REQUEST_TIMEOUT: Duration = Duration::from_secs(60);

/// Minimum `pss_interval` (seconds) the orbis x/pss module accepts for a ring.
/// Values below this are rejected as `invalid ring`.
const PSS_INTERVAL_MIN_SECS: u64 = 86_400;

pub struct OrbisClient {
    endpoint: Endpoint,
}

async fn run_vera_tx<F, Fut, E, AcceptsLog>(
    client: &VeraClient,
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
                if attempt < VERA_TX_MAX_RETRIES && is_transient_vera_tx_error(&result.log) {
                    retry_vera_tx_after_nonce_resync(client, &mut attempt).await;
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
                if attempt < VERA_TX_MAX_RETRIES && is_transient_vera_tx_error(&msg) {
                    retry_vera_tx_after_nonce_resync(client, &mut attempt).await;
                    continue;
                }
                return Err(anyhow!("failed to {action}: {error}"));
            }
        }
    }
}

async fn run_vera_batch_tx(
    client: &VeraClient,
    action: &str,
    messages: Vec<Any>,
    accepts_log: impl Fn(&str) -> bool,
) -> Result<()> {
    if messages.is_empty() {
        return Ok(());
    }

    // Vera transactions are atomic. A duplicate in a mixed batch rolls back
    // every new message in that transaction, so accepting the batch-level
    // "already exists" error would silently drop the new writes. Isolate a
    // duplicate-bearing batch until an idempotent error applies to one message
    // only; duplicate-free subsets still retain the batching fast path.
    let mut pending = vec![messages];
    while let Some(mut batch) = pending.pop() {
        match broadcast_vera_batch(client, action, &batch).await {
            Ok(()) => {}
            Err(error) if accepts_log(&error.to_string()) => {
                let _ = client.resync_nonce().await;
                if batch.len() == 1 {
                    continue;
                }
                let right = batch.split_off(batch.len() / 2);
                pending.push(right);
                pending.push(batch);
            }
            Err(error) => return Err(error),
        }
    }
    Ok(())
}

async fn broadcast_vera_batch(client: &VeraClient, action: &str, messages: &[Any]) -> Result<()> {
    let mut attempt = 0u32;
    loop {
        match client
            .broadcast_proto_msgs_with_gas(messages.to_vec(), client.config().gas_multiplier)
            .await
        {
            Ok(result) if result.code == 0 => return Ok(()),
            Ok(result) => {
                if attempt < VERA_TX_MAX_RETRIES && is_transient_vera_tx_error(&result.log) {
                    retry_vera_tx_after_nonce_resync(client, &mut attempt).await;
                    continue;
                }
                bail!(
                    "{action} tx failed: code={} log={}",
                    result.code,
                    result.log
                );
            }
            Err(error) => {
                let message = error.to_string();
                if attempt < VERA_TX_MAX_RETRIES && is_transient_vera_tx_error(&message) {
                    retry_vera_tx_after_nonce_resync(client, &mut attempt).await;
                    continue;
                }
                return Err(anyhow!("failed to {action}: {error}"));
            }
        }
    }
}

async fn retry_vera_tx_after_nonce_resync(client: &VeraClient, attempt: &mut u32) {
    *attempt += 1;
    let _ = client.resync_nonce().await;
    tokio::time::sleep(Duration::from_secs(1)).await;
}

async fn create_orbis_ring_with_retry(
    client: &VeraClient,
    peer_node_keys: &[String],
    threshold: u32,
    policy_id: &str,
) -> Result<String> {
    let mut attempt = 0u32;
    loop {
        match client
            // pss_interval must be at least 86400s (1 day): the orbis x/pss
            // module rejects a smaller ring interval as invalid. We do not run
            // proactive secret sharing in the integration flow, so pin the
            // minimum accepted value.
            .orbis_create_ring_get_id(
                peer_node_keys.to_vec(),
                threshold,
                PSS_INTERVAL_MIN_SECS,
                policy_id,
                None,
                0,
                None,
                None,
            )
            .await
        {
            Ok((result, ring_id)) if result.code == 0 => return Ok(ring_id),
            Ok((result, _)) => {
                if attempt < VERA_TX_MAX_RETRIES && is_transient_vera_tx_error(&result.log) {
                    retry_vera_tx_after_nonce_resync(client, &mut attempt).await;
                    continue;
                }
                bail!(
                    "create Vera Orbis ring tx failed: code={} log={}",
                    result.code,
                    result.log
                );
            }
            Err(error) => {
                let msg = error.to_string();
                if attempt < VERA_TX_MAX_RETRIES && is_transient_vera_tx_error(&msg) {
                    retry_vera_tx_after_nonce_resync(client, &mut attempt).await;
                    continue;
                }
                return Err(anyhow!("failed to create Vera Orbis ring: {error}"));
            }
        }
    }
}

fn is_transient_vera_tx_error(message: &str) -> bool {
    let lower = message.to_ascii_lowercase();
    lower.contains("sequence mismatch")
        || lower.contains("account not found")
        || lower.contains("issuedidfromaccountaddr")
}

fn is_already_exists_vera_error(message: &str) -> bool {
    let lower = message.to_ascii_lowercase();
    lower.contains("already registered") || lower.contains("already exists")
}

impl OrbisClient {
    pub fn new(endpoint: impl Into<String>) -> Result<Self> {
        let endpoint = endpoint.into();
        let endpoint = Endpoint::from_shared(endpoint.clone())
            .with_context(|| format!("invalid Orbis endpoint {endpoint:?}"))?
            .connect_timeout(ORBIS_CONNECT_TIMEOUT);
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
        vera: &VeraClient,
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
            create_orbis_ring_with_retry(vera, peer_node_keys, threshold, policy_id).await?;
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

    pub async fn get_ring(client: &VeraClient, ring_id: &str) -> Result<RingInfo> {
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
        client: &VeraClient,
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

        run_vera_tx(
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

    pub async fn register_object(
        client: &VeraClient,
        policy_id: &str,
        resource: &str,
        object_id: &str,
    ) -> Result<()> {
        let document = Object {
            resource: resource.to_string(),
            id: object_id.to_string(),
        };

        run_vera_tx(
            client,
            "register object in ACP",
            is_already_exists_vera_error,
            || client.acp_register_object(policy_id, document.clone()),
        )
        .await
    }

    pub async fn register_objects(client: &VeraClient, objects: &[AcpObjectRef]) -> Result<()> {
        let creator = client
            .signer()
            .ok_or_else(|| anyhow!("Vera client has no signer"))?
            .address();
        let mut seen = HashSet::new();
        let messages = objects
            .iter()
            .filter(|object| seen.insert((*object).clone()))
            .map(|object| {
                let message = MsgDirectPolicyCmd {
                    creator: creator.clone(),
                    policy_id: object.policy_id.clone(),
                    cmd: Some(PolicyCmd {
                        kind: Some(PolicyCmdKind::RegisterObjectCmd(RegisterObjectCmd {
                            object: Some(Object {
                                resource: object.resource.clone(),
                                id: object.object_id.clone(),
                            }),
                        })),
                    }),
                };
                Any {
                    type_url: MsgDirectPolicyCmd::TYPE_URL.to_owned(),
                    value: message.encode_to_vec(),
                }
            })
            .collect();
        run_vera_batch_tx(
            client,
            "register ACP objects",
            messages,
            is_already_exists_vera_error,
        )
        .await
    }

    pub async fn set_relationship(
        client: &VeraClient,
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

        run_vera_tx(
            client,
            "set ACP relationship",
            is_already_exists_vera_error,
            || client.acp_set_relationship(policy_id, relationship.clone()),
        )
        .await
    }

    pub async fn authorize_reader(
        client: &VeraClient,
        objects: &[AcpObjectRef],
        reader_did_uri: &str,
    ) -> Result<()> {
        let creator = client
            .signer()
            .ok_or_else(|| anyhow!("Vera client has no signer"))?
            .address();
        let mut seen = HashSet::new();
        let messages = objects
            .iter()
            .filter(|object| seen.insert((*object).clone()))
            .map(|object| {
                let relationship = Relationship {
                    object: Some(Object {
                        resource: object.resource.clone(),
                        id: object.object_id.clone(),
                    }),
                    relation: "reader".to_owned(),
                    subject: Some(Subject {
                        kind: Some(SubjectKind::Actor(Actor {
                            id: reader_did_uri.to_owned(),
                        })),
                    }),
                };
                let message = MsgDirectPolicyCmd {
                    creator: creator.clone(),
                    policy_id: object.policy_id.clone(),
                    cmd: Some(PolicyCmd {
                        kind: Some(PolicyCmdKind::SetRelationshipCmd(SetRelationshipCmd {
                            relationship: Some(relationship),
                        })),
                    }),
                };
                Any {
                    type_url: MsgDirectPolicyCmd::TYPE_URL.to_owned(),
                    value: message.encode_to_vec(),
                }
            })
            .collect();
        run_vera_batch_tx(
            client,
            "authorize ACP reader",
            messages,
            is_already_exists_vera_error,
        )
        .await
    }

    pub fn inline_document_object_id(input: &InlineDocumentInput) -> Result<String> {
        #[derive(serde::Serialize)]
        struct EncryptionProof<'a> {
            shared_point: &'a [u8],
            challenge: &'a [u8],
            response: &'a [u8],
        }

        let document = String::from_utf8(input.encrypted_document.clone())
            .context("Orbis encrypted document must be UTF-8 JSON")?;
        let proof = serde_json::to_string(&EncryptionProof {
            shared_point: &input.shared_point,
            challenge: &input.challenge,
            response: &input.response,
        })?;
        Ok(generate_document_id(
            &input.ring_id,
            &document,
            &proof,
            &input.policy_id,
            &input.resource,
            &input.permission,
            input.tier.as_deref(),
            input.timestamp,
        ))
    }

    pub async fn start_pre(
        &self,
        reader_pk_hex: &str,
        object_id: &str,
        derivation: Option<Vec<u8>>,
        salt: Option<&str>,
        valid_window: Option<(u64, u64)>,
        document: InlineDocumentInput,
        jwt_signer: &JwtSigner,
    ) -> Result<PreResult> {
        let channel = self
            .endpoint
            .clone()
            .connect()
            .await
            .map_err(|error| anyhow!("failed to connect to Orbis PRE endpoint: {error}"))?;
        let mut client = PreServiceClient::new(channel);
        let reader_pk = hex::decode(reader_pk_hex).context("failed to decode reader key hex")?;
        anyhow::ensure!(
            Self::inline_document_object_id(&document)? == object_id,
            "inline Orbis document does not match object_id"
        );
        let request = StartPreRequest {
            rdr_pk: reader_pk.clone(),
            object_id: object_id.to_owned(),
            derivation: derivation.clone(),
            salt: salt.map(str::to_owned),
            valid_window: valid_window.map(|(start, end)| TimestampRange { start, end }),
            document: Some(InlineDocument {
                ring_id: document.ring_id,
                encrypted_document: document.encrypted_document,
                enc_cmt: document.enc_cmt,
                policy_id: document.policy_id,
                resource: document.resource,
                permission: document.permission,
                shared_point: document.shared_point,
                challenge: document.challenge,
                response: document.response,
                tier: document.tier,
                timestamp: document.timestamp,
            }),
        };
        let token = jwt_signer
            .create_pre_jwt(reader_pk, object_id, derivation, salt.map(str::to_owned))
            .map_err(|error| anyhow!("failed to create Orbis PRE JWT: {error}"))?;
        let mut request = create_authenticated_request(request, &token)?;
        request.set_timeout(ORBIS_REQUEST_TIMEOUT);
        let response = client
            .start_pre(request)
            .await
            .map_err(|error| anyhow!("Orbis PRE request failed: {error}"))?
            .into_inner();
        anyhow::ensure!(
            !response.encrypted_secret.is_empty(),
            "Orbis PRE response did not include encrypted_secret"
        );

        #[derive(Deserialize)]
        struct WirePreResponse {
            xnc_cmt: String,
            secret: OrbisSecretEnvelope,
        }
        let response: WirePreResponse = serde_json::from_slice(&response.encrypted_secret)
            .context("failed to parse Orbis PRE response JSON")?;
        Ok(PreResult {
            xnc_cmt_hex: response.xnc_cmt,
            secret: response.secret,
        })
    }

    async fn policy_defines_resource(
        client: &VeraClient,
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
            public_address: "vera1deadbeef".to_string(),
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
    fn vera_sequence_errors_are_transient() {
        assert!(is_transient_vera_tx_error(
            "account sequence mismatch, expected 1, got 0"
        ));
        assert!(is_transient_vera_tx_error("account not found for address"));
        assert!(is_transient_vera_tx_error("issuedIDFromAccountAddr failed"));
        assert!(!is_transient_vera_tx_error("invalid policy yaml"));
    }

    #[test]
    fn vera_already_exists_errors_are_idempotent_successes() {
        assert!(is_already_exists_vera_error("object already registered"));
        assert!(is_already_exists_vera_error("relationship already exists"));
        assert!(!is_already_exists_vera_error("sequence mismatch"));
    }

    #[test]
    fn inline_document_id_matches_vera_vector() {
        let input = InlineDocumentInput {
            encrypted_document: br#"{"ciphertext":"AQID","nonce":"BAUG"}"#.to_vec(),
            enc_cmt: vec![],
            ring_id: "ring-1".to_owned(),
            policy_id: "policy-1".to_owned(),
            resource: "asset:ubrl".to_owned(),
            permission: "read".to_owned(),
            shared_point: vec![1, 2, 3],
            challenge: vec![4, 5],
            response: vec![6, 7, 8],
            tier: Some("sender_core".to_owned()),
            timestamp: Some(1_720_000_000),
        };

        assert_eq!(
            OrbisClient::inline_document_object_id(&input).unwrap(),
            "45c7c4a5d0fba4c95efcef127ee1314d13027da7624797e0d46ca81db2283c23"
        );
    }
}
