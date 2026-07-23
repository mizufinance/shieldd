use anyhow::{Context, Error};
use serde::{Deserialize, Serialize};
use shieldd_sdk_asset::{Balance, Value};
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_txhash::{EffectHash, EffectingData};

/// Value released to a recipient on the host chain.
#[derive(Clone, Debug, Deserialize, Serialize)]
#[serde(try_from = "pb::HostWithdrawal", into = "pb::HostWithdrawal")]
pub struct HostWithdrawal {
    pub recipient: String,
    pub value: Value,
}

impl HostWithdrawal {
    pub fn balance(&self) -> Balance {
        // A withdrawal removes this value from the shielded side of the action.
        -Balance::from(self.value)
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

impl From<HostWithdrawal> for pb::HostWithdrawal {
    fn from(value: HostWithdrawal) -> Self {
        Self {
            recipient: value.recipient,
            value: Some(value.value.into()),
        }
    }
}

impl TryFrom<pb::HostWithdrawal> for HostWithdrawal {
    type Error = Error;

    fn try_from(value: pb::HostWithdrawal) -> Result<Self, Self::Error> {
        Ok(Self {
            recipient: value.recipient,
            value: value
                .value
                .ok_or_else(|| anyhow::anyhow!("missing host withdrawal value"))?
                .try_into()
                .context("malformed host withdrawal value")?,
        })
    }
}
