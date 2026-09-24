use crate::{service::ServiceError, QueryService};
use anyhow::Context;
use prost::Message;
use sha2::{Digest, Sha256};
use shieldd_sdk_app::app::StateReadExt;
use shieldd_sdk_proto::core::component::sct::v1 as pb;
use shieldd_sdk_sct::{
    component::clock::EpochRead, nullifier_generation::NullifierTreeId, nullifier_tree, Nullifier,
};

#[derive(serde::Serialize, serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct Cursor {
    chain: String,
    parameters: [u8; 32],
    version: u64,
    generation: u64,
    index: usize,
}

// Generation ranges are recorded in generation order, including empty blocks.
// Seek both ends so a recent one-block query never walks unrelated history.
async fn overlapping_generations(
    state: &impl cnidarium::StateRead,
    current: u64,
    start_height: u64,
    end_height: u64,
) -> anyhow::Result<std::ops::Range<u64>> {
    // Genesis and rollover create a sentinel-only current tree before its first
    // block interval. Its authenticated leaf count proves there are no spends.
    let has_current_spends = nullifier_tree::current_leaf_count(state).await? != 1;
    let count = current
        .checked_add(u64::from(has_current_spends))
        .context("generation count overflow")?;
    let (mut low, mut high) = (0, count);
    while low < high {
        let mid = low + (high - low) / 2;
        if nullifier_tree::generation_block_range(state, mid)
            .await?
            .end_height
            < start_height
        {
            low = mid + 1;
        } else {
            high = mid;
        }
    }
    let first = low;
    high = count;
    while low < high {
        let mid = low + (high - low) / 2;
        if nullifier_tree::generation_block_range(state, mid)
            .await?
            .start_height
            <= end_height
        {
            low = mid + 1;
        } else {
            high = mid;
        }
    }
    Ok(first..low)
}

pub async fn page(
    service: &QueryService,
    mut request: pb::SpendStatusPageRequest,
) -> Result<pb::SpendStatusPageResponse, ServiceError> {
    if request.nullifiers.len() > service.limits.items_per_request
        || request.nullifiers.is_empty()
        || request.cursor.len() > 1024
        || request.start_height > request.end_height
    {
        return Err(ServiceError::invalid_argument(anyhow::anyhow!(
            "invalid spend query or request budget exceeded"
        )));
    }
    let resumed: Option<Cursor> = if request.cursor.is_empty() {
        None
    } else {
        Some(
            serde_json::from_slice(&request.cursor)
                .map_err(|e| ServiceError::invalid_argument(e.into()))?,
        )
    };
    let state = match &resumed {
        Some(cursor) => service.snapshot_version(cursor.version)?,
        None => service.snapshot()?,
    };
    let height = state
        .get_block_height()
        .await
        .map_err(ServiceError::internal)?;
    if request.end_height > height {
        return Err(ServiceError::failed_precondition(anyhow::anyhow!(
            "spend interval is not committed"
        )));
    }
    let chain = state.get_chain_id().await.map_err(ServiceError::internal)?;
    request.cursor.clear();
    let parameters = Sha256::digest(request.encode_to_vec()).into();
    let nullifiers = request
        .nullifiers
        .iter()
        .cloned()
        .map(Nullifier::try_from)
        .collect::<anyhow::Result<Vec<_>>>()
        .map_err(ServiceError::invalid_argument)?;
    let generations = nullifier_tree::generation_state(&state)
        .await
        .map_err(ServiceError::unavailable)?;
    let relevant = overlapping_generations(
        &state,
        generations.current_generation,
        request.start_height,
        request.end_height,
    )
    .await
    .map_err(ServiceError::unavailable)?;
    let mut cursor = Cursor {
        chain: chain.clone(),
        parameters,
        version: state.version(),
        generation: relevant.start,
        index: 0,
    };
    if let Some(resumed) = resumed {
        cursor = resumed;
        if cursor.chain != chain
            || cursor.parameters != parameters
            || cursor.index >= nullifiers.len()
            || !relevant.contains(&cursor.generation)
        {
            return Err(ServiceError::invalid_argument(anyhow::anyhow!(
                "spend cursor belongs to another query"
            )));
        }
    }
    let mut response = pb::SpendStatusPageResponse {
        chain_id: chain,
        anchor_height: height,
        spends: vec![],
        next_cursor: vec![],
    };
    // A bounded page includes at most 64 witness reads in overlapping generations.
    for _ in 0..64 {
        if cursor.generation >= relevant.end {
            break;
        }
        let range = nullifier_tree::generation_block_range(&state, cursor.generation)
            .await
            .map_err(ServiceError::unavailable)?;
        if range.end_height < request.start_height || range.start_height > request.end_height {
            return Err(ServiceError::unavailable(anyhow::anyhow!(
                "inconsistent generation block ranges"
            )));
        }
        let nullifier = nullifiers[cursor.index];
        let (spent, witness, root) = if cursor.generation < generations.archived_generation_count {
            let archived = nullifier_tree::archived_generation(&state, cursor.generation)
                .await
                .map_err(ServiceError::unavailable)?;
            let repository = service
                .generation_packs()
                .context("archive repository is unavailable")
                .map_err(ServiceError::unavailable)?;
            let permit = service
                .archive_slots
                .clone()
                .try_acquire_owned()
                .map_err(|_| ServiceError::overloaded())?;
            let result = tokio::task::spawn_blocking(move || {
                let _permit = permit;
                repository.witness(archived, nullifier)
            })
            .await
            .map_err(|e| ServiceError::internal(e.into()))?;
            let (spent, witness) = result.map_err(|e| {
                if let Some(r) = service.generation_packs() {
                    r.request_repair(cursor.generation);
                }
                ServiceError::unavailable(e)
            })?;
            (spent, witness, archived.generation_root)
        } else {
            let lookup = nullifier_tree::active_lookups(&state, nullifier)
                .await
                .map_err(ServiceError::unavailable)?
                .into_iter()
                .find(|l| l.tree == NullifierTreeId::Generation(cursor.generation))
                .context("active generation is missing")
                .map_err(ServiceError::unavailable)?;
            (lookup.spent, lookup.proof, lookup.root)
        };
        if spent {
            witness
                .verify_membership(nullifier, root)
                .map_err(ServiceError::unavailable)?;
            let spent_height =
                nullifier_tree::spend_height(&state, cursor.generation, witness.leaf_position)
                    .await
                    .map_err(ServiceError::unavailable)?;
            if spent_height < range.start_height
                || spent_height > range.end_height
                || spent_height > height
            {
                return Err(ServiceError::unavailable(anyhow::anyhow!(
                    "invalid spend insertion interval"
                )));
            }
            if (request.start_height..=request.end_height).contains(&spent_height) {
                response.spends.push(pb::SpentNullifier {
                    nullifier: Some(nullifier.into()),
                    height: spent_height,
                    generation: cursor.generation,
                    generation_root: root.to_vec(),
                    witness: Some(witness.into()),
                });
            }
        }
        cursor.index += 1;
        if cursor.index == nullifiers.len() {
            cursor.index = 0;
            cursor.generation += 1;
        }
    }
    if cursor.generation < relevant.end {
        response.next_cursor =
            serde_json::to_vec(&cursor).map_err(|e| ServiceError::internal(e.into()))?;
    }
    Ok(response)
}
