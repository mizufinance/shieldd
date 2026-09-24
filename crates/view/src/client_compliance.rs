//! Compliance decoding and completion of wallet intent.
use anyhow::Result;
use ff::Field;
use shieldd_sdk_asset::asset;
use shieldd_sdk_compliance::BatchComplianceData;
use shieldd_sdk_compliance::ComplianceQuery;
use shieldd_sdk_crypto::Fr;
use shieldd_sdk_keys::Address;
use shieldd_sdk_transaction::plan::{ActionPlan, TransactionPlan};
use std::collections::BTreeSet;

#[derive(Clone, Debug)]
pub struct VolumeRecoveryRecord {
    pub subject: shieldd_sdk_crypto::Fq,
    pub day_start: u64,
    pub recovery: crate::storage::VolumeAccumulatorRecovery,
}

pub struct CompletionData {
    pub compliance: BatchComplianceData,
    pub volumes: Vec<VolumeRecoveryRecord>,
}

fn select_volume_accumulator(
    witness: &shieldd_sdk_shielded_pool::ActionWitness,
    timestamp: u64,
    amount: u128,
    eligible: bool,
    disclose_to_issuer: bool,
    records: &[VolumeRecoveryRecord],
    rng: &mut (impl rand_core::RngCore + rand_core::CryptoRng),
) -> Result<shieldd_sdk_shielded_pool::VolumeAccumulatorPlan> {
    use crate::storage::VolumeAccumulatorRecovery;
    use shieldd_sdk_shielded_pool::{
        accumulated_volume, select_accumulator_day, VolumeAccumulatorPlan, VolumeAccumulatorState,
    };
    let padding = VolumeAccumulatorPlan::padding(timestamp);
    if disclose_to_issuer || !witness.asset.is_regulated || !eligible {
        return Ok(padding);
    }
    let limit = witness
        .policy
        .as_ref()
        .ok_or_else(|| anyhow::anyhow!("regulated action missing policy"))?
        .params
        .daily_volume_limit;
    let subject =
        VolumeAccumulatorState::subject(&witness.sender.leaf.address, witness.asset.asset_id);
    let day_start = select_accumulator_day(timestamp);
    let recovery = &records
        .iter()
        .find(|record| record.subject == subject && record.day_start == day_start)
        .ok_or_else(|| anyhow::anyhow!("missing volume accumulator recovery"))?
        .recovery;
    let blinding = shieldd_sdk_crypto::Fq::random(rng);
    match recovery {
        VolumeAccumulatorRecovery::Absent => match accumulated_volume(0, amount, limit) {
            Some(undisclosed_volume) => Ok(VolumeAccumulatorPlan::origin(VolumeAccumulatorState {
                subject,
                day_start,
                undisclosed_volume,
                blinding,
            })),
            None => Ok(padding),
        },
        VolumeAccumulatorRecovery::Complete(confirmed) => {
            anyhow::ensure!(
                confirmed.state.subject == subject
                    && confirmed.state.day_start == day_start
                    && confirmed.state.commitment() == confirmed.commitment,
                "recovered accumulator does not match action or commitment"
            );
            match accumulated_volume(confirmed.state.undisclosed_volume, amount, limit) {
                Some(volume) => VolumeAccumulatorPlan::continuation(
                    confirmed.state.clone(),
                    confirmed.commitment,
                    u64::from(confirmed.position),
                    volume,
                    blinding,
                ),
                None => Ok(padding),
            }
        }
        VolumeAccumulatorRecovery::Incomplete => Ok(padding),
    }
}

