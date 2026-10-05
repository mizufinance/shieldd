use crate::service::*;
use anyhow::Result;
use shieldd_sdk_app::genesis::{AppState, Content};
use shieldd_sdk_asset::asset;
use shieldd_sdk_keys::test_keys::ADDRESS_0;
use shieldd_sdk_proto::core::app::v1 as proto_app;
use shieldd_sdk_proto::core::app::v1::AppParametersRequest as ComponentAppParametersRequest;
use shieldd_sdk_proto::core::component::{
    compact_block::v1::CompactBlockPageRequest,
    compliance::v1::{
        ComplianceAssetStatusRequest as ComponentComplianceAssetStatusRequest,
        ComplianceBatchMerkleProofsRequest as ComponentComplianceBatchMerkleProofsRequest,
        ComplianceBatchQuery, ComplianceUserLeafRequest as ComponentComplianceUserLeafRequest,
    },
    sct::v1::NullifierRequest,
    shielded_pool::v1::AssetMetadataByIdRequest as ComponentAssetMetadataByIdRequest,
};
use shieldd_sdk_proto::execution_client::v1::{
    BeginBlockRequest, CheckTxRequest, DeliverTxRequest, EndBlockRequest, FreezeRequest,
    InitGenesisRequest, MaterializeRequest,
};
use shieldd_sdk_proto::execution_client::v1::{
    GetCommittedStateRequest, GetCommittedStateResponse,
};
use shieldd_sdk_proto::storage::v1::KeyValueRequest as ComponentKeyValueRequest;
use shieldd_sdk_storage::{StateRead as _, TempStorage};
use std::ops::Deref as _;

async fn initialized_client() -> Result<(TempStorage, ExecutionService)> {
    let storage = TempStorage::new().await?;
    let mut client = ExecutionService::new(storage.deref().clone(), crate::test_registry()).await?;
    client
        .init_genesis(InitGenesisRequest {
            genesis: Some(
                AppState::Content(
                    Content::default().with_chain_id("shieldd-service-test".to_owned()),
                )
                .into(),
            ),
        })
        .await?;
    client
        .materialize(MaterializeRequest {
            height: 0,
            receipt_digest: vec![],
        })
        .await?;
    Ok((storage, client))
}

#[tokio::test]
async fn execution_check_tx_rejects_invalid_transaction() -> Result<()> {
    let (_storage, client) = initialized_client().await?;

    let response = client
        .queries()
        .check_tx(CheckTxRequest {
            tx: b"not a shieldd transaction".to_vec(),
        })
        .await?;

    assert_eq!(response.code, 1);
    assert!(response.log.contains("decoding transaction"));
    Ok(())
}

#[tokio::test]
async fn execution_deliver_tx_rejects_invalid_transaction() -> Result<()> {
    let (_storage, mut client) = initialized_client().await?;
    let mut begin_block = BeginBlockRequest {
        block_id: vec![1 as u8; 32],
        height: 1,
        time: Some(Default::default()),
    };
    begin_block
        .time
        .as_mut()
        .expect("test begin-block time")
        .seconds = 1_700_000_000;
    begin_fixture(&mut client, begin_block).await?;

    let response = client
        .deliver_tx(DeliverTxRequest {
            tx: b"not a shieldd transaction".to_vec(),
            position: None,
        })
        .await?;

    assert_eq!(response.code, 1);
    assert!(response.log.contains("decoding transaction"));
    end_fixture(&mut client, 1).await?;
    materialize_fixture(&mut client).await?;
    let accepted = client
        .queries()
        .committed_transaction(
            shieldd_sdk_proto::core::app::v1::CommittedTransactionRequest {
                block_height: 1,
                transaction_id: vec![0; 32],
            },
        )
        .await?;
    assert_eq!(accepted.block_height, 1);
    assert!(
        accepted.transaction.is_none(),
        "failed transaction entered accepted log"
    );
    Ok(())
}

