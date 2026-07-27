use crate::Action;
use crate::WitnessData;
use anyhow::anyhow;
#[cfg(any(unix, windows))]
use anyhow::{Context, Result};
use ark_ff::Zero;
use decaf377::Fr;
use serde::{Deserialize, Serialize};
use shieldd_sdk_asset::Balance;
use shieldd_sdk_compliance::structs::{MsgRegisterAsset, MsgRegisterUser};
use shieldd_sdk_governance::{ProposalSubmit, ValidatorVote};
use shieldd_sdk_ibc::IbcRelay;
use shieldd_sdk_keys::{symmetric::PayloadKey, FullViewingKey};
use shieldd_sdk_proto::{core::transaction::v1 as pb_t, DomainType};
use shieldd_sdk_shielded_pool::{NoteReshapePlan, ShieldedIcs20WithdrawalPlan, TransferPlan};
use shieldd_sdk_txhash::{EffectHash, EffectingData};

/// A declaration of a planned [`Action`], for use in transaction creation.
#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(try_from = "pb_t::ActionPlan", into = "pb_t::ActionPlan")]
#[allow(clippy::large_enum_variant)]
pub enum ActionPlan {
    /// Describes a proposed fused transfer.
    Transfer(TransferPlan),
    /// Describes a padded note reshape between one and eight notes.
    NoteReshape(NoteReshapePlan),
    ValidatorDefinition(shieldd_sdk_validator::validator::Definition),
    IbcAction(IbcRelay),
    ProposalSubmit(ProposalSubmit),
    ValidatorVote(ValidatorVote),
    ShieldedIcs20Withdrawal(ShieldedIcs20WithdrawalPlan),
    /// Register an asset's regulation status in the compliance registry.
    ComplianceRegisterAsset(MsgRegisterAsset),
    /// Register a user's compliance key for a regulated asset.
    ComplianceRegisterUser(MsgRegisterUser),
}

impl ActionPlan {
    /// Builds a planned [`Action`] specified by this [`ActionPlan`].
    #[cfg(any(unix, windows))]
    pub fn build_unauth(
        action_plan: ActionPlan,
        fvk: &FullViewingKey,
        witness_data: &WitnessData,
        memo_key: Option<PayloadKey>,
    ) -> Result<Action> {
        use ActionPlan::*;

        Ok(match action_plan {
            Transfer(transfer_plan) => {
                let dummy_payload_key: PayloadKey = [0u8; 32].into();
                let auth_paths = transfer_plan
                    .spends
                    .iter()
                    .map(|spend| {
                        let note_commitment = spend.note.commit();
                        witness_data
                            .state_commitment_proofs
                            .get(&note_commitment)
                            .cloned()
                            .context(format!("could not get proof for {note_commitment:?}"))
                    })
                    .collect::<Result<Vec<_>>>()?;

                Action::Transfer(
                    transfer_plan
                        .transfer(
                            fvk,
                            vec![[0; 64].into(); transfer_plan.spends.len()],
                            auth_paths,
                            witness_data.anchor,
                            memo_key.as_ref().unwrap_or(&dummy_payload_key),
                        )
                        .map_err(|e| anyhow::anyhow!("transfer proof generation failed: {}", e))?,
                )
            }
            NoteReshape(note_reshape_plan) => {
                let dummy_payload_key: PayloadKey = [0u8; 32].into();
                let auth_paths = note_reshape_plan
                    .spends
                    .iter()
                    .map(|spend| {
                        let note_commitment = spend.note.commit();
                        witness_data
                            .state_commitment_proofs
                            .get(&note_commitment)
                            .cloned()
                            .context(format!("could not get proof for {note_commitment:?}"))
                    })
                    .collect::<Result<Vec<_>>>()?;

                Action::NoteReshape(
                    note_reshape_plan
                        .note_reshape(
                            fvk,
                            vec![[0; 64].into(); note_reshape_plan.spends.len()],
                            auth_paths,
                            witness_data.anchor,
                            memo_key.as_ref().unwrap_or(&dummy_payload_key),
                        )
                        .map_err(|e| {
                            anyhow::anyhow!("note reshape proof generation failed: {}", e)
                        })?,
                )
            }
            ValidatorDefinition(plan) => Action::ValidatorDefinition(plan.clone()),
            IbcAction(plan) => Action::IbcRelay(plan.clone()),
            ProposalSubmit(plan) => Action::ProposalSubmit(plan.clone()),
            ValidatorVote(plan) => Action::ValidatorVote(plan.clone()),
            ShieldedIcs20Withdrawal(plan) => {
                let dummy_payload_key: PayloadKey = [0u8; 32].into();
                let auth_paths = plan
                    .spends
                    .iter()
                    .map(|spend| {
                        let note_commitment = spend.note.commit();
                        witness_data
                            .state_commitment_proofs
                            .get(&note_commitment)
                            .cloned()
                            .context(format!("could not get proof for {note_commitment:?}"))
                    })
                    .collect::<Result<Vec<_>>>()?;
                Action::ShieldedIcs20Withdrawal(
                    plan.shielded_ics20_withdrawal(
                        fvk,
                        vec![[0; 64].into(); plan.spends.len()],
                        auth_paths,
                        witness_data.anchor,
                        memo_key.as_ref().unwrap_or(&dummy_payload_key),
                    )
                    .map_err(|e| {
                        anyhow::anyhow!("shielded ICS-20 withdrawal proof generation failed: {}", e)
                    })?,
                )
            }
            ComplianceRegisterAsset(msg) => Action::ComplianceRegisterAsset(msg.clone()),
            ComplianceRegisterUser(msg) => Action::ComplianceRegisterUser(msg.clone()),
        })
    }

