//! Declarative transaction plans, used for transaction authorization and creation.

use anyhow::Result;
use decaf377_fmd::Precision;
use rand::{CryptoRng, Rng};
use serde::{Deserialize, Serialize};
use shieldd_sdk_governance::{ProposalSubmit, ValidatorVote};
use shieldd_sdk_ibc::IbcRelay;
use shieldd_sdk_keys::{Address, FullViewingKey, PayloadKey};
use shieldd_sdk_proto::{core::transaction::v1 as pb, DomainType};
use shieldd_sdk_shielded_pool::{Ics20Withdrawal, ShieldedIcs20WithdrawalPlan, TransferPlan};
use shieldd_sdk_txhash::{EffectHash, EffectingData};

mod action;
mod auth;
mod build;
mod clue;
mod detection_data;
mod memo;
mod spend;

pub use action::ActionPlan;
pub use clue::CluePlan;
pub use detection_data::DetectionDataPlan;
pub use memo::MemoPlan;

use crate::FeeFundingPlan;
use crate::TransactionParameters;

/// A declaration of a planned [`Transaction`](crate::Transaction),
/// for use in transaction authorization and creation.
#[derive(Clone, Debug, Default, Serialize, Deserialize)]
#[serde(try_from = "pb::TransactionPlan", into = "pb::TransactionPlan")]
pub struct TransactionPlan {
    pub actions: Vec<ActionPlan>,
    pub transaction_parameters: TransactionParameters,
    pub fee_funding: Option<FeeFundingPlan>,
    pub detection_data: Option<DetectionDataPlan>,
    pub memo: Option<MemoPlan>,
}

impl TransactionPlan {
    pub fn sort_actions(&mut self) {
        self.actions.sort_by_key(ActionPlan::variant_index);
    }

    pub fn effect_hash(&self, fvk: &FullViewingKey) -> Result<EffectHash> {
        let mut state = blake2b_simd::Params::new()
            .personal(b"ShielddEfHs")
            .to_state();

        let parameters_hash = self.transaction_parameters.effect_hash();
        let memo_hash = match self.memo {
            Some(ref memo) => memo.memo()?.effect_hash(),
            None => EffectHash::default(),
        };
        let detection_data_hash = self
            .detection_data
            .as_ref()
            .map(|plan| plan.detection_data().effect_hash())
            .unwrap_or_default();
        let memo_key = self.memo_key().unwrap_or([0u8; 32].into());
        let fee_funding_hash = self
            .fee_funding
            .as_ref()
            .map(|plan| plan.effect_hash(fvk, &memo_key))
            .transpose()?
            .unwrap_or_default();
        state.update(parameters_hash.as_bytes());
        state.update(memo_hash.as_bytes());
        state.update(detection_data_hash.as_bytes());
        state.update(fee_funding_hash.as_bytes());

        let num_actions = self.actions.len() as u32;
        state.update(&num_actions.to_le_bytes());
        for action_plan in &self.actions {
            state.update(action_plan.effect_hash(fvk, &memo_key)?.as_bytes());
        }

        Ok(EffectHash(state.finalize().as_array().clone()))
    }

    pub fn transfer_plans(&self) -> impl Iterator<Item = &TransferPlan> {
        self.actions.iter().filter_map(|action| {
            if let ActionPlan::Transfer(plan) = action {
                Some(plan)
            } else {
                None
            }
        })
    }

    pub fn ibc_actions(&self) -> impl Iterator<Item = &IbcRelay> {
        self.actions.iter().filter_map(|action| {
            if let ActionPlan::IbcAction(action) = action {
                Some(action)
            } else {
                None
            }
        })
    }

    pub fn validator_definitions(
        &self,
    ) -> impl Iterator<Item = &shieldd_sdk_validator::validator::Definition> {
        self.actions.iter().filter_map(|action| {
            if let ActionPlan::ValidatorDefinition(definition) = action {
                Some(definition)
            } else {
                None
            }
        })
    }

