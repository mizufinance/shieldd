use crate::{service::ServiceError, QueryService};
use anyhow::Context;
use cnidarium::StateRead;
use prost::Message;
use sha2::{Digest, Sha256};
use shieldd_sdk_app::app::StateReadExt;
use shieldd_sdk_proto::{
    core::component::compact_block::v1::StoredCompactBlock, core::component::sct::v1 as pb,
};
use shieldd_sdk_sct::{component::clock::EpochRead, permanent_nullifiers, Nullifier};

#[derive(serde::Serialize, serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct Cursor {
    chain: String,
    parameters: [u8; 32],
    version: u64,
    height: u64,
    index: u32,
}

pub async fn page(
    service: &QueryService,
    mut request: pb::SpendStatusPageRequest,
) -> Result<pb::SpendStatusPageResponse, ServiceError> {
    if request.nullifiers.is_empty()
        || request.nullifiers.len() > service.limits.items_per_request
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
    let state = service.snapshot()?;
    if resumed
        .as_ref()
        .is_some_and(|c| c.version != state.version())
    {
        return Err(ServiceError::snapshot_expired());
    }
    let height = state
        .get_block_height()
        .await
        .map_err(ServiceError::internal)?;
    if request.end_height > height {
        return Err(ServiceError::failed_precondition(anyhow::anyhow!(
            "spend interval is not committed"
        )));
    }
    let boundary = permanent_nullifiers::read_boundary(&state)
        .await
        .map_err(ServiceError::unavailable)?;
    service
        .nullifiers()?
        .validate_boundary(&boundary)
        .map_err(ServiceError::unavailable)?;
    let chain = state.get_chain_id().await.map_err(ServiceError::internal)?;
    request.cursor.clear();
    let parameters = Sha256::digest(request.encode_to_vec()).into();
    let nullifiers = request
        .nullifiers
        .iter()
        .cloned()
        .map(Nullifier::try_from)
        .collect::<anyhow::Result<std::collections::BTreeSet<_>>>()
        .map_err(ServiceError::invalid_argument)?;
    let mut cursor = resumed.unwrap_or(Cursor {
        chain: chain.clone(),
        parameters,
        version: state.version(),
        height: request.start_height,
        index: 0,
    });
    if cursor.chain != chain
        || cursor.parameters != parameters
        || !(request.start_height..=request.end_height).contains(&cursor.height)
    {
        return Err(ServiceError::invalid_argument(anyhow::anyhow!(
            "spend cursor belongs to another query"
        )));
    }
    let mut response = pb::SpendStatusPageResponse {
        chain_id: chain,
        anchor_height: height,
        spends: vec![],
        next_cursor: vec![],
    };
    let mut reads = 0;
    let mut blocks = 0;
    // Each page scans at most 64 headers and 2048 fixed-size nullifier records.
    // Spend heights come from canonical compact records; the attached proof
    // independently authenticates membership at the published boundary.
    while blocks < 64 && reads < 2048 && response.spends.len() < nullifiers.len() {
        let bytes = state
            .nonverifiable_get_raw(
                shieldd_sdk_compact_block::state_key::compact_block(cursor.height).as_bytes(),
            )
            .await
            .map_err(ServiceError::internal)?
            .context("committed compact header is unavailable")
            .map_err(ServiceError::unavailable)?;
        if bytes.len() > 64 * 1024 {
            return Err(ServiceError::unavailable(anyhow::anyhow!(
                "oversized compact header"
            )));
        }
        let header = StoredCompactBlock::decode(bytes.as_slice())
            .map_err(|e| ServiceError::unavailable(e.into()))?;
        let section = header
            .sections
            .get(1)
            .context("missing nullifier section")
            .map_err(ServiceError::unavailable)?;
        if section.kind != 2
            || section.count as usize > shieldd_sdk_sct::component::tree::MAX_NULLIFIERS_PER_BLOCK
            || cursor.index > section.count
        {
            return Err(ServiceError::unavailable(anyhow::anyhow!(
                "invalid nullifier section"
            )));
        }
        blocks += 1;
        while cursor.index < section.count
            && reads < 2048
            && response.spends.len() < nullifiers.len()
        {
            let fragment = shieldd_sdk_compact_block::component::records::fragment(
                &state,
                &shieldd_sdk_compact_block::state_key::record(
                    cursor.height,
                    2,
                    cursor.index as u64,
                ),
                0,
            )
            .await
            .map_err(ServiceError::unavailable)?;
            if fragment.length > 64 || fragment.length as usize != fragment.data.len() {
                return Err(ServiceError::unavailable(anyhow::anyhow!(
                    "oversized nullifier record"
                )));
            }
            let nullifier: Nullifier = pb::Nullifier::decode(fragment.data.as_slice())
                .map_err(|e| ServiceError::unavailable(e.into()))?
                .try_into()
                .map_err(ServiceError::unavailable)?;
            if nullifiers.contains(&nullifier) {
                let status = service.status(nullifier, boundary.clone()).await?;
                if !status.spent {
                    return Err(ServiceError::unavailable(anyhow::anyhow!(
                        "compact spend is absent from committed nullifier set"
                    )));
                }
                response.spends.push(pb::SpentNullifier {
                    nullifier: Some(nullifier.into()),
                    height: cursor.height,
                    status: Some(status),
                });
            }
            reads += 1;
            cursor.index += 1;
        }
        if cursor.index < section.count {
            break;
        }
        if cursor.height == request.end_height {
            return Ok(response);
        }
        cursor.height += 1;
        cursor.index = 0;
    }
    if response.spends.len() == nullifiers.len() {
        return Ok(response);
    }
    response.next_cursor =
        serde_json::to_vec(&cursor).map_err(|e| ServiceError::internal(e.into()))?;
    Ok(response)
}

