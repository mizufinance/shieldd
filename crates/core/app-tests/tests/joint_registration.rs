//! A sponsor funds public registrations without holding the registered user's key.
use anyhow::{ensure, Context, Result};
use ff::Field;
use rand_core::OsRng;
use reddsa::{sapling::SpendAuth, SigningKey, VerificationKey};
use shieldd_sdk_app::{
    app::HostBlock,
    genesis::{AppState, Content},
    test_support::{TestHost, TEST_CHAIN_ID},
};
use shieldd_sdk_asset::{asset, Value, BASE_ASSET_DENOM, BASE_ASSET_ID};
use shieldd_sdk_compliance::{
    derive_regulated_nullifier_key,
    registration::policy_from_asset_grant,
    structs::{
        AssetRegistrationGrant, OrbisCapabilityCertificate, UserRegistrationGrant,
        UserRegistrationGrantBody,
    },
    AuditLogRead as _, ComplianceLeaf, ComplianceRegistryRead as _, DetectionKey, MsgRegisterAsset,
    MsgRegisterUser,
};
use shieldd_sdk_crypto::Fr;
use shieldd_sdk_fee::{event::EventBlockFees, Fee};
use shieldd_sdk_keys::keys::{SpendKey, SpendKeyBytes};
use shieldd_sdk_mock_client::{MockClient, TransactionIntent, TransferIntent};
use shieldd_sdk_num::Amount;
use shieldd_sdk_proto::{core::component::fee::v1 as fee_pb, event::ProtoEvent, DomainType};
use shieldd_sdk_sct::permanent_nullifiers::manifest;
use shieldd_sdk_shielded_pool::{genesis::Allocation, ShieldedInputPlan, ShieldedOutputPlan};
use shieldd_sdk_transaction::{
    joint::{self, JointSigningRequest},
    Action, Transaction, TransactionBody, TransactionParameters, TransactionPlan,
};

mod common;

fn registrations(
    owner: &SpendKey,
    registrar: &SigningKey<SpendAuth>,
    authority: &SigningKey<SpendAuth>,
) -> Result<(MsgRegisterAsset, Vec<MsgRegisterUser>)> {
    let asset_id = asset::REGISTRY
        .parse_denom("joint_registered_asset")
        .context("registration denomination")?
        .id();
    let ring_secret = Fr::random(&mut OsRng);
    let ring_pk = *shieldd_sdk_crypto::generators::SPEND_AUTH * ring_secret;
    let mut asset = MsgRegisterAsset {
        asset_id,
        is_regulated: true,
        dk_pub: Some(DetectionKey::new(Fr::random(&mut OsRng)).public_key()),
        daily_volume_limit: Some(u128::MAX),
        allowed_ibc_routes: vec![],
        ibc_origin: None,
        ring_pk: Some(ring_pk),
        ring_id: "joint-registration-ring".into(),
        policy_id: "joint-registration-policy".into(),
        permission: "read".into(),
        resource: "joint-registration-asset".into(),
        registration_authority_vk: Some(VerificationKey::from(authority)),
        seizure_authority_vk: Some(VerificationKey::from(authority)),
        audit_keys: Some(shieldd_sdk_compliance::audit_keys::test_keys()),
        audit_certificate: None,
        asset_registration_grant: None,
    };
    let body = asset.registration_grant_body(4_102_444_800);
    asset.asset_registration_grant = Some(AssetRegistrationGrant {
        signature: registrar.sign(OsRng, &body.signing_bytes()),
        registrar_vk: VerificationKey::from(registrar),
        body,
    });
    let policy = policy_from_asset_grant(&asset, 0)?;
    asset.audit_certificate = Some(OrbisCapabilityCertificate::sign_general_for_test(
        TEST_CHAIN_ID,
        asset_id,
        &policy,
        ring_secret,
    )?);
    let mut users = Vec::new();
    for index in 0u32..2 {
        let fvk = owner.full_viewing_key();
        let address = fvk.payment_address(index.into());
        let rnk_dh_pk = address.diversified_generator() * ring_secret;
        let rnk =
            derive_regulated_nullifier_key(fvk.incoming(), &address, asset_id, ring_pk, rnk_dh_pk)?;
        let leaf = ComplianceLeaf::registered_from_rnk(address, asset_id, rnk_dh_pk, rnk)?;
        let body = UserRegistrationGrantBody {
            leaf: leaf.clone(),
            policy_id: policy.ring.policy_id.clone(),
            valid_until_unix: 4_102_444_800,
            nonce: vec![index as u8; 16],
        };
        users.push(MsgRegisterUser {
            grant: Some(UserRegistrationGrant {
                signature: authority.sign(OsRng, &body.signing_bytes()),
                body,
            }),
            capability_certificate: Some(OrbisCapabilityCertificate::sign_for_test(
                TEST_CHAIN_ID,
                &leaf,
                &policy,
                ring_secret,
            )?),
            leaf,
        });
    }
    Ok((asset, users))
}

