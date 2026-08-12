use super::*;

use anyhow::{ensure, Context as _};
use shieldd_sdk_asset::{asset, Value};
use shieldd_sdk_keys::Address;
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::execution_client::v1::{
    DepositRequest, DepositResponse, HostSource as ProtoHostSource,
};
use shieldd_sdk_shielded_pool::component::{
    AssetRegistry as _, AssetRegistryRead as _, NoteManager as _,
};
use std::str::FromStr as _;
use std::time::Instant;

const HOST_DEPOSIT_SOURCE_PREFIX: &str = "application/host_deposit/source";
const HOST_DEPOSIT_DOMAIN: &[u8] = b"shieldd.host_deposit.v1";
const HOST_PROPOSER_ADDRESS: [u8; 20] = [0u8; 20];

#[derive(Clone, Debug)]
pub struct HostBlock {
    pub height: i64,
    pub time: Time,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum HostExecutionPhase {
    Idle,
    InitializedGenesis,
    InitializedCheckpointGenesis,
    InBlock,
    EndedBlock,
}

#[derive(Clone, Debug, Default)]
pub struct HostExecutionResponse {
    pub events: Vec<abci::Event>,
}

#[derive(Clone, Debug, Default)]
pub struct HostTxResponse {
    pub code: u32,
    pub data: Vec<u8>,
    pub log: String,
    pub info: String,
    pub gas_wanted: i64,
    pub gas_used: i64,
    pub events: Vec<abci::Event>,
    pub codespace: String,
    pub withdrawals: Vec<HostWithdrawal>,
}

impl HostTxResponse {
    fn accepted(events: Vec<abci::Event>, withdrawals: Vec<HostWithdrawal>) -> Self {
        Self {
            events,
            withdrawals,
            ..Default::default()
        }
    }

    fn rejected(error: anyhow::Error) -> Self {
        Self {
            code: 1,
            log: format!("{error:#}"),
            codespace: "shieldd".to_owned(),
            ..Default::default()
        }
    }
}

/// Host-chain transfer emitted by an accepted shielded withdrawal.
#[derive(Clone, Debug)]
pub struct HostWithdrawal {
    pub recipient: String,
    pub denom: String,
    pub amount: Amount,
}

#[derive(Clone, Debug)]
pub struct HostCommit {
    pub root_hash: Vec<u8>,
}

#[derive(Clone, Debug, Eq, PartialEq)]
pub struct HostCommittedState {
    pub height: u64,
    pub root_hash: Vec<u8>,
}

/// Drives Shieldd execution from a host chain without owning validator state.
///
/// This adapter uses host-only lifecycle hooks, not the standalone ABCI lifecycle
/// that runs staking, governance, IBC, validator updates, and upgrade halts.
pub struct HostExecution {
    storage: Storage,
    app: App,
    stateless_cache: Arc<StatelessCache>,
    phase: HostExecutionPhase,
}

#[derive(Debug)]
pub struct HostDepositResult {
    pub response: DepositResponse,
    pub events: Vec<abci::Event>,
}

impl HostExecution {
    pub fn new(storage: Storage) -> Self {
        Self::with_cache(storage, Arc::new(StatelessCache::new()))
    }

    pub fn with_cache(storage: Storage, stateless_cache: Arc<StatelessCache>) -> Self {
        let mut app = App::new(storage.latest_snapshot());
        app.set_block_tx_indexing_mode(BlockTxIndexingMode::DeferredBatch);

        Self {
            storage,
            app,
            stateless_cache,
            phase: HostExecutionPhase::Idle,
        }
    }

    pub fn phase(&self) -> HostExecutionPhase {
        self.phase
    }

    /// Initializes execution state from content genesis or verifies a checkpoint root.
    ///
    /// Content genesis initializes only host-supported execution components.
    pub async fn init_genesis(&mut self, genesis: AppState) -> Result<()> {
        ensure!(
            self.phase == HostExecutionPhase::Idle,
            "init_genesis called while host execution phase is {:?}",
            self.phase
        );

        match &genesis {
            AppState::Content(_) => {
                ensure!(
                    self.storage.latest_version() == u64::MAX,
                    "database already initialized"
                );
                self.app.init_host_chain(&genesis).await;
                self.phase = HostExecutionPhase::InitializedGenesis;
            }
            AppState::Checkpoint(expected_root_hash) => {
                ensure!(
                    self.storage.latest_version() != u64::MAX,
                    "checkpoint genesis requires initialized storage"
                );
                let expected_root_hash: [u8; 32] = expected_root_hash
                    .as_slice()
                    .try_into()
                    .context("checkpoint genesis root hash must be 32 bytes")?;
                let actual_root_hash = self.storage.latest_snapshot().root_hash().await?;
                ensure!(
                    actual_root_hash.0 == expected_root_hash,
                    "checkpoint genesis root hash does not match storage root"
                );
                self.app.init_host_chain(&genesis).await;
                self.phase = HostExecutionPhase::InitializedCheckpointGenesis;
            }
        }

        Ok(())
    }