#[cfg(test)]
mod tests {
    use super::*;
    use cnidarium::{StateDelta, TempStorage};
    use shieldd_sdk_app::app::{PermanentWriter, StateWriteExt as _};
    use shieldd_sdk_compact_block::{component::CompactBlockManager as _, CompactBlock};
    use shieldd_sdk_sct::component::clock::EpochManager as _;
    use std::sync::Arc;

    fn nf(i: u64) -> Nullifier {
        Nullifier(shieldd_sdk_crypto::Fq::from(i))
    }
    async fn commit(
        writer: &mut PermanentWriter,
        storage: &TempStorage,
        height: u64,
        values: Vec<Nullifier>,
    ) -> anyhow::Result<shieldd_sdk_proto::execution_client::v1::GetCommittedStateResponse> {
        let mut state = StateDelta::new(storage.latest_snapshot());
        state.put_chain_id("query-test".into());
        state.put_block_height(height);
        state.put_compact_block(CompactBlock {
            height,
            nullifiers: values.clone(),
            ..Default::default()
        })?;
        let boundary = writer
            .prepare(state, height, [height as u8; 32], values)
            .await?;
        writer.seal()?;
        assert_eq!(writer.commit()?, boundary);
        Ok(
            shieldd_sdk_proto::execution_client::v1::GetCommittedStateResponse {
                height,
                root_hash: boundary.application_root.unwrap().to_vec(),
                block_id: boundary.nullifiers.block_id.to_vec(),
            },
        )
    }
    async fn fixture() -> anyhow::Result<(TempStorage, PermanentWriter, QueryService)> {
        let storage = TempStorage::new().await?;
        let writer = PermanentWriter::open(
            storage.as_ref().clone(),
            &permanent_nullifiers::Config {
                buckets: 1024,
                cache_mib: 1,
                preallocate: false,
            },
        )
        .await?;
        let query = QueryService::new(
            storage.as_ref().clone(),
            writer.reader(),
            crate::test_registry(),
            Arc::new(shieldd_sdk_app::stateless_cache::StatelessCache::new()),
            Default::default(),
        );
        Ok((storage, writer, query))
    }
    #[tokio::test]
    async fn status_authenticates_membership_absence_and_exact_publication() -> anyhow::Result<()> {
        let (storage, mut writer, query) = fixture().await?;
        assert!(query
            .nullifier_status(pb::NullifierRequest {
                nullifier: Some(nf(1).into())
            })
            .await
            .is_err());
        let genesis = commit(&mut writer, &storage, 0, vec![]).await?;
        query.publish_committed(genesis).await?;
        let expected = writer.committed()?.nullifiers.clone();
        let absent: permanent_nullifiers::Status = query
            .nullifier_status(pb::NullifierRequest {
                nullifier: Some(nf(1).into()),
            })
            .await?
            .try_into()?;
        absent.verify(&expected)?;
        assert!(!absent.spent);
        let next = commit(&mut writer, &storage, 1, vec![nf(1)]).await?;
        // The old published root cannot authenticate a read after NOMT advances.
        assert!(query
            .nullifier_status(pb::NullifierRequest {
                nullifier: Some(nf(1).into())
            })
            .await
            .is_err());
        let mut wrong = next.clone();
        wrong.block_id[0] ^= 1;
        assert!(query.publish_committed(wrong).await.is_err());
        query.publish_committed(next).await?;
        let spent: permanent_nullifiers::Status = query
            .nullifier_status(pb::NullifierRequest {
                nullifier: Some(nf(1).into()),
            })
            .await?
            .try_into()?;
        assert!(spent.spent);
        spent.verify(&writer.committed()?.nullifiers)?;
        assert!(spent.verify(&expected).is_err());
        let mut state = StateDelta::new(storage.latest_snapshot());
        state.put_block_height(2);
        writer.prepare(state, 2, [2; 32], vec![nf(2)]).await?;
        writer.seal()?;
        // A detached proof leaves no read session blocking the ordered writer.
        writer.commit()?;
        assert!(query
            .nullifier_status(pb::NullifierRequest {
                nullifier: Some(nf(1).into())
            })
            .await
            .is_err());
        query.close();
        assert!(query
            .nullifier_status(pb::NullifierRequest {
                nullifier: Some(nf(1).into())
            })
            .await
            .is_err());
        Ok(())
    }
    #[tokio::test]
    async fn pages_bound_scan_work_bind_cursor_and_expire_on_commit() -> anyhow::Result<()> {
        let (storage, mut writer, query) = fixture().await?;
        commit(&mut writer, &storage, 0, vec![]).await?;
        let values = (1..=2050).map(nf).collect();
        let published = commit(&mut writer, &storage, 1, values).await?;
        query.publish_committed(published).await?;
        let request = pb::SpendStatusPageRequest {
            nullifiers: vec![nf(1).into(), nf(2050).into(), nf(3000).into()],
            start_height: 0,
            end_height: 1,
            cursor: vec![],
        };
        let first = page(&query, request.clone()).await?;
        assert_eq!(first.spends.len(), 1);
        assert_eq!(first.spends[0].height, 1);
        assert!(!first.next_cursor.is_empty());
        let cursor: Cursor = serde_json::from_slice(&first.next_cursor)?;
        assert_eq!(cursor.height, 1);
        assert_eq!(cursor.index, 2048);
        let mut resumed = request.clone();
        resumed.cursor = first.next_cursor.clone();
        let second = page(&query, resumed.clone()).await?;
        assert_eq!(second.spends.len(), 1);
        assert!(second.next_cursor.is_empty());
        let status: permanent_nullifiers::Status =
            second.spends[0].status.clone().unwrap().try_into()?;
        assert_eq!(status.nullifier, nf(2050));
        status.verify(&writer.committed()?.nullifiers)?;
        let mut changed = resumed.clone();
        changed.nullifiers.pop();
        assert!(page(&query, changed).await.is_err());
        let mut forged = cursor;
        forged.index = 2051;
        resumed.cursor = serde_json::to_vec(&forged)?;
        assert!(page(&query, resumed).await.is_err());
        let next = commit(&mut writer, &storage, 2, vec![]).await?;
        query.publish_committed(next).await?;
        let mut stale = request;
        stale.cursor = first.next_cursor;
        assert!(matches!(
            page(&query, stale).await.unwrap_err().kind(),
            crate::service::ErrorKind::SnapshotExpired
        ));
        Ok(())
    }
}