fn authorize(
    mut transaction: Transaction,
    plan: &TransactionPlan,
    sponsor: &SpendKey,
) -> Result<Transaction> {
    let registry = shieldd_sdk_app_tests::registry();
    let request = JointSigningRequest {
        anchor: transaction.anchor,
        action_count: transaction.transaction_body.actions.len(),
        transaction: transaction.clone(),
        plan: plan.clone(),
        action_indices: vec![],
        incoming: vec![],
    };
    let authorization = request.authorize(sponsor, &registry)?;
    ensure!(
        authorization.spend_auths.len() == 1,
        "only the sponsor fee input requires authorization"
    );
    request.apply(&mut transaction, &authorization)?;
    let contribution = request.contribution(&transaction, sponsor.full_viewing_key(), &registry)?;
    joint::finalize(&mut transaction, &[contribution])?;
    Ok(transaction)
}

fn block_fees(events: &[tendermint::abci::Event]) -> Result<EventBlockFees> {
    let mut fees = events
        .iter()
        .filter_map(|event| fee_pb::EventBlockFees::from_event(event).ok());
    let fee = fees.next().context("missing end-block fee totals")?;
    ensure!(fees.next().is_none(), "duplicate end-block fee totals");
    fee.try_into()
}

#[tokio::test(flavor = "multi_thread", worker_threads = 2)]
#[ignore = "requires real fee-funding proof generation and matching Pari registry"]
async fn sponsored_registrations_roll_back_when_a_later_authority_grant_fails() -> Result<()> {
    let sponsor = SpendKey::try_from(SpendKeyBytes([71; 32]))?;
    let owner = SpendKey::try_from(SpendKeyBytes([72; 32]))?;
    let registrar = SigningKey::<SpendAuth>::new(OsRng);
    let authority = SigningKey::<SpendAuth>::new(OsRng);
    let sponsor_address = sponsor.full_viewing_key().payment_address(0u32.into());
    let initial = Amount::from(1_000_000u64);
    let fee = Fee::from_staking_token_amount(1_000u64.into());
    let chain = common::new_storage().await?;
    let mut genesis = Content {
        chain_id: TEST_CHAIN_ID.into(),
        shielded_pool_content: shieldd_sdk_shielded_pool::genesis::Content {
            allocations: vec![Allocation {
                raw_amount: initial,
                raw_denom: BASE_ASSET_DENOM.base_denom().denom,
                address: sponsor_address.clone(),
            }],
            ..Default::default()
        },
        ..Default::default()
    };
    genesis.compliance_content.compliance_registrar_vk = vec![VerificationKey::from(&registrar)];
    let mut host = TestHost::new(
        chain.storage().clone(),
        AppState::Content(genesis),
        tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:00Z")?,
        shieldd_sdk_app_tests::registry(),
    )
    .await?;
    host.execute(vec![]).await?;
    let wallet = MockClient::new(sponsor.clone())
        .with_sync_to_storage(&chain)
        .await?;
    let (position, note) = wallet
        .notes
        .iter()
        .next()
        .context("missing sponsor input")?;
    let plan = wallet
        .complete_intent(
            TransactionIntent {
                actions: vec![],
                fee_funding: Some(TransferIntent {
                    spends: vec![ShieldedInputPlan::new(&mut OsRng, note.clone(), *position)],
                    outputs: vec![ShieldedOutputPlan::new(
                        &mut OsRng,
                        Value {
                            amount: initial - fee.amount(),
                            asset_id: *BASE_ASSET_ID,
                        },
                        sponsor_address,
                    )],
                    value_blinding: Fr::random(&mut OsRng),
                }),
                memo: None,
                transaction_parameters: TransactionParameters {
                    chain_id: TEST_CHAIN_ID.into(),
                    expiry_height: 50,
                    fee,
                },
            },
            chain.latest_snapshot(),
        )
        .await?;
    ensure!(
        plan.actions.is_empty(),
        "sponsor must have no principal actions"
    );
    let witness = wallet.witness_plan(&plan)?;
    let memo = plan.memo.as_ref().context("fee change memo")?;
    let funding = plan
        .fee_funding
        .as_ref()
        .context("fee funding plan")?
        .build_unauth(
            &wallet.fvk,
            &witness,
            &memo.key,
            &shieldd_sdk_app_tests::registry(),
        )?;
    let (asset, users) = registrations(&owner, &registrar, &authority)?;
    let mut actions = vec![Action::ComplianceRegisterAsset(asset.clone())];
    actions.extend(users.iter().cloned().map(Action::ComplianceRegisterUser));
    let unsigned = Transaction {
        transaction_body: TransactionBody {
            actions,
            transaction_parameters: plan.transaction_parameters.clone(),
            fee_funding: Some(funding),
            memo: Some(memo.memo()?),
        },
        anchor: witness.anchor,
        binding_sig: [0; 64].into(),
    };
    let valid = authorize(unsigned.clone(), &plan, &sponsor)?;
    let check = host.execution.check_tx(&valid.encode_to_vec()).await?;
    ensure!(check.code == 0, "positive control rejected: {}", check.log);

    let before = chain.latest_snapshot();
    let user_root = before.get_user_tree_root().await?;
    let asset_root = before.get_asset_imt_root().await?;
    let user_count = before.get_user_count().await?;
    let asset_count = before.get_asset_count().await?;
    let audit = before.verify_audit_log().await?;
    host.execution
        .begin_block_for_testing(HostBlock {
            height: 2,
            block_id: [2; 32],
            time: tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:01Z")?,
        })
        .await?;
    for (name, expired, expected) in [
        (
            "invalid authority signature",
            false,
            "user registration grant signature failed to verify",
        ),
        (
            "expired authority grant",
            true,
            "user registration grant expired",
        ),
    ] {
        let mut candidate = unsigned.clone();
        let Action::ComplianceRegisterUser(last) = &mut candidate.transaction_body.actions[2]
        else {
            unreachable!()
        };
        let grant = last.grant.as_mut().context("last user grant")?;
        if expired {
            grant.body.valid_until_unix = 1;
            grant.signature = authority.sign(OsRng, &grant.body.signing_bytes());
        } else {
            grant.signature =
                SigningKey::<SpendAuth>::new(OsRng).sign(OsRng, &grant.body.signing_bytes());
        }
        // Re-sign the changed transaction so rejection reaches the authority grant,
        // after the valid asset and first user registration have executed.
        let candidate = authorize(candidate, &plan, &sponsor)?;
        let response = host
            .execution
            .deliver_tx(&candidate.encode_to_vec())
            .await?;
        ensure!(
            response.code != 0 && response.log.to_lowercase().contains(expected),
            "{name} reached wrong boundary: code={} {}",
            response.code,
            response.log
        );
        ensure!(
            response.events.is_empty() && response.withdrawals.is_empty(),
            "{name} published partial effects"
        );
    }
    let end = host.execution.end_block(2).await?;
    let totals = block_fees(&end.events)?;
    ensure!(
        totals.swapped_fee_total.amount() == Amount::zero()
            && totals.swapped_base_fee_total.amount() == Amount::zero()
            && totals.swapped_tip_total.amount() == Amount::zero(),
        "rejected registrations charged the sponsor"
    );
    host.execution.commit_for_testing().await?;
    let after = chain.latest_snapshot();
    ensure!(
        after.get_user_tree_root().await? == user_root
            && after.get_asset_imt_root().await? == asset_root,
        "rejected registrations changed compliance roots"
    );
    ensure!(
        after.get_user_count().await? == user_count
            && after.get_asset_count().await? == asset_count,
        "rejected registrations changed registry counts"
    );
    ensure!(
        after.get_asset_policy(asset.asset_id).await?.is_none(),
        "rejected asset policy persisted"
    );
    for user in &users {
        ensure!(
            after
                .get_user_leaf(&user.leaf.address, asset.asset_id)
                .await?
                .is_none(),
            "rejected user leaf persisted"
        );
        ensure!(
            after
                .get_user_leaf_position(&user.leaf.address, asset.asset_id)
                .await?
                .is_none(),
            "rejected user position persisted"
        );
    }
    ensure!(
        after.verify_audit_log().await? == audit
            && after.get_audit_record(audit.length).await?.is_none(),
        "rejected registrations appended audit records"
    );
    let boundary = manifest(&after)?;
    for nullifier in valid.spent_nullifiers() {
        let status = host
            .execution
            .nullifier_reader()
            .status(nullifier, &boundary)?;
        status.verify(boundary.digest()?)?;
        ensure!(
            !status.spent,
            "rejected registration consumed sponsor input"
        );
    }
    let empty = common::wallet_block(&after, 2).await?;
    ensure!(
        empty.transactions.is_empty()
            && empty.block.state_payloads.is_empty()
            && empty.block.nullifiers.is_empty()
            && empty.block.compliance_user_registrations.is_empty()
            && empty.block.compliance_asset_registrations.is_empty(),
        "rejected registrations left committed block effects"
    );

    // The exact positive control remains spendable after both failures.
    host.execution
        .begin_block_for_testing(HostBlock {
            height: 3,
            block_id: [3; 32],
            time: tendermint::Time::parse_from_rfc3339("2026-01-01T00:00:02Z")?,
        })
        .await?;
    let response = host.execution.deliver_tx(&valid.encode_to_vec()).await?;
    ensure!(
        response.code == 0,
        "sponsored registrations rejected: {}",
        response.log
    );
    let end = host.execution.end_block(3).await?;
    ensure!(
        block_fees(&end.events)?.swapped_fee_total.amount() == fee.amount(),
        "accepted transaction fee totals differ"
    );
    host.execution.commit_for_testing().await?;
    let accepted = chain.latest_snapshot();
    ensure!(
        accepted.get_user_tree_root().await? != user_root
            && accepted.get_asset_imt_root().await? != asset_root,
        "accepted registrations did not change compliance roots"
    );
    ensure!(
        accepted.get_asset_count().await? == asset_count + 1
            && accepted.get_user_count().await? == user_count + 2,
        "accepted registrations missing from registry"
    );
    ensure!(
        accepted.get_asset_policy(asset.asset_id).await?.is_some(),
        "accepted asset policy absent"
    );
    for user in &users {
        ensure!(
            accepted
                .get_user_leaf(&user.leaf.address, asset.asset_id)
                .await?
                == Some(user.leaf.clone()),
            "accepted user leaf differs"
        );
    }
    let boundary = manifest(&accepted)?;
    for nullifier in valid.spent_nullifiers() {
        let status = host
            .execution
            .nullifier_reader()
            .status(nullifier, &boundary)?;
        status.verify(boundary.digest()?)?;
        ensure!(
            status.spent,
            "accepted registration did not consume sponsor input"
        );
    }
    let block = common::wallet_block(&accepted, 3).await?;
    ensure!(
        block.transactions.len() == 1
            && block.block.compliance_asset_registrations.len() == 1
            && block.block.compliance_user_registrations.len() == 2
            && block.block.nullifiers.len() == 2,
        "accepted registration block effects missing"
    );
    Ok(())
}