    pub async fn export_genesis(&self) -> Result<AppState> {
        ensure!(
            self.phase == HostExecutionPhase::Idle,
            "export_genesis called while host execution phase is {:?}",
            self.phase
        );
        ensure!(
            self.storage.latest_version() != u64::MAX,
            "cannot export genesis from uninitialized storage"
        );

        let root_hash = self.storage.latest_snapshot().root_hash().await?;
        Ok(AppState::Checkpoint(root_hash.0.to_vec()))
    }

    /// Returns the host height and application root from the latest durable state.
    pub async fn committed_state(&self) -> Result<HostCommittedState> {
        ensure!(
            self.storage.latest_version() != u64::MAX,
            "cannot get committed state from uninitialized storage"
        );

        let snapshot = self.storage.latest_snapshot();
        let height = snapshot.get_block_height().await?;
        let root_hash = snapshot.root_hash().await?;
        Ok(HostCommittedState {
            height,
            root_hash: root_hash.0.to_vec(),
        })
    }

    async fn begin_block_request(&self, block: HostBlock) -> Result<request::BeginBlock> {
        ensure!(block.height > 0, "begin_block height must be positive");
        let height = u64::try_from(block.height).context("converting host block height")?;
        let height = block::Height::try_from(height).context("converting host block height")?;
        let chain_id = chain::Id::try_from(self.app.state.get_chain_id().await?)
            .context("parsing host chain id")?;
        let root_hash = self.storage.latest_snapshot().root_hash().await?;
        let app_hash =
            AppHash::try_from(root_hash.0.to_vec()).context("converting host app hash")?;

        Ok(request::BeginBlock {
            hash: Hash::None,
            header: block::Header {
                version: block::header::Version { block: 11, app: 1 },
                chain_id,
                height,
                time: block.time,
                last_block_id: None,
                last_commit_hash: None,
                data_hash: None,
                validators_hash: Hash::None,
                next_validators_hash: Hash::None,
                consensus_hash: Hash::None,
                app_hash,
                last_results_hash: None,
                evidence_hash: None,
                proposer_address: account::Id::new(HOST_PROPOSER_ADDRESS),
            },
            last_commit_info: abci::types::CommitInfo {
                round: 0u8.into(),
                votes: Vec::new(),
            },
            byzantine_validators: Vec::new(),
        })
    }

    /// Starts a host block using an ABCI-shaped request with empty validator data.
    pub async fn begin_block(&mut self, block: HostBlock) -> Result<HostExecutionResponse> {
        ensure!(
            matches!(
                self.phase,
                HostExecutionPhase::Idle | HostExecutionPhase::InitializedCheckpointGenesis
            ),
            "begin_block called while host execution phase is {:?}",
            self.phase
        );

        let begin_block = self.begin_block_request(block).await?;
        let events = self.app.begin_host_block(&begin_block).await;
        self.phase = HostExecutionPhase::InBlock;
        Ok(HostExecutionResponse { events })
    }

    pub async fn deposit(&mut self, deposit: DepositRequest) -> Result<HostDepositResult> {
        ensure!(
            self.phase == HostExecutionPhase::InBlock,
            "deposit called while host execution phase is {:?}",
            self.phase
        );

        self.app.deposit(deposit).await
    }

    pub async fn check_tx(&self, tx_bytes: &[u8]) -> Result<HostTxResponse> {
        ensure!(
            self.storage.latest_version() != u64::MAX,
            "check_tx requires initialized storage"
        );

        let mut app = App::new(self.storage.latest_snapshot());
        app.set_block_tx_indexing_mode(BlockTxIndexingMode::NoIndex);

        Ok(
            match app
                .deliver_tx_bytes(tx_bytes, Some(self.stateless_cache.as_ref()))
                .await
            {
                Ok(events) => HostTxResponse::accepted(events, Vec::new()),
                Err(error) => HostTxResponse::rejected(error),
            },
        )
    }