/// Completes wallet intent with one batch of authenticated compliance witnesses.
pub async fn complete_plan_with_compliance<P, F>(
    intent: crate::planning_intent::TransactionIntent,
    fetch: P,
    rng: &mut (impl rand_core::RngCore + rand_core::CryptoRng),
    routing: shieldd_sdk_shielded_pool::discovery::Parameters,
    timestamp_override: Option<u64>,
    disclose_to_issuer: bool,
) -> Result<TransactionPlan>
where
    P: FnOnce(Vec<ComplianceQuery>) -> F,
    F: std::future::Future<Output = Result<CompletionData>>,
{
    use crate::planning_intent::ActionIntent;
    use shieldd_sdk_shielded_pool::{
        NoteReshapeContext, NoteReshapePlan, ShieldedHostWithdrawalPlan, WithdrawalContext,
    };
    let timestamp = match timestamp_override {
        Some(timestamp) => timestamp,
        None => std::time::SystemTime::now()
            .duration_since(std::time::UNIX_EPOCH)?
            .as_secs(),
    };
    let mut queries = BTreeSet::new();
    for action in &intent.actions {
        if matches!(action, ActionIntent::Complete(_)) {
            continue;
        }
        for spend in action.spends() {
            queries.insert((spend.note.address(), spend.note.asset_id()));
        }
        for output in action.outputs() {
            queries.insert((output.dest_address.clone(), output.value.asset_id));
        }
    }
    if let Some(fee) = &intent.fee_funding {
        for spend in &fee.spends {
            queries.insert((spend.note.address(), spend.note.asset_id()));
        }
        for output in &fee.outputs {
            queries.insert((output.dest_address.clone(), output.value.asset_id));
        }
    }
    let batch = if queries.is_empty() {
        None
    } else {
        Some(
            fetch(
                queries
                    .into_iter()
                    .map(|(address, asset_id)| ComplianceQuery { address, asset_id })
                    .collect(),
            )
            .await?,
        )
    };
    let volumes = batch
        .as_ref()
        .map(|data| data.volumes.as_slice())
        .unwrap_or_default();
    let batch_ref = || {
        batch
            .as_ref()
            .map(|data| &data.compliance)
            .ok_or_else(|| anyhow::anyhow!("missing compliance batch"))
    };
    let mut used_nonces = BTreeSet::new();
    for action in &intent.actions {
        if let ActionIntent::Complete(action) = action {
            let nonce = match action {
                ActionPlan::Transfer(plan) => Some(plan.compliance.nonce),
                ActionPlan::NoteReshape(plan) => Some(plan.compliance.nonce),

                ActionPlan::ShieldedHostWithdrawal(plan) => Some(plan.compliance.nonce),
                _ => None,
            };
            if let Some(nonce) = nonce {
                anyhow::ensure!(
                    used_nonces.insert(nonce.to_bytes()),
                    "duplicate shielded action nonce"
                );
            }
        }
    }
    let mut actions = Vec::with_capacity(intent.actions.len());
    for action in intent.actions {
        let action = match action {
            ActionIntent::Complete(action) => action,
            ActionIntent::Transfer(transfer) => ActionPlan::Transfer(complete_transfer(
                transfer,
                batch_ref()?,
                timestamp,
                fresh_action_nonce(rng, &mut used_nonces)?,
                routing.clone(),
                shieldd_sdk_shielded_pool::TransferProofContext::Ordinary,
                disclose_to_issuer,
                volumes,
                rng,
            )?),
            ActionIntent::NoteReshape(reshape) => {
                let witness = action_witness(batch_ref()?, &reshape.spends)?;
                let context = NoteReshapeContext {
                    witness,
                    nonce: fresh_action_nonce(rng, &mut used_nonces)?,
                };
                ActionPlan::NoteReshape(NoteReshapePlan::new(
                    reshape.family_id,
                    reshape.spends,
                    reshape.outputs,
                    reshape.value_blinding,
                    context,
                    routing.clone(),
                )?)
            }

            ActionIntent::HostWithdrawal(withdrawal) => {
                let context = WithdrawalContext {
                    witness: action_witness(batch_ref()?, &withdrawal.spends)?,
                    timestamp,
                    nonce: fresh_action_nonce(rng, &mut used_nonces)?,
                };
                let volume_accumulator = select_volume_accumulator(
                    &context.witness,
                    timestamp,
                    withdrawal.withdrawal.value.amount.value(),
                    true,
                    disclose_to_issuer,
                    volumes,
                    rng,
                )?;
                ActionPlan::ShieldedHostWithdrawal(ShieldedHostWithdrawalPlan::new(
                    withdrawal.spends,
                    withdrawal.change_output,
                    withdrawal.withdrawal,
                    withdrawal.value_blinding,
                    context,
                    volume_accumulator,
                    routing.clone(),
                )?)
            }
        };
        actions.push(action);
    }
    let fee_funding = intent
        .fee_funding
        .map(|fee| {
            Ok::<_, anyhow::Error>(shieldd_sdk_transaction::FeeFundingPlan {
                transfer: complete_transfer(
                    fee,
                    batch_ref()?,
                    timestamp,
                    fresh_action_nonce(rng, &mut used_nonces)?,
                    routing,
                    shieldd_sdk_shielded_pool::TransferProofContext::FeeFunding,
                    true,
                    volumes,
                    rng,
                )?,
            })
        })
        .transpose()?;
    let mut plan = TransactionPlan {
        actions,
        fee_funding,
        transaction_parameters: intent.transaction_parameters,
        memo: intent.memo,
        nullifier_window: intent.nullifier_window,
    };
    let mut volume_heads = BTreeSet::new();
    let volumes = plan
        .actions
        .iter()
        .filter_map(|action| match action {
            ActionPlan::Transfer(plan) => Some(&plan.volume_accumulator),
            ActionPlan::ShieldedHostWithdrawal(plan) => Some(&plan.volume_accumulator),
            _ => None,
        })
        .chain(
            plan.fee_funding
                .iter()
                .map(|fee| &fee.transfer.volume_accumulator),
        );
    for volume in volumes {
        if let Some(state) = volume.successor_state() {
            anyhow::ensure!(
                volume_heads.insert((state.subject.to_bytes(), state.day_start)),
                "more than one real accumulator transition for the same subject and day"
            );
        }
    }
    plan.sort_actions();
    Ok(plan)
}

