use super::state::*;
use super::*;
use crate::{
    params::{ComplianceParameters, StateWriteExt},
    registry::ComplianceRegistryComponentWrite,
    state_key,
};
use cnidarium::{StateDelta, StateWrite, TempStorage};
use futures::StreamExt;
use shieldd_sdk_crypto::Fq;
use shieldd_sdk_proto::{StateReadProto, StateWriteProto};
use shieldd_sdk_sct::component::clock::EpochManager;

fn set_time<S: StateWrite>(state: &mut S, height: u64, seconds: i64) {
    state.put_block_height(height);
    state.put_block_timestamp(
        height,
        tendermint::Time::from_unix_timestamp(seconds, 0).unwrap(),
    );
}

#[tokio::test]
async fn paired_grace_boundaries_and_parameter_changes() -> Result<()> {
    let storage = TempStorage::new().await?;
    let mut state = StateDelta::new(storage.latest_snapshot());
    state.initialize_trees().await?;
    state.put_compliance_params(ComplianceParameters::default());
    set_time(&mut state, 1, 1000);
    record(&mut state, 1, 1000).await?;
    let old = current(&state).await?.unwrap();
    // Model the independently changing roots at the admission boundary.
    let new_user = StateCommitment(Fq::from(17u64));
    let new_asset = StateCommitment(Fq::from(23u64));
    state.put(state_key::user_tree_root().to_owned(), new_user);
    state.put(state_key::asset_imt_root().to_owned(), new_asset);
    for now in [2799, 2800] {
        set_time(&mut state, 2, now);
        validate(&state, &old.user_root, &old.asset_root).await?;
        assert!(validate(&state, &new_user, &old.asset_root).await.is_err());
        assert!(validate(&state, &old.user_root, &new_asset).await.is_err());
    }
    set_time(&mut state, 2, 2801);
    assert_eq!(
        validate(&state, &old.user_root, &old.asset_root)
            .await
            .unwrap_err()
            .downcast_ref::<StaleComplianceSnapshot>(),
        Some(&StaleComplianceSnapshot::Expired)
    );
    validate(&state, &new_user, &new_asset).await?;
    state.put_compliance_params(ComplianceParameters {
        compliance_anchor_max_age_seconds: 0,
    });
    set_time(&mut state, 2, 1000);
    assert!(validate(&state, &old.user_root, &old.asset_root)
        .await
        .is_err());
    validate(&state, &new_user, &new_asset).await?;
    state.put_compliance_params(ComplianceParameters::default());
    set_time(&mut state, 2, 999);
    assert_eq!(
        validate(&state, &old.user_root, &old.asset_root)
            .await
            .unwrap_err()
            .downcast_ref::<StaleComplianceSnapshot>(),
        Some(&StaleComplianceSnapshot::Future)
    );
    set_time(&mut state, 2, 2801);
    prune(&mut state, 2801).await?;
    state.put_compliance_params(ComplianceParameters {
        compliance_anchor_max_age_seconds: 10_000,
    });
    assert_eq!(
        validate(&state, &old.user_root, &old.asset_root)
            .await
            .unwrap_err()
            .downcast_ref::<StaleComplianceSnapshot>(),
        Some(&StaleComplianceSnapshot::Unknown)
    );
    Ok(())
}

#[tokio::test]
async fn retained_snapshots_cannot_mix_their_roots() -> Result<()> {
    let storage = TempStorage::new().await?;
    let mut state = StateDelta::new(storage.latest_snapshot());
    state.initialize_trees().await?;
    state.put_compliance_params(ComplianceParameters::default());
    let pairs = [(17u64, 23u64), (29, 31), (37, 41)].map(|(user, asset)| {
        (
            StateCommitment(Fq::from(user)),
            StateCommitment(Fq::from(asset)),
        )
    });
    for (index, (user, asset)) in pairs.iter().enumerate() {
        let height = index as u64 + 1;
        set_time(&mut state, height, 1000 + index as i64);
        state.put(state_key::user_tree_root().to_owned(), *user);
        state.put(state_key::asset_imt_root().to_owned(), *asset);
        record(&mut state, height, 1000 + index as u64).await?;
    }
    for (user, asset) in pairs {
        validate(&state, &user, &asset).await?;
    }
    for (user, asset) in [(pairs[0].0, pairs[1].1), (pairs[1].0, pairs[0].1)] {
        assert_eq!(
            validate(&state, &user, &asset)
                .await
                .unwrap_err()
                .downcast_ref::<StaleComplianceSnapshot>(),
            Some(&StaleComplianceSnapshot::Unknown)
        );
    }
    Ok(())
}