    pub async fn deliver_tx(&mut self, tx_bytes: &[u8]) -> Result<HostTxResponse> {
        ensure!(
            self.phase == HostExecutionPhase::InBlock,
            "deliver_tx called while host execution phase is {:?}",
            self.phase
        );

        let tx = match Transaction::decode_canonical(tx_bytes).context("decoding host transaction")
        {
            Ok(tx) => tx,
            Err(error) => return Ok(HostTxResponse::rejected(error)),
        };
        let withdrawals = match self.resolve_host_withdrawals(&tx).await {
            Ok(withdrawals) => withdrawals,
            Err(error) => return Ok(HostTxResponse::rejected(error)),
        };

        Ok(
            match self
                .app
                .deliver_tx_bytes(tx_bytes, Some(self.stateless_cache.as_ref()))
                .await
            {
                Ok(events) => HostTxResponse::accepted(events, withdrawals),
                Err(error) => HostTxResponse::rejected(error),
            },
        )
    }

    async fn resolve_host_withdrawals(&self, tx: &Transaction) -> Result<Vec<HostWithdrawal>> {
        let mut withdrawals = Vec::new();
        for action in tx.shielded_host_withdrawals() {
            let value = action.body.withdrawal.value;
            let metadata = self
                .app
                .state
                .denom_metadata_by_asset(&value.asset_id)
                .await
                .ok_or_else(|| anyhow::anyhow!("host withdrawal asset is not registered"))?;
            withdrawals.push(HostWithdrawal {
                recipient: action.body.withdrawal.recipient.clone(),
                denom: metadata.base_denom().denom,
                amount: value.amount,
            });
        }
        Ok(withdrawals)
    }

    /// Finishes the current host block without producing validator set updates.
    pub async fn end_block(&mut self, height: i64) -> Result<HostExecutionResponse> {
        ensure!(
            self.phase == HostExecutionPhase::InBlock,
            "end_block called while host execution phase is {:?}",
            self.phase
        );

        let events = self.app.end_host_block(&request::EndBlock { height }).await;
        self.phase = HostExecutionPhase::EndedBlock;
        Ok(HostExecutionResponse { events })
    }

    /// Commits execution state without standalone chain halt or upgrade handling.
    pub async fn commit(&mut self) -> Result<HostCommit> {
        ensure!(
            matches!(
                self.phase,
                HostExecutionPhase::InitializedGenesis | HostExecutionPhase::EndedBlock
            ),
            "commit called while host execution phase is {:?}",
            self.phase
        );

        let root_hash = self.app.commit_host(self.storage.clone()).await;
        self.phase = HostExecutionPhase::Idle;
        Ok(HostCommit {
            root_hash: root_hash.0.to_vec(),
        })
    }

    pub fn rollback(&mut self) {
        let mut app = App::new(self.storage.latest_snapshot());
        app.set_block_tx_indexing_mode(BlockTxIndexingMode::DeferredBatch);
        self.app = app;
        self.phase = HostExecutionPhase::Idle;
    }

    /// Drops application snapshots before shutting down Cnidarium and RocksDB.
    pub async fn release(self) {
        let Self {
            storage,
            app,
            stateless_cache,
            phase: _,
        } = self;
        drop(app);
        drop(stateless_cache);
        storage.release().await;
    }
}

impl App {
    /// Initializes the Shieldd execution state for a host-owned chain.
    ///
    /// Unlike `App::init_chain`, this skips staking, governance, and IBC state.
    async fn init_host_chain(&mut self, app_state: &AppState) {
        let mut state_tx = self
            .state
            .try_begin_transaction()
            .expect("state Arc should not be referenced elsewhere");
        match app_state {
            AppState::Content(genesis) => {
                state_tx.put_chain_id(genesis.chain_id.clone());
                Sct::init_chain(&mut state_tx, Some(&genesis.sct_content)).await;
                ShieldedPool::init_chain(&mut state_tx, Some(&genesis.shielded_pool_content)).await;
                state_tx.put_host_withdrawals_enabled(true);
                FeeComponent::init_chain(&mut state_tx, Some(&genesis.fee_content)).await;
                Compliance::init_chain(&mut state_tx, Some(&genesis.compliance_content)).await;

                state_tx
                    .finish_block()
                    .await
                    .expect("must be able to finish compact block");
            }
            AppState::Checkpoint(_) => {
                ShieldedPool::init_chain(&mut state_tx, None).await;
                FeeComponent::init_chain(&mut state_tx, None).await;
                Compliance::init_chain(&mut state_tx, None).await;
            }
        };

        state_tx.apply();
    }