fn complete_transfer(
    intent: crate::planning_intent::TransferIntent,
    batch: &shieldd_sdk_compliance::BatchComplianceData,
    timestamp: u64,
    nonce: Fr,
    routing: shieldd_sdk_shielded_pool::discovery::Parameters,
    proof_context: shieldd_sdk_shielded_pool::TransferProofContext,
    disclose_to_issuer: bool,
    volumes: &[VolumeRecoveryRecord],
    rng: &mut (impl rand_core::RngCore + rand_core::CryptoRng),
) -> Result<shieldd_sdk_shielded_pool::TransferPlan> {
    use shieldd_sdk_shielded_pool::{TransferContext, TransferPlan};
    let witness = action_witness(batch, &intent.spends)?;
    let recipient = intent
        .outputs
        .first()
        .ok_or_else(|| anyhow::anyhow!("transfer requires a recipient"))?;
    let recipient = user_witness(batch, &recipient.dest_address, witness.asset.asset_id)?;
    let volume_accumulator = select_volume_accumulator(
        &witness,
        timestamp,
        intent.outputs[0].value.amount.value(),
        recipient.leaf.address != witness.sender.leaf.address,
        disclose_to_issuer,
        volumes,
        rng,
    )?;
    TransferPlan::new(
        intent.spends,
        intent.outputs,
        intent.value_blinding,
        TransferContext {
            witness,
            recipient,
            timestamp,
            nonce,
        },
        volume_accumulator,
        proof_context,
        routing,
    )
}

fn action_witness(
    batch: &shieldd_sdk_compliance::BatchComplianceData,
    spends: &[shieldd_sdk_shielded_pool::ShieldedInputPlan],
) -> Result<shieldd_sdk_shielded_pool::ActionWitness> {
    use shieldd_sdk_shielded_pool::{ActionWitness, AssetWitness};
    let spend = spends
        .first()
        .ok_or_else(|| anyhow::anyhow!("shielded action requires a spend"))?;
    let asset_id = spend.note.asset_id();
    let asset = batch
        .asset_proofs
        .get(&asset_id)
        .ok_or_else(|| anyhow::anyhow!("missing asset proof for {asset_id}"))?;
    Ok(ActionWitness {
        asset: AssetWitness {
            asset_id,
            root: batch.asset_anchor,
            leaf: asset.indexed_leaf.clone(),
            position: asset.position,
            path: asset.auth_path.clone(),
            is_regulated: asset.is_regulated,
        },
        policy: if asset.is_regulated {
            Some(
                batch
                    .asset_policies
                    .get(&asset_id)
                    .cloned()
                    .ok_or_else(|| anyhow::anyhow!("missing regulated asset policy"))?,
            )
        } else {
            None
        },
        user_root: batch.compliance_anchor,
        sender: user_witness(batch, &spend.note.address(), asset_id)?,
    })
}