#[tokio::test]
async fn execution_exposes_embedded_frontend_queries() -> Result<()> {
    let (_storage, client) = initialized_client().await?;
    let asset_id = asset::REGISTRY.parse_unit("shieldd").id();
    let asset_id_proto: shieldd_sdk_proto::core::asset::v1::AssetId = asset_id.into();
    let address: shieldd_sdk_proto::core::keys::v1::Address = ADDRESS_0.clone().into();

    let parameters = client
        .queries()
        .app_parameters(ComponentAppParametersRequest {})
        .await?
        .app_parameters
        .expect("app parameters response contains parameters");
    assert_eq!(parameters.chain_id, "shieldd-service-test");

    let status: shieldd_sdk_sct::permanent_nullifiers::Status = client
        .queries()
        .nullifier_status(NullifierRequest {
            nullifier: Some(shieldd_sdk_sct::Nullifier(shieldd_sdk_crypto::Fq::from(1)).into()),
        })
        .await?
        .try_into()?;
    assert!(!status.spent);
    assert_eq!(status.proof.manifest.height, 0);

    let metadata = client
        .queries()
        .asset_metadata_by_id(ComponentAssetMetadataByIdRequest {
            asset_id: Some(asset_id_proto.clone()),
        })
        .await?
        .denom_metadata
        .expect("known genesis asset metadata");
    assert_eq!(metadata.base, "ushieldd");

    let status = client
        .queries()
        .compliance_asset_status(ComponentComplianceAssetStatusRequest {
            asset_id: Some(asset_id_proto.clone()),
        })
        .await?;
    assert!(status.is_registered);
    assert!(!status.is_regulated);

    let user = client
        .queries()
        .compliance_user_leaf(ComponentComplianceUserLeafRequest {
            address: Some(address.clone()),
            asset_id: Some(asset_id_proto.clone()),
        })
        .await?;
    assert!(!user.is_registered);
    assert!(user.leaf.is_none());

    let batch = client
        .queries()
        .compliance_batch_merkle_proofs(ComponentComplianceBatchMerkleProofsRequest {
            queries: vec![ComplianceBatchQuery {
                address: Some(address),
                asset_id: Some(asset_id_proto),
            }],
        })
        .await?;
    assert_eq!(batch.results.len(), 1);
    assert!(batch.results[0].asset_registered);
    assert!(!batch.results[0].user_registered);

    let key = client
        .queries()
        .key_value(ComponentKeyValueRequest {
            key: shieldd_sdk_sct::state_key::tree::anchor_by_height(0),
            proof: false,
        })
        .await?;
    assert!(key.value.is_some());
    assert!(key.proof.is_empty());
    Ok(())
}

#[tokio::test]
async fn execution_reads_bounded_compact_pages() -> Result<()> {
    let (_storage, mut client) = initialized_client().await?;
    for height in 1..=2 {
        let mut begin = BeginBlockRequest {
            block_id: vec![height as u8; 32],
            height,
            time: Some(Default::default()),
        };
        begin.time.as_mut().expect("test begin-block time").seconds = 1_700_000_000 + height;
        begin_fixture(&mut client, begin).await?;
        end_fixture(&mut client, height).await?;
        materialize_fixture(&mut client).await?;
    }

    for height in [0, 1, 2] {
        let page = client
            .queries()
            .compact_block_page(CompactBlockPageRequest {
                height,
                cursor: Vec::new(),
            })
            .await?
            .page
            .unwrap();
        assert_eq!(page.height, height);
        assert_eq!(
            page.fragments[0].kind,
            shieldd_sdk_proto::core::component::compact_block::v1::CompactRecordKind::Header as i32
        );
        assert!(page.next_cursor.is_empty());
    }
    Ok(())
}
#[tokio::test]
async fn key_value_proves_membership_and_absence_at_committed_root() -> Result<()> {
    use anyhow::Context as _;
    use shieldd_sdk_storage::{StateDelta, StateWrite as _};
    let (storage, client) = initialized_client().await?;
    let mut delta = StateDelta::new(storage.latest_snapshot());
    delta.put_raw("query-proof-present".into(), b"main-store value".to_vec());
    delta.put_raw(
        "cometbft-data/query-proof-present".into(),
        b"committed value".to_vec(),
    );
    use shieldd_sdk_sct::component::clock::EpochManager as _;
    delta.put_block_height(1);
    storage.commit(delta).await?;
    let manifest = storage.manifest().context("proof fixture manifest")?;
    client
        .queries()
        .publish_committed(GetCommittedStateResponse {
            height: manifest.height,
            root_hash: manifest.digest()?.to_vec(),
            block_id: manifest.block_id.to_vec(),
        })
        .await?;
    let snapshot = storage.latest_snapshot();
    let anchor = manifest.digest()?;
    for (key, present) in [
        ("query-proof-present", true),
        ("query-proof-absent", false),
        ("cometbft-data/query-proof-present", true),
        ("cometbft-data/query-proof-absent", false),
    ] {
        let response = client
            .queries()
            .key_value(ComponentKeyValueRequest {
                key: key.into(),
                proof: true,
            })
            .await?;
        let proof = shieldd_sdk_storage::StateProof::decode(&response.proof)?;
        let value = snapshot.get_raw(key).await?;
        assert_eq!(value.is_some(), present);
        assert_eq!(response.value.as_ref().map(|v| &v.value), value.as_ref());
        proof.verify_application(
            anchor,
            shieldd_sdk_storage::Space::Application,
            key.as_bytes(),
            value.as_deref(),
        )?;
        let mut wrong = anchor;
        wrong[0] ^= 1;
        assert!(proof
            .verify_application(
                wrong,
                shieldd_sdk_storage::Space::Application,
                key.as_bytes(),
                value.as_deref()
            )
            .is_err());
    }
    Ok(())
}