    /// Runs per-block hooks for execution components only.
    ///
    /// Unlike `App::begin_block`, this skips param changes and validator-chain hooks.
    async fn begin_host_block(&mut self, begin_block: &request::BeginBlock) -> Vec<abci::Event> {
        self.pending_sct_append_log.clear();
        let mut state_tx = StateDelta::new(self.state.clone());

        clear_block_fee_price_cache(&mut state_tx);

        let mut arc_state_tx = Arc::new(state_tx);
        Sct::begin_block(&mut arc_state_tx, begin_block).await;
        ShieldedPool::begin_block(&mut arc_state_tx, begin_block).await;
        FeeComponent::begin_block(&mut arc_state_tx, begin_block).await;

        let state_tx = Arc::try_unwrap(arc_state_tx)
            .expect("components did not retain copies of shared state");

        self.apply(state_tx)
    }

    /// Flushes host transactions and closes execution-component block and epoch state.
    ///
    /// Unlike `App::end_block`, this skips IBC, governance, staking, and validator updates.
    async fn end_host_block(&mut self, end_block: &request::EndBlock) -> Vec<abci::Event> {
        self.flush_deferred_block_transactions()
            .await
            .expect("must be able to flush deferred block transactions in end_block");
        let mut state_tx = StateDelta::new(self.state.clone());
        self.materialize_pending_sct_append_log(&mut state_tx)
            .await
            .expect("must be able to materialize deferred SCT payloads in end_block");

        tracing::debug!("running host app components' `end_block` hooks");
        let mut arc_state_tx = Arc::new(state_tx);
        Sct::end_block(&mut arc_state_tx, end_block).await;
        ShieldedPool::end_block(&mut arc_state_tx, end_block).await;
        FeeComponent::end_block(&mut arc_state_tx, end_block).await;
        Compliance::end_block(&mut arc_state_tx, end_block).await;
        let mut state_tx = Arc::try_unwrap(arc_state_tx)
            .expect("components did not retain copies of shared state");
        tracing::debug!("finished host app components' `end_block` hooks");

        let current_height = state_tx
            .get_block_height()
            .await
            .expect("able to get block height in end_block");
        let current_epoch = state_tx
            .get_current_epoch()
            .await
            .expect("able to get current epoch in end_block");

        let is_end_epoch = current_epoch.is_scheduled_epoch_end(
            current_height,
            state_tx
                .get_epoch_duration_parameter()
                .await
                .expect("able to get epoch duration in end_block"),
        ) || state_tx.is_epoch_ending_early().await;

        if is_end_epoch {
            tracing::info!(?current_height, "ending host epoch");

            let mut arc_state_tx = Arc::new(state_tx);

            Sct::end_epoch(&mut arc_state_tx)
                .await
                .expect("able to call end_epoch on Sct component");
            ShieldedPool::end_epoch(&mut arc_state_tx)
                .await
                .expect("able to call end_epoch on shielded pool component");
            FeeComponent::end_epoch(&mut arc_state_tx)
                .await
                .expect("able to call end_epoch on Fee component");

            let mut state_tx = Arc::try_unwrap(arc_state_tx)
                .expect("components did not retain copies of shared state");

            state_tx
                .finish_epoch()
                .await
                .expect("must be able to finish compact block");

            shieldd_sdk_sct::component::clock::EpochManager::put_epoch_by_height(
                &mut state_tx,
                current_height + 1,
                Epoch {
                    index: current_epoch.index + 1,
                    start_height: current_height + 1,
                },
            );

            self.apply(state_tx)
        } else {
            shieldd_sdk_sct::component::clock::EpochManager::put_epoch_by_height(
                &mut state_tx,
                current_height + 1,
                current_epoch,
            );

            state_tx
                .finish_block()
                .await
                .expect("must be able to finish compact block");

            self.apply(state_tx)
        }
    }