fn user_witness(
    batch: &shieldd_sdk_compliance::BatchComplianceData,
    address: &Address,
    asset_id: asset::Id,
) -> Result<shieldd_sdk_shielded_pool::UserWitness> {
    let user = batch
        .user_proofs
        .get(&(address.clone(), asset_id))
        .ok_or_else(|| {
            anyhow::anyhow!("missing user witness for {address} and asset {asset_id}")
        })?;
    Ok(shieldd_sdk_shielded_pool::UserWitness {
        leaf: user.leaf.clone(),
        position: user.position,
        path: user.auth_path.clone(),
    })
}

fn fresh_action_nonce(
    rng: &mut (impl rand_core::RngCore + rand_core::CryptoRng),
    used: &mut BTreeSet<[u8; 32]>,
) -> Result<Fr> {
    let nonce = Fr::random(&mut *rng);
    anyhow::ensure!(
        used.insert(nonce.to_bytes()),
        "compliance RNG generated a duplicate shielded action nonce"
    );
    Ok(nonce)
}

#[cfg(test)]
mod tests {
    use super::{complete_plan_with_compliance, fresh_action_nonce};
    use crate::planning_intent::{
        ActionIntent, NoteReshapeIntent, TransactionIntent, TransferIntent,
    };
    use ff::Field;
    use rand::{rngs::StdRng, SeedableRng};
    use rand_core::{CryptoRng, Error as RandError, RngCore};
    use shieldd_sdk_asset::{Value, BASE_ASSET_ID};
    use shieldd_sdk_compliance::{
        AssetProofData, BatchComplianceData, ComplianceLeaf, ComplianceQuery, MerklePath,
        UserProofData,
    };
    use shieldd_sdk_crypto::Fr;
    use shieldd_sdk_keys::Address;
    use shieldd_sdk_shielded_pool::{
        Note, NoteReshapeFamilyId, ShieldedInputPlan, ShieldedOutputPlan,
    };
    use shieldd_sdk_tct::StateCommitment;
    use shieldd_sdk_transaction::plan::ActionPlan;
    use std::collections::BTreeSet;

    struct RepeatingRng;

    impl RngCore for RepeatingRng {
        fn next_u32(&mut self) -> u32 {
            0
        }

        fn next_u64(&mut self) -> u64 {
            0
        }

        fn fill_bytes(&mut self, destination: &mut [u8]) {
            destination.fill(0);
        }

        fn try_fill_bytes(&mut self, destination: &mut [u8]) -> Result<(), RandError> {
            self.fill_bytes(destination);
            Ok(())
        }
    }

    impl CryptoRng for RepeatingRng {}

    fn unregulated_proofs(queries: &[ComplianceQuery]) -> BatchComplianceData {
        let (asset_anchor, _, _, _) =
            shieldd_sdk_compliance::create_default_imt_proof(BASE_ASSET_ID.0);
        let mut data = BatchComplianceData {
            asset_anchor,
            ..Default::default()
        };
        for ComplianceQuery { address, asset_id } in queries {
            let (_, indexed_leaf, auth_path, position) =
                shieldd_sdk_compliance::create_default_imt_proof(asset_id.0);
            data.asset_proofs
                .entry(*asset_id)
                .or_insert(AssetProofData {
                    auth_path,
                    position,
                    indexed_leaf,
                    is_regulated: false,
                });
            data.user_proofs
                .entry((address.clone(), *asset_id))
                .or_insert_with(|| UserProofData {
                    auth_path: MerklePath::default(),
                    position: 0,
                    leaf: ComplianceLeaf::synthetic_unregulated(address.clone(), *asset_id),
                });
        }
        data
    }

    fn self_transfer_intent(rng: &mut StdRng) -> TransferIntent {
        let sender = Address::dummy(rng);
        let value = Value {
            amount: 100u64.into(),
            asset_id: *BASE_ASSET_ID,
        };
        let note = Note::generate(rng, &sender, value);
        let spend = ShieldedInputPlan::new(rng, note, 0u64.into());
        let output = ShieldedOutputPlan::new(rng, value, sender);
        TransferIntent {
            spends: vec![spend],
            outputs: vec![output],
            value_blinding: Fr::random(&mut *rng),
        }
    }