    pub fn proposal_submits(&self) -> impl Iterator<Item = &ProposalSubmit> {
        self.actions.iter().filter_map(|action| {
            if let ActionPlan::ProposalSubmit(submit) = action {
                Some(submit)
            } else {
                None
            }
        })
    }

    pub fn validator_votes(&self) -> impl Iterator<Item = &ValidatorVote> {
        self.actions.iter().filter_map(|action| {
            if let ActionPlan::ValidatorVote(vote) = action {
                Some(vote)
            } else {
                None
            }
        })
    }

    pub fn shielded_ics20_withdrawal_plans(
        &self,
    ) -> impl Iterator<Item = &ShieldedIcs20WithdrawalPlan> {
        self.actions.iter().filter_map(|action| {
            if let ActionPlan::ShieldedIcs20Withdrawal(plan) = action {
                Some(plan)
            } else {
                None
            }
        })
    }

    pub fn ics20_withdrawals(&self) -> impl Iterator<Item = &Ics20Withdrawal> {
        self.actions.iter().filter_map(|action| {
            if let ActionPlan::ShieldedIcs20Withdrawal(plan) = action {
                Some(&plan.withdrawal)
            } else {
                None
            }
        })
    }

    pub fn dest_addresses(&self) -> Vec<Address> {
        let mut addresses = self
            .actions
            .iter()
            .flat_map(|action| match action {
                ActionPlan::Transfer(plan) => plan.dest_addresses().collect::<Vec<_>>(),
                ActionPlan::NoteReshape(plan) => plan
                    .outputs
                    .iter()
                    .map(|output| output.dest_address.clone())
                    .collect::<Vec<_>>(),
                ActionPlan::ShieldedIcs20Withdrawal(plan) => vec![plan.created_output_address()],
                _ => Vec::new(),
            })
            .collect::<Vec<_>>();

        if let Some(fee_funding) = &self.fee_funding {
            addresses.extend(
                fee_funding
                    .transfer
                    .outputs
                    .iter()
                    .map(|output| output.dest_address.clone()),
            );
        }

        addresses
    }

    pub fn num_outputs(&self) -> usize {
        let action_outputs = self
            .actions
            .iter()
            .map(|action| match action {
                ActionPlan::Transfer(plan) => plan.body.outputs.len(),
                ActionPlan::NoteReshape(plan) => plan.body.outputs.len(),
                ActionPlan::ShieldedIcs20Withdrawal(plan) => plan.note_creating_output_count(),
                _ => 0,
            })
            .sum::<usize>();

        let fee_funding_outputs = self
            .fee_funding
            .as_ref()
            .map(|fee_funding| fee_funding.transfer.body.outputs.len())
            .unwrap_or_default();

        action_outputs + fee_funding_outputs
    }

    pub fn num_spends(&self) -> usize {
        let action_spends = self
            .actions
            .iter()
            .map(|action| match action {
                ActionPlan::Transfer(plan) => plan.spends.len(),
                ActionPlan::NoteReshape(plan) => plan.spends.len(),
                ActionPlan::ShieldedIcs20Withdrawal(plan) => plan.spends.len(),
                _ => 0,
            })
            .sum::<usize>();

        let fee_funding_spends = self
            .fee_funding
            .as_ref()
            .map(|fee_funding| fee_funding.transfer.spends.len())
            .unwrap_or_default();

        action_spends + fee_funding_spends
    }

    pub fn num_proofs(&self) -> usize {
        let action_proofs = self
            .actions
            .iter()
            .map(|action| match action {
                ActionPlan::Transfer(_)
                | ActionPlan::NoteReshape(_)
                | ActionPlan::ShieldedIcs20Withdrawal(_) => 1,
                _ => 0,
            })
            .sum::<usize>();

        action_proofs + usize::from(self.fee_funding.is_some())
    }

