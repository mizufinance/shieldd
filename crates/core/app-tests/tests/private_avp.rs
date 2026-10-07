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
use shieldd_sdk_asset::{asset, Balance, Value, BASE_ASSET_DENOM, BASE_ASSET_ID};
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
    ShieldedOutputPlan, Transfer, TransferPlan, TransferProofContext, VolumeAccumulatorState,
};
use shieldd_sdk_transaction::{
    gas::transfer_gas_cost,
    memo::MemoPlaintext,
    plan::MemoPlan,
    txhash::{AuthorizingData, EffectHash, EffectingData},
    Action, ActionPlan, FeeFunding, Transaction, TransactionBody, TransactionParameters,
    TransactionPlan,
};
use shieldd_sdk_view::{
    complete_plan_with_compliance, CompletionData, Storage as WalletStorage,
    VolumeAccumulatorRecovery, VolumeRecoveryRecord,
};

mod common;

#[derive(Clone, Copy, Debug)]
enum DemoAssets {
    Unregulated,
    RegulatedPrivate,
    RegulatedDisclosed,
}

#[derive(Clone, Copy, Debug)]
enum SettlementKind {
    AvP,
    DvP,
}

impl SettlementKind {
    fn asset_denoms(self, mode: DemoAssets) -> (&'static str, String) {
        match self {
            Self::AvP if mode.regulated() => ("private_avp_asset", "private_avp_payment".into()),
            Self::AvP => ("private_avp_asset", BASE_ASSET_DENOM.base_denom().denom),
            Self::DvP => ("private_dvp_security", "private_dvp_cash".into()),
        }
    }
}

impl DemoAssets {
    fn regulated(self) -> bool {
        !matches!(self, Self::Unregulated)
    }
    fn disclosed(self) -> bool {
        matches!(self, Self::RegulatedDisclosed)
    }
}