    fn self_note_reshape_intent(rng: &mut StdRng) -> NoteReshapeIntent {
        let address = Address::dummy(rng);
        let input_value = Value {
            amount: 100u64.into(),
            asset_id: *BASE_ASSET_ID,
        };
        let spends = (0..8)
            .map(|position| {
                let note = Note::generate(rng, &address, input_value);
                ShieldedInputPlan::new(rng, note, position.into())
            })
            .collect();
        let output = ShieldedOutputPlan::new(
            rng,
            Value {
                amount: 800u64.into(),
                asset_id: *BASE_ASSET_ID,
            },
            address,
        );
        NoteReshapeIntent {
            family_id: NoteReshapeFamilyId::EightByOne,
            spends,
            outputs: vec![output],
            value_blinding: Fr::random(&mut *rng),
        }
    }

    #[test]
    fn volume_completion_preserves_limits_recovery_and_disclosure() {
        use crate::storage::{ConfirmedVolumeAccumulator, VolumeAccumulatorRecovery};
        use shieldd_sdk_shielded_pool::test_proof_helpers::proof_test_helpers::generate_base_test_data;
        use shieldd_sdk_shielded_pool::{
            select_accumulator_day, VolumeAccumulatorPlan, VolumeAccumulatorState,
        };
        let mut rng = StdRng::seed_from_u64(23);
        let base = generate_base_test_data(&mut rng, 1, 100, true);
        let witness = base.action_witness();
        witness
            .validate(witness.asset.asset_id, &witness.sender.leaf.address)
            .unwrap();
        let timestamp = base.target_timestamp;
        let subject =
            VolumeAccumulatorState::subject(&witness.sender.leaf.address, witness.asset.asset_id);
        let day_start = select_accumulator_day(timestamp);
        let select = |amount, eligible, disclose, records: &[super::VolumeRecoveryRecord]| {
            super::select_volume_accumulator(
                &witness,
                timestamp,
                amount,
                eligible,
                disclose,
                records,
                &mut StdRng::seed_from_u64(31),
            )
        };
        assert!(select(1, true, false, &[]).is_err());
        assert!(!select(1, true, true, &[]).unwrap().is_real());
        assert!(!select(1, false, false, &[]).unwrap().is_real());
        let mut record = super::VolumeRecoveryRecord {
            subject,
            day_start,
            recovery: VolumeAccumulatorRecovery::Absent,
        };
        let origin = select(10, true, false, &[record.clone()]).unwrap();
        assert!(matches!(origin, VolumeAccumulatorPlan::Origin { .. }));
        assert_eq!(origin.successor_state().unwrap().undisclosed_volume, 10);
        let prior = origin.successor_state().unwrap();
        record.recovery = VolumeAccumulatorRecovery::Complete(ConfirmedVolumeAccumulator {
            commitment: prior.commitment(),
            state: prior.clone(),
            position: 7u64.into(),
        });
        let continuation = select(20, true, false, &[record.clone()]).unwrap();
        assert_eq!(continuation.prior_position(), 7);
        assert_eq!(
            continuation.successor_state().unwrap().undisclosed_volume,
            30
        );
        assert!(!select(u128::MAX, true, false, &[record.clone()])
            .unwrap()
            .is_real());
        if let VolumeAccumulatorRecovery::Complete(confirmed) = &mut record.recovery {
            confirmed.state.day_start += 86_400;
        }
        assert!(select(1, true, false, &[record.clone()]).is_err());
        record.recovery = VolumeAccumulatorRecovery::Incomplete;
        assert!(!select(1, true, false, &[record]).unwrap().is_real());
    }

