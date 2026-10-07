//! Executable, same-chain bilateral settlement prototype. Wallet-local plans never
//! cross the fragment boundary; the coordinator handles only public action bytes.
use anyhow::{ensure, Context, Result};
use ff::Field;
use group::GroupEncoding;
use rand_core::OsRng;
use reddsa::{sapling::Binding, SigningKey};
use shieldd_sdk_app::{
    app::{HostBlock, HostExecution, HostTxResponse},
    genesis::{AppState, Content},
    params::AppParameters,
    test_support::{TestHost, TEST_CHAIN_ID},
};
use shieldd_sdk_asset::{asset, Value, BASE_ASSET_DENOM, BASE_ASSET_ID};
use shieldd_sdk_compliance::{
    derive_regulated_nullifier_key,
    genesis::{GenesisUserRegistration, NativeAssetRegistration},
    scanning::decrypt_full_flagged,
    structs::OrbisCapabilityCertificate,
    ComplianceLeaf, DetectionKey, TransferComplianceCiphertext, TransferComplianceMetadata,
};
use shieldd_sdk_crypto::Fr;
use shieldd_sdk_fee::GasPrices;
use shieldd_sdk_keys::{
    keys::{SpendKey, SpendKeyBytes},
    test_keys, Address,
};
use shieldd_sdk_mock_client::{
    MockClient, StateReadComplianceProvider, TransactionIntent, TransferIntent,
};
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::{
    execution_client::v1::{
        apply_compliance_action_request, ApplyComplianceActionRequest, FreezeUserAsset, HostSource,
    },
    DomainType,
};
use shieldd_sdk_sct::{component::clock::EpochRead as _, permanent_nullifiers::manifest};
use shieldd_sdk_shielded_pool::{
    component::StateReadExt as _, genesis::Allocation, select_accumulator_day, ShieldedInputPlan,
    ShieldedOutputPlan, Transfer, TransferPlan, VolumeAccumulatorState,
};
use shieldd_sdk_transaction::{
    gas::transfer_gas_cost,
    joint::{self, BindingContribution, ExpectedReceipt, JointFragment, JointSigningRequest},
    memo::MemoPlaintext,
    plan::MemoPlan,
    txhash::{AuthorizingData, EffectingData},
    Action, ActionPlan, FeeFunding, Transaction, TransactionBody, TransactionParameters,
    TransactionPlan,
};
use shieldd_sdk_view::{
    complete_plan_with_compliance, CompletionData, Storage as WalletStorage,
    VolumeAccumulatorRecovery, VolumeRecoveryRecord,
};

use crate::common;

#[derive(Clone, Copy, Debug)]
enum DemoAssets {
    RegulatedPrivate,
    RegulatedDisclosed,
}

impl DemoAssets {
    fn disclosed(self) -> bool {
        matches!(self, Self::RegulatedDisclosed)
    }
}

fn register_assets(
    genesis: &mut Content,
    wallets: &[&SpendKey],
    assets: &[asset::Id],
) -> Result<Vec<DetectionKey>> {
    let authority = reddsa::VerificationKey::from(wallets[0].spend_auth_key());
    let mut issuers = Vec::new();
    for (index, asset_id) in assets.iter().copied().enumerate() {
        let issuer = DetectionKey::new(Fr::random(&mut OsRng));
        let ring_secret = Fr::random(&mut OsRng);
        let ring_pk = *shieldd_sdk_crypto::generators::SPEND_AUTH * ring_secret;
        let registration = NativeAssetRegistration {
            asset_id,
            is_regulated: true,
            audit_keys: Some(shieldd_sdk_compliance::audit_keys::test_keys()),
            dk_pub: Some(issuer.public_key().to_bytes()),
            registration_authority_vk: Some(authority),
            seizure_authority_vk: Some(authority),
            ring_pk: Some(ring_pk.to_bytes()),
            ring_id: format!("avp-ring-{index}"),
            policy_id: format!("avp-policy-{index}"),
            permission: "read".into(),
            resource: format!("avp-asset-{index}"),
        };
        let policy = registration.asset_policy()?;
        for (key, address_index) in wallets.iter().flat_map(|key| [(key, 0u32), (key, 7)]) {
            let fvk = key.full_viewing_key();
            let address = fvk.payment_address(address_index.into());
            let rnk_dh_pk = *address.diversified_generator() * ring_secret;
            let rnk = derive_regulated_nullifier_key(
                fvk.incoming(),
                &address,
                asset_id,
                ring_pk,
                rnk_dh_pk,
            )?;
            let leaf = ComplianceLeaf::registered_from_rnk(address, asset_id, rnk_dh_pk, rnk)?;
            genesis
                .compliance_content
                .user_registrations
                .push(GenesisUserRegistration {
                    capability_certificate: OrbisCapabilityCertificate::sign_for_test(
                        TEST_CHAIN_ID,
                        &leaf,
                        &policy,
                        ring_secret,
                    )?,
                    leaf,
                });
        }
        genesis.compliance_content.native_assets.push(registration);
        issuers.push(issuer);
    }
    Ok(issuers)
}

/// Use confirmed wallet volume recovery rather than the mock client's default
/// forced disclosure. Both data sources must describe the same finalized height.
async fn complete_intent(
    intent: TransactionIntent,
    wallet: &WalletStorage,
    state: shieldd_sdk_storage::Snapshot,
    disclosed: bool,
) -> Result<TransactionPlan> {
    ensure!(
        wallet.last_sync_height().await? == Some(state.get_block_height().await?),
        "wallet and compliance snapshot heights differ"
    );
    let timestamp: u64 = state
        .get_current_block_timestamp()
        .await?
        .unix_timestamp()
        .try_into()?;
    let day_start = select_accumulator_day(timestamp);
    let mut volumes = Vec::new();
    for action in &intent.actions {
        if let Some(spend) = action.spends().first() {
            let subject =
                VolumeAccumulatorState::subject(&spend.note.address(), spend.note.asset_id());
            volumes.push(VolumeRecoveryRecord {
                subject,
                day_start,
                recovery: wallet
                    .volume_accumulator_recovery(subject, day_start)
                    .await?,
            });
        }
    }
    let routing = state.get_current_discovery_parameters().await?;
    let provider = StateReadComplianceProvider::new(state);
    complete_plan_with_compliance(
        intent,
        |queries| async move {
            Ok(CompletionData {
                compliance: provider.get_batch_proofs(&queries).await?,
                volumes,
            })
        },
        &mut OsRng,
        routing,
        Some(timestamp),
        disclosed,
    )
    .await
}

