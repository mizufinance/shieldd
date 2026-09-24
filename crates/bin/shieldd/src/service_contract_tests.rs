use crate::service::*;
use anyhow::Result;
use cnidarium::TempStorage;
use shieldd_sdk_app::{
    genesis::{AppState, Content},
    SUBSTORE_PREFIXES,
};
use shieldd_sdk_asset::asset;
use shieldd_sdk_keys::test_keys::ADDRESS_0;
use shieldd_sdk_proto::cnidarium::v1::KeyValueRequest as ComponentKeyValueRequest;
use shieldd_sdk_proto::core::app::v1 as proto_app;
use shieldd_sdk_proto::core::app::v1::AppParametersRequest as ComponentAppParametersRequest;
use shieldd_sdk_proto::core::component::{
    compact_block::v1::CompactBlockPageRequest,
    compliance::v1::{
        ComplianceAssetStatusRequest as ComponentComplianceAssetStatusRequest,
        ComplianceBatchMerkleProofsRequest as ComponentComplianceBatchMerkleProofsRequest,
        ComplianceBatchQuery, ComplianceUserLeafRequest as ComponentComplianceUserLeafRequest,
    },
    sct::v1::NullifierWindowRequest as ComponentNullifierWindowRequest,
    shielded_pool::v1::AssetMetadataByIdRequest as ComponentAssetMetadataByIdRequest,
};
use shieldd_sdk_proto::execution_client::v1::GetCommittedStateRequest;
use shieldd_sdk_proto::execution_client::v1::{
    BeginBlockRequest, CheckTxRequest, CommitRequest, DeliverTxRequest, EndBlockRequest,
    InitGenesisRequest,
};
use std::ops::Deref as _;

async fn initialized_client() -> Result<(TempStorage, ExecutionService)> {
    let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
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
    client.commit(CommitRequest {}).await?;
    client
        .queries()
        .publish_committed(
            client
                .get_committed_state(GetCommittedStateRequest {})
                .await?,
        )
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
        height: 1,
        time: Some(Default::default()),
    };
    begin_block
        .time
        .as_mut()
        .expect("test begin-block time")
        .seconds = 1_700_000_000;
    client.begin_block(begin_block).await?;

    let response = client
        .deliver_tx(DeliverTxRequest {
            tx: b"not a shieldd transaction".to_vec(),
        })
        .await?;

    assert_eq!(response.code, 1);
    assert!(response.log.contains("decoding transaction"));
    client.end_block(EndBlockRequest { height: 1 }).await?;
    client.commit(CommitRequest {}).await?;
    client
        .queries()
        .publish_committed(
            client
                .get_committed_state(GetCommittedStateRequest {})
                .await?,
        )
        .await?;
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

    let nullifier_window = client
        .queries()
        .nullifier_window(ComponentNullifierWindowRequest {})
        .await?
        .window
        .expect("initialized state contains a nullifier window");
    assert_eq!(
        nullifier_window.protocol_version,
        shieldd_sdk_sct::nullifier_generation::PROTOCOL_VERSION
    );
    assert_eq!(nullifier_window.current_generation, 0);

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
    assert!(key.proof.is_none());
    Ok(())
}