    #[test]
    fn transfer_compliance_nonce_allocator_rejects_cross_action_reuse() {
        let mut used = BTreeSet::new();
        let mut repeating = RepeatingRng;
        fresh_action_nonce(&mut repeating, &mut used).expect("first nonce is unused");
        fresh_action_nonce(&mut repeating, &mut used)
            .expect_err("a repeated action nonce must fail closed");

        let mut seeded = StdRng::seed_from_u64(0x7368_6965_6c64_645f);
        let mut used = BTreeSet::new();
        for _ in 0..8 {
            fresh_action_nonce(&mut seeded, &mut used)
                .expect("independent CSPRNG draws must produce distinct action nonces");
        }
        assert_eq!(used.len(), 8);
    }

    #[tokio::test]
    async fn completion_builds_note_reshape_from_provider_witnesses() {
        let mut rng = StdRng::seed_from_u64(13);
        let intent = TransactionIntent {
            actions: vec![ActionIntent::NoteReshape(self_note_reshape_intent(
                &mut rng,
            ))],
            transaction_parameters: Default::default(),
            fee_funding: None,
            memo: None,
            nullifier_window: None,
        };
        let plan = complete_plan_with_compliance(
            intent,
            |queries| async move {
                Ok(super::CompletionData {
                    compliance: unregulated_proofs(&queries),
                    volumes: vec![],
                })
            },
            &mut rng,
            Default::default(),
            Some(1_700_000_000),
            false,
        )
        .await
        .expect("complete NoteReshape");
        let ActionPlan::NoteReshape(plan) = &plan.actions[0] else {
            panic!("expected NoteReshape")
        };
        assert_eq!(
            plan.compliance.witness.user_root,
            StateCommitment(shieldd_sdk_crypto::Fq::from(0u64))
        );
        plan.validate().expect("complete context must be valid");
    }

