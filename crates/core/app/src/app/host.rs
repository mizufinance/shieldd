use super::*;

use anyhow::{ensure, Context as _};
use shieldd_sdk_asset::{asset, Value};
use shieldd_sdk_keys::Address;
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::execution_client::v1::{
    DepositRequest, DepositResponse, HostSource as ProtoHostSource,
};
use shieldd_sdk_shielded_pool::component::AssetRegistry as _;
use std::str::FromStr as _;

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
}

impl HostTxResponse {
    fn accepted(events: Vec<abci::Event>) -> Self {
        Self {
            events,
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

#[derive(Clone, Debug)]
pub struct HostCommit {
    pub root_hash: Vec<u8>,
}

/// Drives Shieldd execution from a host chain without owning validator state.
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
                self.app.init_chain(&genesis).await;
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
                self.app.init_chain(&genesis).await;
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
        let events = self.app.begin_block(&begin_block).await;
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

        let snapshot = self.storage.latest_snapshot();
        let checktx_shared_context = match CheckTxSharedContext::load(&snapshot).await {
            Ok(context) => Some(Arc::new(context)),
            Err(error) => {
                tracing::warn!(
                    ?error,
                    version = snapshot.version(),
                    "CheckTxSharedContext unavailable; falling back to legacy CheckTx path"
                );
                None
            }
        };

        let mut app = App::new(snapshot);
        app.set_block_tx_indexing_mode(BlockTxIndexingMode::NoIndex);
        if let Some(context) = checktx_shared_context {
            app.set_checktx_shared_context(context);
        }

        Ok(
            match app
                .deliver_tx_bytes(tx_bytes, Some(self.stateless_cache.as_ref()))
                .await
            {
                Ok(events) => HostTxResponse::accepted(events),
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

        Ok(
            match self
                .app
                .deliver_tx_bytes(tx_bytes, Some(self.stateless_cache.as_ref()))
                .await
            {
                Ok(events) => HostTxResponse::accepted(events),
                Err(error) => HostTxResponse::rejected(error),
            },
        )
    }

    pub async fn end_block(&mut self, height: i64) -> Result<HostExecutionResponse> {
        ensure!(
            self.phase == HostExecutionPhase::InBlock,
            "end_block called while host execution phase is {:?}",
            self.phase
        );

        let events = self.app.end_block(&request::EndBlock { height }).await;
        self.phase = HostExecutionPhase::EndedBlock;
        Ok(HostExecutionResponse { events })
    }

    pub async fn commit(&mut self) -> Result<HostCommit> {
        ensure!(
            matches!(
                self.phase,
                HostExecutionPhase::InitializedGenesis | HostExecutionPhase::EndedBlock
            ),
            "commit called while host execution phase is {:?}",
            self.phase
        );

        let root_hash = self.app.commit(self.storage.clone()).await;
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
}

impl App {
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
    use shieldd_sdk_asset::BASE_ASSET_DENOM;
    use shieldd_sdk_keys::test_keys;
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

    #[tokio::test]
    async fn deposit_mints_note_and_rejects_replayed_host_source() -> Result<()> {
        let storage = temp_storage().await;
        let mut app = App::new(storage.latest_snapshot());
        app.init_chain(&host_genesis()).await;

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
        assert!(host.deposit(deposit_request(0)).await.is_err());

        let response = host.commit().await?;
        assert_eq!(response.root_hash.len(), 32);
        assert_eq!(host.phase(), HostExecutionPhase::Idle);
        assert!(App::is_ready(storage.latest_snapshot()).await);

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
}
