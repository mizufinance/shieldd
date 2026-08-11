use shieldd_sdk_fee::Gas;
use shieldd_sdk_ibc::IbcRelay;
use shieldd_sdk_shielded_pool::{
    NoteReshape, NoteReshapePlan, ShieldedHostWithdrawal, ShieldedIcs20Withdrawal,
    ShieldedIcs20WithdrawalPlan,
};
use shieldd_sdk_validator::validator::Definition as ValidatorDefinition;

use shieldd_sdk_governance::{ProposalSubmit, ValidatorVote};

use crate::{
    plan::{ActionPlan, TransactionPlan},
    Action, Transaction,
};

use shieldd_sdk_proto::DomainType;

const NULLIFIER_SIZE: u64 = 2 + 32;
const NOTEPAYLOAD_SIZE: u64 = 32 + 32 + 144;
const ZKPROOF_SIZE: u64 = 192;

/// Allows [`Action`]s and [`Transaction`]s to statically indicate their relative resource consumption.
pub trait GasCost {
    fn gas_cost(&self) -> Gas;
}

pub fn spend_gas_cost() -> Gas {
    Gas {
        block_space: 160 + ZKPROOF_SIZE,
        compact_block_space: NULLIFIER_SIZE,
        verification: 1000,
        execution: 10,
    }
}

pub fn output_gas_cost() -> Gas {
    Gas {
        block_space: 128 + NOTEPAYLOAD_SIZE + ZKPROOF_SIZE,
        compact_block_space: NOTEPAYLOAD_SIZE,
        verification: 1000,
        execution: 10,
    }
}

pub fn transfer_gas_cost() -> Gas {
    spend_gas_cost() + spend_gas_cost() + output_gas_cost() + output_gas_cost()
}

pub fn note_reshape_gas_cost(input_count: usize, output_count: usize) -> Gas {
    let mut gas = Gas::zero();
    for _ in 0..input_count {
        gas += spend_gas_cost();
    }
    for _ in 0..output_count {
        gas += output_gas_cost();
    }
    gas
}

pub fn shielded_withdrawal_gas_cost() -> Gas {
    spend_gas_cost() + spend_gas_cost() + output_gas_cost()
}

impl GasCost for Transaction {
    fn gas_cost(&self) -> Gas {
        self.actions().map(GasCost::gas_cost).sum()
    }
}

impl GasCost for TransactionPlan {
    fn gas_cost(&self) -> Gas {
        self.actions.iter().map(GasCost::gas_cost).sum()
    }
}

impl GasCost for ActionPlan {
    fn gas_cost(&self) -> Gas {
        match self {
            ActionPlan::Transfer(_) => transfer_gas_cost(),
            ActionPlan::NoteReshape(plan) => note_reshape_gas_cost(
                plan.family_id().input_count(),
                plan.family_id().output_count(),
            ),
            ActionPlan::ValidatorDefinition(vd) => vd.gas_cost(),
            ActionPlan::IbcAction(i) => i.gas_cost(),
            ActionPlan::ProposalSubmit(ps) => ps.gas_cost(),
            ActionPlan::ValidatorVote(v) => v.gas_cost(),
            ActionPlan::ShieldedIcs20Withdrawal(w) => w.gas_cost(),
            ActionPlan::ComplianceRegisterAsset(_) | ActionPlan::ComplianceRegisterUser(_) => Gas {
                block_space: 100,
                compact_block_space: 100,
                verification: 0,
                execution: 10,
            },
        }
    }
}

impl GasCost for Action {
    fn gas_cost(&self) -> Gas {
        match self {
            Action::Transfer(_) => transfer_gas_cost(),
            Action::NoteReshape(note_reshape) => note_reshape_gas_cost(
                note_reshape.body.inputs.len(),
                note_reshape.body.outputs.len(),
            ),
            Action::ProposalSubmit(submit) => submit.gas_cost(),
            Action::ValidatorVote(vote) => vote.gas_cost(),
            Action::ShieldedIcs20Withdrawal(withdrawal) => withdrawal.gas_cost(),
            Action::ShieldedHostWithdrawal(withdrawal) => withdrawal.gas_cost(),
            Action::IbcRelay(x) => x.gas_cost(),
            Action::ValidatorDefinition(x) => x.gas_cost(),
            Action::ComplianceRegisterAsset(_) | Action::ComplianceRegisterUser(_) => Gas {
                block_space: 100,
                compact_block_space: 100,
                verification: 0,
                execution: 10,
            },
            Action::AggregateBundle(_) => Gas {
                block_space: 0,
                compact_block_space: 0,
                verification: 0,
                execution: 0,
            },
        }
    }
}

impl GasCost for shieldd_sdk_shielded_pool::Transfer {
    fn gas_cost(&self) -> Gas {
        transfer_gas_cost()
    }
}

impl GasCost for NoteReshape {
    fn gas_cost(&self) -> Gas {
        note_reshape_gas_cost(self.body.inputs.len(), self.body.outputs.len())
    }
}

impl GasCost for NoteReshapePlan {
    fn gas_cost(&self) -> Gas {
        note_reshape_gas_cost(
            self.family_id().input_count(),
            self.family_id().output_count(),
        )
    }
}

impl GasCost for ShieldedIcs20WithdrawalPlan {
    fn gas_cost(&self) -> Gas {
        shielded_withdrawal_gas_cost()
    }
}

impl GasCost for ShieldedIcs20Withdrawal {
    fn gas_cost(&self) -> Gas {
        shielded_withdrawal_gas_cost()
    }
}

impl GasCost for ShieldedHostWithdrawal {
    fn gas_cost(&self) -> Gas {
        shielded_withdrawal_gas_cost()
    }
}

impl GasCost for ValidatorDefinition {
    fn gas_cost(&self) -> Gas {
        Gas {
            block_space: self.encode_to_vec().len() as u64,
            compact_block_space: 0,
            verification: 200,
            execution: 10,
        }
    }
}

impl GasCost for IbcRelay {
    fn gas_cost(&self) -> Gas {
        Gas {
            block_space: self.encode_to_vec().len() as u64,
            compact_block_space: 0,
            verification: 0,
            execution: 10,
        }
    }
}

impl GasCost for ProposalSubmit {
    fn gas_cost(&self) -> Gas {
        Gas {
            block_space: self.encode_to_vec().len() as u64,
            compact_block_space: 0,
            verification: 200,
            execution: 10,
        }
    }
}

impl GasCost for ValidatorVote {
    fn gas_cost(&self) -> Gas {
        Gas {
            block_space: self.encode_to_vec().len() as u64,
            compact_block_space: 0,
            verification: 200,
            execution: 10,
        }
    }
}