fn check_regulated_leg(
    principal: &TransferPlan,
    transfer: &Transfer,
    issuer: &DetectionKey,
    mode: DemoAssets,
) -> Result<()> {
    ensure!(
        principal.compliance.witness.asset.is_regulated,
        "missing regulated asset witness"
    );
    ensure!(
        principal.volume_accumulator.is_real() == !mode.disclosed(),
        "wrong accumulator mode"
    );
    let receiver = &transfer.body.outputs[0];
    let ciphertext = TransferComplianceCiphertext::from_bytes(&receiver.compliance_ciphertext)?;
    let metadata = TransferComplianceMetadata::from_bytes(&receiver.compliance_metadata)?;
    let disclosed = decrypt_full_flagged(
        issuer.inner(),
        &ciphertext,
        &metadata,
        principal.spends[0].note.asset_id(),
    )?;
    if mode.disclosed() {
        let disclosed = disclosed.context("issuer cannot recover explicitly disclosed leg")?;
        ensure!(
            disclosed.amount == principal.outputs[0].value.amount
                && disclosed.asset_id == principal.outputs[0].value.asset_id
                && disclosed.sender_address.transmission_key
                    == principal.spends[0]
                        .note
                        .address()
                        .transmission_key()
                        .to_bytes()
                && disclosed.receiver_address.transmission_key
                    == principal.outputs[0]
                        .dest_address
                        .transmission_key()
                        .to_bytes(),
            "issuer recovered incorrect terms"
        );
    } else {
        ensure!(
            disclosed.is_none(),
            "private regulated leg disclosed to issuer"
        );
        ensure!(
            principal
                .volume_accumulator
                .successor_state()
                .context("missing real volume state")?
                .undisclosed_volume
                == principal.outputs[0].value.amount.value(),
            "outbound volume differs from terms"
        );
    }
    Ok(())
}

/// Fork the finalized pre-settlement state so a committed freeze can reject the
/// same otherwise valid transaction without altering the positive-control chain.
async fn check_freeze_rejection(
    chain: &shieldd_sdk_storage::TempStorage,
    tx: &Transaction,
    address: Address,
    asset_id: asset::Id,
) -> Result<()> {
    let directory = tempfile::tempdir()?;
    let boundary = chain.manifest().context("missing committed boundary")?;
    let checkpoint = directory.path().join("checkpoint");
    chain.checkpoint(&checkpoint, &boundary)?;
    let storage = shieldd_sdk_storage::Storage::restore(
        &checkpoint,
        &directory.path().join("fork"),
        shieldd_sdk_storage::ForestConfig {
            buckets: 1024,
            cache_mib: 1,
            preallocate: false,
            materialization_workers: 2,
        },
        boundary.digest()?,
    )?;
    let mut host = HostExecution::new(storage.clone(), shieldd_sdk_app_tests::registry()).await?;
    ensure!(
        host.check_tx(&tx.encode_to_vec()).await?.code == 0,
        "freeze fixture lacks valid positive control"
    );
    host.begin_block_for_testing(HostBlock {
        height: 2,
        block_id: [2; 32],
        time: tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:01Z")?,
    })
    .await?;
    host.apply_compliance_action(ApplyComplianceActionRequest {
        source: Some(HostSource {
            height: 2,
            tx_hash: vec![0xF0; 32],
            tx_index: 0,
            msg_index: 0,
        }),
        action: Some(apply_compliance_action_request::Action::Freeze(
            FreezeUserAsset {
                address: Some(address.into()),
                asset_id: Some(asset_id.into()),
            },
        )),
    })
    .await?;
    let rejected = host.deliver_tx(&tx.encode_to_vec()).await?;
    ensure!(
        rejected.code == HostTxResponse::STALE_COMPLIANCE_SNAPSHOT
            && rejected.log.contains("reprove and reauthorize"),
        "freeze reached wrong boundary: {}",
        rejected.log
    );
    ensure!(
        rejected.withdrawals.is_empty(),
        "frozen settlement created a withdrawal"
    );
    host.end_block(2).await?;
    host.commit_for_testing().await?;
    let snapshot = storage.latest_snapshot();
    let boundary = manifest(&snapshot)?;
    for nf in tx.spent_nullifiers() {
        let status = host.nullifier_reader().status(nf, &boundary)?;
        status.verify(boundary.digest()?)?;
        ensure!(!status.spent, "frozen settlement consumed an input");
    }
    let block = common::wallet_block(&snapshot, 2).await?;
    ensure!(
        block.transactions.is_empty()
            && block.block.state_payloads.is_empty()
            && block.block.nullifiers.is_empty(),
        "frozen settlement left partial effects"
    );
    for transfer in tx.transfers() {
        ensure!(
            !host.nullifier_reader().volume_exists(
                &snapshot,
                shieldd_sdk_storage::Day(transfer.body.volume_accumulator.day_start),
                transfer.body.volume_accumulator.nullifier,
            )?,
            "frozen settlement consumed volume state"
        );
    }
    Ok(())
}

/// Kept by one wallet. This record is deliberately neither serializable nor Debug.
struct Participant {
    wallet: MockClient,
    local_plan: TransactionPlan,
    slot: usize,
    incoming: Value,
    receiving_address: Address,
    own_fragment: Transfer,
    own_fee_fragment: Option<FeeFunding>,
}

impl Participant {
    fn principal(&self) -> &TransferPlan {
        match &self.local_plan.actions[0] {
            ActionPlan::Transfer(plan) => plan,
            _ => unreachable!("prototype has only Transfer plans"),
        }
    }

    /// This is the only exchange of proof-bearing material. Round-trip the actual
    /// wire format instead of handing another participant a plan or witness.
    fn fragment(&self) -> Result<Transfer> {
        Transfer::decode(self.own_fragment.encode_to_vec().as_slice())
    }

    fn fee_fragment(&self) -> Result<Option<FeeFunding>> {
        self.own_fee_fragment
            .as_ref()
            .map(|fee| FeeFunding::decode(fee.encode_to_vec().as_slice()))
            .transpose()
    }

    fn request(&self, candidate: &Transaction) -> JointSigningRequest {
        JointSigningRequest {
            transaction: candidate.clone(),
            plan: self.local_plan.clone(),
            action_indices: vec![self.slot],
            incoming: vec![ExpectedReceipt {
                action_index: 1 - self.slot,
                output_index: 0,
                address: self.receiving_address.clone(),
                value: self.incoming,
            }],
            anchor: self.own_fragment.body.anchor,
            action_count: 2,
        }
    }

    fn inspect(&self, candidate: &Transaction) -> Result<()> {
        let request = self.request(candidate);
        request.validate(&self.wallet.fvk)?;
        request.verify_proofs(&shieldd_sdk_app_tests::registry())
    }

    fn authorize(&self, key: &SpendKey, candidate: &mut Transaction) -> Result<()> {
        let request = self.request(candidate);
        let authorization = request.authorize(key, &shieldd_sdk_app_tests::registry())?;
        request.apply(candidate, &authorization)
    }

    fn contribution(&self, candidate: &Transaction) -> Result<BindingContribution> {
        self.request(candidate).contribution(
            candidate,
            &self.wallet.fvk,
            &shieldd_sdk_app_tests::registry(),
        )
    }
}

fn bind(candidate: &mut Transaction, contributions: &[BindingContribution]) -> Result<()> {
    joint::finalize(candidate, contributions)
}

// These negative fixtures intentionally violate envelope checks. Verify their
// spend signatures alone so chain rejection reaches the intended boundary.
fn assert_spend_signatures(tx: &Transaction) -> Result<()> {
    for transfer in tx.transfers().chain(
        tx.transaction_body
            .fee_funding
            .iter()
            .map(|fee| &fee.transfer),
    ) {
        transfer
            .body
            .rk
            .verify(tx.effect_hash().as_ref(), &transfer.auth_sig)?;
    }
    Ok(())
}