    #[tokio::test]
    async fn completion_assigns_distinct_action_and_fee_nonces() {
        let mut rng = StdRng::seed_from_u64(7);
        let intent = TransactionIntent {
            actions: vec![
                ActionIntent::Transfer(self_transfer_intent(&mut rng)),
                ActionIntent::Transfer(self_transfer_intent(&mut rng)),
            ],
            transaction_parameters: Default::default(),
            fee_funding: Some(self_transfer_intent(&mut rng)),
            memo: None,
            nullifier_window: None,
        };
        let plan = complete_plan_with_compliance(
            intent,
            |queries| async move {
                Ok(super::CompletionData {
                    compliance: unregulated_proofs(&queries),
                    volumes: vec![],
                })
            },
            &mut rng,
            Default::default(),
            Some(1_700_000_000),
            false,
        )
        .await
        .expect("complete transfers");
        let mut nonces = BTreeSet::new();
        for action in &plan.actions {
            let ActionPlan::Transfer(transfer) = action else {
                panic!("expected Transfer")
            };
            assert!(nonces.insert(transfer.compliance.nonce.to_bytes()));
            assert_eq!(transfer.compliance.timestamp, 1_700_000_000);
            transfer.validate().expect("complete transfer");
        }
        assert!(nonces.insert(
            plan.fee_funding
                .unwrap()
                .transfer
                .compliance
                .nonce
                .to_bytes()
        ));
        assert_eq!(nonces.len(), 3);
    }
    #[tokio::test]
    async fn completion_rejects_two_real_volume_transitions_for_one_subject_day() {
        use shieldd_sdk_shielded_pool::test_proof_helpers::proof_test_helpers::generate_base_test_data;
        use shieldd_sdk_shielded_pool::{select_accumulator_day, Rseed, VolumeAccumulatorState};

        let mut rng = StdRng::seed_from_u64(72);
        let base = generate_base_test_data(&mut rng, 1, 10, true);
        assert!(base.asset_policy.params.daily_volume_limit >= 20);
        assert_ne!(base.address, base.sender_address);
        let timestamp = base.target_timestamp;
        let mut tree = shieldd_sdk_compliance::QuadTree::new();
        tree.update(0, base.user_leaf.commit()).unwrap();
        tree.update(1, base.counterparty_leaf.commit()).unwrap();
        let mut batch = BatchComplianceData {
            asset_anchor: base.asset_anchor,
            compliance_anchor: tree.root(),
            ..Default::default()
        };
        batch.asset_proofs.insert(
            base.value.asset_id,
            AssetProofData {
                indexed_leaf: base.asset_indexed_leaf.clone(),
                position: base.asset_position,
                auth_path: base.asset_path.clone(),
                is_regulated: true,
            },
        );
        batch
            .asset_policies
            .insert(base.value.asset_id, base.asset_policy.clone());
        for (position, leaf) in [
            (0, base.user_leaf.clone()),
            (1, base.counterparty_leaf.clone()),
        ] {
            batch.user_proofs.insert(
                (leaf.address.clone(), base.value.asset_id),
                UserProofData {
                    leaf,
                    position,
                    auth_path: MerklePath::from_auth_path(tree.auth_path(position).unwrap()),
                },
            );
        }
        let mut actions = Vec::new();
        for position in 0..2u64 {
            let (note, _) = Note::from_parts_with_recovery(
                base.address.clone(),
                base.value,
                Rseed::generate(&mut rng),
                base.action_witness().asset.payload_key(),
            )
            .unwrap();
            actions.push(ActionIntent::Transfer(TransferIntent {
                spends: vec![ShieldedInputPlan::new(&mut rng, note, position.into())],
                outputs: vec![ShieldedOutputPlan::new(
                    &mut rng,
                    base.value,
                    base.sender_address.clone(),
                )],
                value_blinding: Fr::random(&mut rng),
            }));
        }
        let volumes = vec![super::VolumeRecoveryRecord {
            subject: VolumeAccumulatorState::subject(&base.address, base.value.asset_id),
            day_start: select_accumulator_day(timestamp),
            recovery: crate::storage::VolumeAccumulatorRecovery::Absent,
        }];
        let intent = |actions| TransactionIntent {
            actions,
            transaction_parameters: Default::default(),
            fee_funding: None,
            memo: None,
            nullifier_window: None,
        };
        let fetch = |_: Vec<ComplianceQuery>| {
            let compliance = batch.clone();
            let volumes = volumes.clone();
            async move {
                Ok(super::CompletionData {
                    compliance,
                    volumes,
                })
            }
        };
        let mut completed = Vec::new();
        for action in &actions {
            let plan = complete_plan_with_compliance(
                intent(vec![action.clone()]),
                fetch,
                &mut rng,
                Default::default(),
                Some(timestamp),
                false,
            )
            .await
            .unwrap();
            let ActionPlan::Transfer(transfer) = &plan.actions[0] else {
                panic!("transfer");
            };
            transfer.validate().unwrap();
            assert!(transfer.volume_accumulator.is_real());
            completed.push(ActionIntent::Complete(plan.actions[0].clone()));
        }
        for candidate in [
            actions.clone(),
            completed.clone(),
            vec![completed[0].clone(), actions[1].clone()],
        ] {
            let error = complete_plan_with_compliance(
                intent(candidate),
                fetch,
                &mut rng,
                Default::default(),
                Some(timestamp),
                false,
            )
            .await
            .unwrap_err();
            assert!(
                error
                    .to_string()
                    .contains("more than one real accumulator transition"),
                "{error:#}"
            );
        }
        // Explicit disclosure uses padding and can complete both outbound transfers.
        let disclosed = complete_plan_with_compliance(
            intent(actions),
            fetch,
            &mut rng,
            Default::default(),
            Some(timestamp),
            true,
        )
        .await
        .unwrap();
        for action in disclosed.actions {
            let ActionPlan::Transfer(transfer) = action else {
                panic!("transfer");
            };
            transfer.validate().unwrap();
            assert!(!transfer.volume_accumulator.is_real());
        }
        // Independent subject/day budgets remain compatible, including precompleted actions.
        for different_day in [false, true] {
            let mut independent = completed.clone();
            let ActionIntent::Complete(ActionPlan::Transfer(second)) = &mut independent[1] else {
                panic!("transfer");
            };
            let mut successor = second.volume_accumulator.successor_state().unwrap();
            if different_day {
                successor.day_start += 86_400;
            } else {
                successor.subject += shieldd_sdk_crypto::Fq::from(1);
            }
            second.volume_accumulator =
                shieldd_sdk_shielded_pool::VolumeAccumulatorPlan::origin(successor);
            complete_plan_with_compliance(
                intent(independent),
                fetch,
                &mut rng,
                Default::default(),
                Some(timestamp),
                false,
            )
            .await
            .unwrap();
        }
    }
}