    pub fn populate_detection_data<R: CryptoRng + Rng>(
        &mut self,
        mut rng: R,
        precision: Precision,
    ) {
        let mut clue_plans = vec![];
        for dest_address in self.dest_addresses() {
            clue_plans.push(CluePlan::new(&mut rng, dest_address, precision));
        }

        let num_dummy_clues = self.num_outputs().saturating_sub(clue_plans.len());
        for _ in 0..num_dummy_clues {
            let dummy_address = Address::dummy(&mut rng);
            clue_plans.push(CluePlan::new(&mut rng, dummy_address, precision));
        }

        self.detection_data = if clue_plans.is_empty() {
            None
        } else {
            Some(DetectionDataPlan { clue_plans })
        };
    }

    pub fn with_populated_detection_data<R: CryptoRng + Rng>(
        mut self,
        rng: R,
        precision_bits: Precision,
    ) -> Self {
        self.populate_detection_data(rng, precision_bits);
        self
    }

    pub fn memo_key(&self) -> Option<PayloadKey> {
        self.memo.as_ref().map(|memo_plan| memo_plan.key)
    }
}

impl DomainType for TransactionPlan {
    type Proto = pb::TransactionPlan;
}

impl From<TransactionPlan> for pb::TransactionPlan {
    fn from(msg: TransactionPlan) -> Self {
        Self {
            actions: msg.actions.into_iter().map(Into::into).collect(),
            transaction_parameters: Some(msg.transaction_parameters.into()),
            fee_funding: msg.fee_funding.map(Into::into),
            detection_data: msg.detection_data.map(Into::into),
            memo: msg.memo.map(Into::into),
        }
    }
}

impl TryFrom<pb::TransactionPlan> for TransactionPlan {
    type Error = anyhow::Error;