fn sign_binding(tx: &mut Transaction, blinding: Fr) -> Result<()> {
    ensure!(!bool::from(blinding.is_zero()), "identity binding key");
    let signing_key = SigningKey::<Binding>::try_from(blinding.to_bytes())?;
    let key = reddsa::VerificationKey::from(&signing_key);
    ensure!(
        key == tx.binding_verification_key(),
        "binding contribution mismatch"
    );
    tx.binding_sig = signing_key.sign(OsRng, tx.auth_hash().as_bytes());
    Ok(())
}

fn transfer_intent(
    wallet: &MockClient,
    amount: u64,
    value: Value,
    recipient: Address,
) -> Result<TransferIntent> {
    let (position, note) = wallet
        .notes
        .iter()
        .find(|(_, note)| note.amount() == amount.into() && note.asset_id() == value.asset_id)
        .context("missing funded input")?;
    let change = note
        .amount()
        .checked_sub(&value.amount)
        .context("insufficient input")?;
    Ok(TransferIntent {
        spends: vec![ShieldedInputPlan::new(&mut OsRng, note.clone(), *position)],
        outputs: vec![
            ShieldedOutputPlan::new(&mut OsRng, value, recipient),
            ShieldedOutputPlan::new(
                &mut OsRng,
                Value {
                    amount: change,
                    asset_id: value.asset_id,
                },
                note.address(),
            ),
        ],
        value_blinding: Fr::random(&mut OsRng),
    })
}

fn build_participant(
    wallet: MockClient,
    local_plan: TransactionPlan,
    slot: usize,
    incoming: Value,
    receiving_address: Address,
) -> Result<Participant> {
    let witness = wallet.witness_plan(&local_plan)?;
    let fragment = JointFragment::build(
        &local_plan,
        &wallet.fvk,
        &witness,
        &shieldd_sdk_app_tests::registry(),
    )?;
    let Some(Action::Transfer(own_fragment)) = fragment.actions.into_iter().next() else {
        anyhow::bail!("invalid plan")
    };
    let own_fee_fragment = fragment.fee_funding;
    Ok(Participant {
        wallet,
        local_plan,
        slot,
        incoming,
        receiving_address,
        own_fragment,
        own_fee_fragment,
    })
}

async fn assert_nullifiers(
    host: &TestHost,
    chain: &shieldd_sdk_storage::TempStorage,
    transaction: &Transaction,
    spent: bool,
) -> Result<()> {
    let boundary = manifest(&chain.latest_snapshot())?;
    for nf in transaction.spent_nullifiers() {
        let status = host.execution.nullifier_reader().status(nf, &boundary)?;
        status.verify(boundary.digest()?)?;
        ensure!(
            status.spent == spent,
            "unexpected committed nullifier status"
        );
    }
    Ok(())
}

#[tokio::test]
#[ignore = "requires SHIELDD_PARI_KEYS and real settlement and receipt-spend proofs"]
async fn private_avp_regulated_assets_settle_without_issuer_disclosure() -> Result<()> {
    run_settlement(DemoAssets::RegulatedPrivate).await
}

#[tokio::test]
#[ignore = "requires SHIELDD_PARI_KEYS and real settlement and receipt-spend proofs"]
async fn private_dvp_security_and_base_cash_can_disclose_to_issuer() -> Result<()> {
    run_settlement(DemoAssets::RegulatedDisclosed).await
}

struct SigningTerminal {
    incoming: tokio::sync::Mutex<tokio::sync::mpsc::Receiver<String>>,
    outgoing: tokio::sync::mpsc::Sender<String>,
}

#[tonic::async_trait]
impl shieldd_sdk_custody::threshold::Terminal for SigningTerminal {
    async fn confirm_request(
        &self,
        _: &shieldd_sdk_custody::threshold::SigningRequest,
    ) -> Result<bool> {
        Ok(true)
    }
    fn explain(&self, _: &str) -> Result<()> {
        Ok(())
    }
    async fn broadcast(&self, message: &str) -> Result<()> {
        self.outgoing.send(message.to_owned()).await?;
        Ok(())
    }
    async fn read_line_raw(&self) -> Result<String> {
        self.incoming
            .lock()
            .await
            .recv()
            .await
            .context("threshold channel closed")
    }
    async fn get_password(&self) -> Result<String> {
        anyhow::bail!("test never requests a password")
    }
}

async fn threshold_authorize(
    configs: &[shieldd_sdk_custody::threshold::Config],
    request: JointSigningRequest,
) -> Result<shieldd_sdk_transaction::AuthorizationData> {
    let (to_follower, follower_in) = tokio::sync::mpsc::channel(2);
    let (to_coordinator, coordinator_in) = tokio::sync::mpsc::channel(2);
    let follower_config = configs[1].clone();
    let follower = tokio::spawn(async move {
        shieldd_sdk_custody::threshold::follow(
            Some(&follower_config),
            &SigningTerminal {
                incoming: tokio::sync::Mutex::new(follower_in),
                outgoing: to_coordinator,
            },
        )
        .await
    });
    let coordinator = shieldd_sdk_custody::threshold::Threshold::new(
        configs[0].clone(),
        SigningTerminal {
            incoming: tokio::sync::Mutex::new(coordinator_in),
            outgoing: to_follower,
        },
    );
    let result = tokio::time::timeout(
        std::time::Duration::from_secs(30),
        coordinator.authorize_joint(request),
    )
    .await??;
    follower.await??;
    Ok(result)
}