    /// Persists host execution state and resets snapshots for the next host call.
    ///
    /// Unlike `App::commit`, this does not enforce chain halt or pre-upgrade exits.
    async fn commit_host(&mut self, storage: Storage) -> RootHash {
        let commit_start = Instant::now();
        let flush_start = Instant::now();
        self.flush_deferred_block_transactions()
            .await
            .expect("must be able to flush deferred block transactions before commit");
        let flush_ms = flush_start.elapsed().as_secs_f64() * 1000.0;
        let dummy_state = StateDelta::new(storage.latest_snapshot());
        let state = Arc::try_unwrap(std::mem::replace(&mut self.state, Arc::new(dummy_state)))
            .expect("we have exclusive ownership of the State at commit()");

        let halt_check_ms = 0.0;

        let storage_commit_start = Instant::now();
        let jmt_root = storage
            .commit(state)
            .await
            .expect("must be able to successfully commit to storage");
        let storage_commit_ms = storage_commit_start.elapsed().as_secs_f64() * 1000.0;

        tracing::debug!(?jmt_root, "finished committing host state");

        let snapshot_reset_start = Instant::now();
        let latest_snapshot = storage.latest_snapshot();
        self.committed_snapshot = latest_snapshot.clone();
        self.state = Arc::new(StateDelta::new(latest_snapshot));
        self.pending_sct_append_log.clear();
        let snapshot_reset_ms = snapshot_reset_start.elapsed().as_secs_f64() * 1000.0;
        let total_ms = commit_start.elapsed().as_secs_f64() * 1000.0;
        tracing::info!(
            commit_total_ms = total_ms,
            commit_flush_deferred_ms = flush_ms,
            commit_halt_check_ms = halt_check_ms,
            commit_storage_commit_ms = storage_commit_ms,
            commit_snapshot_reset_ms = snapshot_reset_ms,
            "host_commit_phase_profile"
        );
        jmt_root
    }

    pub async fn deposit(&mut self, deposit: DepositRequest) -> Result<HostDepositResult> {
        let mut state_tx = StateDelta::new(self.state.clone());
        let chain_id = state_tx.get_chain_id().await?;
        let parsed = ParsedHostDeposit::parse(chain_id, deposit)?;
        let source_key = parsed.source_key();

        ensure!(
            state_tx.get_raw(&source_key).await?.is_none(),
            "host deposit source has already been processed"
        );

        let deposit_id = parsed.deposit_id;
        state_tx.put_raw(source_key, deposit_id.to_vec());

        state_tx.register_denom(&parsed.denom).await;
        state_tx
            .mint_note(
                parsed.value(),
                &parsed.recipient,
                // TODO(fdymylja): understand host-deposit indexing. This is a
                // bankd tx effect, but compact blocks currently strip tx ids and
                // clients do not know how to fetch the corresponding bankd tx.
                CommitmentSource::Transaction {
                    id: Some(deposit_id),
                },
            )
            .await
            .context("minting host deposit note")?;

        let events = self.apply(state_tx);
        Ok(HostDepositResult {
            response: DepositResponse {
                deposit_id: deposit_id.to_vec(),
            },
            events,
        })
    }
}

struct ParsedHostDeposit {
    chain_id: String,
    source: ProtoHostSource,
    denom: asset::Metadata,
    amount: Amount,
    recipient: Address,
    deposit_id: [u8; 32],
}

impl ParsedHostDeposit {
    fn parse(chain_id: String, deposit: DepositRequest) -> Result<Self> {
        let source = deposit.source.context("host deposit source is required")?;
        validate_host_source(&source)?;

        let denom: asset::Metadata = deposit
            .denom
            .as_str()
            .try_into()
            .with_context(|| format!("invalid host deposit denom {}", deposit.denom))?;
        let amount = Amount::try_from(deposit.amount.clone())
            .with_context(|| format!("invalid host deposit amount {}", deposit.amount))?;
        ensure!(
            amount > Amount::zero(),
            "host deposit amount must be nonzero"
        );
        let recipient = Address::from_str(&deposit.recipient)
            .with_context(|| "invalid host deposit recipient address")?;

        let deposit_id = derive_deposit_id(&chain_id, &source, &denom, amount, &recipient);

        Ok(Self {
            chain_id,
            source,
            denom,
            amount,
            recipient,
            deposit_id,
        })
    }

    fn value(&self) -> Value {
        Value {
            amount: self.amount,
            asset_id: self.denom.id(),
        }
    }

