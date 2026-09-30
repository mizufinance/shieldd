use shieldd_sdk_fee::Gas;
use shieldd_sdk_shielded_pool::{
    HostWithdrawal, HostWithdrawalDestination, NoteReshape, NoteReshapePlan,
    ShieldedHostWithdrawal, ShieldedHostWithdrawalPlan,
};

use crate::{
    plan::{ActionPlan, TransactionPlan},
    Action, Transaction,
};

use shieldd_sdk_proto::DomainType;

const NULLIFIER_SIZE: u64 = 2 + 32;
const NOTEPAYLOAD_SIZE: u64 = 32 + 32 + 177;
const ZKPROOF_SIZE: u64 = shieldd_sdk_circuits::proof::ENCODED_LEN as u64;
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

pub fn host_withdrawal_gas_cost(withdrawal: &HostWithdrawal) -> Gas {
    let mut gas = shielded_withdrawal_gas_cost();
    gas.block_space = gas
        .block_space
        .saturating_add(withdrawal.encode_to_vec().len() as u64);
    if let HostWithdrawalDestination::Execution(execution) = &withdrawal.destination {
        // TODO(#117): Decide whether Bankd EVM gas maps 1:1 to Shieldd execution gas.
        gas.execution = gas.execution.saturating_add(execution.gas_limit);
    }
    gas
}

impl GasCost for Transaction {
    fn gas_cost(&self) -> Gas {
        let mut gas: Gas = self.actions().map(GasCost::gas_cost).sum();
        if let Some(fee_funding) = &self.transaction_body.fee_funding {
            gas += fee_funding.transfer.gas_cost();
        }
        gas
    }
}

impl GasCost for TransactionPlan {
    fn gas_cost(&self) -> Gas {
        self.actions
            .iter()
            .map(GasCost::gas_cost)
            .chain(self.fee_funding.iter().map(|fee| fee.transfer.gas_cost()))
            .sum()
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

            ActionPlan::ShieldedHostWithdrawal(w) => w.gas_cost(),
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

            Action::ShieldedHostWithdrawal(withdrawal) => withdrawal.gas_cost(),

            Action::ComplianceRegisterAsset(_) | Action::ComplianceRegisterUser(_) => Gas {
                block_space: 100,
                compact_block_space: 100,
                verification: 0,
                execution: 10,
            },
        }
    }
}

impl GasCost for shieldd_sdk_shielded_pool::Transfer {
    fn gas_cost(&self) -> Gas {
        transfer_gas_cost()
    }
}

impl GasCost for shieldd_sdk_shielded_pool::TransferPlan {
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

impl GasCost for ShieldedHostWithdrawal {
    fn gas_cost(&self) -> Gas {
        host_withdrawal_gas_cost(&self.body.withdrawal)
    }
}

impl GasCost for ShieldedHostWithdrawalPlan {
    fn gas_cost(&self) -> Gas {
        host_withdrawal_gas_cost(&self.withdrawal)
    }
}

#[cfg(test)]
mod tests {
    use std::ops::Deref;

    use shieldd_sdk_asset::{Value, BASE_ASSET_DENOM};
    use shieldd_sdk_keys::test_keys;
    use shieldd_sdk_shielded_pool::{
        EvmCall, HostExecution, HostTransfer, HostWithdrawalDestination,
    };

    use super::*;

    fn value() -> Value {
        Value {
            amount: 42u64.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        }
    }

    #[test]
    fn host_execution_charges_requested_execution_gas() {
        let transfer = HostWithdrawal {
            value: value(),
            destination: HostWithdrawalDestination::Transfer(HostTransfer {
                recipient: "bank1recipient".to_owned(),
            }),
        };
        let execution = HostWithdrawal {
            value: value(),
            destination: HostWithdrawalDestination::Execution(HostExecution {
                refund_address: test_keys::ADDRESS_0.deref().clone(),
                gas_limit: 200_000,
                calls: vec![EvmCall {
                    contract: [7u8; 20],
                    calldata: vec![0xaa],
                }],
            }),
        };

        assert_eq!(
            host_withdrawal_gas_cost(&execution).execution,
            shielded_withdrawal_gas_cost().execution + 200_000
        );
        assert_eq!(
            host_withdrawal_gas_cost(&transfer).execution,
            shielded_withdrawal_gas_cost().execution
        );
    }
}