#[tokio::test]
#[ignore = "requires SHIELDD_PARI_KEYS and real regulated basket and threshold sponsor proofs"]
async fn three_owners_exchange_a_basket_with_threshold_fee_sponsorship() -> Result<()> {
    let keys = [
        test_keys::SPEND_KEY.clone(),
        SpendKey::try_from(SpendKeyBytes([42; 32]))?,
        SpendKey::try_from(SpendKeyBytes([43; 32]))?,
    ];
    let configs = shieldd_sdk_custody::threshold::Config::deal(&mut OsRng, 2, 2)?;
    let addresses = keys
        .iter()
        .map(|key| key.full_viewing_key().payment_address(0u32.into()))
        .collect::<Vec<_>>();
    let sponsor_address = configs[0].fvk().payment_address(0u32.into());
    let denoms = ["joint_security", "joint_cash", "joint_bond", "joint_coupon"];
    let assets = denoms.map(|denom| asset::REGISTRY.parse_unit(denom).id());
    // Alice sends two different assets; Bob pays Carol; Carol pays Alice.
    let senders = [0usize, 1, 2, 0];
    let recipients = [1usize, 2, 0, 1];
    let values = [25u64, 500, 75, 10]
        .into_iter()
        .zip(assets)
        .map(|(amount, asset_id)| Value {
            amount: amount.into(),
            asset_id,
        })
        .collect::<Vec<_>>();
    let prices = GasPrices {
        execution_price: 1_000,
        ..Default::default()
    };
    let gas = transfer_gas_cost()
        + transfer_gas_cost()
        + transfer_gas_cost()
        + transfer_gas_cost()
        + transfer_gas_cost();
    let parameters = TransactionParameters {
        chain_id: TEST_CHAIN_ID.into(),
        expiry_height: 50,
        fee: prices.fee(&gas),
    };
    let mut genesis = Content::default().with_chain_id(TEST_CHAIN_ID.into());
    genesis.fee_content.fee_params.fixed_gas_prices = prices;
    for (i, denom) in denoms.iter().enumerate() {
        genesis.shielded_pool_content.allocations.push(Allocation {
            raw_amount: 1_000u64.into(),
            raw_denom: (*denom).into(),
            address: addresses[senders[i]].clone(),
        });
    }
    genesis.shielded_pool_content.allocations.push(Allocation {
        raw_amount: 100_000u64.into(),
        raw_denom: BASE_ASSET_DENOM.base_denom().denom,
        address: sponsor_address.clone(),
    });
    let issuers = register_assets(&mut genesis, &keys.iter().collect::<Vec<_>>(), &assets)?;
    let chain = common::new_storage().await?;
    let registry = shieldd_sdk_app_tests::registry();
    let mut host = TestHost::new(
        chain.storage().clone(),
        AppState::Content(genesis),
        tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:00Z")?,
        registry.clone(),
    )
    .await?;
    host.execute(vec![]).await?;
    let memo = MemoPlan::new(&mut OsRng, MemoPlaintext::blank_memo(addresses[0].clone()));
    let mut wallets = Vec::new();
    let mut stores = Vec::new();
    let mut plans = Vec::new();
    let mut fragments = Vec::new();
    let mut indices = Vec::new();
    for (owner, key) in keys.iter().enumerate() {
        let store = WalletStorage::initialize(
            None::<&camino::Utf8Path>,
            key.full_viewing_key().clone(),
            AppParameters {
                chain_id: TEST_CHAIN_ID.into(),
                ..Default::default()
            },
        )
        .await?;
        common::scan_latest(&chain, &store).await?;
        let wallet = MockClient::new(key.clone())
            .with_sync_to_storage(&chain)
            .await?;
        let slots = senders
            .iter()
            .enumerate()
            .filter_map(|(i, sender)| (*sender == owner).then_some(i))
            .collect::<Vec<_>>();
        let actions = slots
            .iter()
            .map(|i| {
                transfer_intent(
                    &wallet,
                    1_000,
                    values[*i],
                    addresses[recipients[*i]].clone(),
                )
                .map(Into::into)
            })
            .collect::<Result<Vec<_>>>()?;
        let plan = complete_intent(
            TransactionIntent {
                actions,
                fee_funding: None,
                memo: Some(memo.clone()),
                transaction_parameters: parameters.clone(),
            },
            &store,
            chain.latest_snapshot(),
            owner != 0,
        )
        .await?;
        fragments.push(JointFragment::build(
            &plan,
            &wallet.fvk,
            &wallet.witness_plan(&plan)?,
            &registry,
        )?);
        // Alice keeps two private volume heads; Bob and Carol disclose to
        // distinct issuers, exercising disclosed terms beyond the first slot.
        for (local, slot) in slots.iter().copied().enumerate() {
            let ActionPlan::Transfer(principal) = &plan.actions[local] else {
                unreachable!()
            };
            let Action::Transfer(transfer) = &fragments.last().unwrap().actions[local] else {
                unreachable!()
            };
            check_regulated_leg(
                principal,
                transfer,
                &issuers[slot],
                if owner == 0 {
                    DemoAssets::RegulatedPrivate
                } else {
                    DemoAssets::RegulatedDisclosed
                },
            )?;
        }
        indices.push(slots);
        plans.push(plan);
        wallets.push(wallet);
        stores.push(store);
    }
    let sponsor_store = WalletStorage::initialize(
        None::<&camino::Utf8Path>,
        configs[0].fvk().clone(),
        AppParameters {
            chain_id: TEST_CHAIN_ID.into(),
            ..Default::default()
        },
    )
    .await?;
    common::scan_latest(&chain, &sponsor_store).await?;
    // This mock is used only for viewing/witnessing. Its dummy spending key is
    // never used; the threshold group alone authorizes the fee input.
    let mut sponsor = MockClient::new(SpendKey::try_from(SpendKeyBytes([44; 32]))?);
    sponsor.fvk = configs[0].fvk().clone();
    sponsor.sync_to_latest(chain.latest_snapshot()).await?;
    let mut fee_intent = transfer_intent(
        &sponsor,
        100_000,
        Value {
            amount: Amount::from(100_000u64) - parameters.fee.amount(),
            asset_id: *BASE_ASSET_ID,
        },
        sponsor_address,
    )?;
    fee_intent.outputs.truncate(1);
    let sponsor_plan = complete_intent(
        TransactionIntent {
            actions: vec![],
            fee_funding: Some(fee_intent),
            memo: Some(memo.clone()),
            transaction_parameters: parameters.clone(),
        },
        &sponsor_store,
        chain.latest_snapshot(),
        false,
    )
    .await?;
    let sponsor_fragment = JointFragment::build(
        &sponsor_plan,
        &sponsor.fvk,
        &sponsor.witness_plan(&sponsor_plan)?,
        &registry,
    )?;
    let actions = (0..4)
        .map(|slot| {
            let owner = senders[slot];
            let local = indices[owner]
                .iter()
                .position(|i| *i == slot)
                .expect("owned slot");
            // Exchange only existing action wire bytes, including proof envelopes.
            Action::decode(fragments[owner].actions[local].encode_to_vec().as_slice())
        })
        .collect::<Result<Vec<_>>>()?;
    let mut tx = Transaction {
        transaction_body: TransactionBody {
            actions,
            fee_funding: sponsor_fragment.fee_funding,
            memo: Some(memo.memo()?),
            transaction_parameters: parameters,
        },
        anchor: sponsor.sct.root(),
        binding_sig: [0; 64].into(),
    };
    let mut requests = Vec::new();
    for owner in 0..3 {
        let incoming = recipients
            .iter()
            .enumerate()
            .filter_map(|(i, recipient)| {
                (*recipient == owner).then_some(ExpectedReceipt {
                    action_index: i,
                    output_index: 0,
                    address: addresses[owner].clone(),
                    value: values[i],
                })
            })
            .collect::<Vec<_>>();
        requests.push(JointSigningRequest {
            transaction: tx.clone(),
            plan: plans[owner].clone(),
            action_indices: indices[owner].clone(),
            incoming,
            anchor: tx.anchor,
            action_count: 4,
        });
    }
    let sponsor_request = JointSigningRequest {
        transaction: tx.clone(),
        plan: sponsor_plan,
        action_indices: vec![],
        incoming: vec![],
        anchor: tx.anchor,
        action_count: 4,
    };
    let mut duplicate_receipt = requests[1].clone();
    duplicate_receipt.incoming[1] = duplicate_receipt.incoming[0].clone();
    ensure!(
        duplicate_receipt
            .validate(&wallets[1].fvk)
            .unwrap_err()
            .to_string()
            .contains("duplicate expected receipt"),
        "one receipt satisfied two basket obligations"
    );
    for owner in 0..3 {
        requests[owner].validate(&wallets[owner].fvk)?;
        requests[owner].verify_proofs(&registry)?;
        ensure!(
            tx.decrypt_memo(&wallets[owner].fvk)? == memo.plaintext,
            "wallet failed to recover memo from later action"
        );
        let auth = requests[owner].authorize(&keys[owner], &registry)?;
        requests[owner].apply(&mut tx, &auth)?;
    }
    sponsor_request.validate(&sponsor.fvk)?;
    sponsor_request.verify_proofs(&registry)?;
    ensure!(
        sponsor_request
            .contribution(&tx, &sponsor.fvk, &registry)
            .is_err(),
        "sponsor opening released before sponsor authorization"
    );
    let auth = threshold_authorize(&configs, sponsor_request.clone()).await?;
    sponsor_request.apply(&mut tx, &auth)?;
    let mut contributions = (0..3)
        .map(|owner| requests[owner].contribution(&tx, &wallets[owner].fvk, &registry))
        .collect::<Result<Vec<_>>>()?;
    contributions.push(sponsor_request.contribution(&tx, &sponsor.fvk, &registry)?);
    ensure!(
        joint::finalize(&mut tx.clone(), &contributions[..3]).is_err(),
        "missing sponsor contribution accepted"
    );
    joint::finalize(&mut tx, &contributions)?;
    ensure!(
        host.execution.check_tx(&tx.encode_to_vec()).await?.code == 0,
        "joint transaction rejected by CheckTx"
    );
    assert_nullifiers(&host, &chain, &tx, false).await?;
    host.execute(vec![tx.encode_to_vec()]).await?;
    assert_nullifiers(&host, &chain, &tx, true).await?;
    for owner in 0..3 {
        wallets[owner]
            .sync_to_latest(chain.latest_snapshot())
            .await?;
        common::scan_latest(&chain, &stores[owner]).await?;
        for expected in &requests[owner].incoming {
            ensure!(
                wallets[owner].notes.values().any(
                    |note| note.value() == expected.value && note.address() == expected.address
                ),
                "settled receipt missing"
            );
        }
        for slot in &indices[owner] {
            let principal = match &plans[owner].actions[indices[owner]
                .iter()
                .position(|i| i == slot)
                .expect("local slot")]
            {
                ActionPlan::Transfer(plan) => plan,
                _ => unreachable!(),
            };
            let subject = VolumeAccumulatorState::subject(
                &principal.spends[0].note.address(),
                values[*slot].asset_id,
            );
            let state = stores[owner]
                .volume_accumulator_recovery(
                    subject,
                    select_accumulator_day(principal.compliance.timestamp),
                )
                .await?;
            if owner == 0 {
                let VolumeAccumulatorRecovery::Complete(head) = state else {
                    anyhow::bail!("private volume head missing")
                };
                ensure!(
                    head.state.undisclosed_volume == values[*slot].amount.value(),
                    "wrong per-asset volume increment"
                );
            } else {
                ensure!(
                    matches!(state, VolumeAccumulatorRecovery::Absent),
                    "disclosed basket leg advanced private volume"
                );
            }
        }
    }
    // Spend all newly received assets in one owner's next transaction. These are
    // separate fixed-shape Transfers, each with its own asset-scoped volume head.
    let bob_actions = requests[1]
        .incoming
        .iter()
        .map(|receipt| {
            transfer_intent(
                &wallets[1],
                receipt
                    .value
                    .amount
                    .value()
                    .try_into()
                    .expect("small amount"),
                receipt.value,
                addresses[1].clone(),
            )
            .map(Into::into)
        })
        .collect::<Result<Vec<_>>>()?;
    let next_memo = MemoPlan::new(&mut OsRng, MemoPlaintext::blank_memo(addresses[1].clone()));
    let next_prices = GasPrices {
        execution_price: 1_000,
        ..Default::default()
    };
    let next_gas = transfer_gas_cost() + transfer_gas_cost() + transfer_gas_cost();
    let next_parameters = TransactionParameters {
        chain_id: TEST_CHAIN_ID.into(),
        expiry_height: 50,
        fee: next_prices.fee(&next_gas),
    };
    let spend = complete_intent(
        TransactionIntent {
            actions: bob_actions,
            fee_funding: None,
            memo: Some(next_memo.clone()),
            transaction_parameters: next_parameters.clone(),
        },
        &stores[1],
        chain.latest_snapshot(),
        false,
    )
    .await?;
    sponsor.sync_to_latest(chain.latest_snapshot()).await?;
    common::scan_latest(&chain, &sponsor_store).await?;
    let sponsor_amount = 100_000u64
        - u64::try_from(
            tx.transaction_body
                .transaction_parameters
                .fee
                .amount()
                .value(),
        )?;
    let mut next_fee = transfer_intent(
        &sponsor,
        sponsor_amount,
        Value {
            amount: Amount::from(sponsor_amount) - next_parameters.fee.amount(),
            asset_id: *BASE_ASSET_ID,
        },
        configs[0].fvk().payment_address(0u32.into()),
    )?;
    next_fee.outputs.truncate(1);
    let fee_plan = complete_intent(
        TransactionIntent {
            actions: vec![],
            fee_funding: Some(next_fee),
            memo: Some(next_memo.clone()),
            transaction_parameters: next_parameters.clone(),
        },
        &sponsor_store,
        chain.latest_snapshot(),
        false,
    )
    .await?;
    let principal = JointFragment::build(
        &spend,
        &wallets[1].fvk,
        &wallets[1].witness_plan(&spend)?,
        &registry,
    )?;
    let funding = JointFragment::build(
        &fee_plan,
        &sponsor.fvk,
        &sponsor.witness_plan(&fee_plan)?,
        &registry,
    )?;
    let mut receipt_spend = Transaction {
        transaction_body: TransactionBody {
            actions: principal.actions,
            fee_funding: funding.fee_funding,
            memo: Some(next_memo.memo()?),
            transaction_parameters: next_parameters,
        },
        anchor: sponsor.sct.root(),
        binding_sig: [0; 64].into(),
    };
    let owner_request = JointSigningRequest {
        transaction: receipt_spend.clone(),
        plan: spend,
        action_indices: vec![0, 1],
        incoming: vec![],
        anchor: receipt_spend.anchor,
        action_count: 2,
    };
    let fee_request = JointSigningRequest {
        transaction: receipt_spend.clone(),
        plan: fee_plan,
        action_indices: vec![],
        incoming: vec![],
        anchor: receipt_spend.anchor,
        action_count: 2,
    };
    owner_request.apply(
        &mut receipt_spend,
        &owner_request.authorize(&keys[1], &registry)?,
    )?;
    fee_request.validate(&sponsor.fvk)?;
    fee_request.verify_proofs(&registry)?;
    fee_request.apply(
        &mut receipt_spend,
        &threshold_authorize(&configs, fee_request.clone()).await?,
    )?;
    let receipt_contributions = [
        owner_request.contribution(&receipt_spend, &wallets[1].fvk, &registry)?,
        fee_request.contribution(&receipt_spend, &sponsor.fvk, &registry)?,
    ];
    joint::finalize(&mut receipt_spend, &receipt_contributions)?;
    host.execute(vec![receipt_spend.encode_to_vec()]).await?;
    assert_nullifiers(&host, &chain, &receipt_spend, true).await?;
    Ok(())
}