    fn source_key(&self) -> String {
        host_deposit_source_key(&self.chain_id, &self.source)
    }
}

fn validate_host_source(source: &ProtoHostSource) -> Result<()> {
    ensure!(
        source.tx_hash.len() == 32,
        "host deposit source tx_hash must be 32 bytes"
    );
    Ok(())
}

fn host_deposit_source_key(chain_id: &str, source: &ProtoHostSource) -> String {
    format!(
        "{HOST_DEPOSIT_SOURCE_PREFIX}/{}/{}/{:020}/{:010}",
        chain_id,
        hex::encode(&source.tx_hash),
        source.height,
        source.msg_index,
    )
}

fn derive_deposit_id(
    chain_id: &str,
    source: &ProtoHostSource,
    denom: &asset::Metadata,
    amount: Amount,
    recipient: &Address,
) -> [u8; 32] {
    let mut hasher = sha2::Sha256::new();
    hash_bytes(&mut hasher, HOST_DEPOSIT_DOMAIN);
    hash_bytes(&mut hasher, chain_id.as_bytes());
    hasher.update(source.height.to_be_bytes());
    hash_bytes(&mut hasher, &source.tx_hash);
    hasher.update(source.msg_index.to_be_bytes());
    hash_bytes(&mut hasher, denom.to_string().as_bytes());
    hash_bytes(&mut hasher, amount.to_string().as_bytes());
    hash_bytes(&mut hasher, recipient.to_string().as_bytes());
    hasher.finalize().into()
}

fn hash_bytes(hasher: &mut sha2::Sha256, bytes: &[u8]) {
    hasher.update((bytes.len() as u64).to_be_bytes());
    hasher.update(bytes);
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::genesis::{AppState, Content};
    use crate::SUBSTORE_PREFIXES;
    use cnidarium::TempStorage;
    use cnidarium_component::ActionHandler as _;
    use shieldd_sdk_asset::BASE_ASSET_DENOM;
    use shieldd_sdk_keys::symmetric::{OvkWrappedKey, WrappedMemoKey};
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_shielded_pool::component::StateReadExt as _;
    use shieldd_sdk_shielded_pool::{
        HostWithdrawal as DomainHostWithdrawal, NotePayload, ShieldedHostWithdrawal,
        ShieldedHostWithdrawalBody, ShieldedIcs20WithdrawalChangeBody,
        ShieldedIcs20WithdrawalFamilyId, ShieldedIcs20WithdrawalProof,
    };
    use std::ops::Deref as _;

    async fn temp_storage() -> TempStorage {
        TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec())
            .await
            .expect("temp storage")
    }

    fn host_genesis() -> AppState {
        AppState::Content(Content::default().with_chain_id("bankd-local".to_owned()))
    }

    fn host_block(height: i64) -> HostBlock {
        HostBlock {
            height,
            time: Time::from_unix_timestamp(1_700_000_000, 0).expect("valid host block time"),
        }
    }

    fn host_source(msg_index: u32) -> ProtoHostSource {
        ProtoHostSource {
            height: 42,
            tx_hash: [7u8; 32].to_vec(),
            msg_index,
        }
    }

    fn deposit_request(msg_index: u32) -> DepositRequest {
        DepositRequest {
            denom: BASE_ASSET_DENOM.to_string(),
            amount: "100".to_owned(),
            recipient: test_keys::ADDRESS_0.to_string(),
            source: Some(host_source(msg_index)),
        }
    }

    fn host_withdrawal_action() -> ShieldedHostWithdrawal {
        ShieldedHostWithdrawal {
            body: ShieldedHostWithdrawalBody {
                family_id: ShieldedIcs20WithdrawalFamilyId::Canonical,
                anchor: shieldd_sdk_tct::Tree::default().root(),
                balance_commitment: Default::default(),
                inputs: Vec::new(),
                withdrawal: DomainHostWithdrawal {
                    recipient: "bank1recipient".to_owned(),
                    value: Value {
                        amount: 42u64.into(),
                        asset_id: BASE_ASSET_DENOM.id(),
                    },
                },
                change_output: ShieldedIcs20WithdrawalChangeBody {
                    note_payload: NotePayload::dummy(),
                    wrapped_memo_key: WrappedMemoKey([0u8; 48]),
                    ovk_wrapped_key: OvkWrappedKey([0u8; 48]),
                },
                target_timestamp: 0,
                compliance_anchor: shieldd_sdk_tct::StateCommitment(decaf377::Fq::from(0u64)),
                asset_anchor: shieldd_sdk_tct::StateCommitment(decaf377::Fq::from(0u64)),
                routing_tag: Default::default(),
                routing_parameter_set_id: decaf377::Fq::from(0u64),
            },
            auth_sigs: Vec::new(),
            proof: ShieldedIcs20WithdrawalProof::default(),
        }
    }

    fn host_withdrawal_transaction() -> Transaction {
        let mut tx = Transaction::default();
        tx.transaction_body.actions =
            vec![Action::ShieldedHostWithdrawal(host_withdrawal_action())];
        tx
    }