#[tokio::test]
async fn transactions_query_rejects_uncommitted_height() -> Result<()> {
    let (_storage, client) = initialized_client().await?;
    let error = client
        .queries()
        .committed_transaction(
            shieldd_sdk_proto::core::app::v1::CommittedTransactionRequest {
                block_height: u64::MAX,
                transaction_id: vec![0; 32],
            },
        )
        .await
        .expect_err("future block must not be accepted");
    assert_eq!(error.kind(), crate::ErrorKind::FailedPrecondition);
    Ok(())
}

#[tokio::test]
async fn committed_transaction_query_rejects_invalid_ids() -> Result<()> {
    let (_storage, client) = initialized_client().await?;
    for length in [0, 31, 33] {
        let error = client
            .queries()
            .committed_transaction(proto_app::CommittedTransactionRequest {
                block_height: 0,
                transaction_id: vec![0; length],
            })
            .await
            .expect_err("invalid ID accepted");
        assert_eq!(error.kind(), ErrorKind::InvalidArgument);
    }
    Ok(())
}

#[tokio::test]
async fn transactions_by_height_reads_committed_blocks_only() -> Result<()> {
    let (_storage, client) = initialized_client().await?;
    let response = client
        .queries()
        .transactions_by_height(proto_app::TransactionsByHeightRequest {
            block_height: 0,
            cursor: Vec::new(),
        })
        .await?;
    assert_eq!(response.block_height, 0);
    assert!(response.transactions.is_empty());
    let error = client
        .queries()
        .transactions_by_height(proto_app::TransactionsByHeightRequest {
            block_height: u64::MAX,
            cursor: Vec::new(),
        })
        .await
        .expect_err("uncommitted block must not be returned");
    assert_eq!(error.kind(), ErrorKind::FailedPrecondition);
    Ok(())
}

#[tokio::test]
async fn committed_queries_advance_only_after_joint_publication() -> Result<()> {
    let (_storage, mut client) = initialized_client().await?;
    let queries = client.queries().clone();
    let old = queries.snapshot()?;
    let mut begin = BeginBlockRequest {
        block_id: vec![1 as u8; 32],
        height: 1,
        time: Some(Default::default()),
    };
    begin.time.as_mut().unwrap().seconds = 1_700_000_000;
    begin_fixture(&mut client, begin).await?;
    end_fixture(&mut client, 1).await?;
    assert_eq!(queries.snapshot()?.version(), old.version());
    assert!(queries
        .compact_block_page(CompactBlockPageRequest {
            height: 1,
            cursor: vec![]
        })
        .await
        .is_err());
    materialize_fixture(&mut client).await?;
    let durable = client
        .get_committed_state(GetCommittedStateRequest {})
        .await?;
    let mut wrong = durable;
    wrong.root_hash[0] ^= 1;
    assert!(queries.publish_committed(wrong).await.is_err());
    assert_eq!(
        queries
            .compact_block_page(CompactBlockPageRequest {
                height: 1,
                cursor: vec![]
            })
            .await?
            .page
            .unwrap()
            .height,
        1
    );
    assert!(queries.snapshot()?.version() > old.version());
    // A reader pinned before publication still observes the preceding commit.
    use shieldd_sdk_sct::component::clock::EpochRead as _;
    assert_eq!(old.get_block_height().await?, 0);

    Ok(())
}