async fn run_settlement(mode: DemoAssets) -> Result<()> {
    let alice_key = test_keys::SPEND_KEY.clone();
    let bob_key = SpendKey::try_from(SpendKeyBytes([42; 32]))?;
    let alice_address = alice_key.full_viewing_key().payment_address(0u32.into());
    let bob_address = bob_key.full_viewing_key().payment_address(0u32.into());
    let alice_receive = alice_key.full_viewing_key().payment_address(7u32.into());
    ensure!(
        alice_key.full_viewing_key() != bob_key.full_viewing_key(),
        "independent owners required"
    );
    let asset_x_denom = "private_security";
    let asset_y_denom = if mode.disclosed() {
        BASE_ASSET_DENOM.base_denom().denom
    } else {
        "private_cash".into()
    };
    let asset_x = asset::REGISTRY.parse_unit(asset_x_denom).id();
    let asset_y = asset::REGISTRY.parse_unit(&asset_y_denom).id();
    let alice_sends = Value {
        amount: 25u64.into(),
        asset_id: asset_x,
    };
    let bob_sends = Value {
        amount: 500u64.into(),
        asset_id: asset_y,
    };
    let chain = common::new_storage().await?;
    let prices = GasPrices {
        execution_price: 1_000,
        ..Default::default()
    };
    let gas = transfer_gas_cost() + transfer_gas_cost() + transfer_gas_cost();
    let fee = prices.fee(&gas);
    ensure!(
        fee.amount() > 0u64.into(),
        "prototype must exercise a positive fee"
    );
    let mut genesis = Content::default().with_chain_id(TEST_CHAIN_ID.into());
    genesis.fee_content.fee_params.fixed_gas_prices = prices;
    genesis.shielded_pool_content.allocations = vec![
        Allocation {
            raw_amount: 1_000u64.into(),
            raw_denom: asset_x_denom.into(),
            address: alice_address.clone(),
        },
        Allocation {
            raw_amount: 2_000u64.into(),
            raw_denom: asset_y_denom,
            address: bob_address.clone(),
        },
        Allocation {
            raw_amount: 100_000u64.into(),
            raw_denom: BASE_ASSET_DENOM.base_denom().denom,
            address: bob_address.clone(),
        },
    ];
    if asset_y != *BASE_ASSET_ID {
        genesis.shielded_pool_content.allocations.push(Allocation {
            raw_amount: 10_000u64.into(),
            raw_denom: BASE_ASSET_DENOM.base_denom().denom,
            address: alice_address.clone(),
        });
    }
    let regulated_assets = if mode.disclosed() {
        vec![asset_x]
    } else {
        vec![asset_x, asset_y]
    };
    let issuers = register_assets(&mut genesis, &[&alice_key, &bob_key], &regulated_assets)?;
    let mut host = TestHost::new(
        chain.storage().clone(),
        AppState::Content(genesis),
        tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:00Z")?,
        shieldd_sdk_app_tests::registry(),
    )
    .await?;
    host.execute(vec![]).await?;
    let wallets_dir = tempfile::tempdir()?;
    let alice_path = camino::Utf8PathBuf::from_path_buf(wallets_dir.path().join("alice.sqlite"))
        .map_err(|_| anyhow::anyhow!("non UTF-8 temporary path"))?;
    let bob_path = camino::Utf8PathBuf::from_path_buf(wallets_dir.path().join("bob.sqlite"))
        .map_err(|_| anyhow::anyhow!("non UTF-8 temporary path"))?;
    let app_params = AppParameters {
        chain_id: TEST_CHAIN_ID.into(),
        ..Default::default()
    };
    let alice_store = WalletStorage::initialize(
        Some(&alice_path),
        alice_key.full_viewing_key().clone(),
        app_params.clone(),
    )
    .await?;
    let bob_store = WalletStorage::initialize(
        Some(&bob_path),
        bob_key.full_viewing_key().clone(),
        app_params,
    )
    .await?;
    common::scan_latest(&chain, &alice_store).await?;
    common::scan_latest(&chain, &bob_store).await?;
    let alice_wallet = MockClient::new(alice_key.clone())
        .with_sync_to_storage(&chain)
        .await?;
    let bob_wallet = MockClient::new(bob_key.clone())
        .with_sync_to_storage(&chain)
        .await?;
    ensure!(
        alice_wallet.sct.root() == bob_wallet.sct.root(),
        "one shared finalized anchor required"
    );
    let memo = MemoPlan::new(&mut OsRng, MemoPlaintext::blank_memo(alice_address.clone()));
    let parameters = TransactionParameters {
        chain_id: TEST_CHAIN_ID.into(),
        expiry_height: 50,
        fee,
    };
    let alice_plan = complete_intent(
        TransactionIntent {
            actions: vec![
                transfer_intent(&alice_wallet, 1_000, alice_sends, bob_address.clone())?.into(),
            ],
            fee_funding: None,
            memo: Some(memo.clone()),
            transaction_parameters: parameters.clone(),
        },
        &alice_store,
        chain.latest_snapshot(),
        mode.disclosed(),
    )
    .await?;
    let mut fee_intent = transfer_intent(
        &bob_wallet,
        100_000,
        Value {
            amount: Amount::from(100_000u64) - fee.amount(),
            asset_id: *BASE_ASSET_ID,
        },
        bob_address.clone(),
    )?;
    // The fee is a residual in its dedicated action, rather than a note sent out of the pool.
    fee_intent.outputs.truncate(1);
    let bob_plan = complete_intent(
        TransactionIntent {
            actions: vec![
                transfer_intent(&bob_wallet, 2_000, bob_sends, alice_receive.clone())?.into(),
            ],
            fee_funding: Some(fee_intent),
            memo: Some(memo.clone()),
            transaction_parameters: parameters.clone(),
        },
        &bob_store,
        chain.latest_snapshot(),
        mode.disclosed(),
    )
    .await?;
    let mut alice = build_participant(alice_wallet, alice_plan, 0, bob_sends, alice_receive)?;
    let mut bob = build_participant(bob_wallet, bob_plan, 1, alice_sends, bob_address)?;
    check_regulated_leg(alice.principal(), &alice.own_fragment, &issuers[0], mode)?;
    if !mode.disclosed() {
        check_regulated_leg(bob.principal(), &bob.own_fragment, &issuers[1], mode)?;
    } else {
        ensure!(
            !bob.principal().compliance.witness.asset.is_regulated
                && !bob.principal().volume_accumulator.is_real(),
            "BASE cash leg must be unregulated without a private volume transition"
        );
    }
    ensure!(
        !bob.local_plan
            .fee_funding
            .as_ref()
            .context("fee plan")?
            .transfer
            .volume_accumulator
            .is_real(),
        "fee funding counted as outbound volume"
    );
    let mut tx = Transaction {
        transaction_body: TransactionBody {
            actions: vec![
                Action::Transfer(alice.fragment()?),
                Action::Transfer(bob.fragment()?),
            ],
            transaction_parameters: parameters,
            fee_funding: bob.fee_fragment()?,
            memo: Some(memo.memo()?),
        },
        anchor: alice.own_fragment.body.anchor,
        binding_sig: [0; 64].into(),
    };
    alice.inspect(&tx)?;
    bob.inspect(&tx)?;

    // Valid proofs do not substitute for the business terms or usable ciphertext.
    let mut wrong_expectation = alice.incoming;
    wrong_expectation.amount += 1u64.into();
    let old_expected = std::mem::replace(&mut alice.incoming, wrong_expectation);
    let wrong_terms = alice.inspect(&tx).expect_err("wrong terms must be refused");
    ensure!(
        wrong_terms.to_string().contains("asset or amount"),
        "wrong terms failed at another boundary"
    );
    alice.incoming = old_expected;
    let mut unusable = tx.clone();
    let Action::Transfer(incoming) = &mut unusable.transaction_body.actions[1] else {
        unreachable!()
    };
    incoming.body.outputs[0].note_payload.encrypted_note.0[0] ^= 1;
    let error = alice
        .inspect(&unusable)
        .expect_err("unusable incoming ciphertext must be refused");
    ensure!(
        error.to_string().contains("incoming receiver note"),
        "unusable ciphertext failed before recipient inspection: {error:#}"
    );
    ensure!(
        alice.contribution(&tx).is_err(),
        "opening released before signatures"
    );
    alice.authorize(&alice_key, &mut tx)?;
    ensure!(
        alice.contribution(&tx).is_err(),
        "opening released before counterparty signature"
    );
    bob.authorize(&bob_key, &mut tx)?;
    let contributions = [alice.contribution(&tx)?, bob.contribution(&tx)?];
    bind(&mut tx, &contributions)?;
    let blinding = contributions.iter().fold(Fr::zero(), |sum, c| {
        sum + c.actions.iter().fold(Fr::zero(), |total, opening| {
            total + Fr::from_bytes(&opening.blinding).unwrap()
        }) + c
            .fee_blinding
            .map(|bytes| Fr::from_bytes(&bytes).unwrap())
            .unwrap_or_else(Fr::zero)
    });
    check_freeze_rejection(&chain, &tx, bob.receiving_address.clone(), asset_x).await?;

    let mut negatives: Vec<(&str, Transaction, &str)> = Vec::new();
    let mut missing_leg = tx.clone();
    missing_leg.transaction_body.actions.pop();
    let bob_blinding = bob.principal().value_blinding;
    sign_binding(&mut missing_leg, blinding - bob_blinding)?;
    negatives.push(("removed counter-leg", missing_leg, "signature"));
    let mut reordered = tx.clone();
    reordered.transaction_body.actions.reverse();
    sign_binding(&mut reordered, blinding)?;
    negatives.push(("reordered legs", reordered, "signature"));
    let mut altered_fee = tx.clone();
    altered_fee
        .transaction_body
        .transaction_parameters
        .expiry_height -= 1;
    sign_binding(&mut altered_fee, blinding)?;
    negatives.push(("changed signed expiry", altered_fee, "signature"));
    let mut corrupt_proof = tx.clone();
    let Action::Transfer(transfer) = &mut corrupt_proof.transaction_body.actions[1] else {
        unreachable!()
    };
    transfer.proof.inner[116] ^= 0x20;
    transfer.proof.validate_encoding()?;
    sign_binding(&mut corrupt_proof, blinding)?;
    assert_spend_signatures(&corrupt_proof)?;
    negatives.push(("invalid peer proof", corrupt_proof, "proof"));
    let mut bad_binding = tx.clone();
    bad_binding.binding_sig = [0; 64].into();
    negatives.push(("invalid binding", bad_binding, "binding"));
    let mut mismatched_anchor = tx.clone();
    let Action::Transfer(transfer) = &mut mismatched_anchor.transaction_body.actions[1] else {
        unreachable!()
    };
    transfer.body.anchor = MockClient::new(bob_key.clone()).sct.root();
    sign_binding(&mut mismatched_anchor, blinding)?;
    assert_spend_signatures(&mismatched_anchor)?;
    negatives.push(("different leg anchor", mismatched_anchor, "anchor"));
    // Agree and sign an already elapsed deadline, so the negative case reaches
    // the historical expiry check with otherwise valid proofs and signatures.
    let mut expired = tx.clone();
    expired
        .transaction_body
        .transaction_parameters
        .expiry_height = 1;
    alice.local_plan.transaction_parameters.expiry_height = 1;
    bob.local_plan.transaction_parameters.expiry_height = 1;
    alice.authorize(&alice_key, &mut expired)?;
    bob.authorize(&bob_key, &mut expired)?;
    let expired_contributions = [alice.contribution(&expired)?, bob.contribution(&expired)?];
    bind(&mut expired, &expired_contributions)?;
    alice.local_plan.transaction_parameters.expiry_height = 50;
    bob.local_plan.transaction_parameters.expiry_height = 50;
    negatives.push(("elapsed deadline", expired, "expiry"));

    // Rejected candidates share the valid inputs; commit their empty block and
    // check durable nullifiers and transaction/compact-block output state.
    host.execution
        .begin_block_for_testing(HostBlock {
            height: 2,
            block_id: [2; 32],
            time: tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:01Z")?,
        })
        .await?;
    for (name, candidate, error) in negatives {
        let encoded = candidate.encode_to_vec();
        Transaction::decode(encoded.as_slice())?;
        let response = host.execution.deliver_tx(&encoded).await?;
        ensure!(
            response.code != 0 && response.log.to_lowercase().contains(error),
            "{name} reached wrong boundary: code={} {}",
            response.code,
            response.log
        );
        ensure!(
            response.withdrawals.is_empty(),
            "rejected candidate produced a host withdrawal"
        );
    }
    host.execution.end_block(2).await?;
    host.execution.commit_for_testing().await?;
    assert_nullifiers(&host, &chain, &tx, false).await?;
    let empty = common::wallet_block(&chain.latest_snapshot(), 2).await?;
    ensure!(
        empty.transactions.is_empty(),
        "rejected transaction was indexed"
    );
    ensure!(
        empty.block.state_payloads.is_empty() && empty.block.nullifiers.is_empty(),
        "rejected candidate left shielded effects"
    );

    // A binding re-sign changes txID, so both wallets recognize the accepted
    // effects and their actual receipts rather than requiring one local txID.
    let proposed_id = tx.id();
    let agreed_effect = tx.effect_hash();
    sign_binding(&mut tx, blinding)?;
    ensure!(
        tx.id() != proposed_id && tx.effect_hash() == agreed_effect,
        "signature variant fixture"
    );
    common::scan_latest(&chain, &alice_store).await?;
    common::scan_latest(&chain, &bob_store).await?;
    let result = host
        .execute_block(
            HostBlock {
                height: 3,
                block_id: [3; 32],
                time: tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:02Z")?,
            },
            vec![tx.encode_to_vec()],
        )
        .await?;
    ensure!(
        result.transactions[0].withdrawals.is_empty(),
        "principal left the shielded pool"
    );
    assert_nullifiers(&host, &chain, &tx, true).await?;
    common::scan_latest(&chain, &alice_store).await?;
    common::scan_latest(&chain, &bob_store).await?;
    drop(alice_store);
    drop(bob_store);
    let alice_store = WalletStorage::load(&alice_path).await?;
    let bob_store = WalletStorage::load(&bob_path).await?;
    for (participant, store) in [(&alice, &alice_store), (&bob, &bob_store)] {
        let notes = store
            .notes(false, Some(participant.incoming.asset_id), None, None)
            .await?;
        ensure!(
            notes
                .iter()
                .any(|record| record.note.value() == participant.incoming
                    && record.note.address() == participant.receiving_address),
            "received note lost after wallet reopen"
        );
        let principal = participant.principal();
        let subject = VolumeAccumulatorState::subject(
            &principal.spends[0].note.address(),
            principal.spends[0].note.asset_id(),
        );
        let recovery = store
            .volume_accumulator_recovery(
                subject,
                select_accumulator_day(principal.compliance.timestamp),
            )
            .await?;
        if matches!(mode, DemoAssets::RegulatedPrivate) {
            let VolumeAccumulatorRecovery::Complete(head) = recovery else {
                anyhow::bail!("private volume head lost after wallet reopen");
            };
            ensure!(
                head.state.undisclosed_volume == principal.outputs[0].value.amount.value()
                    && head.commitment
                        == principal
                            .volume_accumulator
                            .successor_state()
                            .context("real volume successor")?
                            .commitment(),
                "recovered volume state differs from authorized outbound leg"
            );
        } else {
            ensure!(
                matches!(recovery, VolumeAccumulatorRecovery::Absent),
                "disclosed or unregulated leg advanced private volume"
            );
        }
        let receipts = store.transactions(Some(3), Some(3)).await?;
        ensure!(
            receipts
                .iter()
                .any(|(_, _, accepted)| accepted.effect_hash() == agreed_effect
                    && accepted.id() == tx.id()
                    && accepted.spent_nullifiers().collect::<Vec<_>>()
                        == tx.spent_nullifiers().collect::<Vec<_>>()),
            "wallet did not recognize accepted signature variant"
        );
    }
    host.execution
        .begin_block_for_testing(HostBlock {
            height: 4,
            block_id: [4; 32],
            time: tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:03Z")?,
        })
        .await?;
    let replay = host.execution.deliver_tx(&tx.encode_to_vec()).await?;
    ensure!(
        replay.code != 0 && replay.log.to_lowercase().contains("spent"),
        "accepted inputs replayed: {}",
        replay.log
    );
    host.execution.end_block(4).await?;
    host.execution.commit_for_testing().await?;

    common::scan_latest(&chain, &alice_store).await?;
    common::scan_latest(&chain, &bob_store).await?;

    // Prove actual receipt spends using notes and witnesses from reopened wallets.
    // The disclosed DvP cash receipt funds Alice's next shielded fee.
    let followup_fee = prices.fee(&(transfer_gas_cost() + transfer_gas_cost()));
    let mut followups = Vec::new();
    for (participant, store, key) in [
        (&alice, &alice_store, &alice_key),
        (&bob, &bob_store, &bob_key),
    ] {
        let received = store
            .notes(false, Some(participant.incoming.asset_id), None, None)
            .await?
            .into_iter()
            .find(|record| {
                record.note.value() == participant.incoming
                    && record.note.address() == participant.receiving_address
            })
            .context("received note")?;
        let receipt_funds_fee =
            participant.slot == 0 && participant.incoming.asset_id == *BASE_ASSET_ID;
        let principal = if receipt_funds_fee {
            let notes = store.notes(false, Some(asset_x), None, None).await?;
            ensure!(
                notes.len() == 1
                    && notes[0].note.value()
                        == Value {
                            amount: 975u64.into(),
                            asset_id: asset_x,
                        }
                    && notes[0].note.address() == alice_address,
                "Alice's security change differs from agreed settlement"
            );
            notes
                .into_iter()
                .next()
                .context("Alice's shielded change")?
        } else {
            received.clone()
        };
        let fee_note = if receipt_funds_fee {
            received.clone()
        } else {
            store
                .notes(false, Some(*BASE_ASSET_ID), None, None)
                .await?
                .into_iter()
                .find(|record| record.note.amount() > followup_fee.amount())
                .context("separate shielded fee note")?
        };
        let self_transfer =
            |record: &shieldd_sdk_view::SpendableNoteRecord, amount: Amount| TransferIntent {
                spends: vec![ShieldedInputPlan::new(
                    &mut OsRng,
                    record.note.clone(),
                    record.position,
                )],
                outputs: vec![ShieldedOutputPlan::new(
                    &mut OsRng,
                    Value {
                        amount,
                        asset_id: record.note.asset_id(),
                    },
                    record.note.address(),
                )],
                value_blinding: Fr::random(&mut OsRng),
            };
        let plan = complete_intent(
            TransactionIntent {
                actions: vec![self_transfer(&principal, principal.note.amount()).into()],
                fee_funding: Some(self_transfer(
                    &fee_note,
                    fee_note
                        .note
                        .amount()
                        .checked_sub(&followup_fee.amount())
                        .context("fee balance")?,
                )),
                memo: Some(MemoPlan::new(
                    &mut OsRng,
                    MemoPlaintext::blank_memo(principal.note.address()),
                )),
                transaction_parameters: TransactionParameters {
                    chain_id: TEST_CHAIN_ID.into(),
                    expiry_height: 50,
                    fee: followup_fee,
                },
            },
            store,
            chain.latest_snapshot(),
            mode.disclosed(),
        )
        .await?;
        ensure!(
            plan.actions.iter().all(|action| match action {
                ActionPlan::Transfer(transfer) => !transfer.volume_accumulator.is_real(),
                _ => false,
            }) && !plan
                .fee_funding
                .as_ref()
                .context("receipt fee funding")?
                .transfer
                .volume_accumulator
                .is_real(),
            "self-directed receipt spend advanced private outbound volume"
        );
        let witness = store
            .witness_plan(&plan, shieldd_sdk_app_tests::registry().id())
            .await?;
        let authorization = plan.authorize(OsRng, key)?;
        let followup = plan.build(
            key.full_viewing_key(),
            &witness,
            &authorization,
            &shieldd_sdk_app_tests::registry(),
        )?;
        ensure!(
            followup
                .spent_nullifiers()
                .any(|nf| nf == received.nullifier),
            "receipt was not spent"
        );
        if receipt_funds_fee {
            ensure!(
                followup
                    .transaction_body
                    .fee_funding
                    .as_ref()
                    .context("receipt-funded fee")?
                    .transfer
                    .body
                    .inputs
                    .iter()
                    .any(|input| input.nullifier == received.nullifier),
                "BASE cash receipt did not fund the fee"
            );
        }
        followups.push(followup);
    }
    let result = host
        .execute_block(
            HostBlock {
                height: 5,
                block_id: [5; 32],
                time: tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:04Z")?,
            },
            followups.iter().map(DomainType::encode_to_vec).collect(),
        )
        .await?;
    ensure!(
        result
            .transactions
            .iter()
            .all(|response| response.withdrawals.is_empty()),
        "receipt spend left the shielded pool"
    );
    for followup in &followups {
        assert_nullifiers(&host, &chain, followup, true).await?;
    }
    println!("{mode:?} settled: independent wallets, two assets, existing Transfer proofs, positive shielded fees, no host withdrawals. Atomic rejection, receipt recovery and real spends from reopened wallets verified.");
    Ok(())
}