    #[tokio::test]
    async fn deposit_mints_note_and_rejects_replayed_host_source() -> Result<()> {
        let storage = temp_storage().await;
        let mut app = App::new(storage.latest_snapshot());
        app.init_chain(&host_genesis()).await;
        assert!(!app.state.host_withdrawals_enabled().await?);

        let first = app.deposit(deposit_request(0)).await?;
        assert_eq!(first.response.deposit_id.len(), 32);
        assert!(!first.events.is_empty());

        let replay = app.deposit(deposit_request(0)).await;
        assert!(replay
            .expect_err("replayed host source must fail")
            .to_string()
            .contains("host deposit source has already been processed"));

        Ok(())
    }

    #[tokio::test]
    async fn host_execution_init_genesis_commits_content_genesis() -> Result<()> {
        let storage = temp_storage().await;
        let mut host = HostExecution::new(storage.deref().clone());

        assert!(host.commit().await.is_err());
        host.init_genesis(host_genesis()).await?;
        assert_eq!(host.phase(), HostExecutionPhase::InitializedGenesis);
        assert!(host.app.state.host_withdrawals_enabled().await?);
        assert!(host.deposit(deposit_request(0)).await.is_err());

        let response = host.commit().await?;
        assert_eq!(response.root_hash.len(), 32);
        assert_eq!(host.phase(), HostExecutionPhase::Idle);
        assert!(App::is_ready(storage.latest_snapshot()).await);

        Ok(())
    }

    #[tokio::test]
    async fn host_execution_init_genesis_does_not_initialize_validator_chain_components(
    ) -> Result<()> {
        let storage = temp_storage().await;
        let mut host = HostExecution::new(storage.deref().clone());

        host.init_genesis(host_genesis()).await?;

        assert!(
            shieldd_sdk_validator::StateReadExt::get_stake_params(host.app.state.as_ref())
                .await
                .is_err()
        );
        assert!(shieldd_sdk_governance::StateReadExt::get_governance_params(
            host.app.state.as_ref()
        )
        .await
        .is_err());
        assert!(
            shieldd_sdk_ibc::StateReadExt::get_ibc_params(host.app.state.as_ref())
                .await
                .is_err()
        );

        Ok(())
    }

    #[tokio::test]
    async fn host_execution_exports_checkpoint_genesis() -> Result<()> {
        let storage = temp_storage().await;
        let mut host = HostExecution::new(storage.deref().clone());

        host.init_genesis(host_genesis()).await?;
        let commit = host.commit().await?;

        let exported = host.export_genesis().await?;
        assert!(matches!(
            exported,
            AppState::Checkpoint(root_hash) if root_hash == commit.root_hash
        ));

        Ok(())
    }

    #[tokio::test]
    async fn host_execution_begin_block_request_uses_state_chain_id_without_validators(
    ) -> Result<()> {
        let storage = temp_storage().await;
        let mut host = HostExecution::new(storage.deref().clone());

        host.init_genesis(host_genesis()).await?;
        host.commit().await?;

        let begin_block = host.begin_block_request(host_block(7)).await?;

        assert_eq!(begin_block.header.chain_id.as_str(), "bankd-local");
        assert_eq!(begin_block.header.height.value(), 7);
        assert_eq!(begin_block.header.validators_hash, Hash::None);
        assert_eq!(begin_block.header.next_validators_hash, Hash::None);
        assert!(begin_block.last_commit_info.votes.is_empty());
        assert!(begin_block.byzantine_validators.is_empty());

        Ok(())
    }

    #[tokio::test]
    async fn host_execution_block_lifecycle_commits_without_validators() -> Result<()> {
        let storage = temp_storage().await;
        let mut host = HostExecution::new(storage.deref().clone());

        host.init_genesis(host_genesis()).await?;
        host.commit().await?;

        host.begin_block(host_block(1)).await?;
        assert_eq!(host.phase(), HostExecutionPhase::InBlock);
        host.end_block(1).await?;
        assert_eq!(host.phase(), HostExecutionPhase::EndedBlock);
        let commit = host.commit().await?;

        assert_eq!(commit.root_hash.len(), 32);
        assert_eq!(host.phase(), HostExecutionPhase::Idle);

        Ok(())
    }

    #[tokio::test]
    async fn host_execution_reports_only_the_latest_committed_state() -> Result<()> {
        let storage = temp_storage().await;
        let mut host = HostExecution::new(storage.deref().clone());

        assert!(host.committed_state().await.is_err());

        host.init_genesis(host_genesis()).await?;
        let genesis_commit = host.commit().await?;
        let committed = host.committed_state().await?;
        assert_eq!(committed.height, 0);
        assert_eq!(committed.root_hash, genesis_commit.root_hash);

        host.begin_block(host_block(1)).await?;
        let still_committed = host.committed_state().await?;
        assert_eq!(still_committed, committed);

        host.end_block(1).await?;
        let block_commit = host.commit().await?;
        let committed = host.committed_state().await?;
        assert_eq!(committed.height, 1);
        assert_eq!(committed.root_hash, block_commit.root_hash);

        Ok(())
    }