    /// Canonical action plan ordering according to protobuf definitions.
    pub fn variant_index(&self) -> usize {
        match self {
            ActionPlan::Transfer(_) => 5,
            ActionPlan::NoteReshape(_) => 6,
            ActionPlan::ValidatorDefinition(_) => 16,
            ActionPlan::IbcAction(_) => 17,
            ActionPlan::ProposalSubmit(_) => 18,
            ActionPlan::ValidatorVote(_) => 20,
            ActionPlan::ComplianceRegisterAsset(_) => 80,
            ActionPlan::ComplianceRegisterUser(_) => 81,
            ActionPlan::ShieldedIcs20Withdrawal(_) => 200,
        }
    }

    pub fn balance(&self) -> Balance {
        use ActionPlan::*;

        match self {
            Transfer(action) => action.balance(),
            NoteReshape(action) => action.balance(),
            ProposalSubmit(action) => action.balance(),
            ShieldedIcs20Withdrawal(action) => action.balance(),
            IbcAction(_)
            | ValidatorDefinition(_)
            | ValidatorVote(_)
            | ComplianceRegisterAsset(_)
            | ComplianceRegisterUser(_) => Balance::default(),
        }
    }

    pub fn value_blinding(&self) -> Fr {
        use ActionPlan::*;

        match self {
            Transfer(action) => action.value_blinding,
            NoteReshape(action) => action.value_blinding,
            ShieldedIcs20Withdrawal(action) => action.value_blinding,
            ValidatorDefinition(_)
            | IbcAction(_)
            | ProposalSubmit(_)
            | ValidatorVote(_)
            | ComplianceRegisterAsset(_)
            | ComplianceRegisterUser(_) => Fr::zero(),
        }
    }

    /// Compute the effect hash of the action this plan will produce.
    pub fn effect_hash(
        &self,
        fvk: &FullViewingKey,
        memo_key: &PayloadKey,
    ) -> anyhow::Result<EffectHash> {
        use ActionPlan::*;

        let effect_hash = match self {
            Transfer(plan) => plan
                .transfer_body(fvk, memo_key, shieldd_sdk_tct::Tree::default().root())
                .map(|body| body.effect_hash())?,
            NoteReshape(plan) => plan
                .note_reshape_body(fvk, memo_key, shieldd_sdk_tct::Tree::default().root())
                .map(|body| body.effect_hash())?,
            ValidatorDefinition(plan) => plan.effect_hash(),
            IbcAction(plan) => plan.effect_hash(),
            ProposalSubmit(plan) => plan.effect_hash(),
            ValidatorVote(plan) => plan.effect_hash(),
            ShieldedIcs20Withdrawal(plan) => plan
                .action_body(fvk, memo_key, shieldd_sdk_tct::Tree::default().root())
                .map(|body| body.effect_hash())?,
            ComplianceRegisterAsset(plan) => plan.effect_hash(),
            ComplianceRegisterUser(plan) => plan.effect_hash(),
        };

        Ok(effect_hash)
    }
}

impl From<TransferPlan> for ActionPlan {
    fn from(inner: TransferPlan) -> ActionPlan {
        ActionPlan::Transfer(inner)
    }
}

impl From<NoteReshapePlan> for ActionPlan {
    fn from(inner: NoteReshapePlan) -> ActionPlan {
        ActionPlan::NoteReshape(inner)
    }
}

impl From<shieldd_sdk_validator::validator::Definition> for ActionPlan {
    fn from(inner: shieldd_sdk_validator::validator::Definition) -> ActionPlan {
        ActionPlan::ValidatorDefinition(inner)
    }
}

impl From<IbcRelay> for ActionPlan {
    fn from(inner: IbcRelay) -> ActionPlan {
        ActionPlan::IbcAction(inner)
    }
}

impl From<ProposalSubmit> for ActionPlan {
    fn from(inner: ProposalSubmit) -> ActionPlan {
        ActionPlan::ProposalSubmit(inner)
    }
}

