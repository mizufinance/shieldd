use group::GroupEncoding;
use std::fs::File;
use std::io::{Read, Write};
use std::ops::Deref;
use std::path::{Path, PathBuf};
use std::process::Command;
use std::sync::Arc;

use anyhow::{Context, Result};
use cnidarium::TempStorage;
use rand_core::OsRng;
use reddsa::VerificationKey;
use serde::{Deserialize, Serialize};
use sha2::Digest as _;
use shieldd_sdk_app::{
    genesis::{AppState, Content},
    test_support::{TestHost, TEST_CHAIN_ID},
    APP_VERSION, SUBSTORE_PREFIXES,
};
use shieldd_sdk_asset::{asset, Value};
use shieldd_sdk_compliance::{
    derive_regulated_nullifier_key,
    genesis::{GenesisUserRegistration, NativeAssetRegistration},
    structs::OrbisCapabilityCertificate,
    ComplianceLeaf,
};
use shieldd_sdk_keys::test_keys;
use shieldd_sdk_mock_client::MockClient;
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::DomainType;
use shieldd_sdk_shielded_pool::{genesis::Allocation, ShieldedInputPlan, ShieldedOutputPlan};
use shieldd_sdk_transaction::{
    memo::MemoPlaintext, plan::MemoPlan, Transaction, TransactionParameters,
};
use tokio::sync::Semaphore;
use tokio::task::JoinSet;

const REGULATED_DENOM: &str = "test_usd";
const POOL_TX_SHAPE: &str = "regulated-preconsensus-transfer";
const POOL_PROOF_FAMILY: &str = "transfer";
const POOL_ACTION_SHAPE: &str = "one_spend_two_outputs_blank_memo";
const POOL_REGULATED: bool = true;
const DEFAULT_SHARD_TX_COUNT: usize = 1_000;
const SYNTHETIC_BENCHMARK_TIME_RFC3339: &str = "2026-01-01T00:00:00Z";

