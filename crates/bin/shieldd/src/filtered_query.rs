use crate::{service::ServiceError, QueryService};
use anyhow::Context;
use cnidarium::StateRead;
use futures::StreamExt;
use prost::Message;
use sha2::{Digest, Sha256};
use shieldd_sdk_proto::core::component::compact_block::v1::{self as pb, CompactRecordFragment};
use shieldd_sdk_shielded_pool::discovery::RoutingSelector;
use std::ops::Bound;

#[derive(serde::Serialize, serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct Cursor {
    chain: String,
    height: u64,
    identity: [u8; 32],
    parameters: [u8; 32],
    phase: u8,
    index: u32,
    offset: u32,
    selector: usize,
    key: Vec<u8>,
    slot: usize,
}

pub async fn page(
    service: &QueryService,
    request: pb::FilteredBlockPageRequest,
) -> Result<pb::CompactBlockPageResponse, ServiceError> {
    if request.selectors.len() > service.limits.items_per_request || request.cursor.len() > 1024 {
        return Err(ServiceError::invalid_argument(anyhow::anyhow!(
            "filtered request exceeds local budget"
        )));
    }
    let selectors = request
        .selectors
        .iter()
        .cloned()
        .map(RoutingSelector::try_from)
        .collect::<anyhow::Result<Vec<_>>>()
        .map_err(ServiceError::invalid_argument)?;
    let mut digest = Sha256::new();
    for selector in &request.selectors {
        digest.update(selector.encode_length_delimited_to_vec());
    }
    let parameters = digest.finalize().into();
    let state = service.snapshot()?;
    use shieldd_sdk_app::app::StateReadExt as _;
    use shieldd_sdk_sct::component::clock::EpochRead as _;
    if request.height
        > state
            .get_block_height()
            .await
            .map_err(ServiceError::internal)?
    {
        return Err(ServiceError::failed_precondition(anyhow::anyhow!(
            "block is not jointly committed"
        )));
    }
    let chain = state.get_chain_id().await.map_err(ServiceError::internal)?;
    let header_bytes = state
        .nonverifiable_get_raw(
            shieldd_sdk_compact_block::state_key::compact_block(request.height).as_bytes(),
        )
        .await
        .map_err(ServiceError::internal)?
        .context("canonical header unavailable")
        .map_err(ServiceError::unavailable)?;
    if header_bytes.len() > 64 * 1024 {
        return Err(ServiceError::unavailable(anyhow::anyhow!(
            "oversized compact header"
        )));
    }
    let identity: [u8; 32] = Sha256::digest(&header_bytes).into();
    let header = pb::StoredCompactBlock::decode(header_bytes.as_slice())
        .map_err(|e| ServiceError::unavailable(e.into()))?;
    let metadata = header
        .metadata
        .as_ref()
        .context("missing canonical header")
        .map_err(ServiceError::unavailable)?;
    if header.sections.len() != 7
        || header
            .sections
            .iter()
            .enumerate()
            .any(|(i, s)| s.kind != i as i32 + 1)
    {
        return Err(ServiceError::unavailable(anyhow::anyhow!(
            "invalid compact section inventory"
        )));
    }
    let mut cursor = Cursor {
        chain: chain.clone(),
        height: request.height,
        identity,
        parameters,
        phase: 0,
        index: 0,
        offset: 0,
        selector: 0,
        key: vec![],
        slot: 0,
    };
    if !request.cursor.is_empty() {
        cursor = serde_json::from_slice(&request.cursor)
            .map_err(|e| ServiceError::invalid_argument(e.into()))?;
        if cursor.chain != chain
            || cursor.height != request.height
            || cursor.identity != identity
            || cursor.parameters != parameters
            || ![0, 5, 6, 7, 10, 11, 12].contains(&cursor.phase)
            || cursor.key.len() > 64
            || cursor.selector > selectors.len()
        {
            return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                "filtered cursor belongs to another query"
            )));
        }
    }
    let mut response = pb::CompactBlockPageResponse {
        height: request.height,
        chain_id: chain.clone(),
        block_identity: identity.to_vec(),
        ..Default::default()
    };
    let mut bytes = 0usize;
    let mut tree = None;
    // Work, as well as output size, is bounded for actions with no surviving outputs.
    for _ in 0..4096 {
        if bytes >= service.limits.payload_page_bytes() || cursor.phase == 12 {
            break;
        }
        if cursor.phase == 0 {
            if cursor.offset != 0 || cursor.index != 0 {
                return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                    "invalid header cursor"
                )));
            }
            response.fragments.push(CompactRecordFragment {
                kind: 0,
                index: 0,
                offset: 0,
                total_length: header_bytes.len() as u32,
                data: header_bytes.clone(),
            });
            bytes += header_bytes.len();
            cursor.phase = 5;
            continue;
        }
        if (5..=7).contains(&cursor.phase) {
            let count = header.sections[cursor.phase as usize - 1].count;
            if cursor.index > count {
                return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                    "compliance cursor exceeds section"
                )));
            }
            if cursor.index == count {
                cursor.phase = if cursor.phase == 7 {
                    10
                } else {
                    cursor.phase + 1
                };
                cursor.index = 0;
                cursor.offset = 0;
                continue;
            }
            let key = shieldd_sdk_compact_block::state_key::record(
                request.height,
                cursor.phase as i32,
                cursor.index as u64,
            );
            let fragment = shieldd_sdk_compact_block::component::records::fragment(
                &state,
                &key,
                cursor.offset,
            )
            .await
            .map_err(ServiceError::unavailable)?;
            let next = cursor.offset + fragment.data.len() as u32;
            bytes += fragment.data.len();
            response.fragments.push(CompactRecordFragment {
                kind: cursor.phase as i32,
                index: cursor.index,
                offset: cursor.offset,
                total_length: fragment.length,
                data: fragment.data,
            });
            if next == fragment.length {
                cursor.index += 1;
                cursor.offset = 0;
            } else {
                cursor.offset = next;
            }
            continue;
        }
        let (position, transaction_id) = if cursor.phase == 10 {
            if cursor.selector == selectors.len() {
                cursor.phase = 11;
                cursor.key.clear();
                cursor.slot = 0;
                continue;
            }
            let selector = selectors[cursor.selector];
            let prefix = shieldd_sdk_compact_block::state_key::routing_prefix(request.height);
            let low = selector.prefix.reverse_bits() as u64;
            let high = low + (1u64 << (32 - selector.precision.bits() as u32));
            let start = if cursor.key.is_empty() {
                (low as u32).to_be_bytes().to_vec()
            } else {
                cursor.key.clone()
            };
            if start.as_slice() < (low as u32).to_be_bytes().as_slice() {
                return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                    "routing cursor precedes selector"
                )));
            }
            let end = if high > u32::MAX as u64 {
                Bound::Unbounded
            } else {
                Bound::Excluded((high as u32).to_be_bytes().to_vec())
            };
            let records = state
                .nonverifiable_range_raw(Some(&prefix), (Bound::Included(start), end))
                .map_err(ServiceError::invalid_argument)?;
            futures::pin_mut!(records);
            let Some(record) = records.next().await else {
                cursor.selector += 1;
                cursor.key.clear();
                cursor.slot = 0;
                cursor.offset = 0;
                continue;
            };
            let (key, bytes) = record.map_err(ServiceError::internal)?;
            let record: shieldd_sdk_compact_block::RoutingRecord =
                pb::RoutingRecord::decode(bytes.as_slice())
                    .context("routing record decode")
                    .and_then(TryInto::try_into)
                    .map_err(ServiceError::unavailable)?;
            if record.height != request.height || !selector.matches(record.tag) {
                return Err(ServiceError::unavailable(anyhow::anyhow!(
                    "routing index disagrees with record"
                )));
            }
            cursor.key = key
                .strip_prefix(prefix.as_slice())
                .context("routing index escaped prefix")
                .map_err(ServiceError::unavailable)?
                .to_vec();
            let key = shieldd_sdk_compact_block::state_key::action(
                request.height,
                &record.transaction_id.0,
                record.action_index,
            );
            let bytes = state
                .nonverifiable_get_raw(&key)
                .await
                .map_err(ServiceError::internal)?
                .context("routing action missing")
                .map_err(ServiceError::unavailable)?;
            let action = pb::RoutingAction::decode(bytes.as_slice())
                .map_err(|e| ServiceError::unavailable(e.into()))?;
            if cursor.slot >= action.payload_positions.len() {
                cursor.key.push(0);
                cursor.slot = 0;
                cursor.offset = 0;
                continue;
            }
            (action.payload_positions[cursor.slot], action.transaction_id)
        } else {
            let prefix = shieldd_sdk_compact_block::state_key::unrouted_prefix(request.height);
            let records = state
                .nonverifiable_range_raw(Some(&prefix), cursor.key.clone()..)
                .map_err(ServiceError::invalid_argument)?;
            futures::pin_mut!(records);
            let Some(record) = records.next().await else {
                cursor.phase = 12;
                continue;
            };
            let (key, bytes) = record.map_err(ServiceError::internal)?;
            cursor.key = key
                .strip_prefix(prefix.as_slice())
                .context("unrouted index escaped prefix")
                .map_err(ServiceError::unavailable)?
                .to_vec();
            let record = pb::UnroutedPayload::decode(bytes.as_slice())
                .map_err(|e| ServiceError::unavailable(e.into()))?;
            (record.position, record.transaction_id)
        };
        let ordinal = position
            .checked_sub(metadata.state_payload_start_position)
            .filter(|i| *i < header.sections[0].count as u64)
            .context("routing payload position outside canonical block")
            .map_err(ServiceError::unavailable)?;
        if tree.is_none() {
            tree = Some(
                service
                    .historical_sct
                    .tree(state.clone(), chain.clone(), &header)
                    .await?,
            );
        }
        let proof = tree
            .as_ref()
            .expect("tree initialized")
            .proof(ordinal as u16)
            .map_err(ServiceError::unavailable)?;
        let key = shieldd_sdk_compact_block::state_key::payload(request.height, position);
        let bytes_record = shieldd_sdk_compact_block::component::records::get(&state, &key)
            .await
            .map_err(ServiceError::unavailable)?;
        let payload = pb::StatePayload::decode(bytes_record.as_slice())
            .map_err(|e| ServiceError::unavailable(e.into()))?;
        let proven = pb::ProvenPayload {
            position,
            payload: Some(payload),
            transaction_id,
            auth_path: proof
                .siblings
                .into_iter()
                .map(|s| shieldd_sdk_proto::crypto::tct::v1::MerklePathChunk {
                    sibling_1: s[0].to_vec(),
                    sibling_2: s[1].to_vec(),
                    sibling_3: s[2].to_vec(),
                })
                .collect(),
        }
        .encode_to_vec();
        let offset = cursor.offset as usize;
        if offset >= proven.len() {
            return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                "payload cursor offset out of bounds"
            )));
        }
        let end = (offset + 64 * 1024).min(proven.len());
        bytes += end - offset;
        response.fragments.push(CompactRecordFragment {
            kind: 8,
            index: ordinal as u32,
            offset: cursor.offset,
            total_length: proven.len() as u32,
            data: proven[offset..end].to_vec(),
        });
        if end == proven.len() {
            cursor.offset = 0;
            if cursor.phase == 10 {
                cursor.slot += 1;
            } else {
                cursor.key.push(0);
            }
        } else {
            cursor.offset = end as u32;
        }
    }
    if cursor.phase != 12 {
        response.next_cursor =
            serde_json::to_vec(&cursor).map_err(|e| ServiceError::internal(e.into()))?;
    }
    Ok(response)
}