fn register_assets(
    genesis: &mut Content,
    alice: &SpendKey,
    bob: &SpendKey,
    asset_x: asset::Id,
    asset_y: asset::Id,
) -> Result<Vec<DetectionKey>> {
    let authority = reddsa::VerificationKey::from(alice.spend_auth_key());
    let mut issuers = Vec::new();
    for (index, asset_id) in [asset_x, asset_y].into_iter().enumerate() {
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
        for (key, address_index) in [(alice, 0u32), (alice, 7), (bob, 0)] {
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
    participant: &Participant,
    issuer: &DetectionKey,
    mode: DemoAssets,
) -> Result<()> {
    let principal = participant.principal();
    ensure!(
        principal.compliance.witness.asset.is_regulated,
        "missing regulated asset witness"
    );
    ensure!(
        principal.volume_accumulator.is_real() == !mode.disclosed(),
        "wrong accumulator mode"
    );
    let receiver = &participant.own_fragment.body.outputs[0];
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

    fn inspect(&self, candidate: &Transaction) -> Result<()> {
        let body = &candidate.transaction_body;
        ensure!(
            body.actions.len() == 2,
            "expected exactly two principal legs"
        );
        ensure!(
            body.transaction_parameters.to_proto()
                == self.local_plan.transaction_parameters.to_proto(),
            "agreed transaction parameters changed"
        );
        let memo = self
            .local_plan
            .memo
            .as_ref()
            .context("missing agreed memo")?;
        ensure!(
            body.memo.as_ref().map(DomainType::encode_to_vec) == Some(memo.memo()?.encode_to_vec()),
            "agreed memo changed"
        );
        ensure!(
            candidate.anchor == self.own_fragment.body.anchor,
            "agreed anchor changed"
        );
        let mut keys = Vec::new();
        for action in &body.actions {
            let Action::Transfer(transfer) = action else {
                anyhow::bail!("principal leg is not a Transfer");
            };
            let public = transfer
                .body
                .proof_public(candidate.anchor, TransferProofContext::Ordinary)?;
            transfer
                .proof
                .verify(&public, &shieldd_sdk_app_tests::registry())?;
            keys.push(transfer.body.rk);
        }
        let fee = body
            .fee_funding
            .as_ref()
            .context("missing agreed fee funding")?;
        let public = fee
            .transfer
            .body
            .proof_public(candidate.anchor, TransferProofContext::FeeFunding)?;
        fee.transfer
            .proof
            .verify(&public, &shieldd_sdk_app_tests::registry())?;
        keys.push(fee.transfer.body.rk);
        ensure!(
            keys.iter()
                .enumerate()
                .all(|(i, key)| !keys[..i].contains(key)),
            "reused randomized key"
        );
        let Action::Transfer(own) = &body.actions[self.slot] else {
            unreachable!()
        };
        ensure!(
            own.effect_hash() == self.own_fragment.effect_hash()
                && own.proof.inner == self.own_fragment.proof.inner,
            "wallet's proposed leg changed"
        );
        if let Some(own_fee) = &self.own_fee_fragment {
            ensure!(
                fee.effect_hash() == own_fee.effect_hash()
                    && fee.transfer.proof.inner == own_fee.transfer.proof.inner,
                "wallet's fee funding changed"
            );
        }
        let Action::Transfer(peer) = &body.actions[1 - self.slot] else {
            unreachable!()
        };
        let received = peer.body.outputs[0]
            .note_payload
            .trial_decrypt(&self.wallet.fvk)
            .context("incoming receiver note is not usable by this wallet")?;
        ensure!(
            received.address() == self.receiving_address,
            "incoming receiving address differs"
        );
        ensure!(
            received.value() == self.incoming,
            "incoming asset or amount differs"
        );
        ensure!(
            candidate.decrypt_memo(&self.wallet.fvk)? == memo.plaintext,
            "incoming memo cannot be recovered"
        );
        Ok(())
    }

    fn authorize(&self, key: &SpendKey, candidate: &mut Transaction) -> Result<()> {
        self.inspect(candidate)?;
        let digest = candidate.effect_hash();
        let Action::Transfer(own) = &mut candidate.transaction_body.actions[self.slot] else {
            unreachable!()
        };
        own.auth_sig = key
            .spend_auth_key()
            .randomize(&self.principal().auth_randomizer)
            .sign(OsRng, digest.as_ref());
        if let Some(plan) = &self.local_plan.fee_funding {
            candidate
                .transaction_body
                .fee_funding
                .as_mut()
                .context("missing fee funding")?
                .transfer
                .auth_sig = key
                .spend_auth_key()
                .randomize(&plan.transfer.auth_randomizer)
                .sign(OsRng, digest.as_ref());
        }
        Ok(())
    }

    /// Reveal only these transaction-specific CV openings, after all owners have
    /// signed the complete effect hash. The proof's independent opening stays local.
    fn contribution(&self, candidate: &Transaction) -> Result<Contribution> {
        self.inspect(candidate)?;
        verify_spend_authorizations(candidate)?;
        let principal_blinding = self.principal().value_blinding;
        ensure!(
            self.principal().balance() == Balance::default(),
            "principal has residual value"
        );
        Ok(Contribution {
            effect_hash: candidate.effect_hash(),
            slot: self.slot,
            principal_blinding,
            fee_blinding: self
                .local_plan
                .fee_funding
                .as_ref()
                .map(|fee| fee.value_blinding()),
        })
    }
}

struct Contribution {
    effect_hash: EffectHash,
    slot: usize,
    principal_blinding: Fr,
    fee_blinding: Option<Fr>,
}

fn verify_spend_authorizations(tx: &Transaction) -> Result<()> {
    let digest = tx.effect_hash();
    for transfer in tx.transfers().chain(
        tx.transaction_body
            .fee_funding
            .iter()
            .map(|fee| &fee.transfer),
    ) {
        transfer
            .body
            .rk
            .verify(digest.as_ref(), &transfer.auth_sig)?;
    }
    Ok(())
}

/// Coordinator/assembler: no SpendKey, FVK, plan, note plaintext, or witness.
fn bind(candidate: &mut Transaction, contributions: &[Contribution]) -> Result<()> {
    verify_spend_authorizations(candidate)?;
    ensure!(contributions.len() == 2, "missing contribution");
    let mut blinding = Fr::zero();
    let mut fee_blinding = None;
    for (slot, contribution) in contributions.iter().enumerate() {
        ensure!(
            contribution.slot == slot && contribution.effect_hash == candidate.effect_hash(),
            "contribution belongs to different transaction or slot"
        );
        let Action::Transfer(transfer) = &candidate.transaction_body.actions[slot] else {
            anyhow::bail!("invalid leg")
        };
        ensure!(
            transfer.body.balance_commitment
                == Balance::default().commit(contribution.principal_blinding),
            "principal contribution does not open zero residual"
        );
        blinding += contribution.principal_blinding;
        if let Some(value) = contribution.fee_blinding {
            ensure!(
                fee_blinding.replace(value).is_none(),
                "multiple fee contributors"
            );
            blinding += value;
        }
    }
    let fee = candidate
        .transaction_body
        .fee_funding
        .as_ref()
        .context("missing fee funding")?;
    ensure!(
        fee.transfer.body.balance_commitment
            + candidate
                .transaction_body
                .transaction_parameters
                .fee
                .commit(Fr::zero())
            == Balance::default().commit(fee_blinding.context("missing fee contribution")?),
        "fee contribution does not cover public fee"
    );
    sign_binding(candidate, blinding)
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
    let memo = local_plan.memo.as_ref().context("missing memo")?;
    let ActionPlan::Transfer(principal) = &local_plan.actions[0] else {
        anyhow::bail!("invalid plan")
    };
    let paths = principal
        .spends
        .iter()
        .map(|spend| witness.proof(spend.position, spend.note.commit()))
        .collect::<Result<Vec<_>>>()?;
    let own_fragment = principal.build_unauth_transfer(
        &wallet.fvk,
        [0; 64].into(),
        paths,
        witness.anchor,
        &memo.key,
        &shieldd_sdk_app_tests::registry(),
    )?;
    let own_fee_fragment = local_plan
        .fee_funding
        .as_ref()
        .map(|fee| {
            fee.build_unauth(
                &wallet.fvk,
                &witness,
                &memo.key,
                &shieldd_sdk_app_tests::registry(),
            )
        })
        .transpose()?;
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
#[ignore = "requires SHIELDD_PARI_KEYS and generates real settlement and receipt-spend proofs"]
async fn private_avp_two_wallets_settle_atomically() -> Result<()> {
    run_settlement(SettlementKind::AvP, DemoAssets::Unregulated).await
}

#[tokio::test]
#[ignore = "requires SHIELDD_PARI_KEYS and generates regulated settlement and receipt-spend proofs"]
async fn private_avp_regulated_assets_settle_without_issuer_disclosure() -> Result<()> {
    run_settlement(SettlementKind::AvP, DemoAssets::RegulatedPrivate).await
}

#[tokio::test]
#[ignore = "requires SHIELDD_PARI_KEYS and generates issuer-disclosed settlement and receipt-spend proofs"]
async fn private_avp_regulated_assets_can_disclose_to_issuers() -> Result<()> {
    run_settlement(SettlementKind::AvP, DemoAssets::RegulatedDisclosed).await
}

#[tokio::test]
#[ignore = "requires SHIELDD_PARI_KEYS and generates regulated DvP settlement and receipt-spend proofs"]
async fn private_dvp_security_and_cash_settle_without_issuer_disclosure() -> Result<()> {
    run_settlement(SettlementKind::DvP, DemoAssets::RegulatedPrivate).await
}

#[tokio::test]
#[ignore = "requires SHIELDD_PARI_KEYS and generates issuer-disclosed DvP settlement and receipt-spend proofs"]
async fn private_dvp_security_and_cash_can_disclose_to_issuers() -> Result<()> {
    run_settlement(SettlementKind::DvP, DemoAssets::RegulatedDisclosed).await
}

async fn run_settlement(kind: SettlementKind, mode: DemoAssets) -> Result<()> {
    let alice_key = test_keys::SPEND_KEY.clone();
    let bob_key = SpendKey::try_from(SpendKeyBytes([42; 32]))?;
    let alice_address = alice_key.full_viewing_key().payment_address(0u32.into());
    let bob_address = bob_key.full_viewing_key().payment_address(0u32.into());
    let alice_receive = alice_key.full_viewing_key().payment_address(7u32.into());
    ensure!(
        alice_key.full_viewing_key() != bob_key.full_viewing_key(),
        "independent owners required"
    );
    let (asset_x_denom, asset_y_denom) = kind.asset_denoms(mode);
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
    let issuers = if mode.regulated() {
        register_assets(&mut genesis, &alice_key, &bob_key, asset_x, asset_y)?
    } else {
        Vec::new()
    };
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
    if mode.regulated() {
        check_regulated_leg(&alice, &issuers[0], mode)?;
        check_regulated_leg(&bob, &issuers[1], mode)?;
        ensure!(
            !bob.local_plan
                .fee_funding
                .as_ref()
                .context("fee plan")?
                .transfer
                .volume_accumulator
                .is_real(),
            "regulated fee funding counted as outbound volume"
        );
    }
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
        sum + c.principal_blinding + c.fee_blinding.unwrap_or_else(Fr::zero)
    });
    if mode.regulated() {
        check_freeze_rejection(&chain, &tx, bob.receiving_address.clone(), asset_x).await?;
    }

    let mut negatives: Vec<(&str, Transaction, &str)> = Vec::new();
    let mut missing_leg = tx.clone();
    missing_leg.transaction_body.actions.pop();
    let bob_blinding = contributions[1].principal_blinding;
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
    verify_spend_authorizations(&corrupt_proof)?;
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
    verify_spend_authorizations(&mismatched_anchor)?;
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
    // DvP cash and security receipts remain distinct from the base fee token.
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
            store
                .notes(false, Some(asset_x), None, None)
                .await?
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
    println!("{kind:?} {mode:?} settled: independent wallets, two assets, existing Transfer proofs, positive shielded fees, no host withdrawals. Atomic rejection, receipt recovery and real spends from reopened wallets verified.");
    Ok(())
}
