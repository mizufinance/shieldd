use std::str::FromStr;

use anyhow::{Context, Error};
use serde::{Deserialize, Serialize};
use shieldd_sdk_asset::{Balance, Value};
use shieldd_sdk_keys::Address;
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_txhash::{EffectHash, EffectingData};

/// Value released for transfer or execution on the host chain.
#[derive(Clone, Debug, Deserialize, Eq, PartialEq, Serialize)]
#[serde(try_from = "pb::HostWithdrawal", into = "pb::HostWithdrawal")]
pub struct HostWithdrawal {
    pub value: Value,
    pub destination: HostWithdrawalDestination,
}

#[derive(Clone, Debug, Deserialize, Eq, PartialEq, Serialize)]
pub enum HostWithdrawalDestination {
    Transfer(HostTransfer),
    Execution(HostExecution),
}

#[derive(Clone, Debug, Default, Deserialize, Eq, PartialEq, Serialize)]
pub struct HostTransfer {
    pub recipient: String,
}

#[derive(Clone, Debug, Deserialize, Eq, PartialEq, Serialize)]
pub struct HostExecution {
    pub refund_address: Address,
    pub gas_limit: u64,
    pub calls: Vec<EvmCall>,
}

#[derive(Clone, Debug, Deserialize, Eq, PartialEq, Serialize)]
pub struct EvmCall {
    pub contract: [u8; 20],
    pub calldata: Vec<u8>,
}

impl HostWithdrawal {
    pub fn balance(&self) -> Balance {
        -Balance::from(self.value)
    }

    pub fn validate(&self) -> anyhow::Result<()> {
        anyhow::ensure!(
            self.value.amount != shieldd_sdk_num::Amount::zero(),
            "host withdrawal amount must be non-zero"
        );

        match &self.destination {
            HostWithdrawalDestination::Transfer(transfer) => {
                anyhow::ensure!(
                    !transfer.recipient.trim().is_empty(),
                    "host transfer recipient must not be empty"
                );
            }
            HostWithdrawalDestination::Execution(execution) => {
                anyhow::ensure!(
                    execution.gas_limit > 0,
                    "host execution gas limit must be non-zero"
                );
                anyhow::ensure!(
                    !execution.calls.is_empty(),
                    "host execution must contain at least one call"
                );
            }
        }

        Ok(())
    }
}

impl EffectingData for HostWithdrawal {
    fn effect_hash(&self) -> EffectHash {
        EffectHash::from_proto_effecting_data(&self.to_proto())
    }
}

impl DomainType for HostWithdrawal {
    type Proto = pb::HostWithdrawal;
}

impl From<HostTransfer> for pb::HostTransfer {
    fn from(value: HostTransfer) -> Self {
        Self {
            recipient: value.recipient,
        }
    }
}

impl From<HostExecution> for pb::HostExecution {
    fn from(value: HostExecution) -> Self {
        Self {
            refund_address: value.refund_address.to_string(),
            gas_limit: value.gas_limit,
            calls: value.calls.into_iter().map(Into::into).collect(),
        }
    }
}

impl From<EvmCall> for pb::EvmCall {
    fn from(value: EvmCall) -> Self {
        Self {
            contract: value.contract.to_vec(),
            calldata: value.calldata,
        }
    }
}

impl From<HostWithdrawal> for pb::HostWithdrawal {
    fn from(value: HostWithdrawal) -> Self {
        use pb::host_withdrawal::Destination;

        let destination = match value.destination {
            HostWithdrawalDestination::Transfer(transfer) => Destination::Transfer(transfer.into()),
            HostWithdrawalDestination::Execution(execution) => {
                Destination::Execution(execution.into())
            }
        };

        Self {
            value: Some(value.value.into()),
            destination: Some(destination),
        }
    }
}

impl TryFrom<pb::HostWithdrawal> for HostWithdrawal {
    type Error = Error;

    fn try_from(value: pb::HostWithdrawal) -> Result<Self, Self::Error> {
        use pb::host_withdrawal::Destination;

        let destination = match value
            .destination
            .ok_or_else(|| anyhow::anyhow!("missing host withdrawal destination"))?
        {
            Destination::Transfer(transfer) => HostWithdrawalDestination::Transfer(HostTransfer {
                recipient: transfer.recipient,
            }),
            Destination::Execution(execution) => {
                let calls = execution
                    .calls
                    .into_iter()
                    .map(|call| {
                        let contract = call.contract.try_into().map_err(|bytes: Vec<u8>| {
                            anyhow::anyhow!(
                                "host execution contract must be 20 bytes, got {}",
                                bytes.len()
                            )
                        })?;
                        Ok(EvmCall {
                            contract,
                            calldata: call.calldata,
                        })
                    })
                    .collect::<Result<Vec<_>, Error>>()?;

                HostWithdrawalDestination::Execution(HostExecution {
                    refund_address: Address::from_str(&execution.refund_address)
                        .context("malformed host execution refund address")?,
                    gas_limit: execution.gas_limit,
                    calls,
                })
            }
        };

        let withdrawal = Self {
            value: value
                .value
                .ok_or_else(|| anyhow::anyhow!("missing host withdrawal value"))?
                .try_into()
                .context("malformed host withdrawal value")?,
            destination,
        };
        withdrawal.validate()?;
        Ok(withdrawal)
    }
}

