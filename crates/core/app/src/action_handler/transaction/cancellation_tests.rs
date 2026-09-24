use super::{check_historical_with_context, ClaimedAnchorValidationCache, HistoricalCheckContext};
use anyhow::Result;
use cnidarium::StateRead;
use shieldd_sdk_crypto::Fq;
use shieldd_sdk_keys::symmetric::{OvkWrappedKey, WrappedMemoKey};
use shieldd_sdk_shielded_pool::{
    discovery, HostTransfer, HostWithdrawal, HostWithdrawalDestination, NotePayload,
    ShieldedHostWithdrawal, ShieldedHostWithdrawalBody, ShieldedWithdrawalChangeBody,
    ShieldedWithdrawalFamilyId, ShieldedWithdrawalProof, VolumeAccumulatorPayload,
};
use shieldd_sdk_transaction::{Action, Transaction};
use std::{any::Any, ops::RangeBounds, sync::Arc};
use tokio::sync::Notify;

struct PausedWithdrawalState {
    entered: Arc<Notify>,
}

impl StateRead for PausedWithdrawalState {
    type GetRawFut = futures::future::BoxFuture<'static, Result<Option<Vec<u8>>>>;
    type PrefixRawStream = <() as StateRead>::PrefixRawStream;
    type PrefixKeysStream = <() as StateRead>::PrefixKeysStream;
    type NonconsensusPrefixRawStream = <() as StateRead>::NonconsensusPrefixRawStream;
    type NonconsensusRangeRawStream = <() as StateRead>::NonconsensusRangeRawStream;

    fn get_raw(&self, key: &str) -> Self::GetRawFut {
        assert_eq!(
            key,
            shieldd_sdk_shielded_pool::state_key::host_withdrawals_enabled()
        );
        let entered = self.entered.clone();
        Box::pin(async move {
            entered.notify_one();
            futures::future::pending().await
        })
    }

    fn nonverifiable_get_raw(&self, key: &[u8]) -> Self::GetRawFut {
        Box::pin(().nonverifiable_get_raw(key))
    }

    fn object_get<T: Any + Send + Sync + Clone>(&self, key: &'static str) -> Option<T> {
        ().object_get(key)
    }

    fn object_type(&self, key: &'static str) -> Option<std::any::TypeId> {
        ().object_type(key)
    }

    fn prefix_raw(&self, prefix: &str) -> Self::PrefixRawStream {
        ().prefix_raw(prefix)
    }

    fn prefix_keys(&self, prefix: &str) -> Self::PrefixKeysStream {
        ().prefix_keys(prefix)
    }

    fn nonverifiable_prefix_raw(&self, prefix: &[u8]) -> Self::NonconsensusPrefixRawStream {
        ().nonverifiable_prefix_raw(prefix)
    }

    fn nonverifiable_range_raw(
        &self,
        prefix: Option<&[u8]>,
        range: impl RangeBounds<Vec<u8>>,
    ) -> Result<Self::NonconsensusRangeRawStream> {
        ().nonverifiable_range_raw(prefix, range)
    }
}

#[tokio::test(flavor = "current_thread")]
async fn cancelling_withdrawal_historical_check_releases_state_immediately() -> Result<()> {
    let parameters = discovery::Parameters::default();
    let mut tx = Transaction::default();
    tx.transaction_body
        .actions
        .push(Action::ShieldedHostWithdrawal(ShieldedHostWithdrawal {
            body: ShieldedHostWithdrawalBody {
                rk: *shieldd_sdk_keys::test_keys::FULL_VIEWING_KEY.spend_verification_key(),
                family_id: ShieldedWithdrawalFamilyId::Canonical,
                anchor: tx.anchor,
                balance_commitment: Default::default(),
                inputs: Vec::new(),
                withdrawal: HostWithdrawal {
                    value: shieldd_sdk_asset::Value {
                        amount: 1u64.into(),
                        asset_id: *shieldd_sdk_asset::BASE_ASSET_ID,
                    },
                    destination: HostWithdrawalDestination::Transfer(HostTransfer {
                        recipient: "bank1recipient".into(),
                    }),
                },
                change_output: ShieldedWithdrawalChangeBody {
                    note_payload: NotePayload::dummy(),
                    wrapped_memo_key: WrappedMemoKey([0; 48]),
                    ovk_wrapped_key: OvkWrappedKey([0; 48]),
                },
                target_timestamp: 0,
                compliance_anchor: shieldd_sdk_tct::StateCommitment(Fq::from(0)),
                asset_anchor: shieldd_sdk_tct::StateCommitment(Fq::from(0)),
                routing_tag: Default::default(),
                routing_parameter_set_id: parameters.id(),
                withdrawal_compliance_ciphertext:
                    shieldd_sdk_compliance::WithdrawalComplianceCiphertext {
                        epk: *shieldd_sdk_crypto::generators::SPEND_AUTH,
                        c2: Fq::from(0),
                        key_confirmation: Fq::from(0),
                        encrypted_sender_address: [0; 96],
                    },
                volume_accumulator: VolumeAccumulatorPayload::canonical_fee_funding(),
            },
            auth_sig: [0; 64].into(),
            proof: ShieldedWithdrawalProof::default(),
        }));
    let context = HistoricalCheckContext {
        chain_id: tx.transaction_parameters().chain_id,
        block_height: 1,
        discovery_grace_period_blocks: 0,
        previous_discovery_parameters: parameters.clone(),
        current_discovery_parameters: parameters,
        claimed_anchor_cache: Arc::new(ClaimedAnchorValidationCache::default()),
        nullifier_window: shieldd_sdk_sct::nullifier_generation::NullifierWindow {
            protocol_version: shieldd_sdk_sct::nullifier_generation::PROTOCOL_VERSION,
            current_generation: 0,
            recent_position_floor: 0,
            archived_generation_count: 0,
            archived_history_head: shieldd_sdk_sct::nullifier_generation::empty_history_head(),
        },
    };
    // Isolate cancellation inside the action's state read, after anchor validation.
    context
        .claimed_anchor_cache
        .entry(tx.anchor)
        .set(Ok(()))
        .unwrap();
    let entered = Arc::new(Notify::new());
    let state = Arc::new(PausedWithdrawalState {
        entered: entered.clone(),
    });
    let mut historical = Box::pin(check_historical_with_context(&tx, state.clone(), &context));
    tokio::time::timeout(std::time::Duration::from_secs(5), async {
        tokio::select! {
            _ = entered.notified() => {},
            result = &mut historical => panic!("withdrawal did not reach its state read: {result:?}"),
        }
    })
    .await?;
    drop(historical);
    assert_eq!(
        Arc::strong_count(&state),
        1,
        "cancelled withdrawal check must release state before the executor runs again"
    );
    Ok(())
}

#[tokio::test]
async fn historical_context_missing_parameters_returns_error() {
    assert!(HistoricalCheckContext::load(&()).await.is_err());
}