    fn try_from(value: pb::TransactionPlan) -> Result<Self, Self::Error> {
        Ok(Self {
            actions: value
                .actions
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_, _>>()?,
            transaction_parameters: value
                .transaction_parameters
                .ok_or_else(|| anyhow::anyhow!("missing transaction parameters"))?
                .try_into()?,
            fee_funding: value.fee_funding.map(TryInto::try_into).transpose()?,
            detection_data: value.detection_data.map(TryInto::try_into).transpose()?,
            memo: value.memo.map(TryInto::try_into).transpose()?,
        })
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{Transaction, TransactionBody};
    use decaf377::Fr;
    use ibc_types::core::channel::ChannelId;
    use ibc_types::core::client::Height as IbcHeight;
    use rand_core::OsRng;
    use shieldd_sdk_asset::{Value, BASE_ASSET_ID};
    use shieldd_sdk_keys::keys::{AddressIndex, Bip44Path, SeedPhrase, SpendKey};
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_shielded_pool::{
        Ics20Withdrawal, Note, NoteReshape, NoteReshapeFamilyId, NoteReshapePlan, NoteReshapeProof,
        Rseed, ShieldedIcs20WithdrawalFamilyId, ShieldedInputPlan, ShieldedOutputPlan,
    };
    use shieldd_sdk_txhash::EffectHash;
    use std::{ops::Deref, str::FromStr};

    #[test]
    fn detection_data_includes_dummy_clues_for_transfer_family_shape() {
        let mut rng = OsRng;
        let sender_sk =
            SpendKey::from_seed_phrase_bip44(SeedPhrase::generate(&mut rng), &Bip44Path::new(0));
        let recipient_sk =
            SpendKey::from_seed_phrase_bip44(SeedPhrase::generate(&mut rng), &Bip44Path::new(0));
        let sender = sender_sk
            .full_viewing_key()
            .incoming()
            .payment_address(AddressIndex::from(0u32))
            .0;
        let recipient = recipient_sk
            .full_viewing_key()
            .incoming()
            .payment_address(AddressIndex::from(0u32))
            .0;
        let value = Value {
            amount: 100u64.into(),
            asset_id: *BASE_ASSET_ID,
        };
        let note = Note::from_parts(sender, value, Rseed::generate(&mut rng)).expect("valid note");
        let spend = ShieldedInputPlan::new(&mut rng, note, 0u64.into());
        let mut output = ShieldedOutputPlan::new(&mut rng, value, recipient);
        output.asset_anchor = spend.asset_anchor;
        output.compliance_anchor = spend.compliance_anchor;
        output.target_timestamp = spend.target_timestamp;
        output.is_regulated = spend.is_regulated;
        output.tx_blinding_nonce = spend.tx_blinding_nonce;
        output.asset_indexed_leaf = spend.asset_indexed_leaf.clone();
        output.asset_path = spend.asset_path.clone();
        output.asset_position = spend.asset_position;
        output.asset_policy = spend.asset_policy.clone();
        let transfer =
            TransferPlan::from_spend_output(spend, output, Fr::rand(&mut rng)).expect("plan");

        let mut plan = TransactionPlan {
            actions: vec![ActionPlan::Transfer(transfer)],
            transaction_parameters: Default::default(),
            fee_funding: None,
            detection_data: None,
            memo: None,
        };
        plan.populate_detection_data(&mut rng, Precision::default());

        assert_eq!(
            plan.num_outputs(),
            shieldd_sdk_shielded_pool::PADDED_TRANSFER_OUTPUTS,
            "transfer must count every proof-bound output slot"
        );
        assert_eq!(
            plan.detection_data
                .as_ref()
                .expect("detection data")
                .clue_plans
                .len(),
            shieldd_sdk_shielded_pool::PADDED_TRANSFER_OUTPUTS
        );
    }

    #[test]
    fn shielded_ics20_withdrawal_counts_change_output_for_destinations_and_clues() {
        let spend_value = Value {
            amount: 50_000u64.into(),
            asset_id: *BASE_ASSET_ID,
        };
        let change_value = Value {
            amount: 10_000u64.into(),
            asset_id: *BASE_ASSET_ID,
        };
        let note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, spend_value);
        let spend = ShieldedInputPlan::new(&mut OsRng, note, 0u64.into());
        let change = ShieldedOutputPlan::new(
            &mut OsRng,
            change_value,
            test_keys::ADDRESS_0.deref().clone(),
        );
        let withdrawal = Ics20Withdrawal {
            amount: 40_000u64.into(),
            denom: shieldd_sdk_asset::BASE_ASSET_DENOM.clone(),
            destination_chain_address: "cosmos1destination".to_string(),
            return_address: test_keys::ADDRESS_0.deref().clone(),
            timeout_height: IbcHeight::new(1, 10).expect("valid timeout height"),
            timeout_time: 60_000_000_000,
            source_channel: ChannelId::from_str("channel-0").expect("valid channel id"),
            use_compat_address: false,
            ics20_memo: String::new(),
            use_transparent_address: false,
        };

        let withdrawal = ShieldedIcs20WithdrawalPlan::new(
            ShieldedIcs20WithdrawalFamilyId::Canonical,
            vec![spend],
            Some(change),
            withdrawal,
            Fr::from(7u64),
        )
        .expect("plan should be valid");

        let mut plan = TransactionPlan {
            actions: vec![ActionPlan::ShieldedIcs20Withdrawal(withdrawal)],
            transaction_parameters: Default::default(),
            fee_funding: None,
            detection_data: None,
            memo: None,
        };
        plan.populate_detection_data(&mut OsRng, Precision::default());

        assert_eq!(plan.num_outputs(), 1);
        assert_eq!(
            plan.dest_addresses(),
            vec![test_keys::ADDRESS_0.deref().clone()]
        );
        assert_eq!(
            plan.detection_data
                .as_ref()
                .expect("detection data")
                .clue_plans
                .len(),
            1
        );
    }

