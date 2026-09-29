//! Replay external snapshot scenarios through the real host and storage APIs.
//! Expected states are supplied by the caller, not calculated by this driver.
use super::*;
use cnidarium::{StateRead, Storage};
use futures::StreamExt as _;
use serde::{Deserialize, Serialize};
use shieldd_sdk_compliance::{
    admission::{state as admission, ComplianceSnapshot, StaleComplianceSnapshot},
    params::{ComplianceParameters, StateReadExt as _, StateWriteExt as _},
    state_key,
};
use shieldd_sdk_proto::StateReadProto as _;
use shieldd_sdk_sct::component::clock::EpochRead as _;
use std::collections::BTreeMap;

const START: i64 = 1_000;

#[derive(Debug, Clone, Deserialize, Serialize, PartialEq, Eq, PartialOrd, Ord)]
struct Snapshot {
    user: i64,
    asset: i64,
    epoch: u64,
    time: i64,
    height: u64,
}

#[derive(Debug, Clone, Deserialize, Serialize, PartialEq, Eq)]
struct Projection {
    user: i64,
    asset: i64,
    epoch: u64,
    time: i64,
    height: u64,
    grace: u64,
    phase: u8,
    frozen: bool,
    snapshots: Vec<Snapshot>,
}

#[derive(Deserialize)]
struct Step {
    op: String,
    x: i64,
    y: i64,
    result: String,
    s: Projection,
    durable: Projection,
}

type Roots = BTreeMap<i64, tct::StateCommitment>;

fn label(roots: &Roots, root: tct::StateCommitment) -> Result<i64> {
    roots
        .iter()
        .find_map(|(id, value)| (*value == root).then_some(*id))
        .context("runtime produced a root without a trace identity")
}

fn bind(roots: &mut Roots, id: i64, root: tct::StateCommitment) -> Result<()> {
    if let Some(known) = roots.get(&id) {
        ensure!(*known == root, "root identity changed for trace label {id}");
    } else {
        ensure!(
            !roots.values().any(|known| *known == root),
            "distinct trace labels alias a root"
        );
        roots.insert(id, root);
    }
    Ok(())
}

async fn project<S: StateRead + ?Sized>(
    state: &S,
    phase: u8,
    users: &Roots,
    assets: &Roots,
) -> Result<Projection> {
    let mut snapshots = Vec::new();
    let records = state.prefix::<ComplianceSnapshot>(state_key::admission::pairs_prefix());
    futures::pin_mut!(records);
    while let Some(entry) = records.next().await {
        let (_, p) = entry?;
        snapshots.push(Snapshot {
            user: label(users, p.user_root)?,
            asset: label(assets, p.asset_root)?,
            epoch: p.freeze_epoch,
            height: p.observed_height,
            time: i64::try_from(p.observed_time_seconds)? - START,
        });
        let indexed: ComplianceSnapshot = state
            .get(&state_key::admission::last_seen(&p))
            .await?
            .context("missing chronological snapshot record")?;
        ensure!(indexed == p, "pair/index disagreement");
    }
    let indexes = state.prefix::<ComplianceSnapshot>(state_key::admission::last_seen_prefix());
    futures::pin_mut!(indexes);
    let mut index_count = 0;
    while let Some(entry) = indexes.next().await {
        entry?;
        index_count += 1;
    }
    ensure!(
        index_count == snapshots.len(),
        "orphan chronological record"
    );
    snapshots.sort();
    let leaf = state
        .get_user_leaf(&test_keys::ADDRESS_0, regulated_test_denom().id())
        .await?
        .context("registered replay user")?;
    Ok(Projection {
        user: label(users, state.get_user_tree_root().await?)?,
        asset: label(assets, state.get_asset_imt_root().await?)?,
        epoch: admission::epoch(state).await?,
        time: state.get_current_block_timestamp().await?.unix_timestamp() - START,
        height: state.get_block_height().await?,
        grace: state
            .get_compliance_params()
            .await?
            .compliance_anchor_max_age_seconds,
        phase,
        frozen: leaf.status == UserAssetStatus::Frozen,
        snapshots,
    })
}

fn classification(result: Result<()>) -> Result<&'static str> {
    match result {
        Ok(()) => Ok("ok"),
        Err(error) => match error.downcast_ref::<StaleComplianceSnapshot>() {
            Some(StaleComplianceSnapshot::Unknown) => Ok("unknown"),
            Some(StaleComplianceSnapshot::Frozen) => Ok("frozen"),
            Some(StaleComplianceSnapshot::Expired) => Ok("expired"),
            Some(StaleComplianceSnapshot::Future) => Ok("future"),
            None => Err(error),
        },
    }
}

