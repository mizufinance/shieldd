use {anyhow::Result, std::time::Duration};

mod relayer;
use anyhow::Context as _;
#[allow(unused_imports)]
pub use relayer::{MockRelayer, SendPacketEvent};
use shieldd_sdk_app::{
    app::{MAX_BLOCK_TXS_PAYLOAD_BYTES, MAX_EVIDENCE_SIZE_BYTES},
    genesis,
};
use shieldd_sdk_mock_consensus::TestNode;

mod node;
pub use node::{TestNodeWithIBC, TestStorage};
use tendermint::{consensus::params::AbciParams, public_key::Algorithm, vote::Power, Genesis};

/// A genesis state that can be fed into CometBFT as well,
/// for verifying compliance of the mock tendermint implementation.
pub fn get_verified_genesis() -> Result<Genesis> {
    let start_time = tendermint::Time::parse_from_rfc3339("2022-02-11T17:30:50.425417198Z")?;
    let consensus_sk = ed25519_consensus::SigningKey::from([0u8; 32]);
    let validator_cons_pk =
        tendermint::PublicKey::from_raw_ed25519(consensus_sk.verification_key().as_bytes())
            .expect("valid test consensus key");

    // TODO: make it possible to flag exporting the app state, keys, etc.
    // to files possible on the builder
    // genesis contents need to contain validator information in the app state
    let mut genesis_contents =
        genesis::Content::default().with_chain_id(TestNode::<()>::CHAIN_ID.to_string());

    let validator = tendermint::validator::Info {
        address: validator_cons_pk.into(),
        pub_key: validator_cons_pk,
        power: Power::try_from(25_000_000_000i64)?,
        name: Some("test validator".to_owned()),
        proposer_priority: 0i64.try_into()?,
    };

    let genesis = Genesis {
        genesis_time: start_time.clone(),
        chain_id: genesis_contents
            .chain_id
            .parse::<tendermint::chain::Id>()
            .context("failed to parse chain ID")?,
        initial_height: 0,
        consensus_params: tendermint::consensus::Params {
            abci: AbciParams::default(),
            block: tendermint::block::Size {
                // 1MB
                max_bytes: MAX_BLOCK_TXS_PAYLOAD_BYTES as u64,
                // Set to infinity since a chain running Shieldd won't use
                // cometbft's notion of gas.
                max_gas: -1,
                // Minimum time increment between consecutive blocks.
                time_iota_ms: 500,
            },
            evidence: tendermint::evidence::Params {
                // Keep this roughly aligned with the intended evidence retention window.
                max_age_num_blocks: 130000,
                // Similarly, we set the max age duration for evidence to be a little over a week.
                max_age_duration: tendermint::evidence::Duration(Duration::from_secs(650000)),
                // 30KB
                max_bytes: MAX_EVIDENCE_SIZE_BYTES as i64,
            },
            validator: tendermint::consensus::params::ValidatorParams {
                pub_key_types: vec![Algorithm::Ed25519],
            },
            version: Some(tendermint::consensus::params::VersionParams { app: 0 }),
        },
        // always empty in genesis json
        app_hash: tendermint::AppHash::default(),
        // app_state: genesis_contents.into(),
        app_state: serde_json::value::to_value(shieldd_sdk_app::genesis::AppState::Content(
            genesis_contents,
        ))
        .unwrap(),
        validators: vec![validator],
    };

    Ok(genesis)
}
