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

#[derive(Debug)]
pub struct HostDepositResult {
    pub response: DepositResponse,
    pub events: Vec<abci::Event>,
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
        let storage = TempStorage::new_with_prefixes(SUBSTORE_PREFIXES.to_vec()).await?;
        let mut app = App::new(storage.latest_snapshot());
        app.init_chain(&AppState::Content(
            Content::default().with_chain_id("bankd-local".to_owned()),
        ))
        .await;

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