#[tokio::test]
#[ignore = "external scenario input and complete local Pari registry required"]
async fn snapshot_host_trace_replay() -> Result<()> {
    let input = std::env::var("SHIELDD_SNAPSHOT_TRACES").context("SHIELDD_SNAPSHOT_TRACES")?;
    let traces: Vec<Vec<Step>> = serde_json::from_slice(&std::fs::read(input)?)?;
    ensure!(!traces.is_empty(), "no replay traces");
    let mut operations = 0;
    let mut reopen_count = 0;
    for (trace_id, steps) in traces.iter().enumerate() {
        let directory = tempfile::tempdir()?;
        let db = directory.path().join("db");
        let storage = Storage::load(db.clone(), SUBSTORE_PREFIXES.to_vec()).await?;
        let registry = crate::app::tests::registry();
        let mut host = HostExecution::new(storage, registry.clone()).await?;
        host.init_genesis(host_genesis()).await?;
        host.commit().await?;
        host.begin_block(HostBlock {
            height: 1,
            time: Time::from_unix_timestamp(START, 0)?,
        })
        .await?;
        let mut users = Roots::from([(-1, host.app.state.get_user_tree_root().await?)]);
        let mut assets = Roots::from([(-1, host.app.state.get_asset_imt_root().await?)]);
        register_regulated_test_user(&mut host).await?;
        let mut delta = StateDelta::new(host.app.state.clone());
        delta.put_compliance_params(ComplianceParameters {
            compliance_anchor_max_age_seconds: 2,
        });
        host.app.apply(delta);
        bind(&mut users, 0, host.app.state.get_user_tree_root().await?)?;
        bind(&mut assets, 0, host.app.state.get_asset_imt_root().await?)?;
        host.end_block(1).await?;
        host.commit().await?;
        for (index, step) in steps.iter().enumerate() {
            let actual_result = match step.op.as_str() {
                "init" => {
                    ensure!(index == 0, "init after first step");
                    "none"
                }
                "begin" => {
                    let height = host.committed_state().await?.height + 1;
                    match host
                        .begin_block(HostBlock {
                            height: i64::try_from(height)?,
                            time: Time::from_unix_timestamp(START + step.x, 0)?,
                        })
                        .await
                    {
                        Ok(_) => "ok",
                        Err(error) if error.to_string().contains("parent block time") => "backward",
                        Err(error) => return Err(error),
                    }
                }
                "asset" => {
                    let mut delta = StateDelta::new(host.app.state.clone());
                    delta
                        .test_only_register_asset(
                            asset::Id(shieldd_sdk_crypto::Fq::from(
                                10_000 + u64::try_from(step.s.asset)?,
                            )),
                            AssetPolicy::for_test(
                                Element::generator(),
                                u128::MAX,
                                Element::generator(),
                            ),
                            true,
                        )
                        .await?;
                    host.app.apply(delta);
                    bind(
                        &mut assets,
                        step.s.asset,
                        host.app.state.get_asset_imt_root().await?,
                    )?;
                    "ok"
                }
                "freeze" | "unfreeze" => {
                    let action = if step.op == "freeze" {
                        UserAssetStatusAction::Freeze
                    } else {
                        UserAssetStatusAction::Unfreeze
                    };
                    let height = host.app.state.get_block_height().await?;
                    host.apply_compliance_action(compliance_request(
                        host_source_at(height, u32::try_from(index)?),
                        action,
                    ))
                    .await?;
                    bind(
                        &mut users,
                        step.s.user,
                        host.app.state.get_user_tree_root().await?,
                    )?;
                    "ok"
                }
                "grace" => {
                    let mut delta = StateDelta::new(host.app.state.clone());
                    delta.put_compliance_params(ComplianceParameters {
                        compliance_anchor_max_age_seconds: u64::try_from(step.x)?,
                    });
                    host.app.apply(delta);
                    "ok"
                }
                "remember" => "ok", // Abstract proof token; genuine cache delivery has its own regression.
                "check" | "cached" => classification(
                    admission::validate(
                        &*host.app.state,
                        users.get(&step.x).context("known user root")?,
                        assets.get(&step.y).context("known asset root")?,
                    )
                    .await,
                )?,
                "end" => {
                    host.end_block(i64::try_from(host.app.state.get_block_height().await?)?)
                        .await?;
                    "ok"
                }
                "commit" => {
                    host.commit().await?;
                    "ok"
                }
                "rollback" => {
                    host.rollback().await?;
                    "ok"
                }
                "restart" => {
                    let checkpoint = host.export_genesis().await?;
                    host.release().await;
                    let storage = Storage::load(db.clone(), SUBSTORE_PREFIXES.to_vec()).await?;
                    host = HostExecution::new(storage, registry.clone()).await?;
                    host.init_genesis(checkpoint).await?;
                    admission::validate_checkpoint(&*host.app.state).await?;
                    // Checkpoint validation enters its own phase; return to the
                    // same committed parent through the production rollback API.
                    host.rollback().await?;
                    reopen_count += 1;
                    "ok"
                }
                other => anyhow::bail!("unsupported replay operation {other}"),
            };
            ensure!(actual_result == step.result, "SNAPSHOT_OUTCOME trace={trace_id} step={index} operation={} expected={} actual={actual_result}", step.op, step.result);
            let phase = match host.phase() {
                HostExecutionPhase::Idle | HostExecutionPhase::InitializedCheckpointGenesis => 0,
                HostExecutionPhase::InBlock => 1,
                HostExecutionPhase::EndedBlock => 2,
                other => anyhow::bail!("unexpected phase {other:?}"),
            };
            let actual = project(&*host.app.state, phase, &users, &assets).await?;
            let mut expected = step.s.clone();
            expected.snapshots.sort();
            ensure!(actual == expected, "SNAPSHOT_STATE trace={trace_id} step={index} expected={expected:?} actual={actual:?}");
            let actual = project(&host.storage.latest_snapshot(), 0, &users, &assets).await?;
            let mut expected = step.durable.clone();
            expected.snapshots.sort();
            ensure!(actual == expected, "SNAPSHOT_DURABLE trace={trace_id} step={index} expected={expected:?} actual={actual:?}");
            operations += 1;
        }
        host.release().await;
    }
    ensure!(reopen_count > 0, "trace set did not reopen storage");
    println!(
        "SNAPSHOT_REPLAY_OK traces={} operations={operations} reopens={reopen_count}",
        traces.len()
    );
    Ok(())
}