impl From<ValidatorVote> for ActionPlan {
    fn from(inner: ValidatorVote) -> ActionPlan {
        ActionPlan::ValidatorVote(inner)
    }
}

impl From<ShieldedIcs20WithdrawalPlan> for ActionPlan {
    fn from(inner: ShieldedIcs20WithdrawalPlan) -> ActionPlan {
        ActionPlan::ShieldedIcs20Withdrawal(inner)
    }
}

impl From<MsgRegisterAsset> for ActionPlan {
    fn from(inner: MsgRegisterAsset) -> ActionPlan {
        ActionPlan::ComplianceRegisterAsset(inner)
    }
}

impl From<MsgRegisterUser> for ActionPlan {
    fn from(inner: MsgRegisterUser) -> ActionPlan {
        ActionPlan::ComplianceRegisterUser(inner)
    }
}

impl DomainType for ActionPlan {
    type Proto = pb_t::ActionPlan;
}

impl From<ActionPlan> for pb_t::ActionPlan {
    fn from(msg: ActionPlan) -> Self {
        match msg {
            ActionPlan::Transfer(inner) => pb_t::ActionPlan {
                action: Some(pb_t::action_plan::Action::Transfer(inner.into())),
            },
            ActionPlan::NoteReshape(inner) => pb_t::ActionPlan {
                action: Some(pb_t::action_plan::Action::NoteReshape(inner.into())),
            },
            ActionPlan::ValidatorDefinition(inner) => pb_t::ActionPlan {
                action: Some(pb_t::action_plan::Action::ValidatorDefinition(inner.into())),
            },
            ActionPlan::IbcAction(inner) => pb_t::ActionPlan {
                action: Some(pb_t::action_plan::Action::IbcRelayAction(inner.into())),
            },
            ActionPlan::ProposalSubmit(inner) => pb_t::ActionPlan {
                action: Some(pb_t::action_plan::Action::ProposalSubmit(inner.into())),
            },
            ActionPlan::ValidatorVote(inner) => pb_t::ActionPlan {
                action: Some(pb_t::action_plan::Action::ValidatorVote(inner.into())),
            },
            ActionPlan::ShieldedIcs20Withdrawal(inner) => pb_t::ActionPlan {
                action: Some(pb_t::action_plan::Action::ShieldedIcs20Withdrawal(
                    inner.into(),
                )),
            },
            ActionPlan::ComplianceRegisterAsset(inner) => pb_t::ActionPlan {
                action: Some(pb_t::action_plan::Action::ComplianceRegisterAsset(
                    inner.into(),
                )),
            },
            ActionPlan::ComplianceRegisterUser(inner) => pb_t::ActionPlan {
                action: Some(pb_t::action_plan::Action::ComplianceRegisterUser(
                    inner.into(),
                )),
            },
        }
    }
}

impl TryFrom<pb_t::ActionPlan> for ActionPlan {
    type Error = anyhow::Error;

    fn try_from(proto: pb_t::ActionPlan) -> anyhow::Result<Self, Self::Error> {
        if proto.action.is_none() {
            anyhow::bail!("missing action content");
        }

        match proto
            .action
            .ok_or_else(|| anyhow!("missing action in ActionPlan proto"))?
        {
            pb_t::action_plan::Action::Transfer(inner) => {
                Ok(ActionPlan::Transfer(inner.try_into()?))
            }
            pb_t::action_plan::Action::NoteReshape(inner) => {
                Ok(ActionPlan::NoteReshape(inner.try_into()?))
            }
            pb_t::action_plan::Action::ValidatorDefinition(inner) => {
                Ok(ActionPlan::ValidatorDefinition(inner.try_into()?))
            }
            pb_t::action_plan::Action::IbcRelayAction(inner) => {
                Ok(ActionPlan::IbcAction(inner.try_into()?))
            }
            pb_t::action_plan::Action::ProposalSubmit(inner) => {
                Ok(ActionPlan::ProposalSubmit(inner.try_into()?))
            }
            pb_t::action_plan::Action::ValidatorVote(inner) => {
                Ok(ActionPlan::ValidatorVote(inner.try_into()?))
            }
            pb_t::action_plan::Action::ShieldedIcs20Withdrawal(inner) => {
                Ok(ActionPlan::ShieldedIcs20Withdrawal(inner.try_into()?))
            }
            pb_t::action_plan::Action::ComplianceRegisterAsset(inner) => {
                Ok(ActionPlan::ComplianceRegisterAsset(inner.try_into()?))
            }
            pb_t::action_plan::Action::ComplianceRegisterUser(inner) => {
                Ok(ActionPlan::ComplianceRegisterUser(inner.try_into()?))
            }
        }
    }
}