#[tokio::test]
async fn renewal_pruning_budget_and_freeze_rollback() -> Result<()> {
    let storage = TempStorage::new().await?;
    let mut state = StateDelta::new(storage.latest_snapshot());
    state.initialize_trees().await?;
    state.put_compliance_params(ComplianceParameters::default());
    set_time(&mut state, 1, 1000);
    record(&mut state, 1, 1000).await?;
    let first = current(&state).await?.unwrap();
    record(&mut state, 2, 1100).await?;
    assert!(state
        .get::<ComplianceSnapshot>(&state_key::admission::last_seen(&first))
        .await?
        .is_none());
    let renewed = current(&state).await?.unwrap();
    assert_eq!(renewed.observed_time_seconds, 1100);
    {
        let mut candidate = StateDelta::new(&state);
        freeze(&mut candidate).await?;
        assert_eq!(epoch(&candidate).await?, 1);
        assert_eq!(
            validate_snapshot(&renewed, epoch(&candidate).await?, 1100, 1800),
            Err(StaleComplianceSnapshot::Frozen)
        );
    }
    assert_eq!(epoch(&state).await?, 0);
    for height in 3..=70 {
        state.put(
            state_key::user_tree_root().to_owned(),
            StateCommitment(Fq::from(height)),
        );
        record(&mut state, height, 1100 + height).await?;
    }
    let count_before = state
        .prefix::<ComplianceSnapshot>(state_key::admission::last_seen_prefix())
        .count()
        .await;
    freeze(&mut state).await?;
    prune(&mut state, 1200).await?;
    assert_eq!(
        state
            .prefix::<ComplianceSnapshot>(state_key::admission::last_seen_prefix())
            .count()
            .await,
        count_before - PRUNE_LIMIT
    );
    storage.commit(state).await?;
    let mut state = StateDelta::new(storage.latest_snapshot());
    assert_eq!(epoch(&state).await?, 1);
    prune(&mut state, 1200).await?;
    assert_eq!(
        state
            .prefix::<ComplianceSnapshot>(state_key::admission::last_seen_prefix())
            .count()
            .await,
        0
    );
    Ok(())
}

#[tokio::test]
async fn genesis_clock_and_parent_time() -> Result<()> {
    let storage = TempStorage::new().await?;
    let mut state = StateDelta::new(storage.latest_snapshot());
    state.initialize_trees().await?;
    state.put_block_height(0);
    let time = tendermint::Time::from_unix_timestamp(1000, 0)?;
    validate_time(&state, time).await?;
    assert!(current(&state).await?.is_none());
    set_time(&mut state, 1, 1000);
    record(&mut state, 1, 1000).await?;
    state.delete(state_key::admission::pending_genesis().to_owned());
    validate_time(&state, time).await?;
    state.put_compliance_params(ComplianceParameters::default());
    validate_checkpoint(&state).await?;
    let snapshot = current(&state).await?.unwrap();
    let mut corrupt = StateDelta::new(&state);
    corrupt.delete(state_key::admission::last_seen(&snapshot));
    assert!(validate_checkpoint(&corrupt)
        .await
        .unwrap_err()
        .to_string()
        .contains("chronological index"));
    assert!(
        validate_time(&state, tendermint::Time::from_unix_timestamp(999, 0)?)
            .await
            .is_err()
    );
    Ok(())
}

#[tokio::test]
async fn zero_window_prunes_old_pairs_with_equal_timestamps() -> Result<()> {
    let storage = TempStorage::new().await?;
    let mut state = StateDelta::new(storage.latest_snapshot());
    state.initialize_trees().await?;
    state.put_compliance_params(ComplianceParameters {
        compliance_anchor_max_age_seconds: 0,
    });
    set_time(&mut state, 1, 1000);
    record(&mut state, 1, 1000).await?;
    let old = current(&state).await?.unwrap();
    state.put(
        state_key::user_tree_root().to_owned(),
        StateCommitment(Fq::from(19)),
    );
    set_time(&mut state, 2, 1000);
    record(&mut state, 2, 1000).await?;
    let latest = current(&state).await?.unwrap();
    prune(&mut state, 1000).await?;
    assert_eq!(current(&state).await?, Some(latest));
    state.put_compliance_params(ComplianceParameters::default());
    assert_eq!(
        validate(&state, &old.user_root, &old.asset_root)
            .await
            .unwrap_err()
            .downcast_ref::<StaleComplianceSnapshot>(),
        Some(&StaleComplianceSnapshot::Unknown)
    );
    Ok(())
}
