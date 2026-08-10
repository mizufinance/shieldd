//! Declarative transaction plans, used for transaction authorization and creation.

use anyhow::Result;
use serde::{Deserialize, Serialize};
use shieldd_sdk_governance::{ProposalSubmit, ValidatorVote};
use shieldd_sdk_ibc::IbcRelay;
use shieldd_sdk_keys::{Address, FullViewingKey, PayloadKey};
use shieldd_sdk_proto::{core::transaction::v1 as pb, DomainType};
use shieldd_sdk_shielded_pool::{
    discovery::Precision, HostWithdrawal, Ics20Withdrawal, ShieldedHostWithdrawalPlan,
    ShieldedIcs20WithdrawalPlan, TransferPlan,
};
use shieldd_sdk_txhash::{EffectHash, EffectingData};

mod action;
mod auth;
mod build;
mod memo;
mod spend;

pub use action::ActionPlan;
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
        let memo_key = self.memo_key().unwrap_or([0u8; 32].into());
        let fee_funding_hash = self
            .fee_funding
            .as_ref()
            .map(|plan| plan.effect_hash(fvk, &memo_key))
            .transpose()?
            .unwrap_or_default();
        state.update(parameters_hash.as_bytes());
        state.update(memo_hash.as_bytes());
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

    pub fn shielded_host_withdrawal_plans(
        &self,
    ) -> impl Iterator<Item = &ShieldedHostWithdrawalPlan> {
        self.actions.iter().filter_map(|action| {
            if let ActionPlan::ShieldedHostWithdrawal(plan) = action {
                Some(plan)
            } else {
                None
            }
        })
    }

    pub fn host_withdrawals(&self) -> impl Iterator<Item = &HostWithdrawal> {
        self.actions.iter().filter_map(|action| {
            if let ActionPlan::ShieldedHostWithdrawal(plan) = action {
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
                ActionPlan::ShieldedHostWithdrawal(plan) => vec![plan.created_output_address()],
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
                ActionPlan::Transfer(plan) => plan.outputs.len(),
                ActionPlan::NoteReshape(plan) => plan.outputs.len(),
                ActionPlan::ShieldedIcs20Withdrawal(plan) => plan.note_creating_output_count(),
                ActionPlan::ShieldedHostWithdrawal(plan) => plan.note_creating_output_count(),
                _ => 0,
            })
            .sum::<usize>();

        let fee_funding_outputs = self
            .fee_funding
            .as_ref()
            .map(|fee_funding| fee_funding.transfer.outputs.len())
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
                ActionPlan::ShieldedHostWithdrawal(plan) => plan.spends.len(),
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
                | ActionPlan::ShieldedIcs20Withdrawal(_)
                | ActionPlan::ShieldedHostWithdrawal(_) => 1,
                _ => 0,
            })
            .sum::<usize>();

        action_proofs + usize::from(self.fee_funding.is_some())
    }

    pub fn populate_discovery_precision(&mut self, precision: Precision) {
        for action in &mut self.actions {
            match action {
                ActionPlan::Transfer(plan) => plan.set_discovery_precision(precision),
                ActionPlan::NoteReshape(plan) => plan.set_discovery_precision(precision),
                ActionPlan::ShieldedIcs20Withdrawal(plan) => {
                    plan.set_discovery_precision(precision)
                }
                ActionPlan::ShieldedHostWithdrawal(plan) => plan.set_discovery_precision(precision),
                _ => {}
            }
        }
        if let Some(fee_funding) = &mut self.fee_funding {
            fee_funding.transfer.set_discovery_precision(precision);
        }
    }

    pub fn with_discovery_precision(mut self, precision: Precision) -> Self {
        self.populate_discovery_precision(precision);
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
            memo: value.memo.map(TryInto::try_into).transpose()?,
        })
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use decaf377::Fr;
    use ibc_types::core::channel::ChannelId;
    use ibc_types::core::client::Height as IbcHeight;
    use rand_core::OsRng;
    use shieldd_sdk_asset::{Value, BASE_ASSET_ID};
    use shieldd_sdk_keys::keys::{AddressIndex, Bip44Path, SeedPhrase, SpendKey};
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_shielded_pool::{
        Ics20Withdrawal, Note, Rseed, ShieldedIcs20WithdrawalFamilyId, ShieldedInputPlan,
        ShieldedOutputPlan,
    };
    use std::{ops::Deref, str::FromStr};

    #[test]
    fn discovery_precision_propagates_to_transfer_family() {
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
            memo: None,
        };
        let precision = Precision::new(20).unwrap();
        plan.populate_discovery_precision(precision);

        assert_eq!(
            plan.num_outputs(),
            1,
            "transfer should count semantic outputs, not padded family slots"
        );
        assert!(matches!(
            &plan.actions[0],
            ActionPlan::Transfer(transfer) if transfer.discovery_precision == precision
        ));
    }

    #[test]
    fn shielded_ics20_withdrawal_counts_change_output_for_discovery() {
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
            memo: None,
        };
        let precision = Precision::new(18).unwrap();
        plan.populate_discovery_precision(precision);

        assert_eq!(plan.num_outputs(), 1);
        assert_eq!(
            plan.dest_addresses(),
            vec![test_keys::ADDRESS_0.deref().clone()]
        );
        assert!(matches!(
            &plan.actions[0],
            ActionPlan::ShieldedIcs20Withdrawal(withdrawal)
                if withdrawal.discovery_precision == precision
        ));
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
            memo: None,
        };
        let precision = Precision::new(14).unwrap();
        plan.populate_discovery_precision(precision);

        assert_eq!(plan.num_outputs(), 1);
        assert_eq!(
            plan.dest_addresses(),
            vec![test_keys::ADDRESS_0.deref().clone()]
        );
        assert!(matches!(
            &plan.actions[0],
            ActionPlan::ShieldedIcs20Withdrawal(withdrawal)
                if withdrawal.discovery_precision == precision
        ));
    }
}