#[tokio::test]
async fn filtered_pages_include_tag_matches_and_unrouted_payloads_with_checked_proofs() -> Result<()>
{
    use shieldd_sdk_compact_block::{
        component::CompactBlockManager, pages::PageAssembler, CompactBlock, RoutingAction,
        RoutingRecord, StatePayload,
    };
    use shieldd_sdk_proto::{core::component::compact_block::v1 as pb, DomainType, Message};
    use shieldd_sdk_shielded_pool::discovery::{Precision, RoutingSelector, RoutingTag};
    use shieldd_sdk_tct::{builder::block::finalized_forget_root, StateCommitment};
    let (storage, client) = initialized_client().await?;
    let commitments = [1u64, 2, 3].map(|i| StateCommitment(shieldd_sdk_crypto::Fq::from(i)));
    let id =
        shieldd_sdk_proto::core::txhash::v1::TransactionId { inner: vec![9; 32] }.try_into()?;
    let block = CompactBlock {
        height: 1,
        block_root: finalized_forget_root(&commitments)?,
        state_payloads: commitments
            .into_iter()
            .map(|commitment| StatePayload::RolledUp {
                source: shieldd_sdk_sct::CommitmentSource::Genesis,
                commitment,
            })
            .collect(),
        routing_actions: (0..2)
            .map(|i| RoutingAction {
                transaction_id: id,
                action_index: i,
                payload_positions: vec![i as u64],
            })
            .collect(),
        routing_records: (0..2)
            .map(|i| RoutingRecord {
                transaction_id: id,
                action_index: i,
                tag_slot: 0,
                height: 1,
                tag: RoutingTag {
                    value: if i == 0 { 0x1234567b } else { 0x1234567a },
                },
            })
            .collect(),
        ..Default::default()
    };
    let expected = block.encode_to_vec();
    let mut state = shieldd_sdk_storage::StateDelta::new(storage.latest_snapshot());
    use shieldd_sdk_sct::component::clock::EpochManager as _;
    state.put_block_height(1);
    state.put_compact_block(block)?;
    storage.commit(state).await?;
    let manifest = storage.manifest().unwrap();
    client
        .queries()
        .publish_committed(GetCommittedStateResponse {
            height: 1,
            root_hash: manifest.digest()?.to_vec(),
            block_id: manifest.block_id.to_vec(),
        })
        .await?;
    let full = client
        .queries()
        .compact_block_page(CompactBlockPageRequest {
            height: 1,
            cursor: vec![],
        })
        .await?
        .page
        .unwrap();
    use shieldd_sdk_compact_block::pages::{AssemblyBudget, AssemblyLimits};
    let mut unspecified = full.clone();
    unspecified.fragments[0].kind = pb::CompactRecordKind::Unspecified as i32;
    assert!(PageAssembler::new(1, "shieldd-service-test".into(), false)
        .push(unspecified, &mut AssemblyBudget::new(Default::default())?)
        .is_err());
    let length = full
        .fragments
        .iter()
        .map(|f| f.total_length as usize)
        .sum::<usize>();
    for limits in [
        AssemblyLimits {
            max_encoded_bytes: length - 1,
            max_records: 262_144,
        },
        AssemblyLimits {
            max_encoded_bytes: 64 * 1024 * 1024,
            max_records: 1,
        },
    ] {
        let mut limited = PageAssembler::new(1, "shieldd-service-test".into(), false);
        assert!(limited
            .push(full.clone(), &mut AssemblyBudget::new(limits)?)
            .is_err());
    }
    let mut assembler = PageAssembler::new(1, "shieldd-service-test".into(), false);
    assembler.push(
        full,
        &mut shieldd_sdk_compact_block::pages::AssemblyBudget::new(Default::default())?,
    )?;
    assert_eq!(assembler.full()?.encode_to_vec(), expected);
    let selector: shieldd_sdk_proto::core::component::shielded_pool::v1::RoutingSelector =
        RoutingSelector {
            precision: Precision::new(2)?,
            prefix: 3,
        }
        .into();
    let page = client
        .queries()
        .filtered_block_page(pb::FilteredBlockPageRequest {
            height: 1,
            selectors: vec![selector.clone(), selector],
            cursor: vec![],
        })
        .await?
        .page
        .unwrap();
    assert!(page.next_cursor.is_empty());
    let mut assembler = PageAssembler::new(1, "shieldd-service-test".into(), true);
    assembler.push(
        page.clone(),
        &mut shieldd_sdk_compact_block::pages::AssemblyBudget::new(Default::default())?,
    )?;
    let sparse = assembler.sparse()?;
    assert_eq!(
        sparse.proofs.iter().map(|p| p.position).collect::<Vec<_>>(),
        vec![0, 2]
    );
    assert_eq!(sparse.owners.get(&0), Some(&id));
    assert!(!sparse.owners.contains_key(&2));
    let mut tampered = page;
    let fragment = tampered.fragments.iter_mut().find(|f| f.kind == 8).unwrap();
    let mut payload = pb::ProvenPayload::decode(fragment.data.as_slice())?;
    payload.auth_path[0].sibling_1 = shieldd_sdk_crypto::Fq::from(99u64).to_bytes().to_vec();
    fragment.data = payload.encode_to_vec();
    fragment.total_length = fragment.data.len() as u32;
    let mut assembler = PageAssembler::new(1, "shieldd-service-test".into(), true);
    // A conflicting repeated candidate or a forged path must fail before wallet state is touched.
    assert!(assembler
        .push(
            tampered,
            &mut shieldd_sdk_compact_block::pages::AssemblyBudget::new(Default::default())?
        )
        .and_then(|_| assembler.sparse())
        .is_err());
    Ok(())
}