#[tokio::test]
async fn execution_reads_bounded_compact_pages() -> Result<()> {
    let (_storage, mut client) = initialized_client().await?;
    for height in 1..=2 {
        let mut begin = BeginBlockRequest {
            height,
            time: Some(Default::default()),
        };
        begin.time.as_mut().expect("test begin-block time").seconds = 1_700_000_000 + height;
        client.begin_block(begin).await?;
        client.end_block(EndBlockRequest { height }).await?;
        client.commit(CommitRequest {}).await?;
        client
            .queries()
            .publish_committed(
                client
                    .get_committed_state(GetCommittedStateRequest {})
                    .await?,
            )
            .await?;
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
    use cnidarium::{StateDelta, StateWrite as _};
    use ibc_types::core::commitment::{MerklePath, MerkleProof, MerkleRoot};
    // ICS23 requires nonempty leaf values, including absence-proof neighbors.
    let (storage, client) = initialized_client().await?;
    let mut delta = StateDelta::new(storage.latest_snapshot());
    delta.put_raw("query-proof-present".into(), b"main-store value".to_vec());
    delta.put_raw(
        "cometbft-data/query-proof-present".into(),
        b"committed value".to_vec(),
    );
    storage.commit(delta).await?;
    client
        .queries()
        .publish_committed(
            client
                .get_committed_state(GetCommittedStateRequest {})
                .await?,
        )
        .await?;
    let snapshot = storage.latest_snapshot();
    let root = MerkleRoot {
        hash: snapshot.root_hash().await?.0.to_vec(),
    };
    for (key, path, present) in [
        ("query-proof-present", vec!["query-proof-present"], true),
        ("query-proof-absent", vec!["query-proof-absent"], false),
        (
            "cometbft-data/query-proof-present",
            vec!["cometbft-data", "query-proof-present"],
            true,
        ),
        (
            "cometbft-data/query-proof-absent",
            vec!["cometbft-data", "query-proof-absent"],
            false,
        ),
    ] {
        let response = client
            .queries()
            .key_value(ComponentKeyValueRequest {
                key: key.into(),
                proof: true,
            })
            .await?;
        let proof: MerkleProof = response.proof.expect("requested proof").try_into()?;
        let (value, direct_proof) = snapshot.get_with_proof(key.as_bytes().to_vec()).await?;
        assert_eq!(proof, direct_proof);
        assert_eq!(
            response.value.as_ref().map(|value| &value.value),
            value.as_ref()
        );
        assert_eq!(value.is_some(), present);
        assert_eq!(proof.proofs.len(), path.len(), "proof depth for {key}");
        let specs = vec![cnidarium::ics23_spec(); path.len()];
        let path = MerklePath {
            key_path: path.into_iter().map(str::to_owned).collect(),
        };
        if let Some(value) = value {
            proof
                .verify_membership(&specs, root.clone(), path, value, 0)
                .with_context(|| format!("membership proof for {key}"))?;
        } else {
            proof
                .verify_non_membership(&specs, root.clone(), path)
                .with_context(|| format!("absence proof for {key}"))?;
        }
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
    let (storage, mut client) = initialized_client().await?;
    let queries = client.queries().clone();
    let old = queries.snapshot()?;
    let mut begin = BeginBlockRequest {
        height: 1,
        time: Some(Default::default()),
    };
    begin.time.as_mut().unwrap().seconds = 1_700_000_000;
    client.begin_block(begin).await?;
    client.end_block(EndBlockRequest { height: 1 }).await?;
    client.commit(CommitRequest {}).await?;
    let durable = client
        .get_committed_state(GetCommittedStateRequest {})
        .await?;
    assert_eq!(durable.height, 1);
    assert!(queries
        .compact_block_page(CompactBlockPageRequest {
            height: 1,
            cursor: vec![]
        })
        .await
        .is_err());
    let mut wrong = durable.clone();
    wrong.root_hash[0] ^= 1;
    assert!(queries.publish_committed(wrong).await.is_err());
    assert_eq!(queries.snapshot()?.version(), old.version());
    queries.publish_committed(durable).await?;
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
    assert_eq!(
        queries.snapshot_version(old.version())?.version(),
        old.version()
    );
    use shieldd_sdk_sct::component::clock::EpochManager as _;
    let mut unpublished = 0;
    for height in 2..=3 {
        let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
        state.put_block_height(height);
        storage.commit(state).await?;
        if height == 2 {
            unpublished = storage.latest_snapshot().version();
        }
    }
    queries
        .publish_committed(
            client
                .get_committed_state(GetCommittedStateRequest {})
                .await?,
        )
        .await?;
    assert!(storage.snapshot(unpublished).is_some());
    assert_eq!(
        queries.snapshot_version(unpublished).err().unwrap().kind(),
        ErrorKind::SnapshotExpired
    );
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
    let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
    use shieldd_sdk_sct::component::clock::EpochManager as _;
    state.put_block_height(1);
    state.put_compact_block(block)?;
    storage.commit(state).await?;
    client
        .queries()
        .publish_committed(
            client
                .get_committed_state(GetCommittedStateRequest {})
                .await?,
        )
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

#[tokio::test]
async fn spend_pages_bind_snapshot_and_report_verified_insertion_heights() -> Result<()> {
    use shieldd_sdk_proto::core::component::sct::v1 as pb;
    use shieldd_sdk_sct::{component::clock::EpochManager, nullifier_tree, Nullifier};
    let (storage, client) = initialized_client().await?;
    let nullifiers = (1u64..=130)
        .map(|i| Nullifier(shieldd_sdk_crypto::Fq::from(i)))
        .collect::<Vec<_>>();
    let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
    nullifier_tree::insert_batch(&mut state, nullifiers.iter().copied()).await?;
    nullifier_tree::record_block_insertions(
        &mut state,
        nullifier_tree::InsertionInterval {
            height: 1,
            generation: 0,
            first_position: 1,
            count: nullifiers.len() as u64,
        },
    )
    .await?;
    state.put_block_height(1);
    storage.commit(state).await?;
    client
        .queries()
        .publish_committed(
            client
                .get_committed_state(GetCommittedStateRequest {})
                .await?,
        )
        .await?;
    let request = pb::SpendStatusPageRequest {
        nullifiers: nullifiers.iter().copied().map(Into::into).collect(),
        start_height: 0,
        end_height: 1,
        cursor: vec![],
    };
    let page = client.queries().spend_status_page(request.clone()).await?;
    assert_eq!(page.spends.len(), 64);
    assert!(!page.next_cursor.is_empty());
    for spend in page.spends {
        assert_eq!(spend.height, 1);
        let witness: shieldd_sdk_sct::indexed_nullifier_tree::IndexedNullifierWitness =
            spend.witness.unwrap().try_into()?;
        witness.verify_membership(
            spend.nullifier.unwrap().try_into()?,
            spend.generation_root.try_into().unwrap(),
        )?;
    }
    let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
    state.put_block_height(2);
    storage.commit(state).await?;
    client
        .queries()
        .publish_committed(
            client
                .get_committed_state(GetCommittedStateRequest {})
                .await?,
        )
        .await?;
    let continued = client
        .queries()
        .spend_status_page(pb::SpendStatusPageRequest {
            cursor: page.next_cursor.clone(),
            ..request.clone()
        })
        .await?;
    assert_eq!(continued.anchor_height, 1);
    assert_eq!(continued.spends.len(), 64);
    // Cursor lifetime follows the bounded storage snapshot cache, not network consumers.
    for height in 3..=12 {
        let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
        state.put_block_height(height);
        storage.commit(state).await?;
    }
    client
        .queries()
        .publish_committed(
            client
                .get_committed_state(GetCommittedStateRequest {})
                .await?,
        )
        .await?;
    let error = client
        .queries()
        .spend_status_page(pb::SpendStatusPageRequest {
            cursor: page.next_cursor,
            ..request.clone()
        })
        .await
        .unwrap_err();
    assert_eq!(error.kind(), ErrorKind::SnapshotExpired);
    let mut cursor = vec![];
    let mut found = vec![];
    loop {
        let page = client
            .queries()
            .spend_status_page(pb::SpendStatusPageRequest {
                cursor,
                ..request.clone()
            })
            .await?;
        found.extend(
            page.spends
                .into_iter()
                .map(|s| Nullifier::try_from(s.nullifier.unwrap()).unwrap()),
        );
        cursor = page.next_cursor;
        if cursor.is_empty() {
            break;
        }
    }
    assert_eq!(found, nullifiers);
    Ok(())
}

#[tokio::test]
async fn recent_spend_query_finishes_without_pages_for_unrelated_generations() -> Result<()> {
    use shieldd_sdk_sct::{component::clock::EpochManager, nullifier_tree, Nullifier};
    let (storage, client) = initialized_client().await?;
    let nullifier = Nullifier(shieldd_sdk_crypto::Fq::from(1u64));
    let mut request = shieldd_sdk_proto::core::component::sct::v1::SpendStatusPageRequest {
        nullifiers: vec![nullifier.into()],
        start_height: 0,
        end_height: 0,
        cursor: vec![],
    };
    let genesis = client.queries().spend_status_page(request.clone()).await?;
    assert!(genesis.spends.is_empty() && genesis.next_cursor.is_empty());
    let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
    nullifier_tree::record_block_insertions(
        &mut state,
        nullifier_tree::InsertionInterval {
            height: 0,
            generation: 0,
            first_position: 1,
            count: 0,
        },
    )
    .await?;
    for generation in 1..=128u64 {
        nullifier_tree::rollover(&mut state, generation * 30, generation << 32).await?;
        if generation == 128 {
            nullifier_tree::insert_batch(&mut state, [nullifier]).await?;
        }
        nullifier_tree::record_block_insertions(
            &mut state,
            nullifier_tree::InsertionInterval {
                height: generation,
                generation,
                first_position: 1,
                count: u64::from(generation == 128),
            },
        )
        .await?;
    }
    state.put_block_height(128);
    storage.commit(state).await?;
    client
        .queries()
        .publish_committed(
            client
                .get_committed_state(GetCommittedStateRequest {})
                .await?,
        )
        .await?;
    request.start_height = 128;
    request.end_height = 128;
    let page = client.queries().spend_status_page(request.clone()).await?;
    assert_eq!(page.spends.len(), 1);
    assert_eq!(page.spends[0].height, 128);
    assert!(
        page.next_cursor.is_empty(),
        "unrelated generations require extra network round trips"
    );
    // Epoch completion opens the next tree before that tree has a block interval.
    let mut state = cnidarium::StateDelta::new(storage.latest_snapshot());
    nullifier_tree::rollover(&mut state, 129 * 30, 129 << 32).await?;
    storage.commit(state).await?;
    client
        .queries()
        .publish_committed(
            client
                .get_committed_state(GetCommittedStateRequest {})
                .await?,
        )
        .await?;
    let after_rollover = client.queries().spend_status_page(request).await?;
    assert_eq!(after_rollover.spends, page.spends);
    assert!(after_rollover.next_cursor.is_empty());
    Ok(())
}