    #[tokio::test]
    async fn host_execution_check_tx_rejects_invalid_tx_without_entering_block() -> Result<()> {
        let storage = temp_storage().await;
        let mut host = HostExecution::new(storage.deref().clone());

        host.init_genesis(host_genesis()).await?;
        host.commit().await?;

        let response = host.check_tx(b"not a shieldd transaction").await?;

        assert_eq!(response.code, 1);
        assert!(response.log.contains("decoding transaction"));
        assert_eq!(host.phase(), HostExecutionPhase::Idle);

        Ok(())
    }

    #[tokio::test]
    async fn host_execution_check_tx_requires_initialized_storage() {
        let storage = temp_storage().await;
        let host = HostExecution::new(storage.deref().clone());

        let err = host
            .check_tx(&[])
            .await
            .expect_err("uninitialized storage should be rejected");

        assert!(err.to_string().contains("initialized storage"));
    }

    #[tokio::test]
    async fn host_withdrawals_resolve_registered_asset_to_base_denom() -> Result<()> {
        let storage = temp_storage().await;
        let mut host = HostExecution::new(storage.deref().clone());

        host.init_genesis(host_genesis()).await?;
        host.commit().await?;
        host.begin_block(host_block(1)).await?;
        host.deposit(deposit_request(0)).await?;

        let withdrawals = host
            .resolve_host_withdrawals(&host_withdrawal_transaction())
            .await?;

        assert_eq!(withdrawals.len(), 1);
        assert_eq!(withdrawals[0].recipient, "bank1recipient");
        assert_eq!(withdrawals[0].denom, BASE_ASSET_DENOM.base_denom().denom);
        assert_eq!(withdrawals[0].amount, 42u64.into());

        Ok(())
    }

    #[tokio::test]
    async fn standalone_execution_rejects_host_withdrawals() -> Result<()> {
        let storage = temp_storage().await;
        let mut app = App::new(storage.latest_snapshot());
        app.init_chain(&host_genesis()).await;

        let error = host_withdrawal_action()
            .check_historical(app.state.clone())
            .await
            .expect_err("standalone execution must reject host withdrawals");

        assert!(error
            .to_string()
            .contains("shielded host withdrawals are not enabled"));

        Ok(())
    }

    #[tokio::test]
    async fn host_execution_accepts_withdrawals_for_registered_assets() -> Result<()> {
        let storage = temp_storage().await;
        let mut host = HostExecution::new(storage.deref().clone());

        host.init_genesis(host_genesis()).await?;
        host.commit().await?;
        host.begin_block(host_block(1)).await?;
        host.deposit(deposit_request(0)).await?;

        host_withdrawal_action()
            .check_historical(host.app.state.clone())
            .await?;

        Ok(())
    }

    #[test]
    fn deposit_id_changes_with_host_message_index() {
        let recipient = test_keys::ADDRESS_0.clone();
        let first = derive_deposit_id(
            "bankd-local",
            &host_source(0),
            &BASE_ASSET_DENOM,
            100u64.into(),
            &recipient,
        );
        let second = derive_deposit_id(
            "bankd-local",
            &host_source(1),
            &BASE_ASSET_DENOM,
            100u64.into(),
            &recipient,
        );

        assert_ne!(first, second);
    }

    #[test]
    fn source_key_uses_host_tx_identity_not_deposit_contents() {
        assert_eq!(
            host_deposit_source_key("bankd-local", &host_source(3)),
            host_deposit_source_key("bankd-local", &host_source(3)),
        );
        assert_ne!(
            host_deposit_source_key("bankd-local", &host_source(3)),
            host_deposit_source_key("bankd-local", &host_source(4)),
        );
    }

    #[test]
    fn host_source_requires_32_byte_tx_hash() {
        let source = ProtoHostSource {
            height: 42,
            tx_hash: [7u8; 31].to_vec(),
            msg_index: 0,
        };

        assert!(validate_host_source(&source).is_err());
    }

    #[test]
    fn accepted_host_tx_response_accepts_empty_withdrawals() {
        let response = HostTxResponse::accepted(Vec::new(), Vec::new());

        assert!(response.withdrawals.is_empty());
    }
}
