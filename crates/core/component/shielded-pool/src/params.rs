use shieldd_sdk_proto::shieldd::core::component::shielded_pool::v1 as pb;

use serde::{Deserialize, Serialize};
use shieldd_sdk_proto::DomainType;

use crate::discovery;

#[derive(Clone, Debug, Serialize, Deserialize, PartialEq, Eq)]
#[serde(
    try_from = "pb::ShieldedPoolParameters",
    into = "pb::ShieldedPoolParameters"
)]
pub struct ShieldedPoolParameters {
    pub discovery_params: discovery::Parameters,
    pub discovery_grace_period_blocks: u64,
}

impl DomainType for ShieldedPoolParameters {
    type Proto = pb::ShieldedPoolParameters;
}

impl TryFrom<pb::ShieldedPoolParameters> for ShieldedPoolParameters {
    type Error = anyhow::Error;

    fn try_from(msg: pb::ShieldedPoolParameters) -> anyhow::Result<Self> {
        Ok(ShieldedPoolParameters {
            discovery_params: msg
                .discovery_params
                .ok_or_else(|| anyhow::anyhow!("missing discovery_params"))?
                .try_into()?,
            discovery_grace_period_blocks: msg.discovery_grace_period_blocks,
        })
    }
}

impl From<ShieldedPoolParameters> for pb::ShieldedPoolParameters {
    fn from(params: ShieldedPoolParameters) -> Self {
        pb::ShieldedPoolParameters {
            discovery_params: Some(params.discovery_params.into()),
            discovery_grace_period_blocks: params.discovery_grace_period_blocks,
        }
    }
}

impl Default for ShieldedPoolParameters {
    fn default() -> Self {
        Self {
            discovery_params: discovery::Parameters::default(),
            discovery_grace_period_blocks: discovery::DEFAULT_GRACE_PERIOD_BLOCKS,
        }
    }
}