#[derive(Clone)]
pub struct ProofTxPool {
    pub txs: Vec<Arc<Vec<u8>>>,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct ProofTxPoolMetadata {
    pub created_at: u64,
    pub chain_id: String,
    pub tx_shape: String,
    pub tx_count: usize,
    pub shard_count: usize,
    pub shard_tx_count: usize,
    pub compression: String,
    pub benchmark_time_rfc3339: String,
    pub proof_family: String,
    pub action_shape: String,
    pub regulated: bool,
    pub asset_denom: String,
    pub verifying_key_digest: String,
    pub registry_id: String,
    pub relation_digest: String,
    pub crate_version: String,
    pub git_commit: Option<String>,
    pub git_tree_state: String,
    pub executable_sha256: String,
    pub compatibility_fingerprint: String,
    pub tx_hashes: Vec<String>,
    pub raw_bytes: usize,
    pub compressed_bytes: u64,
}

pub async fn setup_proof_storage(
    n: usize,
) -> anyhow::Result<(TempStorage, TestHost, Arc<MockClient>)> {
    let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;

    let asset_id = asset::REGISTRY.parse_unit(REGULATED_DENOM).id();
    let allocations: Vec<Allocation> = std::iter::repeat(Allocation {
        raw_amount: 1_000_000u128.into(),
        raw_denom: REGULATED_DENOM.to_owned(),
        address: test_keys::ADDRESS_0.to_owned(),
    })
    .take(n)
    .collect();

    let authority_vk = VerificationKey::from(test_keys::SPEND_KEY.spend_auth_key());
    let native_asset = NativeAssetRegistration {
        audit_keys: Some(shieldd_sdk_compliance::audit_keys::test_keys()),
        asset_id,
        is_regulated: true,
        dk_pub: Some((*shieldd_sdk_crypto::generators::SPEND_AUTH).to_bytes()),
        registration_authority_vk: Some(authority_vk),
        seizure_authority_vk: Some(authority_vk),
        ring_pk: Some((*shieldd_sdk_crypto::generators::SPEND_AUTH).to_bytes()),
        ring_id: "test-ring".to_owned(),
        policy_id: "test-policy".to_owned(),
        permission: "read".to_owned(),
        resource: "document".to_owned(),
    };
    let policy = native_asset.asset_policy()?;
    let user_registrations = [
        test_keys::ADDRESS_0.deref().clone(),
        test_keys::ADDRESS_1.deref().clone(),
    ]
    .into_iter()
    .map(|address| {
        let rnk_dh_pk = address.diversified_generator().clone();
        let rnk = derive_regulated_nullifier_key(
            test_keys::FULL_VIEWING_KEY.incoming(),
            &address,
            asset_id,
            *shieldd_sdk_crypto::generators::SPEND_AUTH,
            rnk_dh_pk,
        )?;
        let leaf = ComplianceLeaf::registered_from_rnk(address, asset_id, rnk_dh_pk, rnk)?;
        Ok(GenesisUserRegistration {
            capability_certificate: OrbisCapabilityCertificate::sign_for_test(
                TEST_CHAIN_ID,
                &leaf,
                &policy,
                shieldd_sdk_crypto::Fr::from(1u64),
            )?,
            leaf,
        })
    })
    .collect::<anyhow::Result<Vec<_>>>()?;
    let content = Content {
        chain_id: TEST_CHAIN_ID.to_string(),
        compliance_content: shieldd_sdk_compliance::genesis::Content {
            native_assets: vec![native_asset],
            user_registrations,
            ..Default::default()
        },
        shielded_pool_content: shieldd_sdk_shielded_pool::genesis::Content {
            allocations,
            ..Default::default()
        },
        ..Default::default()
    };
    let initial_time = tendermint::Time::parse_from_rfc3339(SYNTHETIC_BENCHMARK_TIME_RFC3339)
        .context("parsing synthetic benchmark initial timestamp")?;
    let mut test_node = TestHost::new(
        storage.as_ref().clone(),
        AppState::Content(content),
        initial_time,
        registry()?,
    )
    .await?;
    test_node.execute(Vec::new()).await?;

    let client = Arc::new(
        MockClient::new(test_keys::SPEND_KEY.clone())
            .with_sync_to_storage(&storage)
            .await?,
    );

    Ok((storage, test_node, client))
}

fn proof_tx_build_concurrency() -> usize {
    std::env::var("BENCH_PROOF_TX_BUILD_CONCURRENCY")
        .ok()
        .and_then(|value| value.parse::<usize>().ok())
        .filter(|value| *value > 0)
        .unwrap_or(1)
}

pub async fn build_proof_transactions(
    client: Arc<MockClient>,
    storage: &TempStorage,
    n: usize,
) -> anyhow::Result<Vec<Vec<u8>>> {
    let asset_id = asset::REGISTRY.parse_unit(REGULATED_DENOM).id();
    let notes: Vec<_> = client
        .notes
        .values()
        .filter(|note| {
            note.asset_id() == asset_id && note.address() == test_keys::ADDRESS_0.deref().clone()
        })
        .cloned()
        .take(n)
        .collect();
    assert_eq!(notes.len(), n, "expected {n} notes, got {}", notes.len());

    let permits = Arc::new(Semaphore::new(proof_tx_build_concurrency()));
    let snapshot = storage.latest_snapshot();
    let mut tasks = JoinSet::new();

    for (ordinal, note) in notes.into_iter().enumerate() {
        let client = client.clone();
        let permits = permits.clone();
        let snapshot = snapshot.clone();
        tasks.spawn(async move {
            let _permit = permits
                .acquire_owned()
                .await
                .expect("proof tx semaphore should not be closed");
            let position = client
                .position(note.commit())
                .context("note position exists")?;
            let spend = ShieldedInputPlan::new(&mut OsRng, note.clone(), position);
            let send_amount = Amount::from(1u64);
            let change_amount = note.amount() - send_amount;
            let output = ShieldedOutputPlan::new(
                &mut OsRng,
                Value {
                    amount: send_amount,
                    asset_id: note.asset_id(),
                },
                test_keys::ADDRESS_1.deref().clone(),
            );
            let change = ShieldedOutputPlan::new(
                &mut OsRng,
                Value {
                    amount: change_amount,
                    asset_id: note.asset_id(),
                },
                note.address(),
            );

            let intent = shieldd_sdk_mock_client::TransactionIntent {
                actions: vec![shieldd_sdk_mock_client::TransferIntent {
                    spends: vec![spend.into()],
                    outputs: vec![output.into(), change.into()],
                    value_blinding: shieldd_sdk_crypto::Fr::from(1u64),
                }
                .into()],
                fee_funding: None,
                memo: Some(MemoPlan::new(
                    &mut OsRng,
                    MemoPlaintext::blank_memo(test_keys::ADDRESS_0.deref().clone()),
                )),
                transaction_parameters: TransactionParameters {
                    chain_id: TEST_CHAIN_ID.to_string(),
                    ..Default::default()
                },
                nullifier_window: None,
            };

            let plan = client.complete_intent(intent, snapshot).await?;
            let tx = client.witness_auth_build(&plan, registry()?).await?;
            Ok::<(usize, Vec<u8>), anyhow::Error>((ordinal, tx.encode_to_vec()))
        });
    }

    let mut tx_bytes = vec![Vec::new(); n];
    while let Some(joined) = tasks.join_next().await {
        let (ordinal, bytes) = joined.context("waiting for proof tx build task")??;
        tx_bytes[ordinal] = bytes;
    }

    Ok(tx_bytes)
}

pub async fn build_proof_tx_pool(
    client: Arc<MockClient>,
    storage: &TempStorage,
    pool_size: usize,
) -> anyhow::Result<ProofTxPool> {
    let txs = build_proof_transactions(client, storage, pool_size)
        .await?
        .into_iter()
        .map(Arc::new)
        .collect();
    Ok(ProofTxPool { txs })
}

pub fn build_proof_tx_workload(tx_count: usize, pool: &ProofTxPool) -> Vec<Vec<u8>> {
    assert!(tx_count > 0, "tx_count must be positive");
    assert!(
        pool.txs.len() >= tx_count,
        "pre-consensus workloads require at least {tx_count} distinct txs in the pool"
    );

    pool.txs
        .iter()
        .take(tx_count)
        .map(|tx| tx.as_ref().clone())
        .collect()
}

pub fn default_pool_dir(tx_count: usize) -> PathBuf {
    PathBuf::from("target")
        .join("bench")
        .join("proof_pools")
        .join(tx_count.to_string())
}

pub fn save_proof_tx_pool(out_dir: &Path, pool: &ProofTxPool) -> Result<ProofTxPoolMetadata> {
    std::fs::create_dir_all(out_dir.join("txs"))
        .with_context(|| format!("failed to create {}", out_dir.display()))?;

    let tx_hashes = pool
        .txs
        .iter()
        .map(|tx| hex::encode(sha2::Sha256::digest(tx.as_slice())))
        .collect::<Vec<_>>();
    let raw_bytes = pool.txs.iter().map(|tx| tx.len()).sum::<usize>();

    let shard_tx_count = DEFAULT_SHARD_TX_COUNT;
    let mut compressed_bytes = 0u64;
    let mut shard_count = 0usize;

    for (shard_index, shard) in pool.txs.chunks(shard_tx_count).enumerate() {
        shard_count += 1;
        let shard_path = out_dir
            .join("txs")
            .join(format!("part-{shard_index:03}.bin.zst"));
        let file = File::create(&shard_path)
            .with_context(|| format!("failed to create {}", shard_path.display()))?;
        let mut encoder = zstd::Encoder::new(file, 3).with_context(|| {
            format!("failed to create zstd encoder for {}", shard_path.display())
        })?;
        for tx in shard {
            encoder
                .write_all(&(tx.len() as u32).to_le_bytes())
                .context("writing tx length prefix")?;
            encoder.write_all(tx).context("writing tx bytes")?;
        }
        let file = encoder.finish().context("finishing zstd encoder")?;
        compressed_bytes += file
            .metadata()
            .with_context(|| format!("reading {}", shard_path.display()))?
            .len();
    }

    let verifying_key_digest = transfer_verifying_key_digest()?;
    let registry_id = hex::encode(registry()?.id());
    let relation_digest = hex::encode(
        registry()?
            .verifying_key(shieldd_sdk_circuits::proof::Family::Transfer)?
            .relation_digest(),
    );
    let git_commit = git_commit();
    let git_tree_state = git_tree_state();
    let metadata = ProofTxPoolMetadata {
        created_at: unix_ts(),
        chain_id: TEST_CHAIN_ID.to_string(),
        tx_shape: POOL_TX_SHAPE.to_string(),
        tx_count: pool.txs.len(),
        shard_count,
        shard_tx_count,
        compression: "zstd".to_string(),
        benchmark_time_rfc3339: SYNTHETIC_BENCHMARK_TIME_RFC3339.to_string(),
        proof_family: POOL_PROOF_FAMILY.to_string(),
        action_shape: POOL_ACTION_SHAPE.to_string(),
        regulated: POOL_REGULATED,
        asset_denom: REGULATED_DENOM.to_owned(),
        verifying_key_digest,
        registry_id,
        relation_digest,
        crate_version: env!("CARGO_PKG_VERSION").to_string(),
        git_commit,
        git_tree_state,
        executable_sha256: executable_digest()?,
        compatibility_fingerprint: compatibility_fingerprint(pool.txs.len())?,
        tx_hashes,
        raw_bytes,
        compressed_bytes,
    };

    let metadata_path = out_dir.join("metadata.json");
    std::fs::write(&metadata_path, serde_json::to_vec_pretty(&metadata)?)
        .with_context(|| format!("failed to write {}", metadata_path.display()))?;

    Ok(metadata)
}

pub fn load_proof_tx_pool(
    pool_dir: &Path,
    expected_tx_count: usize,
) -> Result<(ProofTxPool, ProofTxPoolMetadata)> {
    let metadata = read_metadata(pool_dir)?;
    anyhow::ensure!(
        metadata.tx_count == expected_tx_count,
        "proof pool transaction count mismatch: requested={} stored={}",
        expected_tx_count,
        metadata.tx_count
    );
    anyhow::ensure!(
        metadata.executable_sha256 == executable_digest()?,
        "proof pool executable identity mismatch"
    );
    anyhow::ensure!(
        metadata.compatibility_fingerprint == compatibility_fingerprint(metadata.tx_count)?,
        "proof pool compatibility fingerprint mismatch"
    );

    let mut txs = Vec::with_capacity(metadata.tx_count);
    for shard_index in 0..metadata.shard_count {
        let shard_path = pool_dir
            .join("txs")
            .join(format!("part-{shard_index:03}.bin.zst"));
        let file = File::open(&shard_path)
            .with_context(|| format!("failed to open {}", shard_path.display()))?;
        let mut decoder = zstd::Decoder::new(file).with_context(|| {
            format!("failed to create zstd decoder for {}", shard_path.display())
        })?;
        let mut bytes = Vec::new();
        decoder
            .read_to_end(&mut bytes)
            .with_context(|| format!("failed to read {}", shard_path.display()))?;
        txs.extend(scan_length_delimited_txs(&bytes)?.into_iter().map(Arc::new));
    }

    anyhow::ensure!(
        txs.len() == metadata.tx_count,
        "proof pool tx_count mismatch: metadata={} loaded={}",
        metadata.tx_count,
        txs.len()
    );

    validate_pool(&txs, &metadata.tx_hashes)?;
    Ok((ProofTxPool { txs }, metadata))
}

pub fn verify_proof_tx_pool(pool_dir: &Path) -> Result<ProofTxPoolMetadata> {
    let expected_tx_count = read_metadata(pool_dir)?.tx_count;
    let (_pool, metadata) = load_proof_tx_pool(pool_dir, expected_tx_count)?;
    Ok(metadata)
}

fn read_metadata(pool_dir: &Path) -> Result<ProofTxPoolMetadata> {
    let metadata_path = pool_dir.join("metadata.json");
    serde_json::from_slice(
        &std::fs::read(&metadata_path)
            .with_context(|| format!("failed to read {}", metadata_path.display()))?,
    )
    .with_context(|| format!("failed to parse {}", metadata_path.display()))
}

fn scan_length_delimited_txs(bytes: &[u8]) -> Result<Vec<Vec<u8>>> {
    let mut txs = Vec::new();
    let mut cursor = std::io::Cursor::new(bytes);
    let total_len = bytes.len() as u64;

    while cursor.position() < total_len {
        let mut len_bytes = [0u8; 4];
        cursor
            .read_exact(&mut len_bytes)
            .context("failed to read tx length prefix")?;
        let len = u32::from_le_bytes(len_bytes) as usize;
        let mut tx = vec![0u8; len];
        cursor
            .read_exact(&mut tx)
            .context("failed to read tx bytes")?;
        txs.push(tx);
    }

    Ok(txs)
}

fn validate_pool(txs: &[Arc<Vec<u8>>], expected_hashes: &[String]) -> Result<()> {
    anyhow::ensure!(
        txs.len() == expected_hashes.len(),
        "proof pool hash count mismatch: expected={} loaded={}",
        expected_hashes.len(),
        txs.len()
    );

    let mut seen_hashes = std::collections::BTreeSet::new();
    let mut seen_nullifiers = std::collections::BTreeSet::new();

    for (index, tx_bytes) in txs.iter().enumerate() {
        let actual_hash = hex::encode(sha2::Sha256::digest(tx_bytes.as_slice()));
        anyhow::ensure!(
            actual_hash == expected_hashes[index],
            "proof pool tx hash mismatch at ordinal {index}: expected={}, got={}",
            expected_hashes[index],
            actual_hash
        );
        anyhow::ensure!(
            seen_hashes.insert(actual_hash.clone()),
            "duplicate tx hash in proof pool: {actual_hash}"
        );

        let tx = Transaction::decode(tx_bytes.as_slice())
            .with_context(|| format!("decoding tx ordinal {index}"))?;
        anyhow::ensure!(
            tx.encode_to_vec() == tx_bytes.as_ref().clone(),
            "tx decode round-trip mismatch at ordinal {index}"
        );

        for nullifier in tx.spent_nullifiers() {
            anyhow::ensure!(
                seen_nullifiers.insert(nullifier),
                "duplicate spend nullifier in proof pool at ordinal {index}"
            );
        }
    }

    Ok(())
}

fn compatibility_fingerprint(tx_count: usize) -> Result<String> {
    let mut hasher = sha2::Sha256::new();
    hasher.update(TEST_CHAIN_ID.as_bytes());
    hasher.update(POOL_TX_SHAPE.as_bytes());
    hasher.update(POOL_PROOF_FAMILY.as_bytes());
    hasher.update(POOL_ACTION_SHAPE.as_bytes());
    hasher.update([POOL_REGULATED as u8]);
    hasher.update(APP_VERSION.to_le_bytes());
    hasher.update(SYNTHETIC_BENCHMARK_TIME_RFC3339.as_bytes());
    hasher.update((tx_count as u64).to_le_bytes());
    hasher.update(env!("CARGO_PKG_VERSION").as_bytes());
    hasher.update(transfer_verifying_key_digest()?.as_bytes());
    hasher.update(registry()?.id());
    hasher.update(executable_digest()?.as_bytes());
    Ok(hex::encode(hasher.finalize()))
}

fn executable_digest() -> Result<String> {
    static DIGEST: std::sync::OnceLock<Result<String, String>> = std::sync::OnceLock::new();
    DIGEST
        .get_or_init(|| {
            let digest = (|| -> Result<String> {
                let mut file =
                    File::open(std::env::current_exe()?).context("opening benchmark executable")?;
                let mut hasher = sha2::Sha256::new();
                let mut buffer = [0u8; 65536];
                loop {
                    let read = file.read(&mut buffer)?;
                    if read == 0 {
                        break;
                    }
                    hasher.update(&buffer[..read]);
                }
                Ok(hex::encode(hasher.finalize()))
            })();
            digest.map_err(|error| format!("{error:#}"))
        })
        .as_ref()
        .cloned()
        .map_err(|error| anyhow::anyhow!("{error}"))
}

fn transfer_verifying_key_digest() -> Result<String> {
    Ok(hex::encode(
        registry()?
            .verifying_key(shieldd_sdk_circuits::proof::Family::Transfer)?
            .digest(),
    ))
}

/// The benchmark process uses one operator-selected registry for fixtures and execution.
pub fn registry() -> Result<Arc<shieldd_sdk_proof_params::pari::Registry>> {
    static KEYS: std::sync::OnceLock<
        Result<Arc<shieldd_sdk_proof_params::pari::Registry>, String>,
    > = std::sync::OnceLock::new();
    KEYS.get_or_init(|| {
        let path = std::env::var("SHIELDD_PARI_KEYS").map_err(|e| e.to_string())?;
        shieldd_sdk_proof_params::pari::Registry::load(path)
            .map(Arc::new)
            .map_err(|e| format!("{e:#}"))
    })
    .as_ref()
    .map(Arc::clone)
    .map_err(|error| anyhow::anyhow!("{error}"))
}

fn git_commit() -> Option<String> {
    git_output(["rev-parse", "HEAD"])
}

fn git_tree_state() -> String {
    match git_output(["status", "--porcelain", "--untracked-files=no"]) {
        Some(output) if output.trim().is_empty() => "clean".to_string(),
        Some(_) => "dirty".to_string(),
        None => "unavailable".to_string(),
    }
}

fn git_output<const N: usize>(args: [&str; N]) -> Option<String> {
    let output = Command::new("git")
        .arg("-C")
        .arg(Path::new(env!("CARGO_MANIFEST_DIR")).join("../.."))
        .args(args)
        .output()
        .ok()?;
    if !output.status.success() {
        return None;
    }
    String::from_utf8(output.stdout)
        .ok()
        .map(|value| value.trim().to_string())
}

fn unix_ts() -> u64 {
    std::time::SystemTime::now()
        .duration_since(std::time::UNIX_EPOCH)
        .map(|d| d.as_secs())
        .unwrap_or(0)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[tokio::test]
    async fn proof_storage_admits_regulated_non_fee_notes() -> Result<()> {
        let (_storage, _host, client) = setup_proof_storage(1).await?;
        assert_eq!(client.notes.len(), 1);
        let note = client.notes.values().next().unwrap();
        assert_ne!(note.asset_id(), *shieldd_sdk_asset::BASE_ASSET_ID);
        assert_eq!(note.address(), test_keys::ADDRESS_0.deref().clone());
        Ok(())
    }

    #[test]
    fn corpus_cannot_be_reused_with_a_different_genesis_note_count() -> Result<()> {
        let directory = tempfile::tempdir()?;
        let txs = (0..3)
            .map(|i| {
                let mut tx = Transaction::default();
                tx.transaction_body.transaction_parameters.expiry_height = i;
                Arc::new(tx.encode_to_vec())
            })
            .collect();
        save_proof_tx_pool(directory.path(), &ProofTxPool { txs })?;
        assert!(load_proof_tx_pool(directory.path(), 3).is_ok());
        assert!(load_proof_tx_pool(directory.path(), 2).is_err());
        assert!(load_proof_tx_pool(directory.path(), 4).is_err());
        Ok(())
    }
    #[test]
    fn corpus_rejects_changed_executable_before_reading_shards() -> Result<()> {
        let directory = tempfile::tempdir()?;
        let pool = ProofTxPool {
            txs: vec![Arc::new(Transaction::default().encode_to_vec())],
        };
        let mut metadata = save_proof_tx_pool(directory.path(), &pool)?;
        std::fs::remove_dir_all(directory.path().join("txs"))?;
        metadata.executable_sha256 = "00".repeat(32);
        std::fs::write(
            directory.path().join("metadata.json"),
            serde_json::to_vec(&metadata)?,
        )?;
        let error = load_proof_tx_pool(directory.path(), 1)
            .err()
            .context("different build must fail")?;
        assert!(
            error.to_string().contains("executable identity"),
            "{error:#}"
        );
        Ok(())
    }
}