#[cfg(test)]
mod tests {
    use std::ops::Deref;

    use shieldd_sdk_asset::BASE_ASSET_DENOM;
    use shieldd_sdk_keys::test_keys;

    use super::*;

    fn value(amount: u64) -> Value {
        Value {
            amount: amount.into(),
            asset_id: BASE_ASSET_DENOM.id(),
        }
    }

    fn transfer() -> HostWithdrawal {
        HostWithdrawal {
            value: value(42),
            destination: HostWithdrawalDestination::Transfer(HostTransfer {
                recipient: "bank1recipient".to_owned(),
            }),
        }
    }

    fn execution() -> HostWithdrawal {
        HostWithdrawal {
            value: value(42),
            destination: HostWithdrawalDestination::Execution(HostExecution {
                refund_address: test_keys::ADDRESS_0.deref().clone(),
                gas_limit: 200_000,
                calls: vec![
                    EvmCall {
                        contract: [1u8; 20],
                        calldata: vec![0xaa],
                    },
                    EvmCall {
                        contract: [2u8; 20],
                        calldata: vec![0xbb],
                    },
                ],
            }),
        }
    }

    #[test]
    fn validates_transfer_and_execution() {
        transfer().validate().expect("valid transfer");
        execution().validate().expect("valid execution");
    }

    #[test]
    fn rejects_invalid_destinations() {
        let mut empty_recipient = transfer();
        empty_recipient.destination = HostWithdrawalDestination::Transfer(HostTransfer::default());
        assert!(empty_recipient.validate().is_err());

        let mut empty_calls = execution();
        let HostWithdrawalDestination::Execution(host_execution) = &mut empty_calls.destination
        else {
            unreachable!()
        };
        host_execution.calls.clear();
        assert!(empty_calls.validate().is_err());

        let mut zero_gas = execution();
        let HostWithdrawalDestination::Execution(host_execution) = &mut zero_gas.destination else {
            unreachable!()
        };
        host_execution.gas_limit = 0;
        assert!(zero_gas.validate().is_err());
    }

    #[test]
    fn execution_effect_hash_binds_refund_and_calls() {
        let original = execution();

        let mut changed_refund = original.clone();
        let HostWithdrawalDestination::Execution(execution) = &mut changed_refund.destination
        else {
            unreachable!()
        };
        execution.refund_address = test_keys::ADDRESS_1.deref().clone();
        assert_ne!(original.effect_hash(), changed_refund.effect_hash());

        let mut changed_gas = original.clone();
        let HostWithdrawalDestination::Execution(execution) = &mut changed_gas.destination else {
            unreachable!()
        };
        execution.gas_limit += 1;
        assert_ne!(original.effect_hash(), changed_gas.effect_hash());

        let mut changed_order = original.clone();
        let HostWithdrawalDestination::Execution(execution) = &mut changed_order.destination else {
            unreachable!()
        };
        execution.calls.swap(0, 1);
        assert_ne!(original.effect_hash(), changed_order.effect_hash());

        let mut changed_calldata = original.clone();
        let HostWithdrawalDestination::Execution(execution) = &mut changed_calldata.destination
        else {
            unreachable!()
        };
        execution.calls[0].calldata.push(0xcc);
        assert_ne!(original.effect_hash(), changed_calldata.effect_hash());
    }

    #[test]
    fn execution_roundtrips_through_proto() {
        let withdrawal = execution();
        let decoded = HostWithdrawal::try_from(withdrawal.clone().to_proto())
            .expect("valid host execution proto");
        assert_eq!(decoded, withdrawal);
    }

    #[test]
    fn rejects_non_evm_contract_address() {
        let mut proto = execution().to_proto();
        let Some(pb::host_withdrawal::Destination::Execution(execution)) =
            proto.destination.as_mut()
        else {
            unreachable!()
        };
        execution.calls[0].contract = vec![0u8; 19];

        assert!(HostWithdrawal::try_from(proto).is_err());
    }
}