    #[test]
    fn shielded_ics20_withdrawal_without_explicit_change_still_counts_hidden_change_note() {
        let spend_value = Value {
            amount: 40_000u64.into(),
            asset_id: *BASE_ASSET_ID,
        };
        let note = Note::generate(&mut OsRng, &test_keys::ADDRESS_0, spend_value);
        let spend = ShieldedInputPlan::new(&mut OsRng, note, 0u64.into());
        let withdrawal = Ics20Withdrawal {
            amount: 40_000u64.into(),
            denom: shieldd_sdk_asset::BASE_ASSET_DENOM.clone(),
            destination_chain_address: "cosmos1destination".to_string(),
            return_address: test_keys::ADDRESS_0.deref().clone(),
            timeout_height: IbcHeight::new(1, 10).expect("valid timeout height"),
            timeout_time: 60_000_000_000,
            source_channel: ChannelId::from_str("channel-0").expect("valid channel id"),
            use_compat_address: false,
            ics20_memo: String::new(),
            use_transparent_address: false,
        };

        let withdrawal = ShieldedIcs20WithdrawalPlan::new(
            ShieldedIcs20WithdrawalFamilyId::Canonical,
            vec![spend],
            None,
            withdrawal,
            Fr::from(7u64),
        )
        .expect("plan should be valid");

        let mut plan = TransactionPlan {
            actions: vec![ActionPlan::ShieldedIcs20Withdrawal(withdrawal)],
            transaction_parameters: Default::default(),
            fee_funding: None,
            detection_data: None,
            memo: None,
        };
        plan.populate_detection_data(&mut OsRng, Precision::default());

        assert_eq!(plan.num_outputs(), 1);
        assert_eq!(
            plan.dest_addresses(),
            vec![test_keys::ADDRESS_0.deref().clone()]
        );
        assert_eq!(
            plan.detection_data
                .as_ref()
                .expect("detection data")
                .clue_plans
                .len(),
            1
        );
    }

    #[test]
    fn apply_auth_data_rebinds_note_reshape_dummy_signatures_to_transaction_hash() {
        let mut rng = OsRng;
        let input_value = Value {
            amount: 1u64.into(),
            asset_id: *BASE_ASSET_ID,
        };
        let spends = (0..5)
            .map(|_| {
                let note = Note::generate(&mut rng, &test_keys::ADDRESS_0, input_value);
                ShieldedInputPlan::new(&mut rng, note, 0u64.into())
            })
            .collect::<Vec<_>>();
        let output = ShieldedOutputPlan::new(
            &mut rng,
            Value {
                amount: 5u64.into(),
                asset_id: *BASE_ASSET_ID,
            },
            test_keys::ADDRESS_0.deref().clone(),
        );
        let note_reshape = NoteReshapePlan::new(
            NoteReshapeFamilyId::EightByOne,
            spends,
            vec![output],
            Fr::from(17u64),
        )
        .expect("valid padded NoteReshape plan");
        let placeholder = NoteReshape {
            body: note_reshape.body.clone(),
            auth_sigs: vec![[0u8; 64].into(); NoteReshapeFamilyId::EightByOne.auth_sig_count()],
            proof: NoteReshapeProof::default(),
        };
        let plan = TransactionPlan {
            actions: vec![ActionPlan::NoteReshape(note_reshape.clone())],
            ..Default::default()
        };
        let effect_hash = EffectHash([0x5au8; 64]);
        let transaction = Transaction {
            transaction_body: TransactionBody {
                actions: vec![crate::Action::NoteReshape(placeholder)],
                ..Default::default()
            },
            ..Default::default()
        };
        let authorized = plan
            .apply_auth_data(
                &crate::AuthorizationData {
                    effect_hash: Some(effect_hash),
                    spend_auths: vec![[0u8; 64].into(); note_reshape.spends.len()],
                },
                transaction,
            )
            .expect("apply authorization data");
        let crate::Action::NoteReshape(action) = &authorized.transaction_body.actions[0] else {
            panic!("expected NoteReshape action");
        };

        for index in note_reshape.spends.len()..action.body.inputs.len() {
            action.body.inputs[index]
                .rk
                .verify(effect_hash.as_ref(), &action.auth_sigs[index])
                .unwrap_or_else(|error| {
                    panic!("dummy signature {index} was not rebound to transaction hash: {error}")
                });
        }
    }
}