async fn begin_fixture(client: &mut ExecutionService, request: BeginBlockRequest) -> Result<()> {
    use prost::Message as _;
    client.reserve_call(2, &request.encode_to_vec())?;
    let response = client.begin_block(request).await?;
    client.finish_call(0, &response.encode_to_vec())?;
    Ok(())
}
async fn end_fixture(client: &mut ExecutionService, height: i64) -> Result<()> {
    use prost::Message as _;
    let request = EndBlockRequest { height };
    client.reserve_call(6, &request.encode_to_vec())?;
    let response = client.end_block(request).await?;
    client.finish_call(0, &response.encode_to_vec())?;
    Ok(())
}
async fn materialize_fixture(client: &mut ExecutionService) -> Result<()> {
    let frozen = client.freeze(FreezeRequest {}).await?;
    let request = MaterializeRequest {
        height: frozen.next.unwrap().height,
        receipt_digest: frozen.receipt_digest,
    };
    client.materialize(request).await?;
    Ok(())
}

#[tokio::test]
async fn materialize_waits_for_proof_drain_and_publishes_before_returning() -> Result<()> {
    let (_storage, mut service) = initialized_client().await?;
    begin_fixture(
        &mut service,
        BeginBlockRequest {
            height: 1,
            block_id: vec![1; 32],
            time: Some(Default::default()),
        },
    )
    .await?;
    end_fixture(&mut service, 1).await?;
    let frozen = service.freeze(FreezeRequest {}).await?;
    let queries = service.queries().clone();
    let entered = std::sync::Arc::new(tokio::sync::Notify::new());
    let release = std::sync::Arc::new(tokio::sync::Notify::new());
    let reader = {
        let queries = queries.clone();
        let entered = entered.clone();
        let release = release.clone();
        tokio::spawn(async move {
            queries
                .authenticated(async {
                    entered.notify_one();
                    release.notified().await;
                    Ok::<_, crate::ServiceError>(())
                })
                .await
        })
    };
    entered.notified().await;
    let mut persistence = Box::pin(service.materialize(MaterializeRequest {
        height: 1,
        receipt_digest: frozen.receipt_digest,
    }));
    assert!(
        tokio::time::timeout(std::time::Duration::from_millis(20), &mut persistence)
            .await
            .is_err()
    );
    let mut fresh_query = Box::pin(queries.published_boundary());
    assert!(
        tokio::time::timeout(std::time::Duration::from_millis(20), &mut fresh_query)
            .await
            .is_err()
    );
    release.notify_one();
    reader.await??;
    let result =
        tokio::time::timeout(std::time::Duration::from_secs(5), &mut persistence).await??;
    assert_eq!(result.decided.unwrap().height, 1);
    drop(persistence);
    assert_eq!(fresh_query.await?.height, 1);
    assert_eq!(
        service
            .get_committed_state(GetCommittedStateRequest {})
            .await?
            .height,
        1
    );
    service.close().await?;
    Ok(())
}

#[tokio::test]
async fn archive_query_returns_a_client_verifiable_genesis_range() -> Result<()> {
    use shieldd_sdk_proto::storage::v1::ArchiveRangeRequest;
    let (_storage, mut service) = initialized_client().await?;
    let committed = service
        .get_committed_state(GetCommittedStateRequest {})
        .await?;
    let prefix = b"compactblock/metadata/00000000000000000000".to_vec();
    let request = ArchiveRangeRequest {
        height: 0,
        prefix: prefix.clone(),
        start: prefix.clone(),
        end: None,
        limit: 1,
    };
    let response = service.queries().archive_range(request).await?;
    let query = shieldd_sdk_storage::ArchiveQuery {
        height: 0,
        prefix: prefix.clone(),
        start: prefix,
        end: None,
        limit: 1,
    };
    let page = shieldd_sdk_storage::ArchiveRangeProof::decode_canonical(&response.proof)?
        .verify(committed.root_hash.try_into().unwrap(), &query)?;
    assert_eq!(page.records.len(), 1);
    assert!(page.next.is_none());
    Ok(())
}
